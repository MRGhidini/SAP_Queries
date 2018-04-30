/*
Criação de FCI - Regras da XXX
Alterações feitas: 23/09/2013
Autor: Ayrton Krizan
*/

--- Declarações de Varíaveis

Set NoCount On
Declare @tabReg5020 as Table(Descricao Varchar(100), NCM Varchar(8), ItemCode Varchar(20), GTIN varchar(15), Unidade varchar(4), VO Numeric(18,2), CFOP Varchar(1), DATADOC varchar(6), VI Numeric(18,2), CI as (Convert(Numeric(18,2),Round((VI / VO * 100),2))))
Declare @ParcImp Table(ItemCode Varchar(25),ItemName Varchar(100), NcmCode Varchar(20), Custo Numeric(18,2))
Declare @DataIniArq as DateTime
Declare @DataIniRed as Varchar(6)
declare @Nvl int
Declare @itemCode  as varchar(50)

set @itemCode = '41BR0171-0101'--'{?itemcode@Select father from ITT1}'
set @DataIniArq = '20131130' --{?DataIni}
set @DataIniRed = substring(CONVERT(varchar, @DataIniArq,103),7,4) + substring(CONVERT(varchar, @DataIniArq,103),4,2)
---------------------- Criando Estrutura de Itens - Baseando-se em apenas um nível de estrutura

