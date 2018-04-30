SELECT  T4.ItemCode AS 'Código do Item',
        [Lote] = T4.DistNumber ,
        [Quantidade] = T2.[OnHandQty] ,
        [Local] = MIN(T1.[BinCode]) ,
        [Deposito] = MIN(T1.[WhsCode]),
		T4.ExpDate AS 'Data Vencimento'
INTO #LOTE
FROM    [OIBQ] T0
        INNER  JOIN [OBIN] T1 ON T0.[BinAbs] = T1.[AbsEntry]
                                 AND T0.[OnHandQty] <> 0
        LEFT OUTER  JOIN [OBBQ] T2 ON T0.[BinAbs] = T2.[BinAbs]
                                      AND T0.[ItemCode] = T2.[ItemCode]
                                      AND T2.[OnHandQty] <> 0
        LEFT OUTER  JOIN [OSBQ] T3 ON T0.[BinAbs] = T3.[BinAbs]
                                      AND T0.[ItemCode] = T3.[ItemCode]
                                      AND T3.[OnHandQty] <> 0
        LEFT OUTER  JOIN [OBTN] T4 ON T0.[ItemCode] = T4.ItemCode
                                      AND T2.[SnBMDAbs] = T4.AbsEntry
WHERE   
	--T0.ItemCode = 'L02001021'
	ISNULL(T2.[OnHandQty],0) <> 0
GROUP BY T4.ItemCode ,
        T0.[BinAbs] ,
        T0.[ItemCode] ,
        T2.[OnHandQty] ,
        T1.[BinCode] ,
        T1.[WhsCode] ,
        T1.RtrictType ,
        T4.DistNumber,
		T4.ExpDate
UNION All
Select 
	T0.ItemCode AS 'Código do Item',
	c.DistNumber AS 'Lote',
	[Quantitdade] = Sum(a.Quantity),
	'' AS 'Local',
	b.LocCode AS 'Deposito',
	c.ExpDate AS 'Data Vencimento'
From 
	OIVL T0 
	Inner Join OITL b On T0.TransType = b.DocType And b.DocEntry = T0.CreatedBy And b.DocLine = T0.DocLineNum And b.LocCode = T0.LocCode
	Inner Join ITL1 a On a.LogEntry = b.LogEntry
	Inner Join OBTN c On a.SysNumber = c.SysNumber And B.ItemCode = C.ItemCode
	INNER JOIN OWHS d ON d.WhsCode= b.loccode
WHERE 
	d.BinActivat = 'N' --AND 
	--AND t0.ItemCode = 'L02001021'
Group By
	T0.ItemCode,
	b.LocCode,
	c.DistNumber,
		c.ExpDate
Having
	SUM(a.Quantity) > 0

SELECT * FROM #LOTE

DROP TABLE #LOTE
