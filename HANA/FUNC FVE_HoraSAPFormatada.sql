/***	Função recebe minutos
		Exemplos de entrada:	Para     Mandar
								03:00 -> 180
								01:30 -> 90
								00:30 -> 30
								20:15 -> 1215
		
		
		Select FVE_HoraSAPFormatada(0) From Dummy;
***/
Drop Function FVE_HoraSAPFormatada;
CREATE FUNCTION FVE_HoraSAPFormatada(Hora INT)
RETURNS result NVARCHAR(10)
LANGUAGE SQLSCRIPT READS SQL DATA
AS
BEGIN
	result :=  CAST(:Hora/100 AS INT) || ':' || RIGHT('00' || MOD(:Hora, 100), 2);
END;
