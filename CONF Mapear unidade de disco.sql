GO
EXEC sp_configure 'show advanced options',1
GO
RECONFIGURE
GO
EXEC sp_configure 'xp_cmdshell',1
GO
RECONFIGURE
EXEC xp_cmdshell 'net use G: \\vboxsvr\g_drive /user:DominioDeRede\UsuarioDeRede Senha'
GO
EXEC sp_configure 'xp_cmdshell',0
GO