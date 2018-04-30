Select 
	--b.DocEntry,
	--b.DocType,
	--b.DocLine,
	T0.ItemCode,
	b.LocCode,
	c.SysNumber,
	c.DistNumber,
	[Quantitdade] = Sum(a.Quantity)
From 
	OIVL T0 
	Inner Join OITL b On T0.TransType = b.DocType And b.DocEntry = T0.CreatedBy And b.DocLine = T0.DocLineNum And b.LocCode = T0.LocCode
	Inner Join ITL1 a On a.LogEntry = b.LogEntry
	Inner Join OBTN c On a.SysNumber = c.SysNumber And B.ItemCode = C.ItemCode
Group By
	--b.DocEntry,
	--b.DocType,
	--b.DocLine,
	T0.ItemCode,
	b.LocCode,
	c.SysNumber,
	c.DistNumber
Having
	SUM(a.Quantity) > 0
Order By
	T0.ItemCode