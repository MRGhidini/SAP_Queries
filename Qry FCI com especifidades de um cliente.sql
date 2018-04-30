Set NoCount On
Declare @tabReg5020 as Table(Descricao Varchar(100), NCM Varchar(8), ItemCode Varchar(20), GTIN varchar(15), Unidade varchar(4), VO Numeric(18,2), VI Numeric(18,2), CI as (Convert(Numeric(18,2),Round((VI / VO * 100),2))))
Declare @ParcImp Table(ItemCode Varchar(25),ItemName Varchar(100), NcmCode Varchar(20), Custo Numeric(18,2))
Declare @DataIniArq as DateTime
Declare @DataIniRed as Varchar(6)
Declare @DataApuMP as Varchar(6)
declare @Nvl int

set @DataIniArq =getdate()
set @DataIniRed = substring(CONVERT(varchar, @DataIniArq,103),7,4) + substring(CONVERT(varchar, @DataIniArq,103),4,2)
Set @DataApuMP = substring(CONVERT(varchar, @DataIniArq,103),7,4) + substring(CONVERT(varchar, dateadd(m,-2,@DataIniArq),103),4,2)

/*-------------------- Construção de Tabela com itens de Faturamento*/
SELECT
	FAT.ItemCode, 
	FAT.ItemName,
	[VO] = (sum(FAT.LineTotal)- sum(isnull(FAT.Imposto,0))) / sum(FAT.QtdeItem),          
	[CFOP] = left(FAT.CFOPCode,1),
	[DATADOC] = FAT.DocdateDOC
Into #tabFAT
FROM
	(SELECT T0.itemcode,
		    T2.ItemName,
		    T0.linetotal,
		    T0.GrossBuyPr [CustoUnit],
		    T0.GrossBuyPr*T0.quantity [CustoTotal],
		    T1.taxsum [Imposto],
		    T0.quantity [QtdeItem],
		    (((T0.LineTotal)- (T1.taxsum)) - (T0.GrossBuyPr*T0.quantity )) [MargemLucro],
		    T0.docdate,
		    T0.CFOPCode,
		    substring(CONVERT(varchar(10),NF.docdate,103),7,4) + substring(CONVERT(varchar(10),NF.DocDate,103),4,2) DocdateDOC
	 from INV1 T0
	 inner join OINV NF ON NF.DocEntry=t0.DocEntry
	 left join INV4  T1 on T0.DocEntry = T1.DocEntry and T0.LineNum = T1.LineNum and T1.statype = 2
	 Inner Join OITM T2 on T0.ItemCode = T2.ItemCode
	 LEFT JOIN OUSG T3 on T3.ID = T0.Usage
	 WHERE
	 (T0.CFOPCode like '6%' or T0.CFOPCode like '5%')
	 And ISNULL(T0.ItemCode,'') in (select T10.ItemCode from OITM T10 Where T10.U_gaGERAFci in(1,3))
	 And not exists (select 1 from RIN1 ndi inner join ORIN nd on nd.docentry = ndi.docentry
				     where ndi.BaseEntry = T1.DocEntry and ndi.BaseType = T0.ObjType and nd.SeqCode = '1')
	 And isnull(NF.Model,'')='39'

	 Union All

     SELECT T0.itemcode,
		    T2.ItemName,
		    T0.linetotal,
		    T0.GrossBuyPr [CustoUnit],
		    T0.GrossBuyPr*T0.quantity [CustoTotal],
		    T1.taxsum [Imposto],
		    T0.quantity [QtdeItem],
		    (((T0.LineTotal)- (T1.taxsum)) - (T0.GrossBuyPr*T0.quantity )) [MargemLucro],
		    T0.docdate,
		    T0.CFOPCode,
		    substring(CONVERT(varchar(10),NF.docdate,103),7,4) + substring(CONVERT(varchar(10),nf.DocDate,103),4,2) DocdateDOC
	 from DLN1 T0
     inner join ODLN NF ON NF.DocEntry=t0.DocEntry
	 left join DLN4  T1 on T0.DocEntry = T1.DocEntry and T0.LineNum = T1.LineNum and T1.statype = 2
	 Inner Join OITM T2 on T0.ItemCode = T2.ItemCode
	 LEFT JOIN OUSG T3 on T3.ID = T0.Usage
	 WHERE
	 (T0.CFOPCode like '6%' or T0.CFOPCode like '5%')
	 And ISNULL(T0.ItemCode,'') in (select T10.ItemCode from OITM T10 Where T10.U_gaGERAFci in(1,3))
	 And not exists (select 1 from RDN1 ndi inner join ORDN nd on nd.docentry = ndi.docentry
	  			     where ndi.BaseEntry = T1.DocEntry and ndi.BaseType = T0.ObjType and nd.SeqCode = '1')
	 And isnull(NF.Model,'')='39'	  
    ) as FAT
