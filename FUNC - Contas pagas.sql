USE [SBOKromi_Brazil]
GO
/****** Object:  UserDefinedFunction [dbo].[GA_ContasPagarPagas]    Script Date: 08/19/2013 14:56:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER function [dbo].[GA_ContasPagarPagas] ( @P1 nvarchar(16),@P2 datetime2,@P3 datetime2 ) 
RETURNS TABLE AS RETURN 
select k0.DocDate 'Data da Baixa', 
k0.DueDate 'Data do Vencimento', 
k0.TaxDate 'Data do Documento',
k0.[Formulário], 
k0.DocEntry 'Chave do Pagamento', 
k0.TransId 'Chave do Lançamento', 
k0.LineId 'Linha do Lançamento', 
k0.JrnlMemo 'Observações Diário',
k0.CardCode 'Cód.: PN / Conta', 
k0.CardName 'Fornecedor / Conta',
k0.CNPJ, 
--k0.debit 'Débito', 
--k0.SumApplied 'Crédito', 
round(isnull(k0.debit,0),2) - round(isnull(k0.SumApplied,0),2) 'Saldo', 
'Kromi Joinville' 'Empresa', 
k0.TrsfrAcct 'Conta do Banco'

 from 
(

--declare @P1 varchar(20) = '1.1.1.02.01.001'

select T1.RefDate DocDate, 
T1.DueDate DueDate,
T1.TaxDate TaxDate, 
'Lançamento Contábil' 'Formulário', 
T0.TransId DocEntry, 
T0.TransId TransId, 
T1.Line_ID LineId, 
T1.LineMemo JrnlMemo, 
T1.ContraAct CardCode,
CASE when ISNULL(T2.AcctName,'') = '' then T3.CardName else T2.AcctName end CardName,
(select case when isnull(max(T10.TaxId0),'') = '' then isnull(max(T10.TaxId4),'') else isnull(max(T10.TaxId0),'') end from CRD7 T10 where T10.CardCode = T1.ContraAct and (isnull(T10.TaxId0,'') <> '' or isnull(T10.TaxId4,'') <> '') GROUP BY T10.CardCode) 'CNPJ',
T1.Debit 'Debit',
T1.Credit 'SumApplied',
(select top 1 T10.CompnyName From OADM T10) 'Empresa',
T1.Account 'TrsfrAcct'
from OJDT T0, JDT1 T1 LEFT OUTER JOIN OACT T2 ON T1.ContraAct = T2.AcctCode LEFT OUTER JOIN OCRD T3 on T1.ContraAct = T3.CardCode 
WHERE T0.TransId = T1.TransId and 
T1.Account in (SELECT isnull(T10.[TrsfrAcct],'') FROM OVPM T10 where isnull(T10.[TrsfrAcct],'') <> '' GROUP BY isnull(T10.[TrsfrAcct],'')) and 
T0.TransType = 30 and 
isnull(T0.Stornototr,'') = '' and 
T0.TransId <> isnull((select max(T10.Stornototr) from OJDT T10 where T10.TransType = 30 and isnull(T10.Stornototr,0) <> 0 and isnull(T10.Stornototr,0) = T0.TransId),0)


union all

select T3.PostDate DocDate, 
T7.DueDate,
T7.TaxDate TaxDate, 
'Contas a pagar' 'Formulário', 
T5.DocEntry DocEntry, 
T0.TransId TransId, 
T7.Line_ID LineId, 
T7.LineMemo JornlMemo, 
T5.CardCode CardCode,
T5.CardName CardName,
(select case when isnull(max(T10.TaxId0),'') = '' then isnull(max(T10.TaxId4),'') else isnull(max(T10.TaxId0),'') end from CRD7 T10 where T10.CardCode = T5.CardCode and (isnull(T10.TaxId0,'') <> '' or isnull(T10.TaxId4,'') <> '') GROUP BY T10.CardCode) 'CNPJ',
0 'Debit',
case when isnull(T6.SumApplied,0)-isnull(T6.WTOnhldPst,0) = T2.BoeSum then T2.BoeSum else case when T5.Doctotal <> 0 then (isnull(T6.SumApplied,0)-isnull(T6.WTOnhldPst,0))*(T2.BoeSum/T5.DocTotal) else 0 end end 'SumApplied',
(select top 1 T10.CompnyName From OADM T10) 'Empresa',
T1.ContraAct 'TrsfrAcct'
from OJDT T0, JDT1 T1, 
OBOE T2, 
OBOT T3 INNER JOIN BOT1 T4 ON T3.AbsEntry = T4.AbsEntry, 
OVPM T5 INNER JOIN VPM2 T6 ON T5.DocEntry = T6.DocNum
INNER JOIN JDT1 T7 ON T7.TransId = T6.DocTransId and T7.Line_ID = T6.DocLine
WHERE T2.BoeStatus = 'P' and T3.AbsEntry = T1.SourceID and  T2.BoeKey = T1.Ref1 and 
T4.[BOEAbs] =  T2.[BoeKey] and 
T5.DocEntry =  T2.[PmntNum] and 
T5.DocType = 'S' and 
T0.TransId = T1.TransId and 
T1.ContraAct in (SELECT isnull(T10.[TrsfrAcct],'') FROM OVPM T10 where isnull(T10.[TrsfrAcct],'') <> '' GROUP BY isnull(T10.[TrsfrAcct],'')) and 
T0.TransType = 182

union all

select T3.PostDate DocDate, 
T3.PostDate,
T3.TaxDate TaxDate, 
'Contas a pagar' 'Formulário', 
T5.DocEntry DocEntry, 
T0.TransId TransId,
T6.LineId LineId, 
T5.JrnlMemo JornlMemo, 
T6.AcctCode CardCode,
T6.AcctName CardName,
'' 'CNPJ',
0 'Debit',
case when isnull(T6.SumApplied,0) = T2.BoeSum then T2.BoeSum else case when T5.Doctotal <> 0 then isnull(T6.SumApplied,0)*(T2.BoeSum/T5.DocTotal) else 0 end end 'SumApplied',
(select top 1 T10.CompnyName From OADM T10) 'Empresa',
T1.ContraAct 'TrsfrAcct'
from OJDT T0, JDT1 T1, 
OBOE T2, 
OBOT T3 INNER JOIN BOT1 T4 ON T3.AbsEntry = T4.AbsEntry, 
OVPM T5 INNER JOIN VPM4 T6 ON T5.DocEntry = T6.DocNum
WHERE T2.BoeStatus = 'P' and T3.AbsEntry = T1.SourceID and  T2.BoeKey = T1.Ref1 and 
T4.[BOEAbs] =  T2.[BoeKey] and 
T5.DocEntry =  T2.[PmntNum] and 
T5.DocType = 'A' and 
T0.TransId = T1.TransId and 
T1.ContraAct in (SELECT isnull(T10.[TrsfrAcct],'') FROM OVPM T10 where isnull(T10.[TrsfrAcct],'') <> '' GROUP BY isnull(T10.[TrsfrAcct],'')) and 
T0.TransType = 182

union all

select T5.DocDate DocDate, 
T7.DueDate,
T7.TaxDate TaxDate, 
'Contas a pagar' 'Formulário', 
T5.DocEntry DocEntry, 
T0.TransId TransId, 
T7.Line_ID LineId,
T7.LineMemo JornlMemo, 
T5.CardCode CardCode,
T5.CardName CardName,
(select case when isnull(max(T10.TaxId0),'') = '' then isnull(max(T10.TaxId4),'') else isnull(max(T10.TaxId0),'') end from CRD7 T10 where T10.CardCode = T5.CardCode and (isnull(T10.TaxId0,'') <> '' or isnull(T10.TaxId4,'') <> '') GROUP BY T10.CardCode) 'CNPJ',
0 'Debit',
case when T5.Doctotal <> 0 then ((isnull(T6.SumApplied,0)-isnull(T6.WTOnhldPst,0))+(((isnull(T6.SumApplied,0)-isnull(T6.WTOnhldPst,0))*T5.UndOvDiff)/(select SUM(isnull(T10.SumApplied,0)-isnull(T10.WTOnhldPst,0)) from VPM2 T10 where T10.DocNum = T5.DocEntry) ) )*((case when isnull(T5.CashAcct,'') = @P1 then ISNULL(T5.Cashsum,0) else 0 end + case when isnull(T5.TrsfrAcct ,'') = @P1 then ISNULL(T5.TrsfrSum,0) else 0 end + case when isnull(T5.CheckAcct,'') = @P1 then ISNULL(T5.CheckSum,0) else 0 end)/T5.DocTotal) else 0 end 'SumApplied',
(select top 1 T10.CompnyName From OADM T10) 'Empresa',
T1.Account 'TrsfrAcct'
from OJDT T0, (select T10.Account, T10.TransId from JDT1 T10 where T10.TransType = 46 and T10.Account = @P1 group by T10.Account, T10.TransId) T1, 
OVPM T5 INNER JOIN VPM2 T6 ON T5.DocEntry = T6.DocNum
INNER JOIN JDT1 T7 ON T7.TransId = T6.DocTransId and T7.Line_ID = T6.DocLine
WHERE T0.TransId = T1.TransId and 
T0.TransType = 46 and 
T5.TransId = T0.TransId and 
T5.DocType = 'S' and 
T5.Canceled <> 'Y'

union all

select T5.DocDate DocDate, 
T5.DocDueDate ,
T5.TaxDate TaxDate, 
'Contas a pagar' 'Formulário', 
T5.DocEntry DocEntry, 
T0.TransId TransId,
T6.LineId LineId, 
T5.JrnlMemo JornlMemo, 
T6.AcctCode CardCode,
T6.AcctName CardName,
'' 'CNPJ',
0 'Debit',
case when T5.Doctotal <> 0 then isnull(T6.SumApplied,0)*((case when isnull(T5.CashAcct,'') = @P1 then ISNULL(T5.Cashsum,0) else 0 end + case when isnull(T5.TrsfrAcct ,'') = @P1 then ISNULL(T5.TrsfrSum,0) else 0 end + case when isnull(T5.CheckAcct,'') = @P1 then ISNULL(T5.CheckSum,0) else 0 end)/T5.DocTotal) else 0 end 'SumApplied',
(select top 1 T10.CompnyName From OADM T10) 'Empresa',
T1.Account 'TrsfrAcct'
from OJDT T0, (select T10.Account, T10.TransId from JDT1 T10 where T10.TransType = 46 and T10.Account = @P1 group by T10.Account, T10.TransId) T1, 
OVPM T5 INNER JOIN VPM4 T6 ON T5.DocEntry = T6.DocNum
WHERE T0.TransId = T1.TransId and 
T0.TransType = 46 and 
T5.TransId = T0.TransId and 
T5.DocType = 'A' and 
T5.Canceled <> 'Y'

union all 

select T5.DocDate DocDate, 
T7.DueDate,
T7.TaxDate TaxDate, 
'Contas a receber' 'Formulário', 
T5.DocEntry DocEntry, 
T0.TransId TransId, 
T7.Line_ID LineId,
T7.LineMemo JornlMemo, 
T5.CardCode CardCode,
T5.CardName CardName,
(select case when isnull(max(T10.TaxId0),'') = '' then isnull(max(T10.TaxId4),'') else isnull(max(T10.TaxId0),'') end from CRD7 T10 where T10.CardCode = T5.CardCode and (isnull(T10.TaxId0,'') <> '' or isnull(T10.TaxId4,'') <> '') GROUP BY T10.CardCode) 'CNPJ',
case when T5.Doctotal <> 0 then ((isnull(T6.SumApplied,0)-isnull(T6.WTOnhldPst,0))+(((isnull(T6.SumApplied,0)-isnull(T6.WTOnhldPst,0))*T5.UndOvDiff)/(select SUM(isnull(T10.SumApplied,0)-isnull(T10.WTOnhldPst,0)) from RCT2 T10 where T10.DocNum = T5.DocEntry) ) )*((case when isnull(T5.CashAcct,'') = @P1 then ISNULL(T5.Cashsum,0) else 0 end + case when isnull(T5.TrsfrAcct ,'') = @P1 then ISNULL(T5.TrsfrSum,0) else 0 end + case when isnull(T5.CheckAcct,'') = @P1 then ISNULL(T5.CheckSum,0) else 0 end)/T5.DocTotal) else 0 end,
0,
(select top 1 T10.CompnyName From OADM T10) 'Empresa',
T1.Account 'TrsfrAcct'
from OJDT T0, (select T10.Account, T10.TransId from JDT1 T10 where T10.TransType = 24 and T10.Account = @P1 group by T10.Account, T10.TransId) T1, 
ORCT T5 INNER JOIN RCT2 T6 ON T5.DocEntry = T6.DocNum
INNER JOIN JDT1 T7 ON T7.TransId = T6.DocTransId and T7.Line_ID = T6.DocLine
WHERE T0.TransId = T1.TransId and 
T0.TransType = 24 and 
T5.TransId = T0.TransId and 
T5.DocType = 'C' and 
T5.Canceled <> 'Y'

union all

select T5.DocDate DocDate, 
T5.DocDueDate ,
T5.TaxDate TaxDate, 
'Contas a receber' 'Formulário', 
T5.DocEntry DocEntry, 
T0.TransId TransId,
T6.LineId LineId, 
T5.JrnlMemo JornlMemo, 
T6.AcctCode CardCode,
T6.AcctName CardName,
'' 'CNPJ',
case when T5.Doctotal <> 0 then isnull(T6.SumApplied,0)*((case when isnull(T5.CashAcct,'') = @P1 then ISNULL(T5.Cashsum,0) else 0 end + case when isnull(T5.TrsfrAcct ,'') = @P1 then ISNULL(T5.TrsfrSum,0) else 0 end + case when isnull(T5.CheckAcct,'') = @P1 then ISNULL(T5.CheckSum,0) else 0 end)/T5.DocTotal) else 0 end,
0 ,
(select top 1 T10.CompnyName From OADM T10) 'Empresa',
T1.Account 'TrsfrAcct'
from OJDT T0, (select T10.Account, T10.TransId from JDT1 T10 where T10.TransType = 24 and T10.Account = @P1 group by T10.Account, T10.TransId) T1, 
ORCT T5 INNER JOIN RCT4 T6 ON T5.DocEntry = T6.DocNum
WHERE T0.TransId = T1.TransId and 
T0.TransType = 24 and 
T5.TransId = T0.TransId and 
T5.DocType = 'A' and 
T5.Canceled <> 'Y'


) k0 


where k0.DocDate >= @P2
and k0.DocDate <= @p3
and k0.TrsfrAcct = @P1

--order by k0.DocDate, k0.DocEntry