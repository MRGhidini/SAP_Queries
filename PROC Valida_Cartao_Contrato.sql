USE [OKS_EUROBRAS]
GO
/****** Object:  StoredProcedure [dbo].[PROC_Valida_Cartao_Contrato]    Script Date: 08/12/2015 13:42:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER proc [dbo].[PROC_Valida_Cartao_Contrato] 
		@DocNum int

with encryption
as	

With 
CartaoEquipamento 
as
(
Select a.internalSN  From [SBO_EUROBRAS]..OINS a 
Inner Join (	SELECT 
					DISTINCT a.ItemCode, c.IntrSerial AS 'Série', ISNULL(b.U_Val_Unit, 0) AS U_Val_Unit, 
					a.CardCode, b.SlpCode, b.BaseLine, b.BaseEntry 
				FROM [SBO_EUROBRAS]..SRI1 a 
					INNER JOIN [SBO_EUROBRAS]..DLN1 b ON (a.ItemCode = b.ItemCode AND a.BaseType = b.ObjType AND a.BaseEntry = b.DocEntry AND a.BaseLinNum = b.LineNum ) 
					INNER JOIN [SBO_EUROBRAS]..OSRI c ON (a.SysSerial = c.SysSerial AND a.ItemCode = c.ItemCode) 
				WHERE a.BaseEntry = @DocNum  AND b.Usage = 25
				) b on a.customer <> b.CardCode and a.internalSN = b.Série
Where a.status <> 'T'
),

ContratoExistenteSN as
(
Select b.InternalSN   From [SBO_EUROBRAS]..OCTR a 
Inner Join [SBO_EUROBRAS]..CTR1 b on a.ContractID = b.ContractID
Inner Join (	SELECT 
					DISTINCT a.ItemCode, c.IntrSerial AS 'Série', ISNULL(b.U_Val_Unit, 0) AS U_Val_Unit, isnull(d.U_NumContrato,0) as 'U_NumContrato',
					a.CardCode, b.SlpCode, b.BaseLine, b.BaseEntry 
				FROM [SBO_EUROBRAS]..SRI1 a 
					INNER JOIN [SBO_EUROBRAS]..DLN1 b ON (a.ItemCode = b.ItemCode AND a.BaseType = b.ObjType AND a.BaseEntry = b.DocEntry AND a.BaseLinNum = b.LineNum ) 
					INNER JOIN [SBO_EUROBRAS]..OSRI c ON (a.SysSerial = c.SysSerial AND a.ItemCode = c.ItemCode) 
					INNER JOIN [SBO_EUROBRAS]..ODLN d ON (b.DocEntry = d.DocEntry)
				WHERE a.BaseEntry = @DocNum  AND b.Usage = 25 and a.CardCode <> d.CardCode 

				) c on b.InternalSN  = c.Série and c.U_NumContrato <> a.ContractID 

Where b.U_Status not in ('E','D')

)
--select * From ContratoExistenteSN

Select 
	(Select Case When Count(InternalSN) <> 0 Then 'Y' Else 'N' End From CartaoEquipamento) 'ExisteCartão',
	(Select Case When Count(InternalSN) <> 0 Then 'Y' Else 'N' End From ContratoExistenteSN) 'ExisteContrato'