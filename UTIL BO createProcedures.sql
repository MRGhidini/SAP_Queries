IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[JournalEntryTrigger]'))
EXECUTE dbo.sp_executesql N'
CREATE TRIGGER [dbo].[JournalEntryTrigger] ON [dbo].[FactFinanse]  AFTER  INSERT AS 
EXTERNAL NAME [BOSBOCLR].[Triggers].[JournalEntryTrigger]
'
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[BusinessPartnerTrigger]'))
EXECUTE dbo.sp_executesql N'
CREATE TRIGGER [dbo].[BusinessPartnerTrigger] ON [dbo].[OBusinessPartner]  AFTER  INSERT AS 
EXTERNAL NAME [BOSBOCLR].[Triggers].[BusinessPartnerTrigger]
'
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[ItemTrigger]'))
EXECUTE dbo.sp_executesql N'
CREATE TRIGGER [dbo].[ItemTrigger] ON [dbo].[OItems]  AFTER  INSERT AS 
EXTERNAL NAME [BOSBOCLR].[Triggers].[ItemTrigger]
'
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[ProjectTrigger]'))
EXECUTE dbo.sp_executesql N'
CREATE TRIGGER [dbo].[ProjectTrigger] ON [dbo].[OProject]  AFTER  INSERT AS 
EXTERNAL NAME [BOSBOCLR].[Triggers].[ProjectTrigger]
'
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[SalesPersonTrigger]'))
EXECUTE dbo.sp_executesql N'
CREATE TRIGGER [dbo].[SalesPersonTrigger] ON [dbo].[OSalesPerson]  AFTER  INSERT AS 
EXTERNAL NAME [BOSBOCLR].[Triggers].[SalesPersonTrigger]
'
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[SalesRepresentativeTrigger]'))
EXECUTE dbo.sp_executesql N'
CREATE TRIGGER [dbo].[SalesRepresentativeTrigger] ON [dbo].[OSalesRepresentative]  AFTER  INSERT AS 
EXTERNAL NAME [BOSBOCLR].[Triggers].[SalesRepresentativeTrigger]
'
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[checkDocumentHeader]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[checkDocumentHeader]
	@company [nvarchar](4000)
WITH EXECUTE AS CALLER
AS
EXTERNAL NAME [BOSBOCLR].[StoredProcedures].[checkDocumentHeader]' 
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[checkFinance]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[checkFinance]
	@company [nvarchar](4000)
WITH EXECUTE AS CALLER
AS
EXTERNAL NAME [BOSBOCLR].[StoredProcedures].[checkFinance]' 
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[checkIncomePayment]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[checkIncomePayment]
	@company [nvarchar](4000)
WITH EXECUTE AS CALLER
AS
EXTERNAL NAME [BOSBOCLR].[StoredProcedures].[checkIncomePayment]' 
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[checkInventory]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[checkInventory]
	@company [nvarchar](4000)
WITH EXECUTE AS CALLER
AS
EXTERNAL NAME [BOSBOCLR].[StoredProcedures].[checkInventory]' 
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[checkOutcomePayment]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[checkOutcomePayment]
	@company [nvarchar](4000)
WITH EXECUTE AS CALLER
AS
EXTERNAL NAME [BOSBOCLR].[StoredProcedures].[checkOutcomePayment]' 
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[checkPurchaseSales]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[checkPurchaseSales]
	@company [nvarchar](4000)
WITH EXECUTE AS CALLER
AS
EXTERNAL NAME [BOSBOCLR].[StoredProcedures].[checkPurchaseSales]' 
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[clean]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[clean]
WITH EXECUTE AS CALLER
AS
EXTERNAL NAME [BOSBOCLR].[StoredProcedures].[clean]' 
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[companyAccess]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[companyAccess]
WITH EXECUTE AS CALLER
AS
EXTERNAL NAME [BOSBOCLR].[StoredProcedures].[companyAccess]' 
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[createDatabase]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[createDatabase]
WITH EXECUTE AS CALLER
AS
EXTERNAL NAME [BOSBOCLR].[StoredProcedures].[createDatabase]' 
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[createIndexes]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Eduardo Piva
-- Create date: 08/12/2010
-- Description:	Cria todos os indices do banco no final da execuÃ§Ã£o, para melhorar desempenho.
-- =============================================
CREATE PROCEDURE [dbo].[createIndexes]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

