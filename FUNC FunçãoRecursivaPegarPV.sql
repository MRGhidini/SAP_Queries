/*
Caso de teste era uma nota cancelada
select DocEntry, dbo.FVE_PedidoVinculado(BaseEntry, BaseType, BaseLine) from INV1 where docentry = 2803
*/
Alter function FVE_PedidoVinculado(@DocEntry int, @ObjType int, @linenum int) returns integer
begin
	
	Return
		case @ObjType
			--Caso de Parada
			when 17 then
				@DocEntry
			when 13 then
				(Select dbo.FVE_PedidoVinculado(T1.BaseEntry, T1.BaseType, T1.BaseLine) from INV1 T1 where T1.DocEntry = @DocEntry and T1.LineNum = @linenum)
			when 15 then
				(Select dbo.FVE_PedidoVinculado(T1.BaseEntry, T1.BaseType, T1.BaseLine) from DLN1 T1 where T1.DocEntry = @DocEntry and T1.LineNum = @linenum)
		--Caso de Falha
		Else
			 Null
		end
end