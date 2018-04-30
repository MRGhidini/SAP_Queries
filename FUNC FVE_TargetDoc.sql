/*
Função retorna o DocEntry do Documento vinculado desejado(@TypeDesejado ex 13 NFs), não importando quantos níveis ACIMA ele esteja
Exemplo de uso:
1-)Neste exemplo quero a(s) Nota(s) referente ao Pedido 1

Select dbo.FVE_TargetDoc(TrgetEntry, TargetType, LineNum, 13) from RDR1 where docentry = 1

Como não existe TargetLine só é possível executar desta forma.
*/
Alter function FVE_TargetDoc(@DocEntry int, @ObjType int, @BaseLine int, @TypeDesejado int) returns integer
begin
	
	Return
		case @ObjType
			--Caso de Parada
			when @TypeDesejado then
				@DocEntry
			when 13 then
				(Select dbo.FVE_TargetDoc(T1.TrgetEntry, T1.TargetType, T1.LineNum, @TypeDesejado) from INV1 T1 where T1.DocEntry = @DocEntry and T1.BaseLine = @BaseLine)
			when 14 then
				(Select dbo.FVE_TargetDoc(T1.TrgetEntry, T1.TargetType, T1.LineNum, @TypeDesejado) from RIN1 T1 where T1.DocEntry = @DocEntry and T1.LineNum = @BaseLine)
			when 15 then
				(Select dbo.FVE_TargetDoc(T1.TrgetEntry, T1.TargetType, T1.LineNum, @TypeDesejado) from DLN1 T1 where T1.DocEntry = @DocEntry and T1.LineNum = @BaseLine)
			when 16 then
				(Select dbo.FVE_TargetDoc(T1.TrgetEntry, T1.TargetType, T1.LineNum, @TypeDesejado) from RDN1 T1 where T1.DocEntry = @DocEntry and T1.LineNum = @BaseLine)
			when 17 then
				(Select dbo.FVE_TargetDoc(T1.TrgetEntry, T1.TargetType, T1.LineNum, @TypeDesejado) from RDR1 T1 where T1.DocEntry = @DocEntry and T1.LineNum = @BaseLine)
			when 18 then
				(Select dbo.FVE_TargetDoc(T1.TrgetEntry, T1.TargetType, T1.LineNum, @TypeDesejado) from PCH1 T1 where T1.DocEntry = @DocEntry and T1.LineNum = @BaseLine)
			when 19 then
				(Select dbo.FVE_TargetDoc(T1.TrgetEntry, T1.TargetType, T1.LineNum, @TypeDesejado) from RPC1 T1 where T1.DocEntry = @DocEntry and T1.LineNum = @BaseLine)
			when 20 then
				(Select dbo.FVE_TargetDoc(T1.TrgetEntry, T1.TargetType, T1.LineNum, @TypeDesejado) from PDN1 T1 where T1.DocEntry = @DocEntry and T1.LineNum = @BaseLine)
			when 21 then
				(Select dbo.FVE_TargetDoc(T1.TrgetEntry, T1.TargetType, T1.LineNum, @TypeDesejado) from RPD1 T1 where T1.DocEntry = @DocEntry and T1.LineNum = @BaseLine)
			when 22 then
				(Select dbo.FVE_TargetDoc(T1.TrgetEntry, T1.TargetType, T1.LineNum, @TypeDesejado) from POR1 T1 where T1.DocEntry = @DocEntry and T1.LineNum = @BaseLine)
		--Caso de Falha
		Else
			 Null
		end
end