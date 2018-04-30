Declare @Itemcode Varchar(25), @WhsCode varchar(25), @Conta int, @Usage Int
Set @ItemCode = $[DLN1.ItemCode]
Set @WhsCode = $[DLN1.WhsCode]
Set @Usage = $[DLN1.Usage]
Select @Conta = count(1) from OUSG T0 Where T0.ID = @Usage and T0.Usage like 'Venda%'
If @Conta > 0 
Begin
	SELECT T0.[AvgPrice] FROM OITW T0 WHERE T0.[ItemCode] = $[DLN1.ItemCode] and  T0.[WhsCode] = $[DLN1.WhsCode]
End
Else
Begin
	Select $[DLN1.Price]
End