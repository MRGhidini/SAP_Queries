--CREATE DATABASE OPENXMLTesting
--GO
--USE OPENXMLTesting
--GO
--CREATE TABLE XMLwithOpenXML
--(
--Id INT IDENTITY PRIMARY KEY,
--XMLData XML,
--LoadedDateTime DATETIME
--)
--CREATE TABLE B1Version
--(
--Id INT IDENTITY PRIMARY KEY,
--B1Version NVARCHAR(50),
--Versao NVARCHAR(50)
--)


--CREATE TABLE SQLVersion
--(
--Id INT IDENTITY PRIMARY KEY,
--SQLVersion NVARCHAR(50),
--Versao NVARCHAR(50)
--)
--truncate table B1Version
--Insert into B1Version VALUES ('910170','9.1 PL07')
--Insert into B1Version VALUES ('910180','9.1 PL08')
--Insert into B1Version VALUES ('910190','9.1 PL09')
--Select * From B1Version
--truncate table SQLVersion
--Insert into SQLVersion VALUES ('10.00.1600.22','SQL Server 2008 RTM')
--Insert into SQLVersion VALUES ('10.00.2531.00','SQL Server 2008 Service Pack 1')
--Insert into SQLVersion VALUES ('10.00.4000.00','SQL Server 2008 Service Pack 2')
--Insert into SQLVersion VALUES ('10.00.5500.00','SQL Server 2008 Service Pack 3')
--Insert into SQLVersion VALUES ('10.00.6000.29','SQL Server 2008 Service Pack 4')
--Insert into SQLVersion VALUES ('10.50.2500.0','SQL Server 2008 R2 Service Pack 1')
--Insert into SQLVersion VALUES ('10.50.4000.0','SQL Server 2008 R2 Service Pack 2')
--Insert into SQLVersion VALUES ('10.50.6000.34','SQL Server 2008 R2 Service Pack 3')
--Insert into SQLVersion VALUES ('11.0.5058.0','SQL Server 2012 Service Pack 2')
--Insert into SQLVersion VALUES ('11.00.3000.00','SQL Server 2012 Service Pack 1')
--Insert into SQLVersion VALUES ('11.00.2100.60','SQL Server 2012 RTM	')
--Insert into SQLVersion VALUES ('12.0.2000.8','SQL Server 2014 RTM')
--Select * From SQLVersion

--INSERT INTO XMLwithOpenXML(XMLData, LoadedDateTime)
--SELECT CONVERT(XML, BulkColumn) AS BulkColumn, GETDATE() 
----FROM OPENROWSET(BULK 'C:\Users\Ayrton\Desktop\Nova pasta\System Status Report_20150611110836495.xml', SINGLE_BLOB) AS x;
--FROM OPENROWSET(BULK 'C:\Users\Ayrton\Desktop\Nova pasta\System Status Report_20160119073312034.xml', SINGLE_BLOB) AS x;
--FROM OPENROWSET(BULK 'C:\Users\Ayrton\Desktop\Nova pasta\System Status Report_20160120001039536.xml', SINGLE_BLOB) AS x;

--SELECT * FROM XMLwithOpenXML