/********* FactConciliation **************/

	if exists (SELECT * FROM sys.objects WHERE object_id =OBJECT_ID(N''[dbo].[FactOutcomePayment]'') AND type in (N''U''))
	begin
		
		ALTER TABLE FactOutcomePayment ADD Foreign Key (CompanyDB) REFERENCES Company
		ALTER TABLE FactOutcomePayment  ADD Foreign Key (ItemsId) REFERENCES OItems
		ALTER TABLE FactOutcomePayment  ADD Foreign Key (SalesPersonId) REFERENCES OSalesPerson
		ALTER TABLE FactOutcomePayment  ADD Foreign Key (BusinessPartnerId) REFERENCES OBusinessPartner
		ALTER TABLE FactOutcomePayment  ADD Foreign Key (AccountId) REFERENCES OAccount
		ALTER TABLE FactOutcomePayment  ADD Foreign Key (TransType) REFERENCES InvType		
		ALTER TABLE FactOutcomePayment  ADD FOREIGN KEY (BatchNumberID) REFERENCES OBatchNumber

		ALTER TABLE FactOutcomePayment  ALTER COLUMN CompanyDB nvarchar(50) NOT NULL
		ALTER TABLE FactOutcomePayment  ALTER COLUMN TransType int NOT NULL
		ALTER TABLE FactOutcomePayment  ALTER COLUMN DocEntry int NOT NULL
		ALTER TABLE FactOutcomePayment  ALTER COLUMN LineNum int NOT NULL
		ALTER TABLE FactOutcomePayment  ALTER COLUMN ItemsId smallint NOT NULL
		ALTER TABLE FactOutcomePayment  ALTER COLUMN BusinessPartnerId int NOT NULL
		ALTER TABLE FactOutcomePayment  ALTER COLUMN SalesPersonId smallint NOT NULL
		
	end

	if exists (SELECT * FROM sys.objects WHERE object_id =OBJECT_ID(N''[dbo].[FactIncomePayment]'') AND type in (N''U''))
	begin
		ALTER TABLE FactIncomePayment ADD Foreign Key (CompanyDB) REFERENCES Company
		ALTER TABLE FactIncomePayment  ADD Foreign Key (ItemsId) REFERENCES OItems
		ALTER TABLE FactIncomePayment  ADD Foreign Key (SalesPersonId) REFERENCES OSalesPerson
		ALTER TABLE FactIncomePayment  ADD Foreign Key (BusinessPartnerId) REFERENCES OBusinessPartner
		ALTER TABLE FactIncomePayment  ADD Foreign Key (AccountId) REFERENCES OAccount
		ALTER TABLE FactIncomePayment  ADD Foreign Key (TransType) REFERENCES InvType		
		ALTER TABLE FactIncomePayment  ADD FOREIGN KEY (BatchNumberID) REFERENCES OBatchNumber

		ALTER TABLE FactIncomePayment  ALTER COLUMN CompanyDB nvarchar(50) NOT NULL
		ALTER TABLE FactIncomePayment  ALTER COLUMN TransType int NOT NULL
		ALTER TABLE FactIncomePayment  ALTER COLUMN DocEntry int NOT NULL
		ALTER TABLE FactIncomePayment  ALTER COLUMN LineNum int NOT NULL
		ALTER TABLE FactIncomePayment  ALTER COLUMN ItemsId smallint NOT NULL
		ALTER TABLE FactIncomePayment  ALTER COLUMN BusinessPartnerId int NOT NULL
		ALTER TABLE FactIncomePayment  ALTER COLUMN SalesPersonId smallint NOT NULL
	end
/********* END Income Payment **************/


