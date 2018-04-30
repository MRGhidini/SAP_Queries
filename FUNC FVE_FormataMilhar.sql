Create Function FVE_FormataMilhar(@vlr float)
returns varchar(30) as
Begin
	Return REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR, CAST(@vlr AS Money), 1),',', '_'), '.', ','), '_', '.')
End