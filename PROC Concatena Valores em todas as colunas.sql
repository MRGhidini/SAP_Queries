Drop Procedure PROC_RSD_DadosWest
Go
--EXEC PROC_RSD_DadosWest '20180101', '20181201', '', 'N', ''
Create Procedure PROC_RSD_DadosWest
	(
		@DtIni as DateTime,
		@DtFim as Datetime,
		@Tipo as CHAR, /*1 NotaWB - 2 PedWB - 3 NFCosan */
		@CTE as VARCHAR(1),
		@SerieNF as VARCHAR(10)
	)
as

Declare @ColumnName as VARCHAR(100),
		@Columns as VARCHAR(MAX) = '',
		@Where as Varchar(500) = ' Where 1=1 ',
		@Query as VARCHAR(MAX)

/*Motando Colunas*/
Declare xCur Cursor  for 
	Select COLUMN_NAME From INFORMATION_SCHEMA.COLUMNS Where TABLE_NAME = 'RSD_DadosWest' AND LEFT(COLUMN_NAME, 6) != 'FILTRO' Order By ORDINAL_POSITION
OPEN xCur
	FETCH NEXT FROM  xCur Into @ColumnName
	WHILE(@@FETCH_STATUS = 0 )
	Begin
		Select @Columns += CONCAT(' ,[', @ColumnName, '] = CONCAT(''.'',[', @ColumnName, '],''.'')')
		FETCH NEXT FROM xCur Into @ColumnName
	END
Close xCur
DEALLOCATE xCur

/*Motando Where*/
IF(LEN(ISNULL(@DtIni, ''))>0)
Begin
	SET @Where += CONCAT(' And FILTRO_Data >= ''', @DtIni, '''')
End

IF(LEN(ISNULL(@DtFim, ''))>0)
Begin
	SET @Where += CONCAT(' And FILTRO_Data <= ''', @DtFim, '''')
End

IF(LEN(ISNULL(@Tipo, ''))>0)
Begin
	SET @Where += CONCAT(' And FILTRO_Tipo = ''', @Tipo, '''')
End

IF(ISNULL(@CTE, 'N') = 'N')
Begin
	SET @Where += ' And FILTRO_CTE <> ''CTE'''
End

IF(LEN(ISNULL(@SerieNF, ''))>0)
Begin
	SET @Where += CONCAT(' And FILTRO_Serie = ''', @SerieNF, '''')
End


/*Juntando Query Final e Executando*/
SET @Query = CONCAT('SELECT ', STUFF(@Columns, 1, 2, ''), 'FROM RSD_DadosWest', @Where)
Print(@Query)