/********* PurchaseSales Header **************/

	if exists (SELECT * FROM sys.objects WHERE object_id =OBJECT_ID(N''[dbo].[FactDocumentHeader]'') AND type in (N''U''))
	begin

		ALTER TABLE FactDocumentHeader ADD FOREIGN KEY (CompanyDB) References Company
		ALTER TABLE FactDocumentHeader ADD Foreign Key (SalesPersonId) REFERENCES OSalesPerson
		ALTER TABLE FactDocumentHeader ADD Foreign Key (BusinessPartnerId) REFERENCES OBusinessPartner
		ALTER TABLE FactDocumentHeader ADD Foreign Key (InvType) REFERENCES InvType		

		ALTER TABLE FactDocumentHeader ADD Foreign Key (DocDate) REFERENCES DimTempo		
		ALTER TABLE FactDocumentHeader ADD Foreign Key (TaxDate) REFERENCES DimTempo
		ALTER TABLE FactDocumentHeader ADD FOREIGN KEY (ModelId) REFERENCES OModel
		ALTER TABLE FactDocumentHeader ADD FOREIGN KEY (PaymentId) REFERENCES OPaymentGroup

		ALTER TABLE FactDocumentHeader ALTER COLUMN CompanyDB nvarchar(50) NOT NULL
		ALTER TABLE FactDocumentHeader ALTER COLUMN InvType int NOT NULL
		ALTER TABLE FactDocumentHeader ALTER COLUMN DocEntry int NOT NULL
		ALTER TABLE FactDocumentHeader ALTER COLUMN BusinessPartnerId int NOT NULL
		ALTER TABLE FactDocumentHeader ALTER COLUMN SalesPersonId smallint NOT NULL
		
		--ALTER TABLE FactDocumentHeader ADD FOREIGN KEY (CompanyDB, OwnerCode) REFERENCES OUsers 

		CREATE INDEX Serial ON FactDocumentHeader (Serial)

		CREATE INDEX Addrs ON FactDocumentHeader (CountyS, StreetS, BlockS, CityS, ZipCodeS, StateS)

		CREATE INDEX chave ON FactDocumentHeader (CompanyDB, InvType, DocEntry)
	end

/********* END PurchaseSales Header **************/

/********* PurchaseSales Lines **************/

	if exists (SELECT * FROM sys.objects WHERE object_id =OBJECT_ID(N''[dbo].[FactDocumentLines]'') AND type in (N''U''))
	begin
		ALTER TABLE FactDocumentLines ADD Foreign Key (CompanyDB) REFERENCES Company
		ALTER TABLE FactDocumentLines ADD Foreign Key (ItemsId) REFERENCES OItems
		ALTER TABLE FactDocumentLines ADD Foreign Key (AccountId) REFERENCES OAccount
		ALTER TABLE FactDocumentLines ADD Foreign Key (UsageId) REFERENCES OUsage
		ALTER TABLE FactDocumentLines ADD Foreign Key (InvType) REFERENCES InvType		

		ALTER TABLE FactDocumentLines ADD Foreign Key (OcrCode) REFERENCES OCostingCode		
		ALTER TABLE FactDocumentLines ADD Foreign Key (OcrCode2) REFERENCES OCostingCode		
		ALTER TABLE FactDocumentLines ADD Foreign Key (OcrCode3) REFERENCES OCostingCode		
		ALTER TABLE FactDocumentLines ADD Foreign Key (OcrCode4) REFERENCES OCostingCode		
		ALTER TABLE FactDocumentLines ADD Foreign Key (OcrCode5) REFERENCES OCostingCode		
		ALTER TABLE FactDocumentLines ADD Foreign Key (CogsOcrCod) REFERENCES OCostingCode		
		ALTER TABLE FactDocumentLines ADD Foreign Key (CogsOcrCo2) REFERENCES OCostingCode		
		ALTER TABLE FactDocumentLines ADD Foreign Key (CogsOcrCo3) REFERENCES OCostingCode		
		ALTER TABLE FactDocumentLines ADD Foreign Key (CogsOcrCo4) REFERENCES OCostingCode		
		ALTER TABLE FactDocumentLines ADD Foreign Key (CogsOcrCo5) REFERENCES OCostingCode		
		ALTER TABLE FactDocumentLines ADD Foreign Key (Project) REFERENCES OProject		

		ALTER TABLE FactDocumentLines ALTER COLUMN CompanyDB nvarchar(50) NOT NULL
		ALTER TABLE FactDocumentLines ALTER COLUMN InvType int NOT NULL
		ALTER TABLE FactDocumentLines ALTER COLUMN DocEntry int NOT NULL
		ALTER TABLE FactDocumentLines ALTER COLUMN LineNum int NOT NULL
		ALTER TABLE FactDocumentLines ALTER COLUMN ItemsId smallint NOT NULL
		ALTER TABLE FactDocumentLines ALTER COLUMN UsageId smallint NOT NULL


		CREATE INDEX ShipDate ON FactDocumentLines (ShipDate)
		CREATE INDEX CFOPCode ON FactDocumentLines (CFOPCode)
		CREATE INDEX WHSCode ON FactDocumentLines (WHSCode)

		CREATE INDEX TaxOnly ON FactDocumentLines (TaxOnly)

		CREATE INDEX Project ON FactDocumentLines (Project)
		CREATE INDEX OcrCode ON FactDocumentLines (OcrCode, OcrCode2, OcrCode3, OcrCode4, OcrCode5)
		CREATE INDEX COGSOcrCode ON FactDocumentLines (CogsOcrCod, CogsOcrCo2, CogsOcrCo3, CogsOcrCo4, CogsOcrCo5)

		CREATE INDEX chave ON FactDocumentLines (CompanyDB, InvType, DocEntry, LineNum)	
	end
	
