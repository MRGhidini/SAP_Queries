 Select CASE WHEN (ISNULL(SUM(AA.Quantidade),0)) < 0 THEN 0 ELSE ISNULL(SUM(AA.Quantidade),0) END as 'Empenho MI', AA.DocEntry AS 'N° Pedido', AA.ItemCode as 'Cod. Item', AA.BatchNum as 'N° Lote' FROM
 (SELECT 
-SUM(IBT1.Quantity) as 'Quantidade', IBT1.ItemCode, IBT1.BatchNum, IBT1.BsDocEntry AS 'DocEntry'
FROM IBT1 INNER JOIN RDR1 ON RDR1.DocEntry = IBT1.BsDocEntry AND RDR1.LineNum = IBT1.BsDocLine
		  INNER JOIN ORDR ON RDR1.DocEntry = ORDR.DocEntry
WHERE IBT1.BsDocType IN(17)  and Direction = 1 AND IBT1.BsDocEntry IN (SELECT DocEntry FROM OINV WHERE CANCELED <> 'Y') AND RDR1.LineStatus = 'O' AND RDR1.WhsCode = '500'
 --AND IBT1.BsDocEntry = '12162' and IBT1.ItemCode = 'PA.01.03.0097' and IBT1.BatchNum = '38599'
 GROUP BY IBT1.ItemCode, IBT1.BatchNum, IBT1.BsDocEntry

union 

SELECT 
SUM(IBT1.Quantity) as 'Quantidade', IBT1.ItemCode, IBT1.BatchNum, IBT1.BaseEntry as 'DocEntry'

FROM IBT1 INNER JOIN RDR1 ON RDR1.DocEntry = IBT1.BaseEntry AND RDR1.LineNum = IBT1.BaseLinNum
		  INNER JOIN ORDR ON ORDR.DocEntry = RDR1.DocEntry 
WHERE IBT1.BaseType IN(17) and Direction = 2   AND IBT1.BaseEntry IN (SELECT DocEntry FROM OINV WHERE CANCELED <> 'Y') AND RDR1.LineStatus = 'O' AND RDR1.WhsCode = '500'
 --and IBT1.BaseEntry = '12162'  and IBT1.ItemCode = 'PA.01.03.0097' and IBT1.BatchNum = '38599'
 GROUP BY IBT1.ItemCode, IBT1.BatchNum, IBT1.BaseEntry
 ) AA  GROUP BY AA.ItemCode, AA.BatchNum, AA.DocEntry
 
 --IBT1 é uma view da SAP que vem no B1
 