USE OPENXMLTesting
GO
DECLARE @XML AS XML, @hDoc AS INT, @SQL NVARCHAR (MAX), @ID as INT
SELECT @XML = XMLData, @ID = Id FROM XMLwithOpenXML where id= 1 -- Criar Cursor para listar todos os xmls
EXEC sp_xml_preparedocument @hDoc OUTPUT, @XML
/*
--Lista Dados de Cabeçalho
SELECT
	@ID as 'ID',
	@XML, 
	SpecialInfo.InstallationNumber,
	SpecialInfo.HardwareKey,
	Task.SystemNumber,
	SpecialInfo.CustomerName,
	Task.ReferredTaskID, 
	Task.PublishDate, 
	Task.Version as 'XMLVersion', 
	Task.RSPVersion,
	Task.RSPBuildVersion,
	SpecialInfo.SystemType,
	SpecialInfo.BeginTime,
	SpecialInfo.Recurence,
	SpecialInfo.LastReportUpload,
	SpecialInfo.DBName,
	SpecialInfo.B1Version,
	SpecialInfo.DBVersion
FROM OPENXML(@hDoc, 'Task')  
WITH 
(
ReferredTaskID [varchar](max) '@ReferredTaskID',
PublishDate [varchar](max) '@PublishDate',
Version [varchar](max) '@Version',
RSPVersion [varchar](max) '@RSPVersion',
RSPBuildVersion [varchar](max) '@RSPBuildVersion',
SystemNumber [varchar](max) '@SystemNumber'
) as Task
cross apply OPENXML(@hDoc, 'Task/SpecialInfo')
WITH
(
BeginTime [varchar](max) 'BeginTime',
Recurence [varchar](max) 'Recurence',
LastReportUpload [varchar](max) 'LastReportUpload',
CustomerName [varchar](max) 'CustomerName',
DBName [varchar](max) 'DBName',
B1Version [varchar](max) 'B1Version',
DBVersion [varchar](max) 'DBVersion',
InstallationNumber [varchar](max) 'InstallationNumber',
HardwareKey [varchar](max) 'HardwareKey',
SystemType [varchar](max) 'SystemType'
) as SpecialInfo

--Dados Resumidos
SELECT
	@ID as 'ID',
	General.Name,
	General.Rating
	--Steps.Name
FROM OPENXML(@hDoc, 'Task/Overview/Group')
WITH
(
Name [varchar](max) '@Name',
Rating [varchar](max) '@Rating'
) as General
--Detalhes
SELECT
	@ID as 'ID',
	Steps.Name,
	Steps_Result.Name,
	Steps_Result.Value,
	Steps_Result.Fornecedor,
	Steps_Result.Version
FROM OPENXML(@hDoc, 'Task/Steps/Step')
WITH
(
Name [varchar](max) '@Name'
) as Steps
cross apply OPENXML(@hDoc, 'Task/Steps/Step/Result/Row/Column')
WITH
(
[Name] [varchar](max) '@Name',
[Value] [varchar](100) '../Column[1]',
[Fornecedor] [varchar](100) '../Column[3]',
[Version] [varchar](100) '../Column[4]'
) as Steps_Result
--cross apply OPENXML(@hDoc, 'Task/Steps/Step/Result/Row')
--WITH
--(
--[teste] [varchar](100) 'Column[1]'
--) as xx
--cross apply OPENXML(@hDoc, 'Task/Steps/Step/Result/Row/Column/@Type')
--WITH
--(
--[Name] [varchar](max) '../@Name',
--[Type2] [varchar](max) '@Type' 
--) as xx
where 
	Steps.Name = 'Installed Add-Ons' 
	and Steps_Result.Name = 'Add-On Name' /* Filtrar Tabela 1 com nome dos addons*/

SELECT
	@ID as 'ID',
	Steps.*
FROM OPENXML(@hDoc, 'Task/Steps/Step')
WITH
(
	Name [varchar](max) '@Name',
	DBType [varchar](100) 'Result/Row/Column[1]',
	DBVersion [varchar](100) 'Result/Row/Column[2]',
	DBLanguage [varchar](100) 'Result/Row/Column[3]',
	Collation [varchar](100) 'Result/Row/Column[5]'
) as Steps
where 
	Steps.Name = 'Database Server' 
*/


SELECT
	@ID as 'ID',
	Steps.*,
	Steps_Bkp.[Qtd Bkps Ultimos 30 dias],
	Steps_Lastdate.[Data Ultimo Bkp]
From OPENXML(@hDoc, 'Task/Steps/Step/Result/Row')
WITH
(
	[Pai] [varchar](100) '../../@Name',
	[DB Name] [varchar](100) 'Column[1]',
	[DB Type] [varchar](100) 'Column[2]',
	[System Type] [varchar](100) 'Column[3]',
	[Recovery Model] [varchar](20) 'Column[5]',
	[Collation] [varchar](100) 'Column[6]',
	[Auto Shrink] [varchar](10) 'Column[7]',
	[Data Size] [varchar](100) 'Column[12]',
	[Log Size] [varchar](100) 'Column[14]'
) as Steps
Left Join(select * From
			OPENXML(@hDoc, 'Task/Steps/Step/Result/Row')
			WITH
			(
				[Pai] [varchar](100) '../../@Name',
				[Name] [varchar](100) './Column[2]/@Name',
				[DB Name] [varchar](100) 'Column[1]',
				[Qtd Bkps Ultimos 30 dias] varchar(100) 'Column[2]'
			) as Steps_Bkp
)Steps_Bkp On Steps_Bkp.[DB Name] = Steps.[Db Name] And Steps_Bkp.Pai = 'Database Backup Statistic' and Steps_Bkp.Name = 'Number of Backups in Last 30 Days'

Left Join(select * From
			OPENXML(@hDoc, 'Task/Steps/Step/Result/Row')
			WITH
			(
				[Pai] [varchar](100) '../../@Name',
				[Id] int '@Id',
				[DB Name] [varchar](100) 'Column[1]',
				[Data Ultimo Bkp] varchar(100) 'Column[2]'
			) as Steps_Bkp
)Steps_Lastdate On Steps_Lastdate.[DB Name] = Steps.[Db Name] And Steps_Lastdate.Pai = 'Database Backup Statistic'
					And Steps_Lastdate.Id = case when Steps_Bkp.[Qtd Bkps Ultimos 30 dias] >= 10 then 10 else Steps_Bkp.[Qtd Bkps Ultimos 30 dias] end
where
	--(Steps_Bkp.[DB Name] = Steps.[Db Name] or Steps_Bkp.[DB Name] is null) And
	Steps.Pai = 'Database Settings'
	And (Steps.[DB Type] = 'COMMON' Or Steps.[System Type] = 'Productive')
EXEC sp_xml_removedocument @hDoc


GO