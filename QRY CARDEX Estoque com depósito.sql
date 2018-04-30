/*
	Select 1 From OIVL T0 Where T0.DocDate >= [%0] And T0.DocDate <=[%1]
*/
Declare @DataIni DateTime = '20140101',
		@DataFim DateTime = '20151231'
		/*,@ItemCode varchar(50) = '0NME0009'*/

--SET @DataIni = '[%0]'
--SET @DataFim = '[%1]'

/**** Entradas ****/
Select
	T0."ItemCode",
	T0."LocCode",
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
	T0."ItemCode",
	T0.LocCode

/**** Saídas ****/
Select
	T0."ItemCode",
	T0."LocCode",
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
	T0."ItemCode",
	T0.LocCode


Select
	[Cod.Item]= T0."ItemCode",
	[Descrição] = T0."ItemName",
	[Depósito] = T1.WhsCode,
	[Saldo Inicial Valor] = SUM(SaldoInicial."SumStock"),
	[Qtd.Inicial] = SUM(SaldoInicial."InQty" - SaldoInicial."OutQty"),
	[Custo Inicial Unit.] = CASE
								WHEN SUM(SaldoInicial."InQty" - SaldoInicial."OutQty") <> 0
									THEN SUM(SaldoInicial."SumStock")/SUM(SaldoInicial."InQty" - SaldoInicial."OutQty")
								ELSE
									0.00
							END,
	"[ENTRADA] Total Valor" = Entradas.[Total Valor],
	"[ENTRADA] Qtde." = Entradas.[Qtde.] ,
	"[ENTRADA] Custo Unit." = Entradas.[Custo Unit.],
	"[SAIDA] Total Valor" = Saidas.[Total Valor],
	"[SAIDA] Qtde." = Saidas.[Qtde.] ,
	"[SAIDA] Custo Unit." = Saidas.[Custo Unit.]
From
	OITM T0
	Inner Join OITW T1 On T0.ItemCode = T1.ItemCode
	LEFT Join OIVL SaldoInicial On T0."ItemCode" = SaldoInicial."ItemCode" And T1."WhsCode" = SaldoInicial."LocCode" And SaldoInicial."DocDate" < @DataIni
	LEFT Join #Entradas Entradas On T0."ItemCode" = Entradas."ItemCode" And T1."WhsCode" = SaldoInicial."LocCode"
	LEFT Join #Saidas Saidas On T0."ItemCode" = Saidas."ItemCode" And T1."WhsCode" = SaldoInicial."LocCode"
Where
	T0."InvntItem" = 'Y' And
	(Entradas.[ItemCode] is not null OR Saidas.[ItemCode] is not null OR SaldoInicial.[ItemCode] is not null)
	/*And T0."ItemCode" = @ItemCode*/
Group By
	T0."ItemCode",
	T0."ItemName",
	T1."WhsCode",
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
