/**** Alterar todos os bancos de dados para recovery model simples ****/
exec sp_MSforeachdb "ALTER DATABASE [?] SET RECOVERY SIMPLE" 

/**** Crar query para fazer shring de todos os DB's                ****/
/**** Executar query em modo 'Result to Text'                      ****/
/**** Copiar resultado e executar novamente                        ****/
exec sp_MSforeachdb  "USE [?] Select 'USE [?] DBCC SHRINKFILE (N'''+name+''' , 0, TRUNCATEONLY)'  from Sys.database_files where type_desc = 'LOG'"
