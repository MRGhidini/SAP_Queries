Declare @Max int = (Select 55 )

;With Numeros as (
	Select 1 as Col
	Union All
	Select Col +1 From Numeros Where Col < @Max
)
select * INTO #Numeros from Numeros
Option (MAXRECURSION 0)
Select
	T0.ItemCode,
	T0.ItemName
From
	OITM T0
	Left Join #Numeros N On 1 = 1 
Where
	ItemCode = 'I00001'

Drop Table #Numeros