/********* END PurchaseSales Lines **************/

/*** FactProdTree ***/

	if exists (SELECT * FROM sys.objects WHERE object_id =OBJECT_ID(N''[dbo].[FactProdTree]'') AND type in (N''U''))
	begin

		ALTER TABLE [dbo].[FactProdTree]  WITH NOCHECK ADD  CONSTRAINT [child1] FOREIGN KEY([Child1])
		REFERENCES [dbo].[OItems] ([id])

		ALTER TABLE [dbo].[FactProdTree] NOCHECK CONSTRAINT [child1]

		ALTER TABLE [dbo].[FactProdTree]  WITH NOCHECK ADD  CONSTRAINT [child10] FOREIGN KEY([Child10])
		REFERENCES [dbo].[OItems] ([id])

		ALTER TABLE [dbo].[FactProdTree] NOCHECK CONSTRAINT [child10]

		ALTER TABLE [dbo].[FactProdTree]  WITH NOCHECK ADD  CONSTRAINT [child2] FOREIGN KEY([Child2])
		REFERENCES [dbo].[OItems] ([id])

		ALTER TABLE [dbo].[FactProdTree] NOCHECK CONSTRAINT [child2]

		ALTER TABLE [dbo].[FactProdTree]  WITH NOCHECK ADD  CONSTRAINT [child3] FOREIGN KEY([Child3])
		REFERENCES [dbo].[OItems] ([id])

		ALTER TABLE [dbo].[FactProdTree] NOCHECK CONSTRAINT [child3]

		ALTER TABLE [dbo].[FactProdTree]  WITH NOCHECK ADD  CONSTRAINT [child4] FOREIGN KEY([Child4])
		REFERENCES [dbo].[OItems] ([id])

		ALTER TABLE [dbo].[FactProdTree] NOCHECK CONSTRAINT [child4]

		ALTER TABLE [dbo].[FactProdTree]  WITH NOCHECK ADD  CONSTRAINT [child5] FOREIGN KEY([Child5])
		REFERENCES [dbo].[OItems] ([id])

		ALTER TABLE [dbo].[FactProdTree] NOCHECK CONSTRAINT [child5]

		ALTER TABLE [dbo].[FactProdTree]  WITH NOCHECK ADD  CONSTRAINT [child6] FOREIGN KEY([Child6])
		REFERENCES [dbo].[OItems] ([id])

		ALTER TABLE [dbo].[FactProdTree] NOCHECK CONSTRAINT [child6]

		ALTER TABLE [dbo].[FactProdTree]  WITH NOCHECK ADD  CONSTRAINT [child7] FOREIGN KEY([Child7])
		REFERENCES [dbo].[OItems] ([id])

		ALTER TABLE [dbo].[FactProdTree] NOCHECK CONSTRAINT [child7]

		ALTER TABLE [dbo].[FactProdTree]  WITH NOCHECK ADD  CONSTRAINT [child8] FOREIGN KEY([Child8])
		REFERENCES [dbo].[OItems] ([id])

		ALTER TABLE [dbo].[FactProdTree] NOCHECK CONSTRAINT [child8]

		ALTER TABLE [dbo].[FactProdTree]  WITH NOCHECK ADD  CONSTRAINT [child9] FOREIGN KEY([Child9])
		REFERENCES [dbo].[OItems] ([id])

		ALTER TABLE [dbo].[FactProdTree] NOCHECK CONSTRAINT [child9]

		ALTER TABLE [dbo].[FactProdTree]  WITH NOCHECK ADD  CONSTRAINT [companydb] FOREIGN KEY([CompanyDB])
		REFERENCES [dbo].[Company] ([databaseName])

		ALTER TABLE [dbo].[FactProdTree] NOCHECK CONSTRAINT [companydb]

		ALTER TABLE [dbo].[FactProdTree]  WITH NOCHECK ADD  CONSTRAINT [father] FOREIGN KEY([Father])
		REFERENCES [dbo].[OItems] ([id])

		ALTER TABLE [dbo].[FactProdTree] NOCHECK CONSTRAINT [father]
	end


