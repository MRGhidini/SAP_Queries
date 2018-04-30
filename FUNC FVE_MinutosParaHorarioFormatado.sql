/***	Função recebe minutos
		Exemplos de entrada:	Para     Mandar
								03:00 -> 180
								01:30 -> 90
								00:30 -> 30
								20:15 -> 1215
***/
--Drop Function FVE_MinutosParaHorarioFormatado
Create Function FVE_MinutosParaHorarioFormatado(@Minutos int) returns Varchar(10)
Begin
	Return 
		/*Comentado a saída para poder existir mais do que 99 horas. 
		Caso a função fosse ser usado para apresentar Horario (0~24h) poderia deixar apenas o primeiro Select*/
		--(Select RIGHT('00' + Cast(@Minutos/60 as varchar), 2) + ':' + RIGHT('00' + Cast(@Minutos%60 as varchar), 2))
		(Select CASE
					When @Minutos < 60 Then '0'
					Else Cast(@Minutos/60 as varchar) 
				End + ':' + RIGHT('00' + Cast(@Minutos%60 as varchar), 2))
End