;With TabEst as (
		Select 
			T0.Father,
			[NcmCode] = T1.NCMCode,
			T1.ItemName,
			[nivel1] = T0.Code, 
			[Quantity1] = T0.Quantity,
			[Nivel] = 1
		from 
			ITT1 T0
		Inner Join
			OITM T1 On T0.Father = T1.ItemCode
		Where
			T1.ItemCode = @itemCode
	
	Union All
		
		Select 
			T0.Father,
			[NcmCode] = T1.NCMCode,
			T1.ItemName,
			[nivel1] = T0.Code, 
			[Quantity1] = T0.Quantity,
			[Nivel] = Rec.Nivel + 1
		from
			TabEst Rec 
			Inner Join ITT1 T0 On T0.Father = Rec.nivel1
			Inner Join OITM T1 On T0.Father = T1.ItemCode
		Where
			 T1.ItemCode Not in(
							select T10.ItemCode from OITM T10 where
							((T10.validFor = 'N')  or 
									(T10.validFor = 'Y'and ISNULL(T10.validFrom,'') <= Convert(DATETIME, @DataIniArq, 112) and ISNULL(T10.validTo, @DataIniArq) >= Convert(DATETIME, @DataIniArq, 112)))
								 and 
								 (T10.frozenFor = 'Y' And (ISNULL(T10.frozenTo,@DataIniArq -1) < Convert(DATETIME, @DataIniArq, 112) or ISNULL(T10.frozenFrom,@DataIniArq+1) > Convert(DATETIME, @DataIniArq, 112))))
		
)
Select T0.Father, T0.ItemName, cast(ISNULL(REPLACE(T1.NCMCode,'.',''),'') as Varchar) NCMCode, T0.Nivel, T0.Quantity1, T0.nivel1 Into #TabEst from TabEst T0 Left Join ONCM T1 On T0.NcmCode = T1.AbsEntry group by T0.Father, T0.ItemName, cast(ISNULL(REPLACE(T1.NCMCode,'.',''),'') as Varchar), T0.Nivel, T0.Quantity1, T0.nivel1
Select @Nvl = MAX(Nivel) from #TabEst
-------------------- Construção de Tabela com itens de Faturamento
SELECT
	FAT.ItemCode, FAT.ItemName,
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
			substring(CONVERT(varchar(10),T0.docdate,103),7,4) + substring(CONVERT(varchar(10),docdate,103),4,2) DocdateDOC
			from inv1 T0
			left join INV4 T1 on T0.DocEntry = T1.DocEntry and T0.LineNum = T1.LineNum and T1.statype = 2
			Inner Join OITM T2 on T0.ItemCode = T2.ItemCode
			LEFT JOIN OUSG T3 on T3.ID = T0.Usage
		WHERE
			(T0.CFOPCode like '6%' or T0.CFOPCode like '5%')
			--And isnull(T2.MatType,0) = 1
			--AND ISNULL(T3.Usage, '') IN ('S010-Venda Produção','S015-Revenda', 'S016-Revenda a Ordem', 'S020-Rem.em Consig', 'S040-Rem.Amostra', 'S090-Transf. Filial', 'S120-Venda Prod ST', 'S121-Revenda ST', 'S5117Rem Entrega Fut', 'S6109-Venda ZFMANAUS')
			And Isnull(T3.U_gaFCI,'S') = 'S'
			And ISNULL(T0.ItemCode,'') in (select T10.Father from #tabEST T10)
			And not exists (select 1 from RIN1 ndi inner join ORIN nd on nd.docentry = ndi.docentry
							where ndi.BaseEntry = T1.DocEntry and ndi.BaseType = T0.ObjType and nd.SeqCode = '1')

	UNION ALL

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
			substring(CONVERT(varchar(10),T0.docdate,103),7,4) + substring(CONVERT(varchar(10),docdate,103),4,2) DocdateDOC
		from DLN1 T0
			left join DLN4 T1 on T0.DocEntry = T1.DocEntry and T0.LineNum = T1.LineNum and T1.statype = 2
			Inner Join OITM T2 on T0.ItemCode = T2.ItemCode
			LEFT JOIN OUSG T3 on T3.ID = T0.Usage
		WHERE
			(T0.CFOPCode like '6%' or T0.CFOPCode like '5%')
			And ISNULL(T0.ItemCode,'') in (select T10.Father from #tabEST T10)
			--AND ISNULL(T3.Usage, '') IN ('S010-Venda Produção','S015-Revenda', 'S016-Revenda a Ordem', 'S020-Rem.em Consig', 'S040-Rem.Amostra', 'S090-Transf. Filial', 'S120-Venda Prod ST', 'S121-Revenda ST', 'S5117Rem Entrega Fut', 'S6109-Venda ZFMANAUS')
			And Isnull(T3.U_gaFCI,'S') = 'S'
			And not exists (select 1 from RDN1 ndi inner join ORDN nd on nd.docentry = ndi.docentry
							where ndi.BaseEntry = T1.DocEntry and ndi.BaseType = T0.ObjType and nd.SeqCode = '1')
		) as FAT
WHERE
	FAT.DocdateDOC <= @DataIniRed
Group By
	FAT.ItemCode,  FAT.ItemName, left(FAT.CFOPCode,1), FAT.DocdateDOC

------------------------- Construção da Tabela Média MP
select
	Media.ItemCode,
	[MedMP] = sum(media.valoraduaneiro) / sum(media.quantidade),
	[Data] = Media.Data
Into #tabMedMP
from
	(select
		nfi.ItemCode,
		[Quantidade] = isnull(nfi.Quantity,0),
		[ValorAduaneiro] = isnull(nfi.LineTotal - ISNULL((select sum(imp.taxsum) II from PCH4 imp inner join ostt on ostt.AbsId = imp.staType inner join ONFT on onft.AbsId = ostt.NfTaxId where onft.Code IN('II', 'ICMS') and imp.docentry=nfi.docentry and imp.linenum=nfi.linenum And Isnull(imp.TaxInPrice,'N') = 'Y' group by imp.DocEntry,imp.LineNum),0),0),
		[Data] = substring(CONVERT(varchar, nf.DocDate,103),7,4) + substring(CONVERT(varchar, nf.DocDate,103),4,2)
	from
		PCH1 nfi
		inner join OPCH nf on nf.docentry = nfi.docentry
	where
		(nfi.CFOPCode in('3101', '3102') Or ISNULL(LEFT(nfi.CSTCode,1),'') IN ('1','2', '3'))and
		not exists (select 1 from RPC1 ndi inner join ORPC nd on nd.docentry = nfi.docentry
							where ndi.BaseEntry = nfi.DocEntry and ndi.BaseType = nf.ObjType and nd.SeqCode = '1')
	) As Media
	Where
		Media.Data <= @DataIniRed And
		Media.ItemCode in (Select distinct T50.Nivel1 From #tabEST T50)
	group by
		Media.itemcode, Media.Data

----------------- Criando Tratamento de Parcela Importada
Select @Nvl = MAX(Nivel) from #TabEst
While @Nvl > 0
Begin
	Insert into @ParcImp
	Select
		Rec.Father, Rec.ItemName, Rec.NCMCode, ISNULL((SUM(isnull(Pimp.Custo,0) * Rec.Quantity1)),0) + Sum(isnull(MP.MedMP,0) * Isnull(Rec.Quantity1,0))
	From
		#TabEst Rec
		Left Join #tabMedMP MP On Rec.Nivel1 = MP.ItemCode And MP.Data = (select MAX(T10.Data) from #tabMedMP T10 where Rec.nivel1 = T10.ItemCode) And Rec.nivel1 not in (select ItemCode from @ParcImp)
		Left Join @ParcImp PImp on PImp.ItemCode = Rec.nivel1
	Where
		Rec.Father not in (select ItemCode from @ParcImp) And
		Rec.Nivel = @Nvl
	Group By Rec.Father, Rec.ItemName, Rec.NCMCode
	
	Set @Nvl = @Nvl -1
End
--Select * from @ParcImp where ItemCode = '42F50SP-0101'

----------------- Criação de Tabela do registro 5020
Insert Into @tabReg5020
Select
	[Descricao] = T1.ItemName,
	[NCM] = T1.NCMCode,
	[ItemCode] = T1.ItemCode,
	[GTIN] = '',
	[Unidade] = 'Unid',
	[VO] = /*VO #Fat*/IsNull((Select Top 1 T0.VO from #tabFAT T0 where T1.ItemCode = T0.ItemCode order by T0.[DATADOC] desc,  T0.CFOP DESC),
			/*VO Deposito(2ºOpção)*/(select case when T10.AvgPrice > 0 then T10.AvgPrice * 1.15 else null end from OITW T10 where T10.WhsCode = '02' and T10.ItemCode = T1.ItemCode)),
	[CFOP] = IsNull((Select Top 1 T0.CFOP from #tabFAT T0 where T1.ItemCode = T0.ItemCode order by T0.[DATADOC] desc,  T0.CFOP DESC),0),
	[DATADOC]= IsNull((Select Top 1 T0.DataDoc from #tabFAT T0 where T1.ItemCode = T0.ItemCode order by T0.[DATADOC] desc,  T0.CFOP DESC),'200701'),
	[VI ] = T1.Custo
From
	@ParcImp T1
Order by ItemCode

----------------- Devolvendo Valores para o crystal reports
Select 
	* 
From 
	@tabReg5020 T0
	Left Join (
		SELECT
			T0.DocEntry,
			T0.ObjType, 
			T0.itemcode,
			T2.ItemName,
			T0.linetotal,
			T0.GrossBuyPr [CustoUnit],
			T0.GrossBuyPr*T0.quantity [CustoTotal],
			T1.taxsum [Imposto],
			T0.quantity [QtdeItem],
			(((T0.LineTotal)- (T1.taxsum)) - (T0.GrossBuyPr*T0.quantity )) [MargemLucro],
			T0.docdate,
			T0.CFOPCode,
			substring(CONVERT(varchar(10),T0.docdate,103),7,4) + substring(CONVERT(varchar(10),docdate,103),4,2) DocdateDOC
			from inv1 T0
			left join INV4 T1 on T0.DocEntry = T1.DocEntry and T0.LineNum = T1.LineNum and T1.statype = 2
			Inner Join OITM T2 on T0.ItemCode = T2.ItemCode
			LEFT JOIN OUSG T3 on T3.ID = T0.Usage
		WHERE
			(T0.CFOPCode like '6%' or T0.CFOPCode like '5%')
			--And isnull(T2.MatType,0) = 1
			--AND ISNULL(T3.Usage, '') IN ('S010-Venda Produção','S015-Revenda', 'S016-Revenda a Ordem', 'S020-Rem.em Consig', 'S040-Rem.Amostra', 'S090-Transf. Filial', 'S120-Venda Prod ST', 'S121-Revenda ST', 'S5117Rem Entrega Fut', 'S6109-Venda ZFMANAUS')
			And Isnull(T3.U_gaFCI,'S') = 'S'
			And ISNULL(T0.ItemCode,'') in (select T10.Father from #tabEST T10)
			And not exists (select 1 from RIN1 ndi inner join ORIN nd on nd.docentry = ndi.docentry
							where ndi.BaseEntry = T1.DocEntry and ndi.BaseType = T0.ObjType and nd.SeqCode = '1')

	UNION ALL

		SELECT 
			T0.DocEntry,
			T0.ObjType,
			T0.itemcode,
			T2.ItemName,
			T0.linetotal,
			T0.GrossBuyPr [CustoUnit],
			T0.GrossBuyPr*T0.quantity [CustoTotal],
			T1.taxsum [Imposto],
			T0.quantity [QtdeItem],
			(((T0.LineTotal)- (T1.taxsum)) - (T0.GrossBuyPr*T0.quantity )) [MargemLucro],
			T0.docdate,
			T0.CFOPCode,
			substring(CONVERT(varchar(10),T0.docdate,103),7,4) + substring(CONVERT(varchar(10),docdate,103),4,2) DocdateDOC
		from DLN1 T0
			left join DLN4 T1 on T0.DocEntry = T1.DocEntry and T0.LineNum = T1.LineNum and T1.statype = 2
			Inner Join OITM T2 on T0.ItemCode = T2.ItemCode
			LEFT JOIN OUSG T3 on T3.ID = T0.Usage
		WHERE
			(T0.CFOPCode like '6%' or T0.CFOPCode like '5%')
			And ISNULL(T0.ItemCode,'') in (select T10.Father from #tabEST T10)
			--AND ISNULL(T3.Usage, '') IN ('S010-Venda Produção','S015-Revenda', 'S016-Revenda a Ordem', 'S020-Rem.em Consig', 'S040-Rem.Amostra', 'S090-Transf. Filial', 'S120-Venda Prod ST', 'S121-Revenda ST', 'S5117Rem Entrega Fut', 'S6109-Venda ZFMANAUS')
			And Isnull(T3.U_gaFCI,'S') = 'S'
			And not exists (select 1 from RDN1 ndi inner join ORDN nd on nd.docentry = ndi.docentry
							where ndi.BaseEntry = T1.DocEntry and ndi.BaseType = T0.ObjType and nd.SeqCode = '1')
		) as T1 On T0.ItemCode = T1.ItemCode and T0.DATADOC = T1.DocdateDOC And T0.CFOP = left(T1.CFOPCode,1)
	
	
Drop Table #tabFat
Drop Table #tabEST
Drop Table #TabMedMP