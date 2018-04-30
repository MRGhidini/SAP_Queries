declare @DataIni as datetime
declare @DataFim as datetime	
declare @ReprIni as nvarchar(10)
declare @ReprFim as nvarchar(10)

/*SELECT * FROM OINV L0*/ DECLARE @Data1 NVARCHAR(100) /* WHERE */ Set @Data1 = /* L0.TaxDate */  '[%0]'
/*SELECT * FROM OINV L1*/ DECLARE @Data2 NVARCHAR(100) /* WHERE */ Set @Data2 = /* L1.TaxDate */  '[%1]'
/*SELECT * FROM OAGP L0*/ DECLARE @Repr1 NVARCHAR(10) /* WHERE */ Set @Repr1 = /* L0.AgentCode */ '[%2]'
/*SELECT * FROM OAGO L1*/ DECLARE @Repr2 NVARCHAR(10) /* WHERE */ Set @Repr2 = /* L1.AgentCode */ '[%3]'
/*SELECT * FROM OCRD L2*/ DECLARE @Grupo NVARCHAR(30) /* WHERE */ Set @Grupo = /* L2.U_OKS_GrupoPN */ '[%4]'

/*SELECT * FROM OCRD L2*/ DECLARE @PNInicial NVARCHAR(100) /* WHERE */ Set @PNInicial = /* L2.CardCode */  '[%5]'
/*SELECT * FROM OCRD L3*/ DECLARE @PNFinal NVARCHAR(100) /* WHERE */ Set @PNFinal = /* L3.CardCode */  '[%6]'


--Set @Data1 = '01/05/2013'
--Set @Data2 = '31/05/2013'
--set @Grupo = 'Rede Ancora'

set @DataIni = @Data1
set @DataFim = @Data2
set @ReprIni = @Repr1
set @ReprFim = @Repr2

--if (@DataIni is null or @DataIni <='19000101') begin set @DataIni = '19000101' end
--if (@DataFim is null or @DataFim <='19000101') begin set @DataFim = '39000101' end
if (@ReprIni is null or @ReprIni <'0000000') begin set @ReprIni = '0000000' end
if (@ReprFim is null or @ReprFim <='0000000') begin set @ReprFim = 'ZZZZZZZ' end

SELECT 
	c.CardCode,
	a.[Nome Representante] AS 'Representante',
	a.Representante as 'RepCode',
	isnull(b.U_UDF_TipoItem,'') as 'Grupo de Item Stock',
	a.[Data Lançamento],
	Case When b.U_UDF_TipoItem = 'Transmissão' Then Quantidade else 0 End as 'Transmissão',
	Case When b.U_UDF_TipoItem = 'Suspensão' Then Quantidade else 0 End as 'Suspensão',
	Case When b.U_UDF_TipoItem = 'Embreagem' Then Quantidade else 0 End as 'Embreagem',
	Case When b.U_UDF_TipoItem Not in ( 'Transmissão', 'Suspensão', 'Embreagem') Then Quantidade else 0 End as 'Outros',
	
	Case When b.U_UDF_TipoItem = 'Transmissão' Then CMV else 0 End as 'Transmissão CMV',
	Case When b.U_UDF_TipoItem = 'Suspensão' Then CMV else 0 End as 'Suspensão CMV',
	Case When b.U_UDF_TipoItem = 'Embreagem' Then CMV else 0 End as 'Embreagem CMV',
	Case When b.U_UDF_TipoItem Not in ( 'Transmissão', 'Suspensão', 'Embreagem') Then CMV else 0 End as 'Outros CMV',
	
	Case When b.U_UDF_TipoItem = 'Transmissão' Then [Total Mercadoria R$] else 0 End as 'Transmissão R$',
	Case When b.U_UDF_TipoItem = 'Suspensão' Then [Total Mercadoria R$] else 0 End as 'Suspensão R$',
	Case When b.U_UDF_TipoItem = 'Embreagem' Then [Total Mercadoria R$] else 0 End as 'Embreagem R$',
	Case When b.U_UDF_TipoItem Not in ( 'Transmissão', 'Suspensão', 'Embreagem') Then [Total Mercadoria R$] else 0 End as 'Outros R$',
	e.DiscPrcnt,
	a.[Condição Pagamento],
	a.Região,
	a.UF,
	convert (int,ROW_NUMBER () over(partition by c.CardCode order by c.CardCode, [Data Lançamento] desc)) as Ordem
