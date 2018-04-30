-- CRIA_FVT_REC_5 -------------------------------------------------------------------------------------------------------------
--
-- @CAN = '+CAN' TRAZ CANCELADAS  ; @CAN ='-CAN' IGNORA AS CANCELADAS, TRAZ SOMENTE A ORIGINAL --------
--
--	Substituições(CTRL H)		: _REC para _xxx									= Nomes internos 
--								: [REC para [xxx									= Tabelas internas
--								: 'REC' para 'xxx'									= Referência ao docto NFS
--								: RECCAN para xxxCAN								= Referências ao documento Cancelamento
--								: RECDEV para xxxDEV								= Referências ao documento Devolução
--								: [OPDN para [xxxx									= Tabelas B1 docto marketing - cabec
--								: [PDN para [xxx									= Tabelas B1 docto marketing - linhas
--								: t1.[BaseType] = '20' para t1.[BaseType] = 'xx'	= Alterar para o documento xx
--								: t2.[BaseType] = '20' para t1.[BaseType] = 'xx'	= Alterar para o documento xx 
--
-------------------------------------------------------------------------------------------------------------------------------

if OBJECT_ID ('FVT_REC_5') is not null
	drop function FVT_REC_5
go
create function FVT_REC_5 
	(	@BPLIdIni as int, 
		@BPLIdFim as int, 
		@DataIni as datetime, 
		@DataFim as datetime, 
		@CAN as char(4)
	) returns table with encryption as return
	
------------------------------------------------------------------------------------------------------	

with 
[PLANO_CTAS] as
(
select	t0.AcctCode as 'Conta Chave',
				(case when (select t90.EnbSgmnAct from [CINF] as t90) = 'Y' then (t0.Segment_0) else (t0.AcctCode) end) as 'Conta Contábil',
				t0.AcctName as 'Nome da Conta'	
from [OACT] as t0
),

[TIPO_IMPOSTO] as
(
select	t0.AbsId,
		t0.Code,
		t0.Imposto 
from FVT_TIPO_IMPOSTO_5 () as t0
),

[REC] as
(
select	
		case when t0.CANCELED <> 'C' then 'REC' else 'RECCAN' end as 'Tipo DOC',
		Case when t0.DocStatus = 'C' Then 'Fechado'
			 when t0.DocStatus = 'O' and t0.Printed = 'N' Then 'Aberto'
			 when t0.DocStatus = 'O' and t0.Printed = 'Y' Then 'AbertoImpresso' 
			 when t0.DocStatus = 'O' and t0.Printed = 'A' Then 'AbertoImpressoAlterado'
			 else '???' end as 'Status Docto',
		t0.CardCode as 'Código PN',
		t0.CardName as 'Nome PN',
		ocrd.GroupCode as 'Grupo PN',
		(Select t11.GroupName From [OCRG] as t11 Where t11.GroupCode = (select t10.GroupCode from [OCRD] as t10 where t10.Cardcode = t0.CardCode)) as 'Nome Grupo PN',
		ocrd.CardFName as 'Nome Abreviado',	
		t2.CountyS as 'Código Município',
		ocnt.Name as 'Nome Município',
		t2.StateS as 'UF',
		(select(dbo.[FVE_REGIOES_5] (t2.StateS)))  as 'Região',
		t0.BPLId as 'BPLId',
		t0.BPLName as 'Filial',
		t0.DocNum as 'Número SAP',
		t0.DocEntry as 'DocEntry',
		t0.NumAtCard as 'Número Referência PN',
		t0.ImportEnt as 'Número Pedido Cliente',
		t0.Project as 'Projeto',
		t0.UpdInvnt as 'Flag Nota Futura',
 		t0.DocDate as 'Data Lançamento',
		t0.Serial as 'Serial',
		(case	when isnull(t0.SeqCode,0) <> -2 then nfn1.SeqName else 'Externo' end) as 'SeqName',
		onfm.NfmName as 'Model',		
		octg.PymntGroup as	'Condição Pagamento',	
		t0.Installmnt as	'Número Parcelas',
		isnull(t0.PeyMethod,'') as	'Forma de Pagamento',
		t2.Incoterms as	'Incoterms',	
		t2.Carrier as 'Transportadora',
		(select t90.CardFName from [OCRD] as t90 where t90.CardCode = t2.Carrier) as 'Nome Transportadora',
		isnull(t2.QoP,0) as 'Quantidade Embalagem',
		t2.PackDesc as 'Descrição Embalagem',
		isnull(t2.GrsWeight,0) as	'Peso Bruto',
		isnull(t2.NetWeight,0) as	'Peso Líquido',
		t0.slpcode as 'Código Vendedor',
		(select isnull(t12.SlpName, ' ') From [OSLP] as t12 where t12.SlpCode = t0.SlpCode) as 'Nome Vendedor',
		isnull(t0.AgentCode,'') as 'Representante',
		isnull(oagp.AgentName,'') as 'Nome Representante',
		(Select SUM(isnull(t10.LineTotal,0)) From [PDN3] as t10 inner join [OEXD] as t11 on t10.ExpnsCode = t11.ExpnsCode
																Where t10.DocEntry = t0.DocEntry and isnull(t11.ExpnsType,0) = 1) - 
		isnull((select SUM(isnull(t10.LineTotal,0)) from [PDN13] as t10 inner join [OEXD] as t11 on t10.ExpnsCode = t11.ExpnsCode
																where t10.DocEntry = t0.DocEntry and isnull(t11.ExpnsType,0) = 1 and t10.DistribExp = 'Y'),0) as 'DA Não Distr Frete',
		(Select SUM(isnull(t10.LineTotal,0)) From [PDN3] as t10 inner join [OEXD] as t11 on t10.ExpnsCode = t11.ExpnsCode
																Where t10.DocEntry = t0.DocEntry and isnull(t11.ExpnsType,0) = 2) -
		isnull((select SUM(isnull(t10.LineTotal,0)) from [PDN13] as t10 inner join [OEXD] as t11 on t10.ExpnsCode = t11.ExpnsCode 
																where t10.DocEntry = t0.DocEntry and isnull(t11.ExpnsType,0) = 2 and t10.DistribExp = 'Y'),0) as 'DA Não Distr Seguro',
		(Select SUM(isnull(t10.LineTotal,0)) From [PDN3] as t10 inner join [OEXD] as t11 on t10.ExpnsCode = t11.ExpnsCode
																Where t10.DocEntry = t0.DocEntry and isnull(t11.ExpnsType,0) not in (1,2)) -
		isnull((select SUM(isnull(t10.LineTotal,0)) from [PDN13] as t10 inner join [OEXD] as t11 on t10.ExpnsCode = t11.ExpnsCode 
																where t10.DocEntry = t0.DocEntry and isnull(t11.ExpnsType,0) not in (1,2) and t10.DistribExp = 'Y'),0) as 'DA Não Distr Outros',
		isnull(oshp.TrnspName,'') as 'Tipo de Envio',
		(Select t10.Usage From [OUSG] as t10 Where t10.ID = t2.MainUsage) as 'Uso Principal',
		( SUM (case when t1.TaxOnly = 'Y' then 0.00 else (t1.LineTotal)*(case when (t0.DocTotal + t0.DiscSum) = 0.00 then 1.00 else ((t0.DocTotal) / (t0.DocTotal + t0.DiscSum)) end) end ) over (partition by t0.docentry) ) as 'Total Mercadoria R$ Doc', /* Total Mercadoria R$ Documento */ 
		------------------------------------------- Detalhe do Item ---------------------------------------------------------------------------------------------------
		Case when t1.LineStatus = 'C' then 'Fechado'
			 when t1.LineStatus = 'O' then 'Aberto' else '???'
			 end as 'Status Linha',	
		t1.ItemCode as 'Código Item',
		t1.SubCatNum as 'Código Catálogo',
		oitm.ItemName as 'Descrição Item',
		oitm.ItmsGrpCod as 'Grupo',
		oitb.ItmsGrpNam as 'Nome Grupo',
		oncm.NcmCode as 'NCM',	
		t1.TreeType as 'Tipo Estrutura',
		t1.slpcode as 'Código Vendedor Linha',
		(select isnull(t12.SlpName, ' ') From [OSLP] as t12 where t12.SlpCode = t1.SlpCode) as 'Nome Vendedor Linha',
		t1.WhsCode as 'Depósito',	
		owhs.DropShip as 'DepósitoED',	
		t1.UpdInvntry as 'Atualiza Estoque',
		t1.LineNum as 'Linha Doc',
		t1.VisOrder + 1 as 'Linha Ordem',
		t1.ShipDate as 'Data Entrega',
		(case when t1.TaxOnly = 'Y' then 0.00 else t1.Quantity end) as 'Quantidade',
		(case when t1.TaxOnly = 'Y' then 0.00 else t1.DelivrdQty end) as 'Quantidade Entregue',
		t1.unitMsr as 'UMV',
		t1.NumPerMsr as 'ItensUMV',
		oitm.InvntryUom as 'UME',
		(case when t1.TaxOnly = 'Y' then 0.00 else t1.Price end) as 'Unitário Moeda',
		t1.Currency as 'Moeda',
		t1.Rate as 'Taxa Moeda',
		(case when t1.TaxOnly = 'Y' then 0.00 else (case when t1.Rate <> 0	then (t1.Price * t1.Rate) else t1.Price end ) end) as 'Unitário R$',
		(case when t1.TaxOnly = 'Y' then 0.00 else (t1.LineTotal)*(case when (t0.DocTotal + t0.DiscSum) = 0.00 then 1.00 else ((t0.DocTotal) / (t0.DocTotal + t0.DiscSum)) end) end) as 'Total Mercadoria R$',
		(case when t1.TaxOnly = 'Y' then 0.00 else (case when t1.Rate <> 0	then (t1.TotalFrgn)*(case when (t0.DocTotal + t0.DiscSum) = 0.00 then 1.00 else ((t0.DocTotal) / (t0.DocTotal + t0.DiscSum)) end) 
																			else (t1.LineTotal)*(case when (t0.DocTotal + t0.DiscSum) = 0.00 then 1.00 else ((t0.DocTotal) / (t0.DocTotal + t0.DiscSum)) end) end ) end) as 'Total Mercadoria Moeda',

		isnull((select SUM(isnull(t10.LineTotal,0)) from [PDN2] as t10 inner join [OEXD] as t11 on t10.ExpnsCode = t11.ExpnsCode 
																where t10.DocEntry = t0.DocEntry and t10.LineNum = t1.LineNum and isnull(t11.ExpnsType,0) = 1),0) as 'DA Linha Frete',
		isnull((select SUM(isnull(t10.LineTotal,0)) from [PDN2] as t10 inner join [OEXD] as t11 on t10.ExpnsCode = t11.ExpnsCode 
																where t10.DocEntry = t0.DocEntry and t10.LineNum = t1.LineNum and isnull(t11.ExpnsType,0) = 2),0) as 'DA Linha Seguro',
		isnull((select SUM(isnull(t10.LineTotal,0)) from [PDN2] as t10 inner join [OEXD] as t11 on t10.ExpnsCode = t11.ExpnsCode 
																where t10.DocEntry = t0.DocEntry and t10.LineNum = t1.LineNum and isnull(t11.ExpnsType,0) not in (1,2)),0) as 'DA Linha Outros',	

		isnull((select SUM(isnull(t10.LineTotal,0)) from [PDN13] as t10 inner join [OEXD] as t11 on t10.ExpnsCode = t11.ExpnsCode 
																where t10.DocEntry = t0.DocEntry and t10.LineNum = t1.LineNum and isnull(t11.ExpnsType,0) = 1),0) as 'DA Distr Frete',
		isnull((select SUM(isnull(t10.LineTotal,0)) from [PDN13] as t10 inner join [OEXD] as t11 on t10.ExpnsCode = t11.ExpnsCode 
																where t10.DocEntry = t0.DocEntry and t10.LineNum = t1.LineNum and isnull(t11.ExpnsType,0) = 2),0) as 'DA Distr Seguro',
		isnull((select SUM(isnull(t10.LineTotal,0)) from [PDN13] as t10 inner join [OEXD] as t11 on t10.ExpnsCode = t11.ExpnsCode 
																where t10.DocEntry = t0.DocEntry and t10.LineNum = t1.LineNum and isnull(t11.ExpnsType,0) not in (1,2)),0) as 'DA Distr Outros',	
		t1.Usage as 'Código Utilização',
		ousg.usage as 'Nome Utilização',																																																															
		t1.TaxCode as 'Código Imposto',
		t1.TaxOnly as 'Só Imposto',
		t1.PostTax as 'Imposto Custo',
		t1.CFOPCode as 'CFOP',
		t1.CSTCode as 'CST ICMS',
		t1.CSTfIPI as 'CST IPI',
		t1.CSTfPIS as 'CST PIS',
		t1.CSTfCOFINS as 'CST COFINS',
		(t1.StockPrice * t1.Quantity) as 'CMV',
		t1.BaseEntry as 'DocEntryBase',
		t1.BaseLine as 'BaseLine',
		t1.BaseType as 'BaseType',
		(case	when t1.basetype = 20 then (select t90.SeqCode from OPDN as t90 where t90.DocEntry = t1.BaseEntry)
					when t1.basetype = 18 then (select t90.SeqCode from OPCH as t90 where t90.DocEntry = t1.BaseEntry)
					when t1.basetype = 15 then (select t90.SeqCode from ODLN as t90 where t90.DocEntry = t1.BaseEntry)
					when t1.basetype = 13 then (select t90.SeqCode from OINV as t90 where t90.DocEntry = t1.BaseEntry)
					when t1.basetype = 23 then (select t90.SeqCode from OQUT as t90 where t90.DocEntry = t1.BaseEntry)
					when t1.basetype = 17 then (select t90.SeqCode from ORDR as t90 where t90.DocEntry = t1.BaseEntry)
					when t1.basetype = 16 then (select t90.SeqCode from ORDN as t90 where t90.DocEntry = t1.BaseEntry)
					when t1.basetype = 14 then (select t90.SeqCode from ORIN as t90 where t90.DocEntry = t1.BaseEntry)				
					when t1.basetype = 540000006 then (select t90.SeqCode from OPQT as t90 where t90.DocEntry = t1.BaseEntry)
					when t1.basetype = 22 then (select t90.SeqCode from OPOR as t90 where t90.DocEntry = t1.BaseEntry)
					when t1.basetype = 21 then (select t90.SeqCode from ORPD as t90 where t90.DocEntry = t1.BaseEntry)
					when t1.basetype = 19 then (select t90.SeqCode from ORPC as t90 where t90.DocEntry = t1.BaseEntry)				
					else null end) as 'BaseSeqCode',
		(select(dbo.[FVE_CFOP_5] (t1.CFOPCode)))  as 'Tipo Saída',
		(select t10.[Conta Contábil] from [PLANO_CTAS] as t10 where t10.[Conta Chave] = t1.AcctCode) as 'Conta Res',
		(select t10.[Nome da Conta] from [PLANO_CTAS] as t10 where t10.[Conta Chave] = t1.AcctCode) as 'Nome Conta Res',
		(select t10.[Conta Contábil] from [PLANO_CTAS] as t10 where t10.[Conta Chave] = t1.CogsAcct) as 'Conta CPV',
		(select t10.[Nome da Conta] from [PLANO_CTAS] as t10 where t10.[Conta Chave] = t1.CogsAcct) as 'Nome Conta CPV'
		from [OPDN] as t0    
inner join [PDN1] as t1 on t1.DocEntry = t0.DocEntry
inner join [PDN12] as t2 on t2.DocEntry = t0.DocEntry
inner join [OCRD] as ocrd on ocrd.CardCode = t0.CardCode
inner join [OITM] as oitm on oitm.ItemCode = t1.ItemCode
inner join [OITB] as oitb on oitb.ItmsGrpCod = oitm.ItmsGrpCod
inner join [OWHS] as owhs on owhs.WhsCode = t1.WhsCode
left outer join [OCNT] as ocnt on ocnt.AbsId = t2.CountyS
left outer join [NFN1] as nfn1 on nfn1.SeqCode = t0.SeqCode
left outer join [ONFM] as onfm on onfm.AbsEntry = t0.Model
left outer join [OCTG] as octg on octg.GroupNum = t0.GroupNum
left outer join [OAGP] as oagp on oagp.AgentCode = t0.AgentCode
left outer join [ONCM] as oncm on oncm.AbsEntry = oitm.NCMCode
left outer join [OUSG] as ousg on ousg.ID = t1.Usage
left outer join [OSHP] as oshp on oshp.TrnspCode = t0.TrnspCode
where	(t0.DocDate between @DataIni and @DataFim) 
		and ( t0.BPLId is null or t0.BPLId between @BPLIdIni and @BPLIdFim)
),

[REC_DA_NDISTR] as 
(
select	t0.[DocEntry] as 'DocEntry3'
		,t0.[Linha Doc] as 'Linha Doc3'
		,t0.[DA Não Distr Frete]
		,t0.[DA Não Distr Outros]
		,t0.[DA Não Distr Seguro]
		, (case when t0.[Total Mercadoria R$ Doc] = 0 then 0 else ( ( t0.[Total Mercadoria R$] / t0.[Total Mercadoria R$ Doc] ) * isnull(t0.[DA Não Distr Frete],0) ) end ) as 'DA Cabec Distrib Frete'
		, (case when t0.[Total Mercadoria R$ Doc] = 0 then 0 else ( ( t0.[Total Mercadoria R$] / t0.[Total Mercadoria R$ Doc] ) * isnull(t0.[DA Não Distr Outros],0) ) end ) as 'DA Cabec Distrib Outros'
		, (case when t0.[Total Mercadoria R$ Doc] = 0 then 0 else ( ( t0.[Total Mercadoria R$] / t0.[Total Mercadoria R$ Doc] ) * isnull(t0.[DA Não Distr Seguro],0) ) end ) as 'DA Cabec Distrib Seguro'
from [REC] as t0
),

[REC_TAX0] as
(
select	t1.DocEntry as 'DocEntry1',
		t1.LineNum as 'Linha Doc1',
		isnull(t4.TaxSum,0) as 'Valor Imposto',
		t4.BaseSum as 'Base Imposto',
		t4.TaxInPrice as 'Incluso',
		t9.NfTaxId as 'Tipo_Imposto',
		t10.Imposto as 'Imposto',
		t4.ExpnsCode as 'Código da Despesa',
		(case when t4.ExpnsCode = -1 then -1 else (select t8.ExpnsType from [OEXD] as t8 where t8.ExpnsCode = t4.ExpnsCode) end) as 'Tipo da Despesa',
		(select top(1) isnull(t11.Rate,0.00) from [STA1] as t11 
															where t11.StaCode = t4.StaCode and t11.SttType = t4.staType and t11.EfctDate <= t2.[Data Lançamento] order by t11.EfctDate desc) as 'Alíquota',
		(select top(1) isnull(t11.U_Lucro,0.00) from [STA1] as t11 
															where t11.StaCode = t4.StaCode and t11.SttType = t4.staType and t11.EfctDate <= t2.[Data Lançamento] order by t11.EfctDate desc) as 'MVA',
		(select top(1) isnull(t11.U_AliqInt,0.00) from [STA1] as t11 
															where t11.StaCode = t4.StaCode and t11.SttType = t4.staType and t11.EfctDate <= t2.[Data Lançamento] order by t11.EfctDate desc) as 'Alíquota Interna'															
from [PDN1] as t1
inner join [REC] as t2 on t2.DocEntry = t1.DocEntry and t2.[Linha Doc] = t1.LineNum	
inner join [PDN4] as t4 on t4.DocEntry = t1.DocEntry and t4.LineNum = t1.LineNum
inner join [OSTT] as t9 on t9.AbsId = t4.staType
inner join [TIPO_IMPOSTO] as t10 on t10.AbsId = t9.NfTaxId
--where isnull(t4.TaxStatus,'N') <> 'Y' /* Não traz o que não é imposto, SAP grava para doctos de adiantamento */
--where t4.ExpnsCode = -1  /* exclui impostos despesas adicionais */
),

[REC_TAX] as
(
select	t0.DocEntry1,
		t0.[Linha Doc1],
		sum(t0.[Valor Imposto]) as 'Valor Imposto',
		sum(t0.[Base Imposto]) as 'Base Imposto',
		t0.Incluso,
		t0.Tipo_Imposto,
		t0.Imposto,
		t0.[Tipo da Despesa],
		max(t0.Alíquota) as 'Alíquota',
		max(t0.MVA) as 'MVA',
		max(t0.[Alíquota Interna]) as 'Alíquota Interna' 
from [REC_TAX0] as t0
group by t0.DocEntry1, t0.[Linha Doc1], t0.Incluso, t0.Tipo_Imposto, t0.Imposto, t0.[Tipo da Despesa]
),

[REC_TAX_SUM] as 
( 
select	t0.DocEntry1 as 'DocEntry1',
				t0.[Linha Doc1] as 'Linha Doc1',
				---------------------------------------- bloco impostos dos itens -------------------------------------------
				(CASE	when t0.[Imposto] = 'COFINS'	and t0.[Tipo da Despesa] = -1 and t0.Incluso = 'Y' then t0.[Valor Imposto] else 0 end ) as 'COFINS-I',
				(CASE	when t0.[Imposto] = 'PIS'		and t0.[Tipo da Despesa] = -1 and t0.Incluso = 'Y' then t0.[Valor Imposto] else 0 end ) as 'PIS-I',
				(CASE	when t0.[Imposto] = 'ICMS'		and t0.[Tipo da Despesa] = -1 and t0.Incluso = 'Y' then t0.[Valor Imposto] else 0 end ) as 'ICMS-I',
				(CASE	when t0.[Imposto] = 'ICMS-ST'	and t0.[Tipo da Despesa] = -1 and t0.Incluso = 'Y' then t0.[Valor Imposto] else 0 end ) as 'ICMS-ST-I',
				(CASE	when t0.[Imposto] = 'IPI'		and t0.[Tipo da Despesa] = -1 and t0.Incluso = 'Y' then t0.[Valor Imposto] else 0 end ) as 'IPI-I',
				(CASE	when t0.[Imposto] = 'ISS'		and t0.[Tipo da Despesa] = -1 and t0.Incluso = 'Y' then t0.[Valor Imposto] else 0 end ) as 'ISS-I',
				(CASE	when t0.[Imposto] = 'CSLL'		and t0.[Tipo da Despesa] = -1 and t0.Incluso = 'Y' then t0.[Valor Imposto] else 0 end ) as 'CSLL-I',
				(CASE	when t0.[Imposto] = 'IRPJ'		and t0.[Tipo da Despesa] = -1 and t0.Incluso = 'Y' then t0.[Valor Imposto] else 0 end ) as 'IRPJ-I',
				(CASE	when t0.[Imposto] = 'II'		and t0.[Tipo da Despesa] = -1 and t0.Incluso = 'Y' then t0.[Valor Imposto] else 0 end ) as 'II-I',
				(CASE	when t0.[Imposto] not in ('COFINS','PIS','ICMS','ICMS-ST','IPI','ISS','CSLL','IRPJ','II') and t0.[Tipo da Despesa] = -1 and t0.Incluso = 'Y' then t0.[Valor Imposto] else 0 end ) as 'OUTROS IMP-I',

				(CASE	when t0.[Imposto] = 'COFINS'	and t0.[Tipo da Despesa] = -1 and t0.Incluso <> 'Y' then t0.[Valor Imposto] else 0 end ) as 'COFINS-NI',
				(CASE	when t0.[Imposto] = 'PIS'		and t0.[Tipo da Despesa] = -1 and t0.Incluso <> 'Y' then t0.[Valor Imposto] else 0 end ) as 'PIS-NI',
				(CASE	when t0.[Imposto] = 'ICMS'		and t0.[Tipo da Despesa] = -1 and t0.Incluso <> 'Y' then t0.[Valor Imposto] else 0 end ) as 'ICMS-NI',
				(CASE	when t0.[Imposto] = 'ICMS-ST'	and t0.[Tipo da Despesa] = -1 and t0.Incluso <> 'Y' then t0.[Valor Imposto] else 0 end ) as 'ICMS-ST-NI',
				(CASE	when t0.[Imposto] = 'IPI'		and t0.[Tipo da Despesa] = -1 and t0.Incluso <> 'Y' then t0.[Valor Imposto] else 0 end ) as 'IPI-NI',
				(CASE	when t0.[Imposto] = 'ISS'		and t0.[Tipo da Despesa] = -1 and t0.Incluso <> 'Y' then t0.[Valor Imposto] else 0 end ) as 'ISS-NI',
				(CASE	when t0.[Imposto] = 'CSLL'		and t0.[Tipo da Despesa] = -1 and t0.Incluso <> 'Y' then t0.[Valor Imposto] else 0 end ) as 'CSLL-NI',
				(CASE	when t0.[Imposto] = 'IRPJ'		and t0.[Tipo da Despesa] = -1 and t0.Incluso <> 'Y' then t0.[Valor Imposto] else 0 end ) as 'IRPJ-NI',
				(CASE	when t0.[Imposto] = 'II'		and t0.[Tipo da Despesa] = -1 and t0.Incluso <> 'Y' then t0.[Valor Imposto] else 0 end ) as 'II-NI',
				(CASE	when t0.[Imposto] not in ('COFINS','PIS','ICMS','ICMS-ST','IPI','ISS','CSLL','IRPJ','II') and t0.[Tipo da Despesa] = -1 and t0.Incluso <> 'Y' then t0.[Valor Imposto] else 0 end ) as 'OUTROS IMP-NI',

				(CASE	when t0.[Imposto] = 'COFINS'	and t0.[Tipo da Despesa] = -1 then t0.[Base Imposto] else 0 end ) as 'Base COFINS',
				(CASE	when t0.[Imposto] = 'PIS'		and t0.[Tipo da Despesa] = -1 then t0.[Base Imposto] else 0 end ) as 'Base PIS',
				(CASE	when t0.[Imposto] = 'ICMS'		and t0.[Tipo da Despesa] = -1 then t0.[Base Imposto] else 0 end ) as 'Base ICMS',
				(CASE	when t0.[Imposto] = 'ICMS-ST'	and t0.[Tipo da Despesa] = -1 then t0.[Base Imposto] else 0 end ) as 'Base ICMS-ST',
				(CASE	when t0.[Imposto] = 'IPI'		and t0.[Tipo da Despesa] = -1 then t0.[Base Imposto] else 0 end ) as 'Base IPI',
				(CASE	when t0.[Imposto] = 'ISS'		and t0.[Tipo da Despesa] = -1 then t0.[Base Imposto] else 0 end ) as 'Base ISS',
				(CASE	when t0.[Imposto] = 'CSLL'		and t0.[Tipo da Despesa] = -1 then t0.[Base Imposto] else 0 end ) as 'Base CSLL',
				(CASE	when t0.[Imposto] = 'IRPJ'		and t0.[Tipo da Despesa] = -1 then t0.[Base Imposto] else 0 end ) as 'Base IRPJ',
				(CASE	when t0.[Imposto] = 'II'		and t0.[Tipo da Despesa] = -1 then t0.[Base Imposto] else 0 end ) as 'Base II',
				(CASE	when t0.[Imposto] not in ('COFINS','PIS','ICMS','ICMS-ST','IPI','ISS','CSLL','IRPJ','II') and t0.[Tipo da Despesa] = -1 then t0.[Base Imposto] else 0 end ) as 'Base OUTROS IMP',

				(CASE	when t0.[Imposto] = 'COFINS'	and t0.[Tipo da Despesa] = -1 then t0.Alíquota else 0 end ) as 'Alíquota COFINS',
				(CASE	when t0.[Imposto] = 'PIS'		and t0.[Tipo da Despesa] = -1 then t0.Alíquota else 0 end ) as 'Alíquota PIS',
				(CASE	when t0.[Imposto] = 'ICMS'		and t0.[Tipo da Despesa] = -1 then t0.Alíquota else 0 end ) as 'Alíquota ICMS',
				(CASE	when t0.[Imposto] = 'ICMS-ST'	and t0.[Tipo da Despesa] = -1 then t0.Alíquota else 0 end ) as 'Alíquota ICMS-ST',
				(CASE	when t0.[Imposto] = 'ICMS-ST'	and t0.[Tipo da Despesa] = -1 then t0.[Alíquota Interna] else 0 end ) as 'Alíquota Interna ICMS-ST',
				(CASE	when t0.[Imposto] = 'ICMS-ST'	and t0.[Tipo da Despesa] = -1 then t0.MVA else 0 end ) as 'MVA ICMS-ST',
				(CASE	when t0.[Imposto] = 'IPI'		and t0.[Tipo da Despesa] = -1 then t0.Alíquota else 0 end ) as 'Alíquota IPI',
				(CASE	when t0.[Imposto] = 'ISS'		and t0.[Tipo da Despesa] = -1 then t0.Alíquota else 0 end ) as 'Alíquota ISS',
				(CASE	when t0.[Imposto] = 'CSLL'		and t0.[Tipo da Despesa] = -1 then t0.Alíquota else 0 end ) as 'Alíquota CSLL',
				(CASE	when t0.[Imposto] = 'IRPJ'		and t0.[Tipo da Despesa] = -1 then t0.Alíquota else 0 end ) as 'Alíquota IRPJ',
				(CASE	when t0.[Imposto] = 'II'		and t0.[Tipo da Despesa] = -1 then t0.Alíquota else 0 end ) as 'Alíquota II',
				(CASE	when t0.[Imposto] not in ('COFINS','PIS','ICMS','ICMS-ST','IPI','ISS','CSLL','IRPJ','II') and t0.[Tipo da Despesa] = -1 then t0.Alíquota else 0 end ) as 'Alíquota OUTROS IMP',

				----------------------------------- impostos das Despesas Adicionais ------------------------------------------------------------------------------------------------------
				(CASE	when t0.[Imposto] = 'COFINS'	and t0.[Tipo da Despesa] <> -1 and t0.Incluso = 'Y' then t0.[Valor Imposto] else 0 end ) as 'DA COFINS-I',
				(CASE	when t0.[Imposto] = 'PIS'		and t0.[Tipo da Despesa] <> -1 and t0.Incluso = 'Y' then t0.[Valor Imposto] else 0 end ) as 'DA PIS-I',
				(CASE	when t0.[Imposto] = 'ICMS'		and t0.[Tipo da Despesa] <> -1 and t0.Incluso = 'Y' then t0.[Valor Imposto] else 0 end ) as 'DA ICMS-I',
				(CASE	when t0.[Imposto] = 'ICMS-ST'	and t0.[Tipo da Despesa] <> -1 and t0.Incluso = 'Y' then t0.[Valor Imposto] else 0 end ) as 'DA ICMS-ST-I',
				(CASE	when t0.[Imposto] = 'IPI'		and t0.[Tipo da Despesa] <> -1 and t0.Incluso = 'Y' then t0.[Valor Imposto] else 0 end ) as 'DA IPI-I',
				(CASE	when t0.[Imposto] = 'ISS'		and t0.[Tipo da Despesa] <> -1 and t0.Incluso = 'Y' then t0.[Valor Imposto] else 0 end ) as 'DA ISS-I',
				(CASE	when t0.[Imposto] = 'CSLL'		and t0.[Tipo da Despesa] <> -1 and t0.Incluso = 'Y' then t0.[Valor Imposto] else 0 end ) as 'DA CSLL-I',
				(CASE	when t0.[Imposto] = 'IRPJ'		and t0.[Tipo da Despesa] <> -1 and t0.Incluso = 'Y' then t0.[Valor Imposto] else 0 end ) as 'DA IRPJ-I',
				(CASE	when t0.[Imposto] = 'II'		and t0.[Tipo da Despesa] <> -1 and t0.Incluso = 'Y' then t0.[Valor Imposto] else 0 end ) as 'DA II-I',
				(CASE	when t0.[Imposto] not in ('COFINS','PIS','ICMS','ICMS-ST','IPI','ISS','CSLL','IRPJ','II') and t0.[Tipo da Despesa] <> -1 and t0.Incluso = 'Y' then t0.[Valor Imposto] else 0 end ) as 'DA OUTROS IMP-I',

				(CASE	when t0.[Imposto] = 'COFINS'	and t0.[Tipo da Despesa] <> -1 and t0.Incluso <> 'Y' then t0.[Valor Imposto] else 0 end ) as 'DA COFINS-NI',
				(CASE	when t0.[Imposto] = 'PIS'		and t0.[Tipo da Despesa] <> -1 and t0.Incluso <> 'Y' then t0.[Valor Imposto] else 0 end ) as 'DA PIS-NI',
				(CASE	when t0.[Imposto] = 'ICMS'		and t0.[Tipo da Despesa] <> -1 and t0.Incluso <> 'Y' then t0.[Valor Imposto] else 0 end ) as 'DA ICMS-NI',
				(CASE	when t0.[Imposto] = 'ICMS-ST'	and t0.[Tipo da Despesa] <> -1 and t0.Incluso <> 'Y' then t0.[Valor Imposto] else 0 end ) as 'DA ICMS-ST-NI',
				(CASE	when t0.[Imposto] = 'IPI'		and t0.[Tipo da Despesa] <> -1 and t0.Incluso <> 'Y' then t0.[Valor Imposto] else 0 end ) as 'DA IPI-NI',
				(CASE	when t0.[Imposto] = 'ISS'		and t0.[Tipo da Despesa] <> -1 and t0.Incluso <> 'Y' then t0.[Valor Imposto] else 0 end ) as 'DA ISS-NI',
				(CASE	when t0.[Imposto] = 'CSLL'		and t0.[Tipo da Despesa] <> -1 and t0.Incluso <> 'Y' then t0.[Valor Imposto] else 0 end ) as 'DA CSLL-NI',
				(CASE	when t0.[Imposto] = 'IRPJ'		and t0.[Tipo da Despesa] <> -1 and t0.Incluso <> 'Y' then t0.[Valor Imposto] else 0 end ) as 'DA IRPJ-NI',
				(CASE	when t0.[Imposto] = 'II'		and t0.[Tipo da Despesa] <> -1 and t0.Incluso <> 'Y' then t0.[Valor Imposto] else 0 end ) as 'DA II-NI',
				(CASE	when t0.[Imposto] not in ('COFINS','PIS','ICMS','ICMS-ST','IPI','ISS','CSLL','IRPJ','II') and t0.[Tipo da Despesa] <> -1 and t0.Incluso <> 'Y' then t0.[Valor Imposto] else 0 end ) as 'DA OUTROS IMP-NI',

				(CASE	when t0.[Imposto] = 'COFINS'	and t0.[Tipo da Despesa] <> -1 then t0.[Base Imposto] else 0 end ) as 'DA Base COFINS',
				(CASE	when t0.[Imposto] = 'PIS'		and t0.[Tipo da Despesa] <> -1 then t0.[Base Imposto] else 0 end ) as 'DA Base PIS',
				(CASE	when t0.[Imposto] = 'ICMS'		and t0.[Tipo da Despesa] <> -1 then t0.[Base Imposto] else 0 end ) as 'DA Base ICMS',
				(CASE	when t0.[Imposto] = 'ICMS-ST'	and t0.[Tipo da Despesa] <> -1 then t0.[Base Imposto] else 0 end ) as 'DA Base ICMS-ST',
				(CASE	when t0.[Imposto] = 'IPI'		and t0.[Tipo da Despesa] <> -1 then t0.[Base Imposto] else 0 end ) as 'DA Base IPI',
				(CASE	when t0.[Imposto] = 'ISS'		and t0.[Tipo da Despesa] <> -1 then t0.[Base Imposto] else 0 end ) as 'DA Base ISS',
				(CASE	when t0.[Imposto] = 'CSLL'		and t0.[Tipo da Despesa] <> -1 then t0.[Base Imposto] else 0 end ) as 'DA Base CSLL',
				(CASE	when t0.[Imposto] = 'IRPJ'		and t0.[Tipo da Despesa] <> -1 then t0.[Base Imposto] else 0 end ) as 'DA Base IRPJ',
				(CASE	when t0.[Imposto] = 'II'		and t0.[Tipo da Despesa] <> -1 then t0.[Base Imposto] else 0 end ) as 'DA Base II',
				(CASE	when t0.[Imposto] not in ('COFINS','PIS','ICMS','ICMS-ST','IPI','ISS','CSLL','IRPJ','II') and t0.[Tipo da Despesa] <> -1 then t0.[Base Imposto] else 0 end ) as 'DA Base OUTROS IMP',

				(CASE	when t0.[Imposto] = 'COFINS'	and t0.[Tipo da Despesa] <> -1 then t0.Alíquota else 0 end ) as 'DA Alíquota COFINS',
				(CASE	when t0.[Imposto] = 'PIS'		and t0.[Tipo da Despesa] <> -1 then t0.Alíquota	else 0 end ) as 'DA Alíquota PIS',
				(CASE	when t0.[Imposto] = 'ICMS'		and t0.[Tipo da Despesa] <> -1 then t0.Alíquota	else 0 end ) as 'DA Alíquota ICMS',
				(CASE	when t0.[Imposto] = 'ICMS-ST'	and t0.[Tipo da Despesa] <> -1 then t0.Alíquota	else 0 end ) as 'DA Alíquota ICMS-ST',
				(CASE	when t0.[Imposto] = 'ICMS-ST'	and t0.[Tipo da Despesa] <> -1 then t0.[Alíquota Interna] else 0 end ) as 'DA Alíquota Interna ICMS-ST',
				(CASE	when t0.[Imposto] = 'ICMS-ST'	and t0.[Tipo da Despesa] <> -1 then t0.MVA else 0 end ) as 'DA MVA ICMS-ST',
				(CASE	when t0.[Imposto] = 'IPI'		and t0.[Tipo da Despesa] <> -1 then t0.Alíquota else 0 end ) as 'DA Alíquota IPI',
				(CASE	when t0.[Imposto] = 'ISS'		and t0.[Tipo da Despesa] <> -1 then t0.Alíquota else 0 end ) as 'DA Alíquota ISS',
				(CASE	when t0.[Imposto] = 'CSLL'		and t0.[Tipo da Despesa] <> -1 then t0.Alíquota else 0 end ) as 'DA Alíquota CSLL',
				(CASE	when t0.[Imposto] = 'IRPJ'		and t0.[Tipo da Despesa] <> -1 then t0.Alíquota else 0 end ) as 'DA Alíquota IRPJ',
				(CASE	when t0.[Imposto] = 'II'		and t0.[Tipo da Despesa] <> -1 then t0.Alíquota else 0 end ) as 'DA Alíquota II',
				(CASE	when t0.[Imposto] not in ('COFINS','PIS','ICMS','ICMS-ST','IPI','ISS','CSLL','IRPJ','II') and t0.[Tipo da Despesa] <> -1 then t0.Alíquota	else 0 end ) as 'DA Alíquota OUTROS IMP'

from [REC_TAX] as t0				
),

[REC_TAX_SUM_1] as
(
select	t0.DocEntry1 as 'DocEntry1',
		t0.[Linha Doc1] as 'Linha Doc1',
		sum(isnull(t0.[COFINS-I],0)) as 'COFINS-I',
		sum(isnull(t0.[PIS-I],0)) as 'PIS-I',
		sum(isnull(t0.[ICMS-I],0)) as 'ICMS-I',
		sum(isnull(t0.[ICMS-ST-I],0)) as 'ICMS-ST-I',
		sum(isnull(t0.[IPI-I],0)) as 'IPI-I',
		sum(isnull(t0.[ISS-I],0)) as 'ISS-I',
		sum(isnull(t0.[CSLL-I],0)) as 'CSLL-I',
		sum(isnull(t0.[IRPJ-I],0)) as 'IRPJ-I',
		sum(isnull(t0.[II-I],0)) as 'II-I',
		sum(isnull(t0.[OUTROS IMP-I],0)) as 'OUTROS IMP-I',
		sum(isnull(t0.[COFINS-NI],0)) as 'COFINS-NI',
		sum(isnull(t0.[PIS-NI],0)) as 'PIS-NI',
		sum(isnull(t0.[ICMS-NI],0)) as 'ICMS-NI',
		sum(isnull(t0.[ICMS-ST-NI],0)) as 'ICMS-ST-NI',
		sum(isnull(t0.[IPI-NI],0)) as 'IPI-NI',
		sum(isnull(t0.[ISS-NI],0)) as 'ISS-NI',
		sum(isnull(t0.[CSLL-NI],0)) as 'CSLL-NI',
		sum(isnull(t0.[IRPJ-NI],0)) as 'IRPJ-NI',
		sum(isnull(t0.[II-NI],0)) as 'II-NI',
		sum(isnull(t0.[OUTROS IMP-NI],0)) as 'OUTROS IMP-NI',
		sum(isnull(t0.[Base COFINS],0)) as 'Base COFINS',
		sum(isnull(t0.[Base PIS],0)) as 'Base PIS',
		sum(isnull(t0.[Base ICMS],0)) as 'Base ICMS',		
		sum(isnull(t0.[Base ICMS-ST],0)) as 'Base ICMS-ST',
		sum(isnull(t0.[Base IPI],0)) as 'Base IPI',
		sum(isnull(t0.[Base ISS],0)) as 'Base ISS',
		sum(isnull(t0.[Base CSLL],0)) as 'Base CSLL',
		sum(isnull(t0.[Base IRPJ],0)) as 'Base IRPJ',
		sum(isnull(t0.[Base II],0)) as 'Base II',
		sum(isnull(t0.[Base OUTROS IMP],0)) as 'Base OUTROS IMP',	
		max(isnull(t0.[Alíquota COFINS],0)) as 'Alíquota COFINS',
		max(isnull(t0.[Alíquota PIS],0)) as 'Alíquota PIS',
		max(isnull(t0.[Alíquota ICMS],0)) as 'Alíquota ICMS',
		max(isnull(t0.[Alíquota ICMS-ST],0)) as 'Alíquota ICMS-ST',
		max(isnull(t0.[Alíquota Interna ICMS-ST],0)) as 'Alíquota Interna ICMS-ST',
		max(isnull(t0.[MVA ICMS-ST],0)) as 'MVA ICMS-ST',
		max(isnull(t0.[Alíquota IPI],0)) as 'Alíquota IPI',
		max(isnull(t0.[Alíquota ISS],0)) as 'Alíquota ISS',
		max(isnull(t0.[Alíquota CSLL],0)) as 'Alíquota CSLL',
		max(isnull(t0.[Alíquota IRPJ],0)) as 'Alíquota IRPJ',
		max(isnull(t0.[Alíquota II],0)) as 'Alíquota II',
		max(isnull(t0.[Alíquota OUTROS IMP],0)) as 'Alíquota OUTROS IMP',
		sum(isnull(t0.[DA COFINS-I],0)) as 'DA COFINS-I',
		sum(isnull(t0.[DA PIS-I],0)) as 'DA PIS-I',
		sum(isnull(t0.[DA ICMS-I],0)) as 'DA ICMS-I',
		sum(isnull(t0.[DA ICMS-ST-I],0)) as 'DA ICMS-ST-I',
		sum(isnull(t0.[DA IPI-I],0)) as 'DA IPI-I',
		sum(isnull(t0.[DA ISS-I],0)) as 'DA ISS-I',
		sum(isnull(t0.[DA CSLL-I],0)) as 'DA CSLL-I',
		sum(isnull(t0.[DA IRPJ-I],0)) as 'DA IRPJ-I',
		sum(isnull(t0.[DA II-I],0)) as 'DA II-I',
		sum(isnull(t0.[DA OUTROS IMP-I],0)) as 'DA OUTROS IMP-I',
		sum(isnull(t0.[DA COFINS-NI],0)) as 'DA COFINS-NI',
		sum(isnull(t0.[DA PIS-NI],0)) as 'DA PIS-NI',
		sum(isnull(t0.[DA ICMS-NI],0)) as 'DA ICMS-NI',
		sum(isnull(t0.[DA ICMS-ST-NI],0)) as 'DA ICMS-ST-NI',
		sum(isnull(t0.[DA IPI-NI],0)) as 'DA IPI-NI',
		sum(isnull(t0.[DA ISS-NI],0)) as 'DA ISS-NI',
		sum(isnull(t0.[DA CSLL-NI],0)) as 'DA CSLL-NI',
		sum(isnull(t0.[DA IRPJ-NI],0)) as 'DA IRPJ-NI',
		sum(isnull(t0.[DA II-NI],0)) as 'DA II-NI',
		sum(isnull(t0.[DA OUTROS IMP-NI],0)) as 'DA OUTROS IMP-NI',
		sum(isnull(t0.[DA Base COFINS],0)) as 'DA Base COFINS',
		sum(isnull(t0.[DA Base PIS],0)) as 'DA Base PIS',
		sum(isnull(t0.[DA Base ICMS],0)) as 'DA Base ICMS',		
		sum(isnull(t0.[DA Base ICMS-ST],0)) as 'DA Base ICMS-ST',
		sum(isnull(t0.[DA Base IPI],0)) as 'DA Base IPI',
		sum(isnull(t0.[DA Base ISS],0)) as 'DA Base ISS',
		sum(isnull(t0.[DA Base CSLL],0)) as 'DA Base CSLL',
		sum(isnull(t0.[DA Base IRPJ],0)) as 'DA Base IRPJ',
		sum(isnull(t0.[DA Base II],0)) as 'DA Base II',
		sum(isnull(t0.[DA Base OUTROS IMP],0)) as 'DA Base OUTROS IMP',	
		max(isnull(t0.[DA Alíquota COFINS],0)) as 'DA Alíquota COFINS',
		max(isnull(t0.[DA Alíquota PIS],0)) as 'DA Alíquota PIS',
		max(isnull(t0.[DA Alíquota ICMS],0)) as 'DA Alíquota ICMS',
		max(isnull(t0.[DA Alíquota ICMS-ST],0)) as 'DA Alíquota ICMS-ST',
		max(isnull(t0.[DA Alíquota Interna ICMS-ST],0)) as 'DA Alíquota Interna ICMS-ST',
		max(isnull(t0.[DA MVA ICMS-ST],0)) as 'DA MVA ICMS-ST',
		max(isnull(t0.[DA Alíquota IPI],0)) as 'DA Alíquota IPI',
		max(isnull(t0.[DA Alíquota ISS],0)) as 'DA Alíquota ISS',
		max(isnull(t0.[DA Alíquota CSLL],0)) as 'DA Alíquota CSLL',
		max(isnull(t0.[DA Alíquota IRPJ],0)) as 'DA Alíquota IRPJ',
		max(isnull(t0.[DA Alíquota II],0)) as 'DA Alíquota II',
		max(isnull(t0.[DA Alíquota OUTROS IMP],0)) as 'DA Alíquota OUTROS IMP'		
from [REC_TAX_SUM] as t0 
group by t0.DocEntry1, t0.[Linha Doc1]
),

[REC_TAX_SUM_2] as
(
select	t0.*,
		t0.[COFINS-I] + t0.[PIS-I] + t0.[ICMS-I] + t0.[ICMS-ST-I] + t0.[IPI-I] + t0.[ISS-I] + t0.[CSLL-I] + t0.[IRPJ-I] + t0.[II-I] + t0.[OUTROS IMP-I] +
		t0.[DA COFINS-I] + t0.[DA PIS-I] + t0.[DA ICMS-I] + t0.[DA ICMS-ST-I] + t0.[DA IPI-I] + t0.[DA ISS-I] + t0.[DA CSLL-I] + t0.[DA IRPJ-I] + t0.[DA II-I] + t0.[DA OUTROS IMP-I] as 'IMPOSTOS-I',
		t0.[COFINS-NI] + t0.[PIS-NI] + t0.[ICMS-NI] + t0.[ICMS-ST-NI] + t0.[IPI-NI] + t0.[ISS-NI] + t0.[CSLL-NI] + t0.[IRPJ-NI] + t0.[II-NI] + t0.[OUTROS IMP-NI] +
		t0.[DA COFINS-NI] + t0.[DA PIS-NI] + t0.[DA ICMS-NI] + t0.[DA ICMS-ST-NI] + t0.[DA IPI-NI] + t0.[DA ISS-NI] + t0.[DA CSLL-NI] + t0.[DA IRPJ-NI] + t0.[DA II-NI] + t0.[DA OUTROS IMP-NI] as 'IMPOSTOS-NI'
from [REC_TAX_SUM_1] as t0 
),

[REC_IRF] as
(
select	t0.DocEntry as 'DocEntry2',
		t0.LineNum as 'Linha Doc2',
		sum(t1.WTAmnt) as 'Valor Imposto',
		sum(t1.TaxbleAmnt) as 'Base Imposto',
		'Incluso y/n' as 'Incluso',
		(select t10.OffclCode from [OWHT] as t10 where t10.WTCode = t1.WTCode) as 'Tipo_Imposto',
		t1.Category as 'Categoria',
		t1.WTCode as 'Imposto',
		'Código da Despesa' as 'Código da Despesa' from [PDN1] as t0 
inner join [PDN5] as t1 on t1.AbsEntry = t0.DocEntry and t1.Doc1LineNo = t0.LineNum
--where t4.ExpnsCode = -1  /* exclui impostos despesas adicionais */
group by t0.DocEntry, t0.LineNum, t1.WTCode, t1.Category
),

[REC_IRF_SUM] as 
( 
select	t0.DocEntry2 as 'DocEntry2',
		t0.[Linha Doc2] as 'Linha Doc2',
		(CASE	when t0.[Tipo_Imposto] = 5979 and t0.Categoria = 'I' then t0.[Valor Imposto]
				else 0 end ) as 'IRF-PIS',
		(CASE	when t0.[Tipo_Imposto] = 5960 and t0.Categoria = 'I' then t0.[Valor Imposto]
				else 0 end ) as 'IRF-COFINS',
		(CASE	when t0.[Tipo_Imposto] in (1708,208) and t0.Categoria = 'I' then t0.[Valor Imposto]
				else 0 end ) as 'IRF-IRRF',
		(CASE	when t0.[Tipo_Imposto] = 5987 and t0.Categoria = 'I' then t0.[Valor Imposto]
				else 0 end ) as 'IRF-CSLL',
		(CASE	when t0.[Tipo_Imposto] = 2631 and t0.Categoria = 'I' then t0.[Valor Imposto]
				else 0 end ) as 'IRF-INSS',
		(CASE	when t0.[Tipo_Imposto] = 6 and t0.Categoria = 'I' then t0.[Valor Imposto]    /* atribuir o código da guia */
				else 0 end ) as 'IRF-ISSF',
		(CASE	when t0.[Tipo_Imposto] = 5952 and t0.Categoria = 'I' then t0.[Valor Imposto]    /* atribuir o código da guia */
				else 0 end ) as 'IRF-10833',								
		(CASE	when t0.[Tipo_Imposto] not in (5979,5960,1708,5987,6,208,2631,5952) and t0.Categoria = 'I' then t0.[Valor Imposto]
				else 0 end ) as 'IRF-OUTROS',
		(CASE	when t0.[Tipo_Imposto] = 5979 and t0.Categoria = 'I' then t0.[Base Imposto]
				else 0 end ) as 'Base IRF-PIS',
		(CASE	when t0.[Tipo_Imposto] = 5960 and t0.Categoria = 'I' then t0.[Base Imposto]
				else 0 end ) as 'Base IRF-COFINS',
		(CASE	when t0.[Tipo_Imposto] in (1708,208) and t0.Categoria = 'I' then t0.[Base Imposto]
				else 0 end ) as 'Base IRF-IRRF',
		(CASE	when t0.[Tipo_Imposto] = 5987 and t0.Categoria = 'I' then t0.[Base Imposto]
				else 0 end ) as 'Base IRF-CSLL',
		(CASE	when t0.[Tipo_Imposto] = 2631 and t0.Categoria = 'I' then t0.[Base Imposto]
				else 0 end ) as 'Base IRF-INSS',
		(CASE	when t0.[Tipo_Imposto] = 6 and t0.Categoria = 'I' then t0.[Base Imposto]    /* atribuir o código da guia */
				else 0 end ) as 'Base IRF-ISSF',
		(CASE	when t0.[Tipo_Imposto] = 5952 and t0.Categoria = 'I' then t0.[Base Imposto]    /* atribuir o código da guia */
				else 0 end ) as 'Base IRF-10833',								
		(CASE	when t0.[Tipo_Imposto] not in (5979,5960,1708,5987,6,208,2631,5952) and t0.Categoria = 'I' then t0.[Base Imposto]
				else 0 end ) as 'Base IRF-OUTROS',
				
		(CASE	when t0.[Tipo_Imposto] = 5979 and t0.Categoria = 'P' then t0.[Valor Imposto]
				else 0 end ) as 'IRF-PIS-P',
		(CASE	when t0.[Tipo_Imposto] = 5960 and t0.Categoria = 'P' then t0.[Valor Imposto]
				else 0 end ) as 'IRF-COFINS-P',
		(CASE	when t0.[Tipo_Imposto] in (1708,208) and t0.Categoria = 'P' then t0.[Valor Imposto]
				else 0 end ) as 'IRF-IRRF-P',
		(CASE	when t0.[Tipo_Imposto] = 5987 and t0.Categoria = 'P' then t0.[Valor Imposto]
				else 0 end ) as 'IRF-CSLL-P',
		(CASE	when t0.[Tipo_Imposto] = 2631 and t0.Categoria = 'P' then t0.[Valor Imposto]
				else 0 end ) as 'IRF-INSS-P',
		(CASE	when t0.[Tipo_Imposto] = 6 and t0.Categoria = 'P' then t0.[Valor Imposto]    /* atribuir o código da guia */
				else 0 end ) as 'IRF-ISSF-P',
		(CASE	when t0.[Tipo_Imposto] = 5952 and t0.Categoria = 'P' then t0.[Valor Imposto]    /* atribuir o código da guia */
				else 0 end ) as 'IRF-10833-P',								
		(CASE	when t0.[Tipo_Imposto] not in (5979,5960,1708,5987,6,208,2631,5952) and t0.Categoria = 'P' then t0.[Valor Imposto]
				else 0 end ) as 'IRF-OUTROS-P',
		(CASE	when t0.[Tipo_Imposto] = 5979 and t0.Categoria = 'P' then t0.[Base Imposto]
				else 0 end ) as 'Base IRF-PIS-P',
		(CASE	when t0.[Tipo_Imposto] = 5960 and t0.Categoria = 'P' then t0.[Base Imposto]
				else 0 end ) as 'Base IRF-COFINS-P',
		(CASE	when t0.[Tipo_Imposto] in (1708,208) and t0.Categoria = 'P' then t0.[Base Imposto]
				else 0 end ) as 'Base IRF-IRRF-P',
		(CASE	when t0.[Tipo_Imposto] = 5987 and t0.Categoria = 'P' then t0.[Base Imposto]
				else 0 end ) as 'Base IRF-CSLL-P',
		(CASE	when t0.[Tipo_Imposto] = 2631 and t0.Categoria = 'P' then t0.[Base Imposto]
				else 0 end ) as 'Base IRF-INSS-P',
		(CASE	when t0.[Tipo_Imposto] = 6 and t0.Categoria = 'P' then t0.[Base Imposto]    /* atribuir o código da guia */
				else 0 end ) as 'Base IRF-ISSF-P',
		(CASE	when t0.[Tipo_Imposto] = 5952 and t0.Categoria = 'P' then t0.[Base Imposto]    /* atribuir o código da guia */
				else 0 end ) as 'Base IRF-10833-P',								
		(CASE	when t0.[Tipo_Imposto] not in (5979,5960,1708,5987,6,208,2631,5952) and t0.Categoria = 'P' then t0.[Base Imposto]
				else 0 end ) as 'Base IRF-OUTROS-P'								
from [REC_IRF] as t0				
),

[REC_IRF_SUM_1] as
(
select	t0.DocEntry2 as 'DocEntry2',
		t0.[Linha Doc2] as 'Linha Doc2',
		sum(t0.[IRF-PIS]) as 'IRF-PIS',
		sum(t0.[IRF-COFINS]) as 'IRF-COFINS',
		sum(t0.[IRF-IRRF]) as 'IRF-IRRF',
		sum(t0.[IRF-CSLL]) as 'IRF-CSLL',
		sum(t0.[IRF-INSS]) as 'IRF-INSS',
		sum(t0.[IRF-ISSF]) as 'IRF-ISSF',
		sum(t0.[IRF-10833]) as 'IRF-10833',		
		sum(t0.[IRF-OUTROS]) as 'IRF-OUTROS',
		sum( t0.[IRF-PIS] + t0.[IRF-COFINS] + t0.[IRF-IRRF] + t0.[IRF-CSLL] + t0.[IRF-INSS] + t0.[IRF-ISSF] + t0.[IRF-10833] + t0.[IRF-OUTROS] ) as 'IRF-TOTAL',
		sum(t0.[Base IRF-PIS]) as 'Base IRF-PIS',
		sum(t0.[Base IRF-COFINS]) as 'Base IRF-COFINS',
		sum(t0.[Base IRF-IRRF]) as 'Base IRF-IRRF',
		sum(t0.[Base IRF-CSLL]) as 'Base IRF-CSLL',
		sum(t0.[Base IRF-INSS]) as 'Base IRF-INSS',
		sum(t0.[Base IRF-ISSF]) as 'Base IRF-ISSF',
		sum(t0.[Base IRF-10833]) as 'Base IRF-10833',
		sum(t0.[Base IRF-OUTROS]) as 'Base IRF-OUTROS',

		sum(t0.[IRF-PIS-P]) as 'IRF-PIS-P',
		sum(t0.[IRF-COFINS-P]) as 'IRF-COFINS-P',
		sum(t0.[IRF-IRRF-P]) as 'IRF-IRRF-P',
		sum(t0.[IRF-CSLL-P]) as 'IRF-CSLL-P',
		sum(t0.[IRF-INSS-P]) as 'IRF-INSS-P',
		sum(t0.[IRF-ISSF-P]) as 'IRF-ISSF-P',
		sum(t0.[IRF-10833-P]) as 'IRF-10833-P',		
		sum(t0.[IRF-OUTROS-P]) as 'IRF-OUTROS-P',
		sum( t0.[IRF-PIS-P] + t0.[IRF-COFINS-P] + t0.[IRF-IRRF-P] + t0.[IRF-CSLL-P] + t0.[IRF-INSS-P] + t0.[IRF-ISSF-P] + t0.[IRF-10833-P] + t0.[IRF-OUTROS-P] ) as 'IRF-TOTAL-P',
		sum(t0.[Base IRF-PIS-P]) as 'Base IRF-PIS-P',
		sum(t0.[Base IRF-COFINS-P]) as 'Base IRF-COFINS-P',
		sum(t0.[Base IRF-IRRF-P]) as 'Base IRF-IRRF-P',
		sum(t0.[Base IRF-CSLL-P]) as 'Base IRF-CSLL-P',
		sum(t0.[Base IRF-INSS-P]) as 'Base IRF-INSS-P',
		sum(t0.[Base IRF-ISSF-P]) as 'Base IRF-ISSF-P',
		sum(t0.[Base IRF-10833-P]) as 'Base IRF-10833-P',
		sum(t0.[Base IRF-OUTROS-P]) as 'Base IRF-OUTROS-P'				
from [REC_IRF_SUM] as t0 group by t0.DocEntry2, t0.[Linha Doc2]
),

[REC_FINAL] as 
(
select (case when t0.[Tipo DOC] = 'RECCAN' then -1 else 1 end) as 'S',
		t0.*,
		(t0.[DA Linha Frete] + t0.[DA Distr Frete] + t3.[DA Cabec Distrib Frete]) as 'DA Frete',
		(t0.[DA Linha Seguro] + t0.[DA Distr Seguro] + t3.[DA Cabec Distrib Seguro]) as 'DA Seguro', 
		(t0.[DA Linha Outros] +	t0.[DA Distr Outros] + t3.[DA Cabec Distrib Outros]) as 'DA Outros',
		t1.*,
		t2.*  
from [REC] as t0 
left outer join [REC_TAX_SUM_2] as t1 on t0.DocEntry = t1.DocEntry1 and t0.[Linha Doc] = t1.[Linha Doc1]
left outer join [REC_IRF_SUM_1] as t2 on t0.DocEntry = t2.DocEntry2 and t0.[Linha Doc] = t2.[Linha Doc2]
left outer join [REC_DA_NDISTR] as t3 on t0.DocEntry = t3.DocEntry3 and t0.[Linha Doc] = t3.[Linha Doc3]
)

-------------------------------------------------------------------------------------------------------------------------				

(select	
		t0.[Tipo DOC], 
		t0.[Status Docto],
		(case when t1.[Tipo DOC] is not null then t1.[Tipo DOC] else isnull(t2.[Tipo DOC],' ') end)  as 'Cancelada', 
		t0.[Código PN], 
		t0.[Nome Abreviado], 
		t0.[Nome PN], 
		t0.[Grupo PN],
		t0.[Nome Grupo PN],
		t0.[Código Município], 
		t0.[Nome Município], 
		t0.UF,
		t0.[Região],
		t0.BPLId, 
		t0.Filial,
		t0.[Número SAP], 
		t0.DocEntry, 
		isnull(t0.[Número Referência PN],'') as 'Número Referência PN',
		isnull(t0.[Número Pedido Cliente],'') as 'Número Pedido Cliente',
		t0.Projeto,
		t0.[Flag Nota Futura], 
		t0.[Data Lançamento], 
		t0.Serial, 
		t0.SeqName,
		t0.model,
		(case when isnull(t0.Model,'') in ('','Outra','Nada')	then 'Interno' else 'Fiscal' end) as 'Tipo de Documento', 			
		t0.[Condição Pagamento], 
		t0.[Número Parcelas], 
		t0.[Forma de Pagamento], 
		t0.Incoterms, 
		t0.Transportadora, 
		t0.[Nome Transportadora],
		t0.[Quantidade Embalagem],
		t0.[Descrição Embalagem],
		t0.[S]*t0.[Peso Bruto] as 'Peso Bruto',
		t0.[S]*t0.[Peso Líquido] as 'Peso Líquido',
		t0.[Código Vendedor], 
		t0.[Nome Vendedor], 
		t0.Representante, 
		t0.[Nome Representante], 
		t0.[S]*isnull(t0.[DA Não Distr Frete],0) + t2.[S]*isnull(t2.[DA Não Distr Frete],0) + isnull(t1.[DA Não Distr Frete],0) as 'DA Não Distr Frete',
		t0.[S]*isnull(t0.[DA Não Distr Seguro],0) + t2.[S]*isnull(t2.[DA Não Distr Seguro],0) + isnull(t1.[DA Não Distr Seguro],0) as 'DA Não Distr Seguro',
		t0.[S]*isnull(t0.[DA Não Distr Outros],0) + t2.[S]*isnull(t2.[DA Não Distr Outros],0) + isnull(t1.[DA Não Distr Outros],0) as 'DA Não Distr Outros',
		t0.[Tipo de Envio],
		t0.[Uso Principal],
		0.00 as 'Valor Adto Usado',
	------------------------------------------- Detalhe do Item ---------------------------------------------------------------------------------------------------
		t0.[Status Linha],
		t0.[Código Item], 
		t0.[Descrição Item], 
		t0.Grupo, 
		t0.[Nome Grupo],
		t0.NCM,
		case when t0.[Tipo Estrutura] = 'N' then 'NENHUMA'
			 when t0.[Tipo Estrutura] = 'A' then 'MONTAGE'
			 when t0.[Tipo Estrutura] = 'S' then 'VDAPAI'
			 when t0.[Tipo Estrutura] = 'I' then 'VDAFILH'
			 when t0.[Tipo Estrutura] = 'P' then 'PRODUC'
			 when t0.[Tipo Estrutura] = 'T' then 'MODELO'
			 else '???' end as 'Tipo Estrutura',
		t0.[Código Vendedor Linha],
		t0.[Nome Vendedor Linha],
		t0.Depósito, 
		t0.DepósitoED,
		t0.[Linha Doc], 
		t0.[Linha Ordem],
		t0.[Data Entrega],
		t0.[Código Utilização],
		t0.[Nome Utilização],
		t0.[Código Imposto], 
		t0.[Só Imposto],
		t0.[Imposto Custo],
		t0.[Atualiza Estoque],
		t0.CFOP, 
		t0.[CST ICMS],
		t0.[CST IPI],
		t0.[CST PIS],
		t0.[CST COFINS],
		t0.DocEntryBase, 
		t0.BaseLine, 
		t0.BaseType, 
		t0.BaseSeqCode,
		(case	when isnull(t0.BaseSeqCode,0) <> -2 
			then
			(select top(1) t12.SeqName from [NFN1] as t12 where t12.SeqCode = t0.BaseSeqCode)
			else 'Externo' end)  as 'BaseSeqName',	
		t0.[Tipo Saída], 
		t0.[Conta Res], 
		t0.[Nome Conta Res],
		t0.[Conta CPV], 
		t0.[Nome Conta CPV], 
		(t0.[S]*t0.Quantidade) + isnull(t2.[S]*t2.Quantidade,0) + isnull(t1.Quantidade,0) as 'Quantidade',
		(t0.[S]*t0.[Quantidade Entregue]) + isnull(t2.[S]*t2.[Quantidade Entregue],0) + isnull(t1.[Quantidade Entregue],0) as 'Quantidade Entregue',
		t0.UMV, 
		t0.ItensUMV, 
		t0.UME,
		t0.[Moeda],
		(t0.[S]*t0.[Unitário Moeda]) + isnull(t2.[S]*t2.[Unitário Moeda],0) + isnull(t1.[Unitário Moeda],0) as 'Unitário Moeda',
		t0.[Taxa Moeda],
		(t0.[S]*t0.[Total Mercadoria Moeda]) + isnull(t2.[S]*t2.[Total Mercadoria Moeda],0) + isnull(t1.[Total Mercadoria Moeda],0) as 'Total Mercadoria Moeda',			
		(t0.[S]*t0.[Unitário R$]) + isnull(t2.[S]*t2.[Unitário R$],0) + isnull(t1.[Unitário R$],0) as 'Unitário R$',
		(t0.[S]*t0.CMV) + isnull(t2.[S]*t2.CMV,0) + isnull(t1.CMV,0) as 'CMV',
		(t0.[S]*t0.[Total Mercadoria R$]) + isnull(t2.[S]*t2.[Total Mercadoria R$],0) + isnull(t1.[Total Mercadoria R$],0) as 'Total Mercadoria R$',
		(t0.[S]*(t0.[DA Frete]) + isnull(t2.[S]*(t2.[DA Frete]),0) + isnull(t1.[DA Frete],0)) as 'DA Frete',
		(t0.[S]*(t0.[DA Seguro]) + isnull(t2.[S]*(t2.[DA Seguro]),0) + isnull(t1.[DA Seguro],0)) as 'DA Seguro',
		(t0.[S]*(t0.[DA Outros]) + isnull(t2.[S]*(t2.[DA Outros]),0) + isnull(t1.[DA Outros],0)) as 'DA Outros',
		t0.[IMPOSTOS-I],
		t0.[IMPOSTOS-NI],

		--round(t0.[S]*(sum (isnull(t0.[Total Mercadoria R$],0) ) over (partition by t0.DocEntry) 
		--		+ round(sum (isnull(t0.[IMPOSTOS-NI],0) ) over (partition by t0.DocEntry),2) 
		--		+ round(sum (isnull(t0.[DA Frete],0) + isnull(t0.[DA Seguro],0) + isnull(t0.[DA Outros],0)) over (partition by t0.DocEntry),2) 
		--		- round(sum (isnull(t0.[IRF-TOTAL],0)) over (partition by t0.DocEntry),2) )
		--	+ 
		--	isnull(t2.[S]*(sum (isnull(t2.[Total Mercadoria R$],0) ) over (partition by t2.DocEntry) 
		--			+ round(sum (isnull(t2.[IMPOSTOS-NI],0) ) over (partition by t2.DocEntry),2) 
		--			+ round(sum (isnull(t2.[DA Frete],0) + isnull(t2.[DA Seguro],0) + isnull(t2.[DA Outros],0)) over (partition by t2.DocEntry),2) 
		--			- round(sum (isnull(t2.[IRF-TOTAL],0)) over (partition by t2.DocEntry),2) )	,0)
		--	+
		--	isnull((sum (isnull(t1.[Total Mercadoria R$],0) ) over (partition by t1.DocEntry) 
		--			+ round(sum (isnull(t1.[IMPOSTOS-NI],0) ) over (partition by t1.DocEntry),2) 
		--			+ round(sum (isnull(t1.[DA Frete],0) + isnull(t1.[DA Seguro],0) + isnull(t1.[DA Outros],0)) over (partition by t1.DocEntry),2) 
		--			- round(sum (isnull(t1.[IRF-TOTAL],0)) over (partition by t1.DocEntry),2) ), 0)	,2)						
		--	  as 'Faturamento Bruto Total',

		( (t0.[S]*(isnull(t0.[Total Mercadoria R$],0) + isnull(t0.[IMPOSTOS-NI],0) + isnull(t0.[DA Frete],0) + isnull(t0.[DA Seguro],0) + isnull(t0.[DA Outros],0) - isnull(t0.[IRF-TOTAL],0)) ) + 
			isnull((t2.[S]*(isnull(t2.[Total Mercadoria R$],0) + isnull(t2.[IMPOSTOS-NI],0) + isnull(t2.[DA Frete],0) + isnull(t2.[DA Seguro],0) + isnull(t2.[DA Outros],0) - isnull(t2.[IRF-TOTAL],0)) ),0) + 
			isnull((isnull(t1.[Total Mercadoria R$],0) + isnull(t1.[IMPOSTOS-NI],0) + isnull(t1.[DA Frete],0) + isnull(t1.[DA Seguro],0) + isnull(t1.[DA Outros],0) - isnull(t1.[IRF-TOTAL],0)),0) ) 
					as 'Faturamento Bruto',
		
		( (t0.[S]*(isnull(t0.[Total Mercadoria R$],0) - isnull(t0.[IMPOSTOS-I],0) - isnull(t0.[IRF-TOTAL],0))) +
			isnull((t2.[S]*(isnull(t2.[Total Mercadoria R$],0) - isnull(t2.[IMPOSTOS-I],0) - isnull(t2.[IRF-TOTAL],0))),0) +
			isnull((isnull(t1.[Total Mercadoria R$],0) - isnull(t1.[IMPOSTOS-I],0) - isnull(t1.[IRF-TOTAL],0)),0) ) 
					as 'Faturamento Líquido',	

		(t0.[S]*isnull(t0.[COFINS-I],0)) + isnull(t2.[S]*t2.[COFINS-I],0) + isnull(t1.[COFINS-I],0) as 'COFINS-I',
		(t0.[S]*isnull(t0.[PIS-I],0)) + isnull(t2.[S]*t2.[PIS-I],0) + isnull(t1.[PIS-I],0) as 'PIS-I',
		(t0.[S]*isnull(t0.[ICMS-I],0)) + isnull(t2.[S]*t2.[ICMS-I],0) + isnull(t1.[ICMS-I],0) as 'ICMS-I',
		(t0.[S]*isnull(t0.[ICMS-ST-I],0)) + isnull(t2.[S]*t2.[ICMS-ST-I],0) + isnull(t1.[ICMS-ST-I],0) as 'ICMS-ST-I',
		(t0.[S]*isnull(t0.[IPI-I],0)) + isnull(t2.[S]*t2.[IPI-I],0) + isnull(t1.[IPI-I],0) as 'IPI-I',
		(t0.[S]*isnull(t0.[ISS-I],0)) + isnull(t2.[S]*t2.[ISS-I],0) + isnull(t1.[ISS-I],0) as 'ISS-I',
		(t0.[S]*isnull(t0.[CSLL-I],0)) + isnull(t2.[S]*t2.[CSLL-I],0) + isnull(t1.[CSLL-I],0) as 'CSLL-I',
		(t0.[S]*isnull(t0.[IRPJ-I],0)) + isnull(t2.[S]*t2.[IRPJ-I],0) + isnull(t1.[IRPJ-I],0) as 'IRPJ-I',
		(t0.[S]*isnull(t0.[II-I],0)) + isnull(t2.[S]*t2.[II-I],0) + isnull(t1.[II-I],0) as 'II-I',
		(t0.[S]*isnull(t0.[OUTROS IMP-I],0)) + isnull(t2.[S]*t2.[OUTROS IMP-I],0) + isnull(t1.[OUTROS IMP-I],0) as 'OUTROS IMP-I',

		(t0.[S]*isnull(t0.[COFINS-NI],0)) + isnull(t2.[S]*t2.[COFINS-NI],0) + isnull(t1.[COFINS-NI],0) as 'COFINS-NI',
		(t0.[S]*isnull(t0.[PIS-NI],0)) + isnull(t2.[S]*t2.[PIS-NI],0) + isnull(t1.[PIS-NI],0) as 'PIS-NI',
		(t0.[S]*isnull(t0.[ICMS-NI],0)) + isnull(t2.[S]*t2.[ICMS-NI],0) + isnull(t1.[ICMS-NI],0) as 'ICMS-NI',
		(t0.[S]*isnull(t0.[ICMS-ST-NI],0)) + isnull(t2.[S]*t2.[ICMS-ST-NI],0) + isnull(t1.[ICMS-ST-NI],0) as 'ICMS-ST-NI',
		(t0.[S]*isnull(t0.[IPI-NI],0)) + isnull(t2.[S]*t2.[IPI-NI],0) + isnull(t1.[IPI-NI],0) as 'IPI-NI',
		(t0.[S]*isnull(t0.[ISS-NI],0)) + isnull(t2.[S]*t2.[ISS-NI],0) + isnull(t1.[ISS-NI],0) as 'ISS-NI',
		(t0.[S]*isnull(t0.[CSLL-NI],0)) + isnull(t2.[S]*t2.[CSLL-NI],0) + isnull(t1.[CSLL-NI],0) as 'CSLL-NI',
		(t0.[S]*isnull(t0.[IRPJ-NI],0)) + isnull(t2.[S]*t2.[IRPJ-NI],0) + isnull(t1.[IRPJ-NI],0) as 'IRPJ-NI',
		(t0.[S]*isnull(t0.[II-NI],0)) + isnull(t2.[S]*t2.[II-NI],0) + isnull(t1.[II-NI],0) as 'II-NI',
		(t0.[S]*isnull(t0.[OUTROS IMP-NI],0)) + isnull(t2.[S]*t2.[OUTROS IMP-NI],0) + isnull(t1.[OUTROS IMP-NI],0) as 'OUTROS IMP-NI',

		(t0.[S]*isnull(t0.[Base COFINS],0)) + isnull(t2.[S]*t2.[Base COFINS],0) + isnull(t1.[Base COFINS],0) as 'Base COFINS',
		(t0.[S]*isnull(t0.[Base PIS],0)) + isnull(t2.[S]*t2.[Base PIS],0) + isnull(t1.[Base PIS],0) as 'Base PIS',
		(t0.[S]*isnull(t0.[Base ICMS],0)) + isnull(t2.[S]*t2.[Base ICMS],0) + isnull(t1.[Base ICMS],0) as 'Base ICMS',
		(t0.[S]*isnull(t0.[Base ICMS-ST],0)) + isnull(t2.[S]*t2.[Base ICMS-ST],0) + isnull(t1.[Base ICMS-ST],0) as 'Base ICMS-ST',
		(t0.[S]*isnull(t0.[Base IPI],0)) + isnull(t2.[S]*t2.[Base IPI],0) + isnull(t1.[Base IPI],0) as 'Base IPI',
		(t0.[S]*isnull(t0.[Base ISS],0)) + isnull(t2.[S]*t2.[Base ISS],0) + isnull(t1.[Base ISS],0) as 'Base ISS',
		(t0.[S]*isnull(t0.[Base CSLL],0)) + isnull(t2.[S]*t2.[Base CSLL],0) + isnull(t1.[Base CSLL],0) as 'Base CSLL',
		(t0.[S]*isnull(t0.[Base IRPJ],0)) + isnull(t2.[S]*t2.[Base IRPJ],0) + isnull(t1.[Base IRPJ],0) as 'Base IRPJ',
		(t0.[S]*isnull(t0.[Base II],0)) + isnull(t2.[S]*t2.[Base II],0) + isnull(t1.[Base II],0) as 'Base II',
		(t0.[S]*isnull(t0.[Base OUTROS IMP],0)) + isnull(t2.[S]*t2.[Base OUTROS IMP],0) + isnull(t1.[Base OUTROS IMP],0) as 'Base OUTROS IMP',

		(t0.[S]*isnull(t0.[DA COFINS-I],0)) + isnull(t2.[S]*t2.[DA COFINS-I],0) + isnull(t1.[DA COFINS-I],0) as 'DA COFINS-I',
		(t0.[S]*isnull(t0.[DA PIS-I],0)) + isnull(t2.[S]*t2.[DA PIS-I],0) + isnull(t1.[DA PIS-I],0) as 'DA PIS-I',
		(t0.[S]*isnull(t0.[DA ICMS-I],0)) + isnull(t2.[S]*t2.[DA ICMS-I],0) + isnull(t1.[DA ICMS-I],0) as 'DA ICMS-I',
		(t0.[S]*isnull(t0.[DA ICMS-ST-I],0)) + isnull(t2.[S]*t2.[DA ICMS-ST-I],0) + isnull(t1.[DA ICMS-ST-I],0) as 'DA ICMS-ST-I',
		(t0.[S]*isnull(t0.[DA IPI-I],0)) + isnull(t2.[S]*t2.[DA IPI-I],0) + isnull(t1.[DA IPI-I],0) as 'DA IPI-I',
		(t0.[S]*isnull(t0.[DA ISS-I],0)) + isnull(t2.[S]*t2.[DA ISS-I],0) + isnull(t1.[DA ISS-I],0) as 'DA ISS-I',
		(t0.[S]*isnull(t0.[DA CSLL-I],0)) + isnull(t2.[S]*t2.[DA CSLL-I],0) + isnull(t1.[DA CSLL-I],0) as 'DA CSLL-I',
		(t0.[S]*isnull(t0.[DA IRPJ-I],0)) + isnull(t2.[S]*t2.[DA IRPJ-I],0) + isnull(t1.[DA IRPJ-I],0) as 'DA IRPJ-I',
		(t0.[S]*isnull(t0.[DA II-I],0)) + isnull(t2.[S]*t2.[DA II-I],0) + isnull(t1.[DA II-I],0) as 'DA II-I',
		(t0.[S]*isnull(t0.[DA OUTROS IMP-I],0)) + isnull(t2.[S]*t2.[DA OUTROS IMP-I],0) + isnull(t1.[DA OUTROS IMP-I],0) as 'DA OUTROS IMP-I',

		(t0.[S]*isnull(t0.[DA COFINS-NI],0)) + isnull(t2.[S]*t2.[DA COFINS-NI],0) + isnull(t1.[DA COFINS-NI],0) as 'DA COFINS-NI',
		(t0.[S]*isnull(t0.[DA PIS-NI],0)) + isnull(t2.[S]*t2.[DA PIS-NI],0) + isnull(t1.[DA PIS-NI],0) as 'DA PIS-NI',
		(t0.[S]*isnull(t0.[DA ICMS-NI],0)) + isnull(t2.[S]*t2.[DA ICMS-NI],0) + isnull(t1.[DA ICMS-NI],0) as 'DA ICMS-NI',
		(t0.[S]*isnull(t0.[DA ICMS-ST-NI],0)) + isnull(t2.[S]*t2.[DA ICMS-ST-NI],0) + isnull(t1.[DA ICMS-ST-NI],0) as 'DA ICMS-ST-NI',
		(t0.[S]*isnull(t0.[DA IPI-NI],0)) + isnull(t2.[S]*t2.[DA IPI-NI],0) + isnull(t1.[DA IPI-NI],0) as 'DA IPI-NI',
		(t0.[S]*isnull(t0.[DA ISS-NI],0)) + isnull(t2.[S]*t2.[DA ISS-NI],0) + isnull(t1.[DA ISS-NI],0) as 'DA ISS-NI',
		(t0.[S]*isnull(t0.[DA CSLL-NI],0)) + isnull(t2.[S]*t2.[DA CSLL-NI],0) + isnull(t1.[DA CSLL-NI],0) as 'DA CSLL-NI',
		(t0.[S]*isnull(t0.[DA IRPJ-NI],0)) + isnull(t2.[S]*t2.[DA IRPJ-NI],0) + isnull(t1.[DA IRPJ-NI],0) as 'DA IRPJ-NI',
		(t0.[S]*isnull(t0.[DA II-NI],0)) + isnull(t2.[S]*t2.[DA II-NI],0) + isnull(t1.[DA II-NI],0) as 'DA II-NI',
		(t0.[S]*isnull(t0.[DA OUTROS IMP-NI],0)) + isnull(t2.[S]*t2.[DA OUTROS IMP-NI],0) + isnull(t1.[DA OUTROS IMP-NI],0) as 'DA OUTROS IMP-NI',

		(t0.[S]*isnull(t0.[DA Base COFINS],0)) + isnull(t2.[S]*t2.[DA Base COFINS],0) + isnull(t1.[DA Base COFINS],0) as 'DA Base COFINS',
		(t0.[S]*isnull(t0.[DA Base PIS],0)) + isnull(t2.[S]*t2.[DA Base PIS],0) + isnull(t1.[DA Base PIS],0) as 'DA Base PIS',
		(t0.[S]*isnull(t0.[DA Base ICMS],0)) + isnull(t2.[S]*t2.[DA Base ICMS],0) + isnull(t1.[DA Base ICMS],0) as 'DA Base ICMS',
		(t0.[S]*isnull(t0.[DA Base ICMS-ST],0)) + isnull(t2.[S]*t2.[DA Base ICMS-ST],0) + isnull(t1.[DA Base ICMS-ST],0) as 'DA Base ICMS-ST',
		(t0.[S]*isnull(t0.[DA Base IPI],0)) + isnull(t2.[S]*t2.[DA Base IPI],0) + isnull(t1.[DA Base IPI],0) as 'DA Base IPI',
		(t0.[S]*isnull(t0.[DA Base ISS],0)) + isnull(t2.[S]*t2.[DA Base ISS],0) + isnull(t1.[DA Base ISS],0) as 'DA Base ISS',
		(t0.[S]*isnull(t0.[DA Base CSLL],0)) + isnull(t2.[S]*t2.[DA Base CSLL],0) + isnull(t1.[DA Base CSLL],0) as 'DA Base CSLL',
		(t0.[S]*isnull(t0.[DA Base IRPJ],0)) + isnull(t2.[S]*t2.[DA Base IRPJ],0) + isnull(t1.[DA Base IRPJ],0) as 'DA Base IRPJ',
		(t0.[S]*isnull(t0.[DA Base II],0)) + isnull(t2.[S]*t2.[DA Base II],0) + isnull(t1.[DA Base II],0) as 'DA Base II',
		(t0.[S]*isnull(t0.[DA Base OUTROS IMP],0)) + isnull(t2.[S]*t2.[DA Base OUTROS IMP],0) + isnull(t1.[DA Base OUTROS IMP],0) as 'DA Base OUTROS IMP',	
			
		(t0.[S]*isnull(t0.[IRF-ISSF],0)) + isnull(t2.[S]*t2.[IRF-ISSF],0) + isnull(t1.[IRF-ISSF],0) as 'IRF-ISSF',
		(t0.[S]*isnull(t0.[IRF-IRRF],0)) + isnull(t2.[S]*t2.[IRF-IRRF],0) + isnull(t1.[IRF-IRRF],0) as 'IRF-IRRF',
		(t0.[S]*isnull(t0.[IRF-PIS],0)) + isnull(t2.[S]*t2.[IRF-PIS],0) + isnull(t1.[IRF-PIS],0) as 'IRF-PIS',
		(t0.[S]*isnull(t0.[IRF-COFINS],0)) + isnull(t2.[S]*t2.[IRF-COFINS],0) + isnull(t1.[IRF-COFINS],0) as 'IRF-COFINS',
		(t0.[S]*isnull(t0.[IRF-CSLL],0)) + isnull(t2.[S]*t2.[IRF-CSLL],0) + isnull(t1.[IRF-CSLL],0) as 'IRF-CSLL',			
		(t0.[S]*isnull(t0.[IRF-INSS],0)) + isnull(t2.[S]*t2.[IRF-INSS],0) + isnull(t1.[IRF-INSS],0) as 'IRF-INSS',
		(t0.[S]*isnull(t0.[IRF-10833],0)) + isnull(t2.[S]*t2.[IRF-10833],0) + isnull(t1.[IRF-10833],0) as 'IRF-10833',
		(t0.[S]*isnull(t0.[IRF-OUTROS],0)) + isnull(t2.[S]*t2.[IRF-OUTROS],0) + isnull(t1.[IRF-OUTROS],0) as 'IRF-OUTROS',
		(t0.[S]*isnull(t0.[IRF-TOTAL],0)) + isnull(t2.[S]*t2.[IRF-TOTAL],0) + isnull(t1.[IRF-TOTAL],0) as 'IRF-TOTAL',
		(t0.[S]*isnull(t0.[Base IRF-ISSF],0)) + isnull(t2.[S]*t2.[Base IRF-ISSF],0) + isnull(t1.[Base IRF-ISSF],0) as 'Base IRF-ISSF',
		(t0.[S]*isnull(t0.[Base IRF-IRRF],0)) + isnull(t2.[S]*t2.[Base IRF-IRRF],0) + isnull(t1.[Base IRF-IRRF],0) as 'Base IRF-IRRF',
		(t0.[S]*isnull(t0.[Base IRF-PIS],0)) + isnull(t2.[S]*t2.[Base IRF-PIS],0) + isnull(t1.[Base IRF-PIS],0) as 'Base IRF-PIS',
		(t0.[S]*isnull(t0.[Base IRF-COFINS],0)) + isnull(t2.[S]*t2.[Base IRF-COFINS],0) + isnull(t1.[Base IRF-COFINS],0) as 'Base IRF-COFINS',
		(t0.[S]*isnull(t0.[Base IRF-CSLL],0)) + isnull(t2.[S]*t2.[Base IRF-CSLL],0) + isnull(t1.[Base IRF-CSLL],0) as 'Base IRF-CSLL',			
		(t0.[S]*isnull(t0.[Base IRF-INSS],0)) + isnull(t2.[S]*t2.[Base IRF-INSS],0) + isnull(t1.[Base IRF-INSS],0) as 'Base IRF-INSS',
		(t0.[S]*isnull(t0.[Base IRF-10833],0)) + isnull(t2.[S]*t2.[Base IRF-10833],0) + isnull(t1.[Base IRF-10833],0) as 'Base IRF-10833',
		(t0.[S]*isnull(t0.[Base IRF-OUTROS],0)) + isnull(t2.[S]*t2.[Base IRF-OUTROS],0) + isnull(t1.[Base IRF-OUTROS],0) as 'Base IRF-OUTROS',

		(t0.[S]*isnull(t0.[IRF-ISSF-P],0)) + isnull(t2.[S]*t2.[IRF-ISSF-P],0) + isnull(t1.[IRF-ISSF-P],0) as 'IRF-ISSF-P',
		(t0.[S]*isnull(t0.[IRF-IRRF-P],0)) + isnull(t2.[S]*t2.[IRF-IRRF-P],0) + isnull(t1.[IRF-IRRF-P],0) as 'IRF-IRRF-P',
		(t0.[S]*isnull(t0.[IRF-PIS-P],0)) + isnull(t2.[S]*t2.[IRF-PIS-P],0) + isnull(t1.[IRF-PIS-P],0) as 'IRF-PIS-P',
		(t0.[S]*isnull(t0.[IRF-COFINS-P],0)) + isnull(t2.[S]*t2.[IRF-COFINS-P],0) + isnull(t1.[IRF-COFINS-P],0) as 'IRF-COFINS-P',
		(t0.[S]*isnull(t0.[IRF-CSLL-P],0)) + isnull(t2.[S]*t2.[IRF-CSLL-P],0) + isnull(t1.[IRF-CSLL-P],0) as 'IRF-CSLL-P',			
		(t0.[S]*isnull(t0.[IRF-INSS-P],0)) + isnull(t2.[S]*t2.[IRF-INSS-P],0) + isnull(t1.[IRF-INSS-P],0) as 'IRF-INSS-P',
		(t0.[S]*isnull(t0.[IRF-10833-P],0)) + isnull(t2.[S]*t2.[IRF-10833-P],0) + isnull(t1.[IRF-10833-P],0) as 'IRF-10833-P',
		(t0.[S]*isnull(t0.[IRF-OUTROS-P],0)) + isnull(t2.[S]*t2.[IRF-OUTROS-P],0) + isnull(t1.[IRF-OUTROS-P],0) as 'IRF-OUTROS-P',
		(t0.[S]*isnull(t0.[IRF-TOTAL-P],0)) + isnull(t2.[S]*t2.[IRF-TOTAL-P],0) + isnull(t1.[IRF-TOTAL-P],0) as 'IRF-TOTAL-P',
		(t0.[S]*isnull(t0.[Base IRF-ISSF-P],0)) + isnull(t2.[S]*t2.[Base IRF-ISSF-P],0) + isnull(t1.[Base IRF-ISSF-P],0) as 'Base IRF-ISSF-P',
		(t0.[S]*isnull(t0.[Base IRF-IRRF-P],0)) + isnull(t2.[S]*t2.[Base IRF-IRRF-P],0) + isnull(t1.[Base IRF-IRRF-P],0) as 'Base IRF-IRRF-P',
		(t0.[S]*isnull(t0.[Base IRF-PIS-P],0)) + isnull(t2.[S]*t2.[Base IRF-PIS-P],0) + isnull(t1.[Base IRF-PIS-P],0) as 'Base IRF-PIS-P',
		(t0.[S]*isnull(t0.[Base IRF-COFINS-P],0)) + isnull(t2.[S]*t2.[Base IRF-COFINS-P],0) + isnull(t1.[Base IRF-COFINS-P],0) as 'Base IRF-COFINS-P',
		(t0.[S]*isnull(t0.[Base IRF-CSLL-P],0)) + isnull(t2.[S]*t2.[Base IRF-CSLL-P],0) + isnull(t1.[Base IRF-CSLL-P],0) as 'Base IRF-CSLL-P',			
		(t0.[S]*isnull(t0.[Base IRF-INSS-P],0)) + isnull(t2.[S]*t2.[Base IRF-INSS-P],0) + isnull(t1.[Base IRF-INSS-P],0) as 'Base IRF-INSS-P',
		(t0.[S]*isnull(t0.[Base IRF-10833-P],0)) + isnull(t2.[S]*t2.[Base IRF-10833-P],0) + isnull(t1.[Base IRF-10833-P],0) as 'Base IRF-10833-P',
		(t0.[S]*isnull(t0.[Base IRF-OUTROS-P],0)) + isnull(t2.[S]*t2.[Base IRF-OUTROS-P],0) + isnull(t1.[Base IRF-OUTROS-P],0) as 'Base IRF-OUTROS-P',

		t0.[Alíquota COFINS],
		t0.[Alíquota PIS],
		t0.[Alíquota ICMS],
		t0.[Alíquota ICMS-ST],
		t0.[Alíquota Interna ICMS-ST],
		t0.[MVA ICMS-ST],
		t0.[Alíquota IPI],
		t0.[Alíquota ISS],
		t0.[Alíquota CSLL],
		t0.[Alíquota IRPJ],
		t0.[Alíquota II],
		t0.[Alíquota OUTROS IMP]
from [REC_FINAL] as t0 
left outer join [FVT_RECDEV_5] (@BPLIdIni, @BPLIdFim, @DataIni, @DataFim,'-CAN') as t1 
		on (t0.DocEntry = t1.DocEntryBase and t0.[Linha Doc] = t1.BaseLine and t1.[BaseType] = '20' and t1.[Tipo DOC]='RECCAN' and @CAN = '+CAN')		
left outer join [REC_FINAL] as t2 /* Cancelamento Novo */
		on (t0.DocEntry = t2.DocEntryBase and t0.[Linha Doc] = t2.BaseLine and t2.[BaseType] = '20' and t2.[Tipo DOC]='RECCAN' and @CAN = '+CAN')		
where (t0.[Tipo DOC] ='REC' and @CAN = '+CAN') or @CAN = '-CAN'
)


