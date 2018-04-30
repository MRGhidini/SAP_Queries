Select
 [O Bem] = T0.ItemName,
 [Número do Bem] = T0.ItemCode,
 [Grupo do Bem] = T0.AssetClass,
 [Valor capitalizado] = CASE WHEN ISNULL((SELECT TOP 1 T10.TotalSys FROM  [dbo].[ACQ1] T10 WHERE T10.ItemCode = T0.ItemCode),0) <> 0 THEN ISNULL((SELECT TOP 1 T10.TotalSys FROM  [dbo].[ACQ1] T10 WHERE T10.ItemCode = T0.ItemCode),0)
        WHEN ISNULL((SELECT TOP 1 T10.Total  FROM  [dbo].[ACQ3] T10 WHERE T10.ItemCode = T0.ItemCode),0) <> 0 THEN ISNULL((SELECT TOP 1 T10.Total  FROM  [dbo].[ACQ3] T10 WHERE T10.ItemCode = T0.ItemCode),0)
        WHEN ISNULL((SELECT SUM(T10.APC) from  FIX1 T10 WHERE T10.ItemCode = T0.ItemCode),0) <> 0 THEN ISNULL((SELECT SUM(T10.APC) from  FIX1 T10 WHERE T10.ItemCode = T0.ItemCode),0) 
        ELSE ISNULL((SELECT TOP 1 CASE WHEN T10.APC <0 then -1*T10.APC ELSE T10.APC END from  ITM8 T10 WHERE T10.ItemCode = T0.ItemCode ORDER BY 1 DESC),0)
        END,
 [Data de adição] = T0.CapDate,
 [Valor depreciado] = ISNULL((SELECT SUM(T10.OrdDprPost) FROM ODPV T10 WHERE T10.ItemCode = T0.ItemCode),0),
 [Valor à depreciar] = CASE WHEN ISNULL((SELECT TOP 1 T10.TotalSys FROM  [dbo].[ACQ1] T10 WHERE T10.ItemCode = T0.ItemCode),0) <> 0 THEN ISNULL((SELECT TOP 1 T10.TotalSys FROM  [dbo].[ACQ1] T10 WHERE T10.ItemCode = T0.ItemCode),0)
        WHEN ISNULL((SELECT TOP 1 T10.Total  FROM  [dbo].[ACQ3] T10 WHERE T10.ItemCode = T0.ItemCode),0) <> 0 THEN ISNULL((SELECT TOP 1 T10.Total  FROM  [dbo].[ACQ3] T10 WHERE T10.ItemCode = T0.ItemCode),0)
        WHEN ISNULL((SELECT SUM(T10.APC) from  FIX1 T10 WHERE T10.ItemCode = T0.ItemCode),0) <> 0 THEN ISNULL((SELECT SUM(T10.APC) from  FIX1 T10 WHERE T10.ItemCode = T0.ItemCode),0) 
        ELSE ISNULL((SELECT TOP 1 CASE WHEN T10.APC <0 then -1*T10.APC ELSE T10.APC END from  ITM8 T10 WHERE T10.ItemCode = T0.ItemCode ORDER BY 1 DESC),0)
        END-ISNULL((SELECT SUM(T10.OrdDprPost) FROM ODPV T10 WHERE T10.ItemCode = T0.ItemCode),0),
 [Valor depreciado por mês] = ISNULL((SELECT TOP 1 T10.OrdDprPost FROM ODPV T10 WHERE T10.ItemCode = T0.ItemCode ORDER BY 1 DESC),0),
 [Centro de Custo] = T6.OcrCode,
 [Baixas] = T2.DocEntry,
 [Data que foi baixado] = T3.DocDate,
 [Vida Útil] = ISNULL((SELECT SUM(T10.UsefulLife) FROM ITM7 T10 WHERE T10.ItemCode = T0.ItemCode),0),
 [Meses Restantes] = ISNULL((SELECT SUM(T10.RemainLife) FROM ITM7 T10 WHERE T10.ItemCode = T0.ItemCode),0)
From
 OITM T0
 Inner join ITM6 T6 on T0.ItemCode = T6.ItemCode
 Left Join RTI1 T2 On T0.ItemCode = T2.ItemCode
 Left join ORTI T3 On T2.DocEntry = T3.DocEntry
Where
 T0.ItemType = 'F'