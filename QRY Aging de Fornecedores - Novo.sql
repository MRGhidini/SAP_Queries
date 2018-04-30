/*Relat�rio Aging de Fornecedores */




/*select 1 from [DBO].[OPCH] T40 where T40.DocDate <= '[%0]' and T40.DocDueDate > = '[%1]' and T40.DocDueDate <= '[%2]' and T40.CardName = '[%3]' */


declare @DataBase datetime, @DataVencIni datetime, @DataVencFim datetime, @CardName varchar(100)

set @DataBase = '[%0]'
set @DataVencIni = '[%1]'
set @DataVencFim = '[%2]'
set @CardName = isnull('[%3]','')

SELECT MAX(T0.[ShortName]) 'C�digo Fornecedor', 
MAX(T4.CardName) 'Nome Fornecedor',
ISNULL((CASE max(T0.TransType)
	WHEN 30 THEN 'LCM'
	WHEN 13 THEN 'NF de Saida'
	WHEN 14 THEN 'Dev. NF de Saida'
	WHEN 15 THEN 'Entrega'
	WHEN 16 THEN 'Devolu��o'
	WHEN 18 THEN 'NF de Entrada'
	WHEN 19 THEN 'Dev. NF de Entrada'
	WHEN 20 THEN 'Recebimento de Mercadoria'
	WHEN 21 THEN 'Devolu��o de Mercadoria'
	WHEN 69 THEN 'Despesas de Importa��o'
	WHEN 60 THEN 'Sa�da de Mercadoria'
	WHEN 59 THEN 'Entrada de Mercadoria'
	WHEN 46 THEN 'Contas a Pagar' 
	WHEN 24 THEN 'Contas a Receber'
	WHEN 162 THEN 'Reavalia��o de Estoque'
	WHEN 67 THEN 'Transferencia de Estoque'
	WHEN 203 THEN 'Adiantamento a Cliente'
	WHEN 204 THEN 'Adiantamento a Fornecedor'
	END),'') 'Tipo Doc', 
MAX(T0.[BaseRef]) 'No. Doc SAP', 
MAX(T0.[LineMemo]) 'Observa��es / No. NF', 
MAX(T0.[SourceLine]) 'No. da Presta��o', 
MAX(T0.[RefDate]) 'Data de Lan�amento', 
MAX(T0.[TaxDate]) 'Data do Documento', 
MAX(T0.[DueDate]) 'Data de Vencimento', 
MAX(T0.[BalDueCred]) + SUM(T1.[ReconSum]) 'Saldo',
MAX(T0.[Account]) 'Conta', 
T0.[TransId] 'No. LCM', 
T0.[Line_ID] 'No. da Linha LCM'

 FROM  [dbo].[JDT1] T0  INNER  JOIN 
[dbo].[ITR1] T1  ON  T1.[TransId] = T0.[TransId]  AND  T1.[TransRowId] = T0.[Line_ID]   INNER  JOIN 
[dbo].[OITR] T2  ON  T2.[ReconNum] = T1.[ReconNum]   INNER  JOIN 
[dbo].[OJDT] T3  ON  T3.[TransId] = T0.[TransId]   INNER  JOIN 
[dbo].[OCRD] T4  ON  T4.[CardCode] = T0.[ShortName]    LEFT OUTER  JOIN 
[dbo].[B1_JournalTransSourceView] T5  ON  T5.[ObjType] = T0.[TransType]  AND  T5.[DocEntry] = T0.[CreatedBy]  AND  (T5.[TransType] <> 'I'  OR  (T5.[TransType] = 'I'  AND  T5.[InstlmntID] = T0.[SourceLine] ))  

