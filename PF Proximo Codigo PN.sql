Declare @Prefixo varchar(10) = 'C'
Declare @Mascara varchar(10) = '00000'

Select
	@Prefixo + RIGHT(@Mascara + CAST(MAX(REPLACE(CardCode, @Prefixo, ''))+1 as VARCHAR), LEN(@Mascara))
From
	OCRD
Where
	CardType = 'C'
	And LEFT(CardCode, LEN(@Prefixo)) = @Prefixo
	And ISNUMERIC(REPLACE(CardCode, @Prefixo, '')) = 1
	And CardCode not in ('C99999', 'C99998', 'C70000', 'C60000', 'C50000', 'C40000', 'C30000')
	And CardCode < 'C10000'


