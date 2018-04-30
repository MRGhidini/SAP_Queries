Declare @ItemCode varchar(100)
Declare @Util integer
Declare @CardCode varchar(100)

Set @ItemCode = $[$38.1.0]
Set @Util = $[$1720002171.0.0]
Set @CardCode = $[$4.0.0]

IF(@CardCode = 'C00001' And @Util = 55)
Begin
	Select TOP 1 
		T1.TaxCode
	From 
		OPCH T0
		Inner Join PCH1 T1 On T0.DocEntry = T1.DocEntry
	Where
		T1.ItemCode = @ItemCode
	Order BY
		T0.DocDate DESC
End
Else
Begin
Select ''
End