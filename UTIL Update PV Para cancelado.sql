Declare @DocEntry INT = -1

Update
	ORDR
SET
	UpdateDate = GETDATE(),
	CANCELED = 'Y',
	DocStatus = 'C',
	PaidToDate = DocTotal,
	JrnlMemo = 'Canceled',
	PaidSys = DocTotalSy
Where
	DocEntry = @DocEntry

UPDATE
	RDR1
SET
	OpenInvQty = 0,
	OpenSumSys = 0,
	OpenCreQty = 0,
	OpenSum =0,
	OpenQty = 0,
	LineStatus = 'C'
WHERE
	DocEntry = @DocEntry