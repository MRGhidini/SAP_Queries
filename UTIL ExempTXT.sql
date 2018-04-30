declare
	@id_file_sist	int
	,@id_arqv	int
	,@status	int
	,@src	varchar(255)
	,@desc	varchar(255)

    --cria objeto
    exec @status = sp_OACreate 'Scripting.FileSystemObject', @id_file_sist OUTPUT

    if @status <> 0 or @@error <> 0
    begin
        exec sp_OAGetErrorInfo @id_file_sist, @src OUT, @desc OUT
        select Source = @src, Description    = @desc
        goto erro
    end

    -- Abrir arquivo
    exec @status = sp_OAMethod @id_file_sist, 'OpenTextFile', @id_arqv OUT, 'C:\teste.txt',2,1 

    if @status <> 0 or @@error <> 0
    begin
		exec sp_OAGetErrorInfo @id_file_sist ,@src OUT ,@desc OUT
		select Source = @src ,Description = @desc
		goto erro
    end

    -- Grava o xml no arquivo de saida
    exec @status = sp_OAMethod @id_arqv, 'WriteLine', Null, 'seu texto'

    if @status <> 0 or @@error <> 0
    begin
        exec sp_OAGetErrorInfo @id_file_sist, @src OUT, @desc OUT
        select Source = @src, Description = @desc
        goto erro
    end


    -- Libera o arquivo
    exec @status = sp_OADestroy @id_arqv

    if @status <> 0 or @@error <> 0
    begin
        exec sp_OAGetErrorInfo @id_file_sist, @src OUT, @desc OUT
        select Source = @src, Description    = @desc
        goto erro
    end

    -- Libera o FileSystem
    exec @status = sp_OADestroy @id_file_sist
    
    if @status <> 0 or @@error <> 0
    begin
        exec sp_OAGetErrorInfo @id_file_sist, @src OUT, @desc OUT
        select Source = @src, Description    = @desc
        goto erro
    end
	
	goto fim
erro:
	print 'Error'
fim:
	print 'arquivo criado'