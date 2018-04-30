IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[JournalEntryTrigger]'))
DROP TRIGGER [dbo].[JournalEntryTrigger]
IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[BusinessPartnerTrigger]'))
DROP TRIGGER [dbo].[BusinessPartnerTrigger]
IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[ItemTrigger]'))
DROP TRIGGER [dbo].[ItemTrigger]
IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[ProjectTrigger]'))
DROP TRIGGER [dbo].[ProjectTrigger]
IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[SalesPersonTrigger]'))
DROP TRIGGER [dbo].[SalesPersonTrigger]
IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[SalesRepresentativeTrigger]'))
DROP TRIGGER [dbo].[SalesRepresentativeTrigger]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[checkDocumentHeader]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[checkDocumentHeader]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[checkFinance]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[checkFinance]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[checkIncomePayment]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[checkIncomePayment]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[checkInventory]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[checkInventory]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[checkOutcomePayment]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[checkOutcomePayment]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[checkPurchaseSales]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[checkPurchaseSales]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[clean]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[clean]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[companyAccess]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[companyAccess]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[createDatabase]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[createDatabase]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[createProcedures]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[createProcedures]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[debug]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[debug]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dropProcedures]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dropProcedures]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[info]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[info]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[insertCompany]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[insertCompany]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[loadData]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[loadData]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sboTransactionDebug]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sboTransactionDebug]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sboTransactionJOB]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sboTransactionJOB]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[upgradeDatabase]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[upgradeDatabase]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[verifyDB]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[verifyDB]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[verifyDBJob]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[verifyDBJob]
