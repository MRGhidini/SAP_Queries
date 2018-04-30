SELECT  T4.ItemCode AS 'Código do Item',
        [Serie] = T4.MnfSerial ,
        [Quantidade] = T3.[OnHandQty] ,
        [Local] = MIN(T1.[BinCode]) ,
        [Deposito] = MIN(T1.[WhsCode]),
		T4.ExpDate AS 'Data Vencimento'
INTO #Serie
FROM    [OIBQ] T0
        INNER  JOIN [OBIN] T1 ON T0.[BinAbs] = T1.[AbsEntry]
                                 AND T0.[OnHandQty] <> 0
        LEFT OUTER  JOIN [OBBQ] T2 ON T0.[BinAbs] = T2.[BinAbs]
                                      AND T0.[ItemCode] = T2.[ItemCode]
                                      AND T2.[OnHandQty] <> 0
        LEFT OUTER  JOIN [OSBQ] T3 ON T0.[BinAbs] = T3.[BinAbs]
                                      AND T0.[ItemCode] = T3.[ItemCode]
                                      AND T3.[OnHandQty] <> 0
        LEFT OUTER  JOIN [OSRN] T4 ON T0.[ItemCode] = T4.ItemCode
                                      AND T3.SnBMDAbs = T4.AbsEntry
WHERE   --T0.ItemCode = '99-12857-07' and
 ISNULL(T3.[OnHandQty],0) <> 0
GROUP BY T4.ItemCode ,
        T0.[BinAbs] ,
        T0.[ItemCode] ,
        T3.[OnHandQty] ,
        T1.[BinCode] ,
        T1.[WhsCode] ,
        T1.RtrictType ,
        T4.MnfSerial,
		T4.ExpDate
Union
Select 
	T0.ItemCode AS 'Código do Item',
	c.MnfSerial AS 'Série',
	[Quantitdade] = Sum(a.Quantity),
	'' AS 'Local',
	b.LocCode AS 'Deposito',
	c.ExpDate AS 'Data Vencimento'
From 
	OIVL T0 
	Inner Join OITL b On T0.TransType = b.DocType And b.DocEntry = T0.CreatedBy And b.DocLine = T0.DocLineNum And b.LocCode = T0.LocCode
	Inner Join ITL1 a On a.LogEntry = b.LogEntry
	Inner Join OSRN c On a.SysNumber = c.SysNumber And B.ItemCode = C.ItemCode
	INNER JOIN OWHS d ON d.WhsCode= b.loccode
WHERE   d.BinActivat = 'N'
	--AND T0.ItemCode = '99-12857-07'
Group By

	T0.ItemCode,
	b.LocCode,
	c.MnfSerial,
	ExpDate
Having
	SUM(a.Quantity) > 0



SELECT * FROM #Serie

DROP TABLE #Serie
