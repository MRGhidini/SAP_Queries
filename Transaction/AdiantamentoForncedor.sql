If @object_type = '204' and @transaction_type in ('A', 'U')
Begin
	----- Mais de um Documento vinculado no Adiantamento
	If (Select count('1') from 
			(Select isnull(T1.BaseType,'0') as BaseType, isnull(T1.BaseEntry,'') as BaseEntry
			From DPO1 T1 
			Where T1.DocEntry = @list_of_cols_val_tab_del 
			group by Isnull(T1.BaseType,'0'), isnull(T1.BaseEntry,''))T0) > 1
	Begin
		set @error = 204000
		set @error_message = 'apenas um Pedido de Compra pode ser vinculado no mesmo Adiantamento'
		GOTO End_Of_Block
	End
	----- Item no Adiantamento sem pedido
	If (Select count('1')from ODPO T0, DPO1 T1 Where T0.DocEntry = T1.DocEntry and T1.DocEntry = @list_of_cols_val_tab_del And Isnull(T1.BaseType,'0') <> '22') > 0
	Begin
		Set @ItemCode = Isnull((Select Top 1 T1.ItemCode from ODPO T0, DPO1 T1 Where T0.DocEntry = T1.DocEntry and T1.DocEntry = @list_of_cols_val_tab_del And Isnull(T1.BaseType,'0') <> '22'),'') 
		set @error = 204001
		set @error_message = 'Item '+ @ItemCode + ' não está vinculado a um pedido de compra'
		GOTO End_Of_Block
	End

	----- Adiantamento maior que pedido
	If (Select SUM(Total) - (Select T20.DocTotal From OPOR T20 where T20.DocEntry = T0.BaseEntry) 
		from (
			Select T0.DocEntry, Sum(T0.DocTotal)/Count('1') Total, T1.BaseEntry from ODPO T0, DPO1 T1 where T0.DocEntry = T1.Docentry
			And T1.BaseEntry in (Select T10.BaseEntry from DPO1 T10 where T10.DocEntry = @list_of_cols_val_tab_del)
		Group by T0.DocEntry, T1.BaseEntry) T0 Group By T0.BaseEntry) > 0
	Begin
		SET @error = 204002
		SET @error_message = 'Total do soma do Adiantamentos ao fornecedor não pode ser maior que o valor do pedido vinculado '
		GOTO End_Of_Block
	End
End