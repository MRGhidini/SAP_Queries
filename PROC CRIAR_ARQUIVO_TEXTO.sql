/****** Object:  StoredProcedure [dbo].[OKS_CriaTexto]    Script Date: 09/01/2016 14:16:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[OKS_CriaTexto] 
	@Table as varchar(100), 
	@DataIni DateTime = null, 
	@DataFim as DateTime = null,
	@OrderBy varchar(255)= ''
as

Declare @Colunas as varchar(max), 
		@Colunas2 as nvarchar(max) = '',
		@Cmd as varchar(8000),
		@Linhas as nvarchar(max), 
		@ColName as varchar(200),
		@Where as varchar(255),
		@id_file_sist	int,
		@id_arqv int,
		@status int,
		@src varchar(255),
		@desc varchar(255),
		@Arq as varchar(255),
		@msg as varchar(30) ='',
		@Code as int

--Exec OKS_CriaTexto GA_TP_MESTRE_NFEN_MERC, '20130120', '20130921'

set @Where = ' Where '
Set @Colunas = 'SELECT '
set @Code = 1--(ISNULL((Select MAX(cast(code as int))+1 From [@GATPLOG]),1))


if @Table not in (select T0.Name From sys.views T0)
Begin
	set @src = ''
	set @desc = 'View Não existe'
	set @msg = 'Erro Tabela'
	goto Fim
End



/*************************************************************************/
/**********TODO -- VERIFICAR ONDE VAI SER CRIADO. ABAIXO EXEMPLOS*********/
/*************************************************************************/
--Select @Arq = cast(AttachPath as varchar(255)) +'\'+@Table+'.TXT' From OADP
--set @Arq = 'C:\'+@Table+replace(replace(replace(convert(varchar,GETDATE(),120),'-',''),' ',''),':','')+'.txt'
SET @Arq = '\\srvoksftp\FTPOKSER\'+@Table + '.txt';

/*cria objeto*/
declare xCur1 Cursor for 
	select T1.Name from sys.views T0 inner join sys.columns T1 on T0.object_id = T1.object_id
	where T0.name = @Table And T1.Name not in ('oksFiltro')
Open xCur1
Fetch Next From xCur1 into @ColName
While @@FETCH_STATUS = 0
Begin
	Set @Colunas = @Colunas + '+['+ @ColName+']'
	Fetch Next From xCur1 into @ColName
End
Close xCur1
Deallocate xCur1

/*************************************************************************/
/*******TODO -- MUDAR NOME DO BANCO NA IMPLEMENTAÇÃO NO CLIENTE***********/
/*************************************************************************/
Set @Colunas = @Colunas + ' From SBONaanDanJain.dbo.' + @Table

--Set @Colunas2 = LEFT(@colunas2, LEN(@Colunas2) -1)
if @DataIni is not null
Begin
	set @Where = @Where + ' oksFiltro >= ' + char(39)+replace(CONVERT(varchar,@DataIni,102),'.','')+CHAR(39)
End

if @DataFim is not null
Begin
	if LEN(@Where) > 10 begin set @Where = @Where+' And ' End
	set @Where = @Where + ' oksFiltro <= '+ char(39)+replace(CONVERT(varchar,@DataFim,102),'.','')+CHAR(39)
End

if @DataFim is not null or @DataIni is not null
Begin
	set @Colunas = @Colunas + @Where
End
--Colocar Ordenação
Set @Colunas = @Colunas + ' ' + @OrderBy


--Liberar esta parte do código para verificar a query que sera executada
--print @Colunas
--set @msg = 'Erro'
--goto Fim


/*************************************************************************/
/****************TODO -- MUDAR NOME DO SERVIDOR E INSTANCIA***************/
/*************************************************************************/
/*Grava o resultado no arquivo de saida*/
SET @Cmd = 'BCP "'+ @Colunas+' " queryout '+@Arq+' -c -T -S SRVOKS03\SQLDESENV'
print @CMD
exec xp_cmdshell @Cmd


--Set @msg = 'Arquivo Criado'
Fim:
--print @msg
IF(LEN(@msg)>0)Begin Select @msg End