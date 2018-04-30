/*
	Select 1 From OIVL T0 Where T0.DocDate >= [%0] And T0.DocDate <=[%1]
*/
Declare @DataIni DateTime = '20140101',
		@DataFim DateTime = '20151231'
		/*,@ItemCode varchar(50) = '0NME0009'*/

SET @DataIni = '[%0]'
SET @DataFim = '[%1]'

/**** Entradas ****/
Select
	T0."ItemCode",
	[Total Valor] = SUM(T0."SumStock"),
	[Qtde.] = SUM(T0."InQty"),
	[Custo Unit.] = CASE
						WHEN SUM(T0."InQty") <> 0
							THEN SUM(T0."SumStock")/SUM(T0."InQty")
						ELSE
							0.00
					END
Into #Entradas
From
	OIVL T0
Where
	T0."DocDate" Between @DataIni And @DataFim And T0."InQty" > 0
Group By
	T0."ItemCode"

/**** Saídas ****/
Select
	T0."ItemCode",
	[Total Valor] = ABS(SUM(T0."SumStock")),
	[Qtde.] = SUM(T0.OutQty),
	[Custo Unit.] = CASE
						WHEN SUM(T0.OutQty) <> 0
							THEN ABS(SUM(T0."SumStock"))/SUM(T0.OutQty)
						ELSE
							0.00
					END
Into #Saidas
From
	OIVL T0
Where
	T0."DocDate" Between @DataIni And @DataFim And T0."OutQty" > 0
Group By
	T0."ItemCode"


Select
	[Cod.Item]= T0."ItemCode",
	[Descrição] = T0."ItemName",
	[Saldo Inicial Valor] = SUM(SaldoInicial."SumStock"),
	[Qtd.Inicial] = SUM(SaldoInicial."InQty" - SaldoInicial."OutQty"),
	[Custo Inicial Unit.] = CASE
								WHEN SUM(SaldoInicial."InQty" - SaldoInicial."OutQty") <> 0
									THEN SUM(SaldoInicial."SumStock")/SUM(SaldoInicial."InQty" - SaldoInicial."OutQty")
								ELSE
									0.00
							END,
	[Total Valor] = Entradas.[Total Valor],
	[Qtde.] = Entradas.[Qtde.] ,
	[Custo Unit.] = Entradas.[Custo Unit.],
	[Total Valor] = Saidas.[Total Valor],
	[Qtde.] = Saidas.[Qtde.] ,
	[Custo Unit.] = Saidas.[Custo Unit.]
From
	OITM T0
	LEFT Join OIVL SaldoInicial On T0."ItemCode" = SaldoInicial."ItemCode" And SaldoInicial."DocDate" < @DataIni
	LEFT Join #Entradas Entradas On T0."ItemCode" = Entradas."ItemCode"
	LEFT Join #Saidas Saidas On T0."ItemCode" = Saidas."ItemCode"
Where
	T0."InvntItem" = 'Y'
	/*And T0."ItemCode" = @ItemCode*/
Group By
	T0."ItemCode",
	T0."ItemName",
	Entradas.[Total Valor],
	Entradas.[Qtde.] ,
	Entradas.[Custo Unit.],
	Saidas.[Total Valor],
	Saidas.[Qtde.] ,
	Saidas.[Custo Unit.]
Order By
	T0.ItemCode

Drop Table #Entradas
Drop Table #Saidas