/*** end factProdTree ***/



	if exists (SELECT * FROM sys.objects WHERE object_id =OBJECT_ID(N''[dbo].[_FactBasePurchaseSales]'') AND type in (N''U''))
	begin

		ALTER TABLE _FactBasePurchaseSales ADD FOREIGN KEY (CompanyDB) REFERENCES Company

		CREATE INDEX factBase1 ON _FactBasePurchaseSales (InvType, DocEntry, LineNum)
		CREATE INDEX factBase2 ON _FactBasePurchaseSales (BaseEntry, BaseType, BaseLine)
	end

END
' 
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[createProcedures]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[createProcedures]
WITH EXECUTE AS CALLER
AS
EXTERNAL NAME [BOSBOCLR].[StoredProcedures].[createProcedures]' 
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[customCheck]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE customCheck
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

END
' 
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[customRecovery]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[customRecovery]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

END
' 
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[customVerification]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE customVerification
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

END
' 
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[debug]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[debug]
WITH EXECUTE AS CALLER
AS
EXTERNAL NAME [BOSBOCLR].[StoredProcedures].[debug]' 
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[disableConstraints]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[disableConstraints] AS
declare @tablename varchar(100)
declare c1 cursor for select name from sysobjects where type = ''U''
open c1
fetch next from c1 into @tablename
while ( @@fetch_status <> -1 )
begin
exec ( ''alter table '' + @tablename + '' nocheck constraint all '')
fetch next from c1 into @tablename
end
deallocate c1
' 
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[disableTriggers]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[disableTriggers] AS
declare @tablename varchar(100)
declare c1 cursor for select name from sysobjects where type = ''U''
open c1
fetch next from c1 into @tablename
while ( @@fetch_status <> -1 )
begin
exec ( ''alter table '' + @tablename + '' disable trigger all '')
fetch next from c1 into @tablename
end
deallocate c1
' 
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dropProcedures]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[dropProcedures]
WITH EXECUTE AS CALLER
AS
EXTERNAL NAME [BOSBOCLR].[StoredProcedures].[dropProcedures]' 
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[enableConstraints]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[enableConstraints] AS
declare @tablename varchar(100)
declare c1 cursor for select name from sysobjects where type = ''U''
open c1
fetch next from c1 into @tablename
while ( @@fetch_status <> -1 )
begin
exec ( ''alter table '' + @tablename + '' check constraint all '')
fetch next from c1 into @tablename
end
deallocate c1
' 
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[enableTriggers]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[enableTriggers] AS
declare @tablename varchar(100)
declare c1 cursor for select name from sysobjects where type = ''U''
open c1
fetch next from c1 into @tablename
while ( @@fetch_status <> -1 )
begin
exec ( ''alter table '' + @tablename + '' enable trigger all '')
fetch next from c1 into @tablename
end
deallocate c1
' 
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[info]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[info]
WITH EXECUTE AS CALLER
AS
EXTERNAL NAME [BOSBOCLR].[StoredProcedures].[info]' 
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[insertCompany]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[insertCompany]
	@companyDB [nvarchar](4000),
	@companyDescription [nvarchar](4000),
	@taxId [nvarchar](4000),
	@currency [int],
	@masterData [int],
	@priceList [int],
	@serviceOrders [int],
	@production [int],
	@marketingDocs [int],
	@finance [int],
	@billOfExchange [int],
	@conciliation [int],
	@inventory [int],
	@salesForecast [int],
	@budget [int],
	@dueDate [datetime]
