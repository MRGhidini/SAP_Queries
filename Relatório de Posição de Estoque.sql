/*
Select * from POR1
Solicitação
	2. Relatório Posição Estoque
	Trazer o saldo de estoque (posição do dia), prevendo pedidos de compras e tratando o tempo de chegada dos itens (lead time)
	Filtros = Fornecedor, Itens, Grupo de itens, Subgrupo de itens e depósitos.
	Campos = Item, Descrição, Estoque, Disponível, Número do pedido, Data de lançamento, Data Entrega do Pedido Compra (tratando o lead time do produto) e Código do PN.
Responsável pelo levantamento e especificação
	Wilson, Rodrigo Abat (Okser)
	Murilo (Emit)
Desenvolvedor do Relatório
	Ayrton Krizan
Dúvidas tiradas
	1 - ) Apenas estoque futuros? Sim.
*/
/*
Select 1 From OITM T0 Where T0.ItemCode = [%0]
Select 1 From OITB T50 Where T50.ItmsGrpNam = [%1]
Select 1 From OWHS T51 Where T51.WhsCode = [%2]
Select 1 From OCRD T52 Where T52.CardCode = [%3]
Select 1 From [@OKS_SUBGRUPOS] T53 Where T53.Name = [%4]
*/

Declare @Dep varchar(5), @PN varchar(25), @Itens varchar(25), @grpItens varchar(5), @sub varchar(55)
Set @Dep =  '[%2]'
Set @PN = '[%3]'
Set @Itens = '[%0]'
Set @grpItens = isnull((Select cast(ItmsGrpCod as varchar) From OITB where ItmsGrpNam = '[%1]'), '')
Set @sub = isnull((Select cast(Code as varchar) From [@OKS_SUBGRUPOS] where Name = '[%4]'), '')

--Select ItemCode from(
Select
	T0.ItemCode, 
	T0.ItemName,
	[Estoque] = Sum(isnull(T1.OnHand, 0)),
	[Disponível] = isnull(T2.Disponivel, 0) + Sum(isnull(T1.OnHand, 0)),
	T3.Docentry,
	[Número do pedido] = T3.DocNum,
	[Data de lançamento] = T3.DocDate, 
	[Data Entrega do Pedido Compra] = DATEADD(d, isnull(T0.LeadTime,0), T3.DocDueDate),
	[Qtde Disponivel no Pedido] = T3.OpenQty,
	[Código do PN] = T3.CardCode,
	[Nome do PN] =	T3.CardName
From
	OITM T0
	Inner join OITW T1 On T0.ItemCode = T1.ItemCode
	Left Join (
			Select T11.ItemCode, Sum(T11.OpenQty) Disponivel 
			From POR1 T11, OPOR T10
			where 
				T11.LineStatus = 'O' and T10.DocEntry = T11.DocEntry 
				And (@Dep = '' or T11.WhsCode = @Dep)
				And (@PN = '' or T10.CardCode = @PN)
			group by T11.ItemCode
			) T2 On T0.ItemCode = T2.ItemCode
	Left Join (
			Select T10.DocEntry, T10.DocNum, T10.DocDate, T10.DocDueDate, T10.CardCode, T10.CardName, T11.ItemCode, T11.OpenQty
			From POR1 T11, OPOR T10
			where 
				T11.LineStatus = 'O' and T10.DocEntry = T11.DocEntry 
				And (@Dep = '' or T11.WhsCode = @Dep)
				And (@PN = '' or T10.CardCode = @PN)
			) T3 On T3.ItemCode = T0.ItemCode
	--POR1 T3 On T3.ItemCode = T0.ItemCode and ISNULL(T3.LineStatus, '') = 'O' and (@Dep = '' or T3.WhsCode = @Dep)
	--Left Join OPOR T4 On T3.DocEntry = T4.DocEntry And (@PN = '' or T4.CardCode = @PN)
Where
	T0.InvntItem = 'Y'
	And (@Itens = '' or T0.ItemCode = @Itens)
	And (@grpItens = '' Or T0.ItmsGrpCod = @grpItens)
	And (@sub = '' Or T0.U_oksSubGrupo = @sub)
	And (@Dep = '' or T1.WhsCode = @Dep)

Group By
	T0.ItemCode, 
	T0.ItemName,
	T2.Disponivel, 
	T3.DocEntry,
	T3.DocNum,
	T3.DocDate, 
	DATEADD(d, isnull(T0.LeadTime,0), T3.DocDueDate),
	T3.OpenQty,
	T3.CardCode,
	T3.CardName

--) T0 Group by ItemCode having COUNT(1) > 0