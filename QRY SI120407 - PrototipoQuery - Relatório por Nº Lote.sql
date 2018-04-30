Select
	T0.ItemCode,
	T0.ItemName,
	T1.WhsCode,
	T2.BatchNum,
	[Quantidade] = isnull(SUM(T2.Quantity * CASE T2.Direction When 1 then -1 when 0 then 1 else 0 End ), T1.OnHand),
	[Custo Unitário] = T1.AvgPrice
From
	OITM T0
	Inner Join OITW T1 On T0.ItemCode = T1.ItemCode
	Left Join IBT1_LINK T2 On T0.ItemCode = T2.ItemCode and T1.WhsCode = T2.WhsCode
Where
	T0.ItemCode = '98-0001561'
Group By
	T0.ItemCode,
	T0.ItemName,
	T1.WhsCode,
	T2.BatchNum,
	T1.OnHand,
	T1.AvgPrice
Order By
	T0.ItemCode,
	T1.WhsCode,
	T2.BatchNum