WITH EXECUTE AS CALLER
AS
EXTERNAL NAME [BOSBOCLR].[StoredProcedures].[insertCompany]' 
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[loadData]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[loadData]
WITH EXECUTE AS CALLER
AS
EXTERNAL NAME [BOSBOCLR].[StoredProcedures].[loadData]' 
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[loadDimTempo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[loadDimTempo] (@DATAINI DATE = NULL, @DATAFIM DATE = NULL)
AS
SET DATEFORMAT ''DMY''
SET NOCOUNT ON 

IF @DATAINI IS NULL
SET @DATAINI = GETDATE()

IF @DATAFIM IS NULL
SET @DATAFIM = GETDATE()

DELETE FROM DimTempo

WHILE @DATAINI <= @DATAFIM
BEGIN

	INSERT INTO DimTempo
	SELECT 
	@DATAINI AS data
	,DAY(@DATAINI) AS dia
	,MONTH(@DATAINI) AS mes
	,year(@DATAINI) AS ano
	,case when DATEPART("dw",@dataini) = 1 then ''Domingo''
	 when DATEPART("dw",@dataini) = 2 then ''Segunda-Feira''
	 when DATEPART("dw",@dataini) = 3 then ''Terça-Feira''
	 when DATEPART("dw",@dataini) = 4 then ''Quarta-Feira''
	 when DATEPART("dw",@dataini) = 5 then ''Quinta-Feira''
	 when DATEPART("dw",@dataini) = 6 then ''Sexta-Feira''
	 when DATEPART("dw",@dataini) = 7 then ''Sábado''
	END diaSemana
	,DATEPART("wk",@DATAINI) AS semana
	,DATEPART("dy",@DATAINI) AS diaDoAno
	,case when month(@dataini) = 1 then ''1''
	 when month(@dataini) = 2 then ''1''
	 when month(@dataini) = 3 then ''2''
	 when month(@dataini) = 4 then ''2''
	 when month(@dataini) = 5 then ''3''
	 when month(@dataini) = 6 then ''3''
	 when month(@dataini) = 7 then ''4''
	 when month(@dataini) = 8 then ''4''
	 when month(@dataini) = 9 then ''5''
	 when month(@dataini) = 10 then ''5''
	 when month(@dataini) = 11 then ''6''
	 when month(@dataini) = 12 then ''6'' END AS bimestre
	,case when month(@dataini) = 1 then ''1''
	 when month(@dataini) = 2 then ''1''
	 when month(@dataini) = 3 then ''1''
	 when month(@dataini) = 4 then ''2''
	 when month(@dataini) = 5 then ''2''
	 when month(@dataini) = 6 then ''2''
	 when month(@dataini) = 7 then ''3''
	 when month(@dataini) = 8 then ''3''
	 when month(@dataini) = 9 then ''3''
	 when month(@dataini) = 10 then ''4''
	 when month(@dataini) = 11 then ''4''
	 when month(@dataini) = 12 then ''4'' END AS trimestre
	,case when month(@dataini) >= 1 and month(@dataini) <= 4 then ''1''
	 when month(@dataini) >= 5 and month(@dataini) <= 8 then ''2''
	 when month(@dataini) >= 9 and month(@dataini) <= 12 then ''3''
	END AS quadrimestre
	,case 
	 when month(@dataini) >= 1 and month(@dataini) <= 6 then ''1'' else ''2'' 
	END AS semestre
	,case when month(@dataini) = 1 then ''JANEIRO''
	 when month(@dataini) = 2 then ''FEVEREIRO''
	 when month(@dataini) = 3 then ''MARÇO''
	 when month(@dataini) = 4 then ''ABRIL''
	 when month(@dataini) = 5 then ''MAIO''
	 when month(@dataini) = 6 then ''JUNHO''
	 when month(@dataini) = 7 then ''JULHO''
	 when month(@dataini) = 8 then ''AGOSTO''
	 when month(@dataini) = 9 then ''SETEMBRO''
	 when month(@dataini) = 10 then ''OUTUBRO''
	 when month(@dataini) = 11 then ''NOVEMBRO''
	 when month(@dataini) = 12 then ''DEZEMBRO'' END AS mesExtenso
	,case when month(@dataini) = 1 then ''JAN''
	 when month(@dataini) = 2 then ''FEV''
	 when month(@dataini) = 3 then ''MAR''
	 when month(@dataini) = 4 then ''ABR''
	 when month(@dataini) = 5 then ''MAI''
	 when month(@dataini) = 6 then ''JUN''
	 when month(@dataini) = 7 then ''JUL''
	 when month(@dataini) = 8 then ''AGO''
	 when month(@dataini) = 9 then ''SET''
	 when month(@dataini) = 10 then ''OUT''
	 when month(@dataini) = 11 then ''NOV''
	 when month(@dataini) = 12 then ''DEZ'' END AS mesAbreviado

	SET @DATAINI = DATEADD(DAY,1,@DATAINI)
END
' 
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[loadDimTempoSAP]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[loadDimTempoSAP]
	@dbName nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;



EXEC(''
DECLARE @dataIni datetime = (select min(data) FROM
		(	select MIN(F_RefDate) Data from '' + @dbName + ''.dbo.OFPR
		UNION ALL
		select MIN(T_RefDate) from '' + @dbName + ''.dbo.OFPR
		UNION ALL
		select MIN(F_DueDate) from '' + @dbName + ''.dbo.OFPR
		UNION ALL
		select MIN(T_DueDate) from '' + @dbName + ''.dbo.OFPR
		UNION ALL
		select MIN(F_TaxDate) from '' + @dbName + ''.dbo.OFPR
		UNION ALL
		select MIN(T_TaxDate) from '' + @dbName + ''.dbo.OFPR ) TMP)

DECLARE @dataFim datetime = (select MAX(data) FROM
		(	select MAX(F_RefDate) Data from '' + @dbName + ''.dbo.OFPR
		UNION ALL
		select MAX(T_RefDate) from '' + @dbName + ''.dbo.OFPR
		UNION ALL
		select MAX(F_DueDate) from '' + @dbName + ''.dbo.OFPR
		UNION ALL
		select MAX(T_DueDate) from '' + @dbName + ''.dbo.OFPR
		UNION ALL
		select MAX(F_TaxDate) from '' + @dbName + ''.dbo.OFPR
		UNION ALL
		select MAX(T_TaxDate) from '' + @dbName + ''.dbo.OFPR ) TMP)
	
EXEC loadDimTempo @dataIni, @dataFim
'')

END
' 
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sboCustomPreTransaction]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sboCustomPreTransaction]
	@object_type nvarchar(20), 				-- SBO Object Type
	@transaction_type nchar(1),			-- [A]dd, [U]pdate, [D]elete, [C]ancel, C[L]ose
	@num_of_cols_in_key int,
	@list_of_key_cols_tab_del nvarchar(255),
	@list_of_cols_val_tab_del nvarchar(255),
	@dbName nvarchar(50),
	@transid int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