WHERE FAT.DocdateDOC <= @DataIniRed
Group By FAT.ItemCode,  FAT.ItemName, left(FAT.CFOPCode,1), FAT.DocdateDOC

Insert into #tabFAT
Select T0.ItemCode, 
	   T0.ItemName,
	   [VO] = Case when isnull(T1.LineTotal,0) > 0  then 
	               isnull(T1.LineTotal,0) - ISNULL((select sum(T4.TaxSum) 
	                                                From RDR4 T4
	                                                Inner Join OSTT T10 On T4.staType = T10.AbsId
	                                                Inner Join ONFT T11 ON T10.NfTaxId = T11.AbsId
	                                                Where T11.Code = 'ICMS' And T4.DocEntry = T1.DocEntry and T1.LineNum = T4.LineNum And Isnull(T4.TaxInPrice,'N') = 'Y'
	                                                group By T4.DocEntry, T4.LineNum),0)
			  Else 
			       isnull(T2.DocTotal,0) - 
			       round(((isnull(t2.DocTotal,0) * (isnull(ICMS_Sist.base,0) / 100)) * (isnull(ICMS_Sist.rate,0) / 100)),2)
		      End,
	   [CFOP] = left(T1.CFOPCode,1),
	   [DATADOC] = substring(CONVERT(varchar(10),T1.DocDate,103),7,4) + substring(CONVERT(varchar(10),T1.DocDate,103),4,2)
From RDR1 T1
Inner Join OITM T0 On T0.ItemCode = T1.ItemCode and T1.DocEntry = T0.U_gaFCIPedido
Inner Join ORDR T2 On t2.DocEntry = T1.DocEntry
inner join (select a.STCCode,a.STACode,isnull(d.Rate,0) rate,isnull(d.U_Base,0) base
            from STC1 a
            inner join ostt b on b.absid=a.statype
            inner join ONFT c on c.AbsId=b.NfTaxId
            inner join OSTA d on d.Code = a.STACode and d.type = a.STAType
            where c.Code = 'ICMS') ICMS_Sist on ICMS_Sist.STCCode = t1.TaxCode
where T0.U_gaGERAFci = 2
and isnull(t2.CANCELED,'N') <> 'Y'

/* Criando Estrutura de Itens - Baseando no multinível */
;With TabEst as (
	Select [Father] = T1.ItemCode,
		   [NcmCode] = T1.NCMCode,
		   [ItemName] = T1.ItemName,
		   [nivel1] = T0.ItemCode, 
		   [Quantity1] = T0.Quantity,
		   [Nivel] = 1
    from RDR1 T0
	Inner join OITM T1 on T0.DocEntry = T1.U_gaFCIPedido And T0.ItemCode <> T1.ItemCode
	
	Union All
	
	Select T0.Father,
		   [NcmCode] = T1.NCMCode,
		   T1.ItemName,
		   [nivel1] = T0.Code, 
		   [Quantity1] = T0.Quantity,
		   [Nivel] =  1
	from ITT1 T0
	Inner Join OITM T1 On T0.Father = T1.ItemCode And T1.U_gaGERAFci = 1
	
	Union All

	Select T0.Father,
		   [NcmCode] = T1.NCMCode,
		   T1.ItemName,
		   [nivel1] = T0.Code, 
		   [Quantity1] = T0.Quantity,
		   [Nivel] = Rec.Nivel + 1
    from TabEst Rec 
	Inner Join ITT1 T0 On T0.Father = Rec.nivel1
	Inner Join OITM T1 On T0.Father = T1.ItemCode
	Where T1.ItemCode Not in(select T10.ItemCode
	                         from OITM T10
	                         where ((T10.validFor = 'N') 
	                         or  (T10.validFor  = 'Y' and ISNULL(T10.validFrom,'') <= Convert(DATETIME, @DataIniArq, 112) and ISNULL(T10.validTo, @DataIniArq) >= Convert(DATETIME, @DataIniArq, 112)))
							 and (T10.frozenFor = 'Y' and (ISNULL(T10.frozenTo,@DataIniArq -1) < Convert(DATETIME, @DataIniArq, 112) or ISNULL(T10.frozenFrom,@DataIniArq+1) > Convert(DATETIME, @DataIniArq, 112))))
)
Select T0.Father, T0.ItemName, cast(ISNULL(REPLACE(T1.NCMCode,'.',''),'') as Varchar) NCMCode, T0.Nivel, T0.Quantity1, T0.nivel1 Into #TabEst from TabEst T0 Left Join ONCM T1 On T0.NcmCode = T1.AbsEntry group by T0.Father, T0.ItemName, cast(ISNULL(REPLACE(T1.NCMCode,'.',''),'') as Varchar), T0.Nivel, T0.Quantity1, T0.nivel1