WHERE (T0.DueDate >= isnull(@DataVencIni,'') or ISNULL(@DataVencIni,'') = '') 
and (T0.DueDate <= isnull(@DataVencFim,'') or ISNULL(@DataVencFim,'') = '') 
and (T4.CardName like '%'+@CardName+'%' or @CardName = '')
and  T0.[RefDate] <= @DataBase  AND  T0.[RefDate] <= @DataBase
AND  T4.[CardType] = 'S'  
AND  T2.[ReconDate] > @DataBase
AND  T1.[IsCredit] = 'C' 

 GROUP BY T0.[TransId], T0.[Line_ID], T0.[BPLName] HAVING MAX(T0.[BalFcCred]) <>- SUM(T1.[ReconSumFC])  OR  MAX(T0.[BalDueCred]) <>- SUM(T1.[ReconSum])   
 
 
 UNION ALL 
 
 
 SELECT 
 MAX(T0.[ShortName]), 
 MAX(T4.CardName),
 ISNULL((CASE max(T0.TransType)
	WHEN 30 THEN 'LCM'
	WHEN 13 THEN 'NF de Saida'
	WHEN 14 THEN 'Dev. NF de Saida'
	WHEN 15 THEN 'Entrega'
	WHEN 16 THEN 'Devolu��o'
	WHEN 18 THEN 'NF de Entrada'
	WHEN 19 THEN 'Dev. NF de Entrada'
	WHEN 20 THEN 'Recebimento de Mercadoria'
	WHEN 21 THEN 'Devolu��o de Mercadoria'
	WHEN 69 THEN 'Despesas de Importa��o'
	WHEN 60 THEN 'Sa�da de Mercadoria'
	WHEN 59 THEN 'Entrada de Mercadoria'
	WHEN 46 THEN 'Contas a Pagar' 
	WHEN 24 THEN 'Contas a Receber'
	WHEN 162 THEN 'Reavalia��o de Estoque'
	WHEN 67 THEN 'Transferencia de Estoque'
	WHEN 203 THEN 'Adiantamento a Cliente'
	WHEN 204 THEN 'Adiantamento a Fornecedor'
	END),''), 
 MAX(T0.[BaseRef]), 
 MAX(T0.[LineMemo]), 
 MAX(T0.[SourceLine]), 
 MAX(T0.[RefDate]), 
 MAX(T0.[TaxDate]), 
 MAX(T0.[DueDate]), 
 - MAX(T0.[BalDueDeb]) - SUM(T1.[ReconSum]),
 MAX(T0.[Account]), 
 T0.[TransId], 
 T0.[Line_ID]
 
 FROM  [dbo].[JDT1] T0  INNER  JOIN [dbo].[ITR1] T1  ON  T1.[TransId] = T0.[TransId]  AND  
 T1.[TransRowId] = T0.[Line_ID]   INNER  JOIN [dbo].[OITR] T2  ON  T2.[ReconNum] = T1.[ReconNum]   INNER  JOIN [dbo].[OJDT] T3  ON  T3.[TransId] = T0.[TransId]   
 INNER  JOIN [dbo].[OCRD] T4  ON  T4.[CardCode] = T0.[ShortName]    LEFT OUTER  JOIN [dbo].[B1_JournalTransSourceView] T5  ON  T5.[ObjType] = T0.[TransType]  AND  T5.[DocEntry] = T0.[CreatedBy]  AND  (T5.[TransType] <> 'I'  OR  (T5.[TransType] = 'I'  AND  T5.[InstlmntID] = T0.[SourceLine] ))  
 
 WHERE (T0.DueDate >= isnull(@DataVencIni,'') or ISNULL(@DataVencIni,'') = '') and 
 (T0.DueDate <= isnull(@DataVencFim,'') or ISNULL(@DataVencFim,'') = '') and 
 (T4.CardName like '%'+@CardName+'%' or @CardName = '') and 
 T0.[RefDate] <= @DataBase  AND  
 T0.[RefDate] <= @DataBase  AND  
 T4.[CardType] = 'S'  AND  
 T2.[ReconDate] > @DataBase  AND  
 T1.[IsCredit] = 'D'
 GROUP BY T0.[TransId], 
 T0.[Line_ID], 
 T0.[BPLName] 
 HAVING MAX(T0.[BalFcDeb]) <>- SUM(T1.[ReconSumFC])  OR  MAX(T0.[BalDueDeb]) <>- SUM(T1.[ReconSum])   
 
 UNION ALL 
 
 SELECT 
 MAX(T0.[ShortName]), 
 MAX(T2.CardName),
 ISNULL((CASE max(T0.TransType)
	WHEN 30 THEN 'LCM'
	WHEN 13 THEN 'NF de Saida'
	WHEN 14 THEN 'Dev. NF de Saida'
	WHEN 15 THEN 'Entrega'
	WHEN 16 THEN 'Devolu��o'
	WHEN 18 THEN 'NF de Entrada'
	WHEN 19 THEN 'Dev. NF de Entrada'
	WHEN 20 THEN 'Recebimento de Mercadoria'
	WHEN 21 THEN 'Devolu��o de Mercadoria'
	WHEN 69 THEN 'Despesas de Importa��o'
	WHEN 60 THEN 'Sa�da de Mercadoria'
	WHEN 59 THEN 'Entrada de Mercadoria'
	WHEN 46 THEN 'Contas a Pagar' 
	WHEN 24 THEN 'Contas a Receber'
	WHEN 162 THEN 'Reavalia��o de Estoque'
	WHEN 67 THEN 'Transferencia de Estoque'
	WHEN 203 THEN 'Adiantamento a Cliente'
	WHEN 204 THEN 'Adiantamento a Fornecedor'
	END),''), 
 MAX(T0.[BaseRef]), 
 MAX(T0.[LineMemo]), 
 MAX(T0.[SourceLine]), 
 MAX(T0.[RefDate]), 
 MAX(T0.[TaxDate]), 
 MAX(T0.[DueDate]), 
 MAX(T0.[BalDueCred]) - MAX(T0.[BalDueDeb]), 
 MAX(T0.[Account]), 
 T0.[TransId], 
 T0.[Line_ID]
 
 FROM  [dbo].[JDT1] T0  INNER  JOIN  [dbo].[OJDT] T1  ON  T1.[TransId] = T0.[TransId]   
 INNER  JOIN [dbo].[OCRD] T2  ON  T2.[CardCode] = T0.[ShortName]    
 LEFT OUTER  JOIN [dbo].[B1_JournalTransSourceView] T3  ON  T3.[ObjType] = T0.[TransType]  AND  T3.[DocEntry] = T0.[CreatedBy]  AND  (T3.[TransType] <> 'I'  OR  (T3.[TransType] = 'I'  AND  T3.[InstlmntID] = T0.[SourceLine] ))  
 
 WHERE (T0.DueDate >= isnull(@DataVencIni,'') or ISNULL(@DataVencIni,'') = '') and 
 (T0.DueDate <= isnull(@DataVencFim,'') or ISNULL(@DataVencFim,'') = '') and 
 (T2.CardName like '%'+@CardName+'%' or @CardName = '') and 
 T0.[RefDate] <= @DataBase  AND  
 T0.[RefDate] <= @DataBase  AND  
 T2.[CardType] = 'S'  AND  
 (T0.[BalDueCred] <> T0.[BalDueDeb]  OR  T0.[BalFcCred] <> T0.[BalFcDeb] ) AND   
 NOT EXISTS (SELECT U0.[TransId], U0.[TransRowId] FROM  [dbo].[ITR1] U0  INNER  JOIN [dbo].[OITR] U1  ON  U1.[ReconNum] = U0.[ReconNum]   WHERE T0.[TransId] = U0.[TransId]  AND  T0.[Line_ID] = U0.[TransRowId]  AND  U1.[ReconDate] > @DataBase   GROUP BY U0.[TransId], U0.[TransRowId])   GROUP BY T0.[TransId], T0.[Line_ID], T0.[BPLName]

Order by 'Data de Vencimento', 'Data de Lan�amento'