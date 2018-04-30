Select  Top 100
	T0.TransSeq,
	T0.ItemCode,
	T0.TransType,
	T0.BASE_REF
From
	OIVL T0
	Left Join OINV T10 inner join INV1 T11 ON T10.DocEntry = T11.DocEntry On T0.TransType = T10.ObjType and T0.Base_ref = T10.DocEntry and T11.LineNum = T0.DocLineNum
Where
	TransSeq > 1005
	--TransType = 13