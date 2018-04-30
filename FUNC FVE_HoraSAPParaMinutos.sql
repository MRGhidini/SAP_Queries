/***	Função  recebe formato de hora padrão do Business One (como o SAP grava no Banco de dados)
		Exemplos de entrada:	Para     Mandar
								02:00 -> 200
								15:30 -> 1530
								00:00 -> 0
								00:15 -> 15
***/
Create Function FVE_HoraSAPParaMinutos(@Hora int) returns int
Begin
	Return 
		(Select @Hora/100 *60 + @Hora%100)
End