Declare @MaxLine int,
		@i int = 0,
		@Query Varchar(MAX),
		@From Varchar(8000) = '',
		@Colunas Varchar(8000) = ''

Set @Query = '
Select
	T0.Code,
	[Descricao] = T0.Name,
	[Combinação] = TF.Code
	{%0}
From
	OSTC T0
	Inner Join OTFC TF On T0.TfcId = TF.AbsId
	{%1}
'

Select @MaxLine = MAX(STC1.Line_ID) +1 From STC1
WHILE(@i<@MaxLine)
Begin
	Set @i += 1
	/*Adicionando Novas Colunas*/
	Select @Colunas += REPLACE(',
	[Tipo] = TT{%0}.Name,
	[Codigo] = T{%0}.STACode,
	[Descriçao] = TA{%0}.Name
	'
	, '{%0}', @i)
	/*Adicionando joins no From*/
	Select @From += REPLACE('
	LEFT Join STC1 T{%0}
		Inner Join OSTT TT{%0} On TT{%0}.AbsId = T{%0}.STAType
		Inner Join OSTA TA{%0} On TA{%0}.Code = T{%0}.STACode And T{%0}.STAType = TA{%0}.Type
	On  T0.Code = T{%0}.STCCode And T{%0}.Line_ID = {%0}-1'
	, '{%0}', @i)
End

--Set @Query += ' Where T0.Code = ''1101-001'''
Set @Query += ' Where ISNULL(T0.Lock, ''N'') = ''N'''

Set @Query = REPLACE(REPLACE(@Query, '{%0}', @Colunas), '{%1}', @From)
--Print @query
Exec(@Query)