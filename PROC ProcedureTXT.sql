USE [SBO_NDJ_20140331]
GO
/****** Object:  StoredProcedure [dbo].[ga_TP_CriaTexto]    Script Date: 04/25/2014 14:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[ga_TP_CriaTexto] 
	@Table as varchar(100), 
	@DataIni DateTime = null, 
	@DataFim as DateTime = null
as

Declare @Colunas as nvarchar(max), 
		@Linhas as nvarchar(max), 
		@ColName as varchar(200),
		@Where as varchar(255),
		@id_file_sist	int,
		@id_arqv int,
		@status int,
		@src varchar(255),
		@desc varchar(255),
		@Arq as varchar(255),
		@msg as varchar(30),
		@Code as int

--Exec ga_TP_CriaTexto GA_TP_MESTRE_NFEN_MERC, '20130120', '20130921'

set @Where = ' Where '
Set @Colunas = 'SELECT '
set @Code = (ISNULL((Select MAX(cast(code as int))+1 From [@GATPLOG]),1))


if @Table not in (select T0.Name From sys.views T0)
Begin
	set @src = ''
	set @desc = 'View Não existe'
	set @msg = 'Erro'
	goto Fim
End

set @Arq = 'C:\'+@Table+replace(replace(replace(convert(varchar,GETDATE(),120),'-',''),' ',''),':','')+'.txt'
/*cria objeto*/
exec @status = sp_OACreate 'Scripting.FileSystemObject', @id_file_sist OUTPUT

if @status <> 0 or @@error <> 0
begin
    exec sp_OAGetErrorInfo @id_file_sist, @src OUT, @desc OUT
    set @msg = 'Erro'
    goto Fim
end

/* Abrir arquivo*/
Exec @status = sp_OAMethod @id_file_sist, 'OpenTextFile', @id_arqv OUT, @Arq, 2, 1
if @status <> 0 or @@error <> 0
begin
	exec sp_OAGetErrorInfo @id_file_sist ,@src OUT ,@desc OUT
	set @msg = 'Erro'
	goto Fim
end

declare xCur1 Cursor for 
	select T1.Name from sys.views T0 inner join sys.columns T1 on T0.object_id = T1.object_id
	where T0.name = @Table And T1.Name <> 'gaFiltro'
Open xCur1
Fetch Next From xCur1 into @ColName
While @@FETCH_STATUS = 0
Begin
	Set @Colunas = @Colunas + '['+ @ColName+']+'
	Fetch Next From xCur1 into @ColName
End
Close xCur1
Deallocate xCur1
Set @Colunas = LEFT(@colunas, Len(@Colunas) -1) + ' From ' + @Table
if @DataIni is not null
Begin
	set @Where = @Where + ' gaFiltro >= ' + char(39)+replace(CONVERT(varchar,@DataIni,102),'.','')+CHAR(39)
End

if @DataFim is not null
Begin
	if LEN(@Where) > 10 begin set @Where = @Where+' And ' End
	set @Where = @Where + ' gaFiltro <= '+ char(39)+replace(CONVERT(varchar,@DataFim,102),'.','')+CHAR(39)
End

if @DataFim is not null or @DataIni is not null
Begin
	set @Colunas = @Colunas + @Where
End
/*
--Liberar esta parte do código para verificar a query que sera executada
print @Colunas
set @msg = 'Erro'
goto Fim
*/
/*Grava o resultado no arquivo de saida*/
exec('Declare xCur2 cursor for '+@Colunas)
Open xCur2
Fetch Next From xCur2 into @Linhas
While @@FETCH_STATUS = 0
Begin
    exec @status = sp_OAMethod @id_arqv, 'WriteLine', Null, @Linhas
    if @status <> 0 or @@error <> 0
    begin
        exec sp_OAGetErrorInfo @id_file_sist, @src OUT, @desc OUT
        set @msg = 'Erro'
        goto Fim
    end
	Fetch Next From xCur2 into @Linhas
End
Close xCur2
Deallocate xCur2

/*Libera o arquivo*/
exec @status = sp_OADestroy @id_arqv
if @status <> 0 or @@error <> 0
begin
    exec sp_OAGetErrorInfo @id_file_sist, @src OUT, @desc OUT
    set @msg = 'Erro'
    goto Fim
end

/*Libera o FileSystem*/
exec @status = sp_OADestroy @id_file_sist
if @status <> 0 or @@error <> 0
begin
    exec sp_OAGetErrorInfo @id_file_sist, @src OUT, @desc OUT
    set @msg = 'Erro'
end

Set @msg = 'Arquivo Criado'
Fim:
	insert into [@GATPLOG] values(@code,@code,@msg, @Table, isnull(@desc, ERROR_MESSAGE()), @Arq)