END
' 
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sboCustomTransaction]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sboCustomTransaction]
	@object_type nvarchar(20), 				-- SBO Object Type
	@transaction_type nchar(1),			-- [A]dd, [U]pdate, [D]elete, [C]ancel, C[L]ose
	@num_of_cols_in_key int,
	@list_of_key_cols_tab_del nvarchar(255),
	@list_of_cols_val_tab_del nvarchar(255),
	@dbName nvarchar(50),
	@transid int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
END
' 
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sboTransactionDebug]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sboTransactionDebug]
	@objectType [nvarchar](4000),
	@transactionType [nchar](1),
	@num_of_cols_in_key [int],
	@list_of_key_cols_tab_del [nvarchar](4000),
	@list_of_cols_val_tab_del [nvarchar](4000),
	@dbName [nvarchar](4000),
	@transId [int]
WITH EXECUTE AS CALLER
AS
EXTERNAL NAME [BOSBOCLR].[StoredProcedures].[sboTransactionDebug]' 
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sboTransactionJOB]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sboTransactionJOB]
WITH EXECUTE AS CALLER
AS
EXTERNAL NAME [BOSBOCLR].[StoredProcedures].[sboTransactionJOB]' 
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[upgradeDatabase]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[upgradeDatabase]
WITH EXECUTE AS CALLER
AS
EXTERNAL NAME [BOSBOCLR].[StoredProcedures].[upgradeDatabase]' 
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[verifyDB]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[verifyDB]
WITH EXECUTE AS CALLER
AS
EXTERNAL NAME [BOSBOCLR].[StoredProcedures].[verifyDB]' 
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[verifyDBJob]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[verifyDBJob]
WITH EXECUTE AS CALLER
AS
EXTERNAL NAME [BOSBOCLR].[StoredProcedures].[verifyDBJob]' 
END