Into #Selecao
FROM FVT_NFS_5 (0,99,@DataIni,@DataFim,'+CAN') AS a
LEFT JOIN OITB AS b ON a.Grupo = b.ItmsGrpCod
LEFT JOIN OCRD AS c ON a.[Código PN] = c.CardCode
LEFT JOIN OSLP AS d ON a.[Código Vendedor] = d.SlpCode
INNER JOIN INV1 as e on e.DocEntry = a.DocEntry and e.LineNum = a.[Linha Doc]
Left Join [@OKS_NATOPE] as f on f.Code = a.CFOP
Where a.[Total Mercadoria R$] <> 0
	and f.U_UDF_Classifica = 'VENDA'
	and c.CardCode between @PNInicial and @PNFinal
	and a.Representante between @ReprIni and @ReprFim
	and rtrim(ltrim(isnull(c.U_OKS_GrupoPN,''))) like '%' + @Grupo + '%'

Select 
	a.CardCode, 
	Sum(a.Transmissão) as 'Transmissão',
	Sum(a.Suspensão) as 'Suspensão',
	Sum(a.Embreagem) as 'Embreagem',
	Sum(a.Outros) as 'Outros',

	Sum(a.[Transmissão CMV]) as 'Transmissão CMV',
	Sum(a.[Suspensão CMV]) as 'Suspensão CMV',
	Sum(a.[Embreagem CMV]) as 'Embreagem CMV',
	Sum(a.[Outros CMV]) as 'Outros CMV',

	Sum(a.[Transmissão R$]) as 'Transmissão R$',
	Sum(a.[Suspensão R$]) as 'Suspensão R$',
	Sum(a.[Embreagem R$]) as 'Embreagem R$',
	Sum(a.[Outros R$]) as 'Outros R$',
	(Select x.[Data Lançamento] From #Selecao as x Where x.Ordem = 1 and x.CardCode = a.CardCode) as 'Última Venda',
	(Select x.DiscPrcnt From #Selecao as x Where x.Ordem = 1 and x.CardCode = a.CardCode) as 'DiscPrcnt',
	(Select x.[Condição Pagamento] From #Selecao as x Where x.Ordem = 1 and x.CardCode = a.CardCode) as 'Condição Pagamento'
Into #Soma
From #Selecao as a 
Group By 
	a.CardCode,
	a.Região,
	a.UF

Select 
	a.CardCode,
	a.CardFName,
	b.Região,
	b.UF,
	b.[Representante],
	isnull(a.U_OKS_GrupoPN,'') as 'Grupo de Consolidação',	
	a.CreateDate,
	a.CreditLine,
	c.Transmissão,
	c.Suspensão,
	c.Embreagem,
	c.Outros,
	c.[Transmissão CMV],
	c.[Suspensão CMV],
	c.[Embreagem CMV],
	c.[Outros CMV],
	c.[Transmissão R$],
	c.[Suspensão R$],
	c.[Embreagem R$],
	c.[Outros R$],
	Case When c.[Transmissão R$] = 0 Then 0 Else (c.[Transmissão R$] / c.[Transmissão]) End as 'Transmissão Médio R$',
	Case When c.[Suspensão] = 0 Then 0 Else (c.[Suspensão R$] / c.[Suspensão]) End as 'Suspensão Médio R$',
	Case When c.[Embreagem] = 0 Then 0 Else (c.[Embreagem R$] / c.[Embreagem]) End as 'Embreagem Médio R$',
	Case When c.[Outros] = 0 Then 0 Else (c.[Outros R$] / c.[Outros]) End as 'Outros Médio R$',
	c.[Última Venda] ,
	c.DiscPrcnt as 'Ultimo Desconto',
	c.[Condição Pagamento] as 'Ultima Condição de Pagamento'
From OCRD as a
Left Join #Selecao as b on b.CardCode = a.CardCode
Left Join #Soma as c on c.CardCode = b.CardCode
Where a.Cardtype = 'C'
	and a.CardCode between @PNInicial and @PNFinal
	and b.RepCode between @ReprIni and @ReprFim
	and rtrim(ltrim(isnull(a.U_OKS_GrupoPN,''))) like '%'+@Grupo+'%'

Group By
	a.[CardCode],
	a.[CardFName],
	b.[Região],
	b.[UF],
	b.[Representante],
	isnull(a.[U_OKS_GrupoPN],''),	
	a.[CreateDate],
	a.[CreditLine],
	c.[Transmissão],
	c.[Suspensão],
	c.[Embreagem],
	c.[Outros],
	c.[Transmissão CMV],
	c.[Suspensão CMV],
	c.[Embreagem CMV],
	c.[Outros CMV],
	c.[Transmissão R$],
	c.[Suspensão R$],
	c.[Embreagem R$],
	c.[Outros R$],
	c.[Última Venda],
	c.[DiscPrcnt],
	c.[Condição Pagamento]

Drop Table #Selecao
Drop Table #Soma