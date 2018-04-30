/*
Função retorna o DocEntry do Documento vinculado desejado(@TypeDesejado ex 17 PV), não importando quantos níveis abaixo ele esteja
Exemplo de uso:
1-)Neste exemplo quero a(s) cotação(ões) referente a Nota fiscal 1

Select dbo.FVE_BaseDoc(DocEntry, 13, linenum, 23) from INV1 where docentry = 1
Ou
Select dbo.FVE_BaseDoc(BaseEntry, BaseType, BaseLine, 23) from INV1 where docentry = 1

As duas formas são possíveis de consultar, o importante é colocar os parametros do mesmo "nível".
*/
Alter function FVE_BaseDoc(@DocEntry int, @ObjType int, @linenum int, @TypeDesejado int) returns integer
begin
	
	Return
		case @ObjType
			--Caso de Parada
			when @TypeDesejado then
				@DocEntry
			when 13 then
				(Select dbo.FVE_BaseDoc(T1.BaseEntry, T1.BaseType, T1.BaseLine, @TypeDesejado) from INV1 T1 where T1.DocEntry = @DocEntry and T1.LineNum = @linenum)
			when 14 then
				(Select dbo.FVE_BaseDoc(T1.BaseEntry, T1.BaseType, T1.BaseLine, @TypeDesejado) from RIN1 T1 where T1.DocEntry = @DocEntry and T1.LineNum = @linenum)
			when 15 then
				(Select dbo.FVE_BaseDoc(T1.BaseEntry, T1.BaseType, T1.BaseLine, @TypeDesejado) from DLN1 T1 where T1.DocEntry = @DocEntry and T1.LineNum = @linenum)
			when 16 then
				(Select dbo.FVE_BaseDoc(T1.BaseEntry, T1.BaseType, T1.BaseLine, @TypeDesejado) from RDN1 T1 where T1.DocEntry = @DocEntry and T1.LineNum = @linenum)
			when 17 then
				(Select dbo.FVE_BaseDoc(T1.BaseEntry, T1.BaseType, T1.BaseLine, @TypeDesejado) from RDR1 T1 where T1.DocEntry = @DocEntry and T1.LineNum = @linenum)
			when 18 then
				(Select dbo.FVE_BaseDoc(T1.BaseEntry, T1.BaseType, T1.BaseLine, @TypeDesejado) from PCH1 T1 where T1.DocEntry = @DocEntry and T1.LineNum = @linenum)
			when 19 then
				(Select dbo.FVE_BaseDoc(T1.BaseEntry, T1.BaseType, T1.BaseLine, @TypeDesejado) from RPC1 T1 where T1.DocEntry = @DocEntry and T1.LineNum = @linenum)
			when 20 then
				(Select dbo.FVE_BaseDoc(T1.BaseEntry, T1.BaseType, T1.BaseLine, @TypeDesejado) from PDN1 T1 where T1.DocEntry = @DocEntry and T1.LineNum = @linenum)
			when 21 then
				(Select dbo.FVE_BaseDoc(T1.BaseEntry, T1.BaseType, T1.BaseLine, @TypeDesejado) from RPD1 T1 where T1.DocEntry = @DocEntry and T1.LineNum = @linenum)
			when 22 then
				(Select dbo.FVE_BaseDoc(T1.BaseEntry, T1.BaseType, T1.BaseLine, @TypeDesejado) from POR1 T1 where T1.DocEntry = @DocEntry and T1.LineNum = @linenum)
		--Caso de Falha
		Else
			 Null
		end
end