/* Inserir Itens que ele mesmo são estruturas deles */
Insert #TabEst
Select T0.ItemCode, T0.ItemName,cast(ISNULL(REPLACE(T1.NCMCode,'.',''),'') as Varchar) NCMCode, 1, 1, T0.ItemCode from OITM T0 Left Join ONCM T1 On T0.NcmCode = T1.AbsEntry where T0.U_gaGERAFci = 3

/* Construção da Tabela Média MP */
select Media.ItemCode,
	   [MedMP] = sum(media.valoraduaneiro) / sum(media.quantidade),
	   [Data] = Media.Data
Into #tabMedMP
from (select nfi.ItemCode,
		     [Quantidade] = isnull(nfi.Quantity,0),
		     [ValorAduaneiro] = isnull(nfi.LineTotal - 
		                        ISNULL((select sum(imp.taxsum) II 
		                                from PCH4 imp
		                                inner join ostt on ostt.AbsId = imp.staType
		                                inner join ONFT on onft.AbsId = ostt.NfTaxId
		                                where onft.Code IN('ICMS')
		                                and imp.docentry=nfi.docentry
		                                and imp.linenum=nfi.linenum
		                                and isnull(imp.TaxInPrice,'N') = 'Y'
		                                group by imp.DocEntry,imp.LineNum),0) -
		                        ISNULL((select sum(imp.taxsum) II 
		                                from PCH4 imp
		                                inner join ostt on ostt.AbsId = imp.staType
		                                inner join ONFT on onft.AbsId = ostt.NfTaxId
		                                where onft.Code IN('II')
		                                and imp.docentry=nfi.docentry
		                                and imp.linenum=nfi.linenum
		                                --and isnull(imp.TaxInPrice,'N') = 'Y'
		                                group by imp.DocEntry,imp.LineNum),0),0)
							    / case when isnull(left(nfi.CSTCode,1),'') = '3' then 2 else 1 end,
		     [Data] = substring(CONVERT(varchar, nf.DocDate,103),7,4) + substring(CONVERT(varchar, nf.DocDate,103),4,2)
	  from PCH1 nfi
      inner join OPCH nf on nf.docentry = nfi.docentry
	  where	ISNULL(LEFT(nfi.CSTCode,1),'') IN ('1', '2', '3', '8')
	  and isnull(Nf.Model, '') = '39'
	  and not exists (select 1 from RPC1 ndi inner join ORPC nd on nd.docentry = nfi.docentry
					  where ndi.BaseEntry = nfi.DocEntry and ndi.BaseType = nf.ObjType and nd.SeqCode = '1')

      Union All

	  select nfi.ItemCode,
	   	     [Quantidade] = isnull(nfi.Quantity,0),
		     [ValorAduaneiro] = isnull(nfi.LineTotal - 
		                        ISNULL((select sum(imp.taxsum) II
		                                from PDN4 imp
		                                inner join ostt on ostt.AbsId = imp.staType
		                                inner join ONFT on onft.AbsId = ostt.NfTaxId
		                                where onft.Code IN('ICMS')
		                                and imp.docentry=nfi.docentry
		                                and imp.linenum=nfi.linenum 
		                                and isnull(imp.TaxInPrice,'N') = 'Y'
		                                group by imp.DocEntry,imp.LineNum),0) -
		                        ISNULL((select sum(imp.taxsum) II
		                                from PDN4 imp
		                                inner join ostt on ostt.AbsId = imp.staType
		                                inner join ONFT on onft.AbsId = ostt.NfTaxId
		                                where onft.Code IN('II')
		                                and imp.docentry=nfi.docentry
		                                and imp.linenum=nfi.linenum 
		                                --and isnull(imp.TaxInPrice,'N') = 'Y'
		                                group by imp.DocEntry,imp.LineNum),0),0)
						        / case when isnull(left(nfi.CSTCode,1),'') = '3' then 2 else 1 end,
		     [Data] = substring(CONVERT(varchar, nf.DocDate,103),7,4) + substring(CONVERT(varchar, nf.DocDate,103),4,2)
	from PDN1 nfi
	inner join OPDN nf on nf.docentry = nfi.docentry
	where ISNULL(LEFT(nfi.CSTCode,1),'') IN ('1', '2', '3', '8')
	and	isnull(Nf.Model, '') = '39'
	and	not exists (select 1 from RPD1 ndi inner join ORPD nd on nd.docentry = nfi.docentry
					where ndi.BaseEntry = nfi.DocEntry and ndi.BaseType = nf.ObjType and nd.SeqCode = '1')
	) As Media
	Where Media.Data <= @DataIniRed
	and	  Media.ItemCode in (Select distinct T50.Nivel1 From #tabEST T50)
	group by Media.itemcode,Media.Data

/* Criando Tratamento de Parcela Importada */
Select @Nvl = MAX(Nivel) from #TabEst
While @Nvl > 0
Begin
	Insert into @ParcImp
	Select Rec.Father,
	       Rec.ItemName,
	       Rec.NCMCode,
	       ISNULL((SUM(isnull(Pimp.Custo,0) * isnull(Rec.Quantity1,1))),0) + Sum(isnull(MP.MedMP,0) * Isnull(Rec.Quantity1,1))
	From #TabEst Rec
    Left Join #tabMedMP MP On Rec.Nivel1 = MP.ItemCode And Rec.nivel1 not in (select ItemCode from @ParcImp) and   MP.Data = isnull((select MAX(T10.Data)
																														from #tabMedMP T10
																														where T10.Data <= @DataApuMP
																														And   Rec.nivel1 = T10.ItemCode),
																														(select MAX(T10.Data) from #tabMedMP T10 where Rec.nivel1 = T10.ItemCode))
	Left Join @ParcImp PImp on PImp.ItemCode = Rec.nivel1
	Where Rec.Father not in (select ItemCode from @ParcImp)
	and   Rec.Nivel = @Nvl
	Group By Rec.Father, Rec.ItemName, Rec.NCMCode
	
	Set @Nvl = @Nvl -1
End

/*----------------- Criação de Tabela do registro 5020 */
Insert Into @tabReg5020
Select [Descricao] = T1.ItemName,
	   [NCM] = T1.NCMCode,
	   [ItemCode] = T1.ItemCode,
	   [GTIN] = '',
	   [Unidade] = 'Unid',
	   [VO] = /*VO #Fat*/IsNull((Select Top 1 T0.VO from #tabFAT T0 where T1.ItemCode = T0.ItemCode order by T0.[DATADOC] desc,  T0.CFOP DESC),0),
	   [VI ] = T1.Custo
From @ParcImp T1
Order by ItemCode

Select '' as [*],
       descricao as [Mercadoria],
       NCM as [NCM],
       itemCode as [Código],
       convert(varchar,VO) as [Valor Saída],
       convert(varchar,VI) as [Valor Imp. Ext.],
       convert(varchar,CI) as [Cont.CI]
from @tabReg5020 T0
where isnull(VO,0) <> 0
And T0.ItemCode in (Select T1.Itemcode
                    from OINV T10,INV1 T1
                    where T10.DocEntry = T1.DocEntry And T10.DocDate >= '20130101'
	                Union All
	                Select T1.ItemCode
	                from OITM T1
	                where T1.CreateDate >= '20130831')
order by [ItemCode] 

Drop Table #tabFat
Drop Table #tabEST
Drop Table #TabMedMP 
