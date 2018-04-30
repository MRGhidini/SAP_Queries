SELECT  [Código do Item] = T4.ItemCode ,
        [Lote] = T4.MnfSerial ,
        [Quantidade] = T3.[OnHandQty] ,
        [Local] = MIN(T1.[BinCode]) ,
        [Deposito] = MIN(T1.[WhsCode]),
		T4.ExpDate
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
WHERE   T0.ItemCode = '99-12857-07'
GROUP BY T4.ItemCode ,
        T0.[BinAbs] ,
        T0.[ItemCode] ,
        T3.[OnHandQty] ,
        T1.[BinCode] ,
        T1.[WhsCode] ,
        T1.RtrictType ,
        T4.MnfSerial,
		T4.ExpDate

