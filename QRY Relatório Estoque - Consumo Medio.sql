/*
	Select 1 From OIVL T0 Where T0.DocDate >= [%0] And T0.ItemCode = [%1]
*/

Declare @DataBase DateTime = '20170112',
		@ItemCode Varchar(100) = 'A00005'

SET @DataBase = '[%0]'
SET @ItemCode = '[%1]'

/**** Saídas ****/
Select
	T0."ItemCode",
	[Total Valor] = ABS(SUM(T0."SumStock")),
	[Qtde.] = SUM(T0.OutQty),
	[ConsumoMedioDiario] = SUM(T0.OutQty)/DATEDIFF(d, @DataBase, getdate()),
	[ConsumoMedioMensal] = SUM(T0.OutQty)/DATEDIFF(MONTH, @DataBase, getdate()),
	[Custo Unit.] = CASE
						WHEN SUM(T0.OutQty) <> 0
							THEN ABS(SUM(T0."SumStock"))/SUM(T0.OutQty)
						ELSE
							0.00
					END

From
	OIVL T0
Where
	T0."DocDate" >= @DataBase And 
	T0.ItemCode = @ItemCode And
	T0."OutQty" > 0
Group By
	T0."ItemCode"
