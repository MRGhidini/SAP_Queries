IF EXISTS(
select COUNT(*) from sys.columns inner join sys.tables on tables.object_id = columns.object_id
where tables.name = 'InvType'
having
COUNT(*) = (select COUNT(*) from sys.columns inner join sys.tables on tables.object_id = columns.object_id
where tables.name = 'InvType_BKP')
)
insert into InvType
select * from [InvType_BKP] 

IF EXISTS(
select COUNT(*) from sys.columns inner join sys.tables on tables.object_id = columns.object_id
where tables.name = 'Company'
having
COUNT(*) = (select COUNT(*) from sys.columns inner join sys.tables on tables.object_id = columns.object_id
where tables.name = 'Company_BKP')
)
insert into Company
select * from [Company_BKP] 

IF EXISTS(
select COUNT(*) from sys.columns inner join sys.tables on tables.object_id = columns.object_id
where tables.name = 'OModel'
having
COUNT(*) = (select COUNT(*) from sys.columns inner join sys.tables on tables.object_id = columns.object_id
where tables.name = 'OModel_BKP')
)
insert into OModel
select * from [OModel_BKP]

IF EXISTS(
select COUNT(*) from sys.columns inner join sys.tables on tables.object_id = columns.object_id
where tables.name = 'OAccountType'
having
COUNT(*) = (select COUNT(*) from sys.columns inner join sys.tables on tables.object_id = columns.object_id
where tables.name = 'OAccountType_BKP')
)
insert into OAccountType
select * from [OAccountType_BKP]

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InvType_BKP]') AND type in (N'U'))
DROP TABLE [dbo].[InvType_BKP]

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Company_BKP]') AND type in (N'U'))
DROP TABLE [dbo].[Company_BKP]

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OModel_BKP]') AND type in (N'U'))
DROP TABLE [dbo].[OModel_BKP]

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OAccountType_BKP]') AND type in (N'U'))
DROP TABLE [dbo].[OAccountType_BKP]
