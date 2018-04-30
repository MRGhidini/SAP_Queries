USE [20130905_TESTE_SBO_PORTUSCALE]
GO

/****** Object:  View [dbo].[SKL_ContasAReceber]    Script Date: 09/16/2013 17:14:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


ALTER VIEW [dbo].[SKL_ContasAReceber]
AS
SELECT DISTINCT 
                      dbo.OSLP.SlpCode AS [Código do Vendedor], 
                      dbo.OINV.DocEntry, 
                      dbo.OINV.Serial AS NF, 
                      dbo.OINV.DocDate AS [Data da Emissão], 
                      dbo.OINV.CardCode AS [Código PN], 
                      dbo.OINV.CardName AS [Nome do PN], 
                      dbo.OINV.DocTotal AS [Total da NF], 
                      ICMSST.TaxSum AS [ICMSST da NF], 
                      dbo.INV6.InstlmntID AS Parcela, 
                      dbo.RCT2.InstId AS ParcelaCR, 
                      dbo.INV6.DueDate AS [Vencto Parcela], 
                      dbo.ORCT.DocDueDate AS [Vencto ParcelaCR], 
                      dbo.INV6.InsTotal AS [Valor Parcela], 
                      dbo.INV6.Status AS [Status Parcela], 
                      dbo.ORCT.DocNum AS [Pagto Doc], 
                      CASE WHEN dbo.ORCT.CashSum = '0' THEN NULL ELSE dbo.ORCT.DocDate END AS [Dinheiro Data Baixa], 
                      dbo.ORCT.CashSum AS [Dinheiro Valor], 
                      dbo.ORCT.TrsfrDate AS [Transf. Data], 
                      dbo.ORCT.TrsfrSum AS [Transf. Valor], 
                      BOLETO.BoeNum AS [Boleto No.], 
                      BOLETO.BoeStatus AS [Boleto Status], 
                      BOLETO.DueDate AS [Boleto Data Vencto], 
                      BOLETO.DataPagto AS [Boleto Data Pagto], 
                      BOLETO.BoeSum AS [Boleto Valor], 
                      CHEQUE.CheckDate AS [Cheque Data], 
                      CHEQUE.CheckSum AS [Cheque Valor], 
                      CHEQUE.Deposited AS [Cheque Compensado?], 
                      CHEQUE.DpstAbs AS [Cheque No. Depósito], 
                      CHEQUE.DeposDate AS [Cheque Data Compensação], 
                      CHEQUE.Canceled AS [Cheque Cancelado?], 
                      CARTOES.VoucherNum AS [Cartão No. Voucher], 
                      CARTOES.PayDate AS [Cartão Data], 
                      CARTOES.CreditSum AS [Cartão Valor], 
                      CARTOES.Deposited AS [Cartão Compensado?], 
                      CARTOES.DepNum AS [Cartão No. Depósito], 
                      CARTOES.DeposDate AS [Cartão Data Compensação], 
                      CARTOES.Canceled AS [Cartão Cancelado?], 
                      TotalDeParcelas.NumParcelasCR AS [Qtde. de Parcelas], 
                      TotalBOEPorNF.TotalBOEPorNF AS [Qtde. de Parcelas Boletos], 
                      RCT2.Dcount [Desconto]
FROM         
	dbo.RCT2 
	INNER JOIN dbo.ORCT ON dbo.ORCT.DocNum = dbo.RCT2.DocNum AND dbo.RCT2.InvType = 13 AND dbo.ORCT.Canceled <> 'Y' 
	RIGHT OUTER JOIN dbo.INV6 ON dbo.INV6.DocEntry = dbo.RCT2.DocEntry AND dbo.RCT2.InstId = dbo.INV6.InstlmntID 
	INNER JOIN dbo.OINV ON dbo.OINV.DocEntry = dbo.INV6.DocEntry 
	INNER JOIN dbo.OSLP ON dbo.OSLP.SlpCode = dbo.OINV.SlpCode 
	LEFT OUTER JOIN 
						(SELECT     DocEntry, SUM(TaxSum) AS TaxSum
                            FROM          dbo.INV4
                            WHERE      (staType IN ('7', '15'))
                            GROUP BY DocEntry) AS ICMSST ON ICMSST.DocEntry = dbo.OINV.DocEntry 
	LEFT OUTER JOIN
                          (SELECT     dbo.OBOE.BoeKey, dbo.OBOE.BoeNum, dbo.OBOE.PmntNum, dbo.OBOE.BoeSum, dbo.OBOE.BoeStatus, dbo.OBOE.PmntDate, dbo.OBOE.DueDate, 
                                                   LCM.DataPagto
                            FROM          dbo.OBOE LEFT OUTER JOIN
                                                       (SELECT     dbo.BOT1.BOENumber AS NumBol, MAX(dbo.OBOT.TransId) AS LcmBol
                                                         FROM          dbo.BOT1 INNER JOIN
                                                                                dbo.OBOT ON dbo.BOT1.AbsEntry = dbo.OBOT.AbsEntry AND dbo.OBOT.StatusTo = 'P'
                                                         GROUP BY dbo.BOT1.BOENumber) AS BOL_PAGTO ON dbo.OBOE.BoeNum = BOL_PAGTO.NumBol LEFT OUTER JOIN
                                                       (SELECT     Number, RefDate AS DataPagto
                                                         FROM          dbo.OJDT
                                                         WHERE      (TransType = '182')) AS LCM ON BOL_PAGTO.LcmBol = LCM.Number
                            WHERE      (dbo.OBOE.BoeType = 'I')) AS BOLETO ON BOLETO.PmntNum = dbo.ORCT.DocEntry 
	LEFT OUTER JOIN dbo.RCT1 ON dbo.RCT1.DocNum = dbo.ORCT.DocEntry 
	LEFT OUTER JOIN
                          (SELECT     dbo.OCHH.CheckKey, dbo.OCHH.CheckNum, dbo.OCHH.BankCode, dbo.OCHH.Branch, dbo.OCHH.AcctNum, dbo.OCHH.CheckDate, dbo.OCHH.RcptDate, 
                                                   dbo.OCHH.RcptNum, dbo.OCHH.RcptLineId, dbo.OCHH.CheckSum, dbo.OCHH.Deposited, dbo.OCHH.DpstAbs, dbo.ODPS.DeposDate, 
                                                   dbo.OCHH.Canceled
                            FROM          dbo.OCHH LEFT OUTER JOIN
                                                   dbo.ODPS ON dbo.ODPS.DeposId = dbo.OCHH.DpstAbs) AS CHEQUE ON CHEQUE.RcptNum = dbo.RCT1.DocNum AND 
                      CHEQUE.RcptLineId = dbo.RCT1.LineID 
	LEFT OUTER JOIN
                          (SELECT     dbo.OCRH.RctAbs, dbo.OCRH.RcptLineId, dbo.OCRH.VoucherNum, dbo.OCRH.PayDate, ODPS_1.DeposDate, dbo.OCRH.CreditSum, dbo.OCRH.Deposited, 
                                                   dbo.OCRH.DepNum, dbo.OCRH.Storno, dbo.OCRH.Canceled
                            FROM          dbo.OCRH LEFT OUTER JOIN
                                                   dbo.ODPS AS ODPS_1 ON ODPS_1.DeposId = dbo.OCRH.DepNum) AS CARTOES ON CARTOES.RctAbs = dbo.RCT2.DocNum AND 
                      CARTOES.RcptLineId = dbo.RCT2.DocLine 
	LEFT OUTER JOIN
                          (SELECT     RCT2_2.DocEntry, COUNT(OBOE_1.BoeKey) AS TotalBOEPorNF
                            FROM          dbo.OBOE AS OBOE_1 INNER JOIN
                                                   dbo.ORCT AS ORCT_1 ON OBOE_1.PmntNum = ORCT_1.DocEntry INNER JOIN
                                                   dbo.RCT2 AS RCT2_2 ON RCT2_2.DocNum = ORCT_1.DocNum
                            WHERE      (OBOE_1.BoeType = 'I')
                            GROUP BY RCT2_2.DocEntry) AS TotalBOEPorNF ON TotalBOEPorNF.DocEntry = dbo.OINV.DocEntry 
	LEFT OUTER JOIN
                          (SELECT     DocEntry, COUNT(DocNum) AS NumParcelasCR
                            FROM          dbo.RCT2 AS RCT2_1
                            WHERE      (InvType = 13)
                            GROUP BY DocEntry) AS TotalDeParcelas ON TotalDeParcelas.DocEntry = dbo.OINV.DocEntry


GO


