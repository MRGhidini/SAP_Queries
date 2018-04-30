if OBJECT_ID ('FVT_RESUMO_VENDA') is not null
	drop function FVT_RESUMO_VENDA
go
create function FVT_RESUMO_VENDA 
	(	@DataIni as datetime, 
		@DataFim as datetime,
		@AgentIni as nvarchar(155),
		@AgentFim as nvarchar(155)
		
	) returns table with encryption as return


With COTVEN as
(
select t0.[Mês], t0.[Tipo NF], t0.Cancelada, t0.[Tipo Saída], t0.[Código PN], t0.[Nome PN], t0.[Nome SlpCode] as 'Vendedor',  0 as 'Faturamento Bruto',
		0 as 'Total Vendido',
		0 as 'Custo Total Vendido',
		0.00 as 'Custo Total Sem Impostos',
		0 as 'Devoluções',	
		0.00 as 'Impostos-I',
		0.00 as 'Impostos-NI',
		sum(t0.[Faturamento Bruto]) as 'Cotações Totais',
		0 as 'Pedidos Totais'
from OKS_SULPECAS..FVT_Saídas_Cotações (@DataIni, @DataFim) as t0
where	((t0.[Nome SlpCode] between @AgentIni and @AgentFim) or (t0.[Nome SlpCode] is null) or (t0.[Nome SlpCode] = '-1'))
		and (t0.Cancelada is null or t0.Cancelada <> 'COVCAN') 
group by t0.[Mês], t0.[Tipo NF], t0.Cancelada, t0.[Tipo Saída], t0.[Código PN], t0.[Nome PN], t0.[Nome SlpCode],T0.DocEntry
),

PEDVEN as
(
select t0.[Mês], t0.[Tipo NF], t0.Cancelada, t0.[Tipo Saída], t0.[Código PN], t0.[Nome PN], t0.[Nome SlpCode] as 'Vendedor', 0 as 'Faturamento Bruto',
		0 as 'Total Vendido',
		0 as 'Custo Total Vendido',
		0.00 as 'Custo Total Sem Impostos',
		0 as 'Devoluções',	
		0.00 as 'Impostos-I',
		0.00 as 'Impostos-NI',
		0 as 'Cotações Totais',
 		sum(t0.[Faturamento Bruto]) as 'Pedidos Totais'
from OKS_SULPECAS..FVT_Saídas_Pedidos(@DataIni, @DataFim) as t0
where	((t0.[Nome SlpCode] between @AgentIni and @AgentFim) or (t0.[Nome SlpCode] is null) or (t0.[Nome SlpCode] = '-1'))
		and (t0.Cancelada is null or t0.Cancelada <> 'PEVCAN') 
group by t0.[Mês], t0.[Tipo NF], t0.Cancelada, t0.[Tipo Saída], t0.[Código PN], t0.[Nome PN], t0.[Nome SlpCode],T0.DocEntry
),

NFS as 
(
select t0.[Mês], t0.[Tipo NF], t0.Cancelada, t0.[Tipo Saída], t0.[Código PN], t0.[Nome PN], t0.[Nome SlpCode] as 'Vendedor', sum(t0.[Faturamento Bruto]) as 'Faturamento Bruto',
		sum(t0.[Faturamento Bruto]) - sum(t0.[DA Distr]) as 'Total vendido',
		sum(isnull(t0.[CMV SP],0)) + sum(isnull(t0.[DA Linha],0)) + sum(isnull(t0.[DA Distr],0)) + sum(isnull(t0.COFINS,0)) + sum(isnull(t0.PIS,0)) + sum(isnull(t0.ICMS,0))
		+isnull((Select SUM(ISNULL(T20.taxSum,0)) from INV4 as T20 Where T0.DocEntry = T20.DocEntry and T0.[Linha Doc] = T20.LineNum and T20.staType in (27,28,29)),0) as 'Custo Total Vendido',
		sum(t0.[CMV SP]) as 'Custo Total Sem Impostos',
		0 as 'Devoluções',	
		sum(isnull(t0.COFINS,0)) + sum(isnull(t0.PIS,0)) + sum(isnull(t0.ICMS,0))+
		isnull((Select SUM(ISNULL(T20.taxSum,0)) from INV4 as T20 Where T0.DocEntry = T20.DocEntry and T0.[Linha Doc] = T20.LineNum and T20.staType in (27,28,29) ),0) 
		--- (Select SUM(ISNULL(T20.taxSum,0)) from INV4 as T20 Where T0.DocEntry = T20.DocEntry and T0.[Linha Doc] = T20.LineNum and T20.RelateType = 13) 
		as 'Impostos-I',
		sum(t0.[ICMS-ST]) + sum(t0.IPI) as 'Impostos-NI',
		0 as 'Cotações Totais',
		0 as 'Pedidos Totais'
from OKS_SULPECAS..FVT_Saídas_Fiscal_NFS_1 (@DataIni, @DataFim, '+CAN') as t0
---LEFT JOIN INV4 as t1 on t0.DocEntry = t1.DocEntry and t0.[Linha Doc] = t1.LineNum and t1.staType = 28
where	((t0.[Nome SlpCode] between @AgentIni and @AgentFim) or (t0.[Nome SlpCode] is null) or (t0.[Nome SlpCode] = '-1'))
		and (t0.Cancelada is null or t0.Cancelada <> 'NFSCAN') 
group by t0.[Mês], t0.[Tipo NF], t0.Cancelada, t0.[Tipo Saída], t0.[Código PN], t0.[Nome PN], t0.[Nome SlpCode],T0.DocEntry,T0.[Linha Doc]
),

DEV_NFS as 
(
select t0.[Mês], t0.[Tipo NF], t0.Cancelada, t0.[Tipo Saída], t0.[Código PN], t0.[Nome PN], t0.[Nome SlpCode] as 'Vendedor',  0 as 'Faturamento Bruto',
		0 as 'Total Vendido',
		0 as 'Custo Total Vendido',
		0.00 as 'Custo Total Sem Impostos',
		sum(t0.[Faturamento Bruto]) as 'Devoluções',
		sum(t0.COFINS) + sum(t0.PIS) + sum(t0.ICMS)-sum(t1.TaxSum) as 'Impostos-I',
		sum(t0.[ICMS-ST]) + sum(t0.IPI) as 'Impostos-NI',
		0 as 'Cotações Totais',
		0 as 'Pedidos Totais'	
from OKS_SULPECAS..FVT_Saídas_Fiscal_NFS_DEV_1 (@DataIni, @DataFim, '-CAN') as t0
LEFT JOIN RIN4 as t1 on t0.DocEntry = t1.DocEntry and t0.[Linha Doc] = t1.LineNum and t1.staType = 28
where	((t0.[Nome SlpCode] between @AgentIni and @AgentFim) or (t0.[Nome SlpCode] is null) or (t0.[Nome SlpCode] = '-1'))
group by t0.[Mês], t0.[Tipo NF], t0.Cancelada, t0.[Tipo Saída], t0.[Código PN], t0.[Nome PN], t0.[Nome SlpCode],T0.DocEntry
),

FINAL as
(
select * from COTVEN 
union all
select * from PEDVEN 
union all
select * from NFS 
union all
select * from DEV_NFS 
)
Select * From FINAL
