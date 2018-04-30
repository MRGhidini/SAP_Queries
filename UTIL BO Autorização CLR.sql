EXEC sp_changedbowner 'sa'
ALTER DATABASE [BO_SBO_CLR] SET trustworthy ON

sp_configure 'show advanced options', 1;
GO
RECONFIGURE;
GO

sp_configure 'clr enabled', 1;
GO
RECONFIGURE;
GO

sp_configure 'show advanced options', 0;
GO
RECONFIGURE;
GO