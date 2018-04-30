IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InvType_BKP]') AND type in (N'U'))
DROP TABLE [dbo].[InvType_BKP]

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Company_BKP]') AND type in (N'U'))
DROP TABLE [dbo].[Company_BKP]

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OModel_BKP]') AND type in (N'U'))
DROP TABLE [dbo].[OModel_BKP]

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OAccountType_BKP]') AND type in (N'U'))
DROP TABLE [dbo].[OAccountType_BKP]

select * into [InvType_BKP] from InvType
select * into [Company_BKP] from Company
select * into [OModel_BKP] from OModel
select * into [OAccountType_BKP] from OAccountType

