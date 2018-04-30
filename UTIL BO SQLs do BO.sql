/*
Primeiro executa-se estas procedures que desliga toda checagem de constraints
e triggers, melhorando o pouco que da da performance.
*/

exec disableConstraints
exec disableTriggers

/*
A tabela DimTempo é populada, tendo como menor data e maior data o resultado das seguintes consultas
*/

select min(data) data FROM
		(	select MIN(F_RefDate) Data from SBODemoBR.dbo.OFPR
		UNION ALL
		select MIN(T_RefDate) from SBODemoBR.dbo.OFPR
		UNION ALL
		select MIN(F_DueDate) from SBODemoBR.dbo.OFPR
		UNION ALL
		select MIN(T_DueDate) from SBODemoBR.dbo.OFPR
		UNION ALL
		select MIN(F_TaxDate) from SBODemoBR.dbo.OFPR
		UNION ALL
		select MIN(T_TaxDate) from SBODemoBR.dbo.OFPR ) TMP


select MAX(data) data FROM
		(	select MAX(F_RefDate) Data from SBODemoBR.dbo.OFPR
		UNION ALL
		select MAX(T_RefDate) from SBODemoBR.dbo.OFPR
		UNION ALL
		select MAX(F_DueDate) from SBODemoBR.dbo.OFPR
		UNION ALL
		select MAX(T_DueDate) from SBODemoBR.dbo.OFPR
		UNION ALL
		select MAX(F_TaxDate) from SBODemoBR.dbo.OFPR
		UNION ALL
		select MAX(T_TaxDate) from SBODemoBR.dbo.OFPR ) TMP

/*
Com as menores e maiores datas, a carga da DimTempo é realizada da seguinte forma
*/
exec loadDimTempo @dataIni, @dataFim

/*
Carga das filiais
*/
insert into Branch 
select cast('SBODemoBR' as nvarchar(50)) CompanyDB, BPLId, BPLName, BPLFrName, TaxIdNum   from SBODemoBR.dbo.OBPL

/*
Carga de moedas
*/
INSERT INTO FactCurrency 
select cast('SBODemoBR' as nvarchar(50)) CompanyDB, RateDate, Currency, Rate from SBODemoBR.dbo.ORTT

/*
Carga de usuários
*/
INSERT INTO OUsers
select cast('SBODemoBR' as nvarchar(50)) CompanyDB, USERID, USER_CODE, U_NAME, E_Mail FROM SBODemoBR.dbo.OUSR


/*
Carga de territórios. Primeiro listo os territórios, depois checo o DE->PARA com os IDs do BO, se não existe insiro.
*/

SELECT T0.territryID, ISNULL(T0.descript, '') descript  FROM SBODemoBR.dbo.OTER T0
select TerritoryID id from DPTerritory WHERE ID = @id and companyDB = @dbName
select TOP 1 id from OTerritory T0 WHERE
				LTRIM(RTRIM(UPPER(T0.Descript))) = LTRIM(RTRIM(UPPER(@Description)))
INSERT INTO OTerritory (Descript) values (@Description)
select isnull(@@identity, -1) 'identity'

/*
Carga de vendedores. Também existe a checagem de de->para
*/
SELECT SlpCode, SlpName, ISNULL(Commission, 0) Commission FROM SBODemoBR.dbo.OSLP
select id from OSalesPerson WHERE SlpName = @slpName
SELECT SalesPersonID FROM DPSalesPerson WHERE SlpCode = @slpCode and companyDB = @companyDB
INSERT INTO DPSalesPerson (CompanyDB, SlpCode, SalesPersonID)
			VALUES (@dbName, @slpCode, @slpId)
INSERT INTO OSalesPerson (SlpCode, SlpName, Commission)
				VALUES(@slpCode, @slpName, @comission)

/*
Carga de representante. Também existe a checagem de de->para
*/
SELECT AgentCode, AgentName FROM SBODemoBR.dbo.OAGP
select id from OSalesRepresentative WHERE AgentName = @slpName
INSERT INTO DPSalesRepresentative (CompanyDB, AgentCode, AgentID)
			VALUES (@dbName, @slpCode, @slpId)
INSERT INTO OSalesRepresentative (AgentCode, AgentName)
				VALUES(@slpCode, @slpName)

/*
Carga de características. Também existe checagem de de->para
*/
SELECT T0.GroupCode, T0.GroupName FROM SBODemoBR.dbo.OCQG T0
select TOP 1 id from OBPCharacteristics T0 WHERE
			T0.id = @sapGroupId
INSERT INTO OBPCharacteristics (id, Name) values (@sapGroupId, @groupName)

/*
Carga de grupo de PN. Também existe checagem de de->para
*/
select GroupCode, GroupName from SBODemoBR.dbo.OCRG
select id from OBusinessPartnerGroup WHERE GroupName = @groupName
SELECT BusinessPartnerGroupId from DPBusinessPartnerGroup where companyDB = @companyDB and GroupCode = @GroupCode
INSERT INTO OBusinessPartnerGroup (GroupCode, GroupName)
				VALUES(@groupCode, @groupName)
INSERT INTO DPBusinessPartnerGroup (CompanyDB, GroupCode, BusinessPartnerGroupID)
			VALUES (@dbName, @groupCode, @groupId)
/*
Setor industrial. Também existe checagem de de->para
*/
INSERT INTO DPIndustrySector (CompanyDB, IndCode, IndustrySectorId)
			VALUES (@dbName, @indCode, @indId)
INSERT INTO OIndustrySector (IndName, IndDesc)
				VALUES(@IndName, @IndDesc)

select IndCode, ISNULL(IndName, 'Indefinido') IndName, COALESCE(IndDesc, IndName, 'Indefinido') IndDesc                   
	from SBODemoBR.dbo.OOND WHERE IndCode = @indCode or @indCode = -1
select id from OIndustrySector WHERE IndName = @indName
SELECT IndustrySectorId from DPIndustrySector where CompanyDB = @companyDB and IndCode = @indCode

/*
Grupo de pagamentos. Também existe checagem de de->para
*/
SELECT T0.GroupNum, PymntGroup  	FROM SBODemoBR.dbo.OCTG T0 where T0.GroupNum = @groupNum or @groupNum = -1
SELECT PaymentID ID FROM DPPaymentGroup WHERE ID = @id AND CompanyDB = @dbName
SELECT TOP 1 ID FROM OPaymentGroup T0 WHERE
				LTRIM(RTRIM(UPPER(T0.Payment))) = LTRIM(RTRIM(UPPER(@payment)))
INSERT INTO OPaymentGroup (Payment) VALUES (@payment)
INSERT INTO OPaymentGroupLines (PaymentGroupId, Installment, InstMonth, InstDays, InstPrcnt)
			SELECT {0} id, ISNULL(T1.IntsNo, 1) IntsNo, ISNULL(T1.InstMonth, 0) InstMonth,
				ISNULL(T1.InstDays, 0) InstDays, ISNULL(T1.InstPrcnt, 100) InstPrcnt  
			FROM {1}.dbo.OCTG T0 LEFT JOIN {1}.dbo.CTG1 T1  ON T0.GroupNum = T1.CTGCode 
			WHERE GroupNum = @id
INSERT INTO DPPaymentGroup (CompanyDB, ID, PaymentId)
				VALUES (@dbName, @id, @paymentId)


/*
Parceiro de negócios
*/
INSERT INTO OBusinessPartner
					([CardCode],[CardName],[CardFName],[CardType],[SalesPersonID]
		,[CreateDate],[BusinessPartnerGroupID],[CNPJ],[IE],[CPF],[RG],[Address]
		,[City],[County],[Country],[Block],[Building],[AddrType],[StreetNo]
	   ,[ZipCode],[State],[MailAddress],[MailCity],[MailCounty],[MailCountry]
		 ,[MailBlock],[MailBuilding],[MailAddrType],[MailStreetNo],[MailZipCode]
		,[MailState],[E_Mail],[Phone1],[Phone2],[Fax],[CntctPrsn], TerritoryId, IndustrySectorId, AgentId, PaymentId
		)
				SELECT T0.CardCode, T0.CardName, T0.CardFName, T0.CardType,
					ISNULL(T1.SalesPersonID, -1), T0.CreateDate, ISNULL(T2.BusinessPartnerGroupID, -1), T3.TaxId0, T3.TaxId1, T3.TaxId4, T3.TaxId5,
					T0.Address, T0.City, T0.County, T0.Country, T0.Block, T0.Building,
					T0.AddrType, T0.StreetNo, T0.ZipCode, T0.State1, T0.MailAddres,
					T0.MailCity, T0.MailCounty, T0.MailCountr, T0.MailBlock, T0.MailBuildi,
					T0.MailAddrTy, T0.MailStrNo, T0.MailZipCod, T0.State2, T0.E_Mail,
					T0.Phone1, T0.Phone2, T0.Fax, T0.CntctPrsn, ISNULL(T4.TerritoryId, -1) TerritoryId, 
                    ISNULL(T5.IndustrySectorId, -1) IndustrySectorId, ISNULL(T7.AgentId, -1), ISNULL(T8.PaymentId, -1) PaymentId
				FROM {0}.dbo.OCRD T0
					LEFT JOIN DPSalesPerson T1 ON T0.SlpCode = T1.SlpCode AND T1.CompanyDB = @dbName 
					LEFT JOIN DPSalesRepresentative T7 ON T0.AgentCode collate {1} = T7.AgentCode AND T7.CompanyDB = @dbName 
					LEFT JOIN DPBusinessPartnerGroup T2 ON T0.GroupCode = T2.GroupCode AND T2.CompanyDB = @dbName 
                    LEFT JOIN DPPaymentGroup T8 ON T0.GroupNum = T8.Id and T8.CompanyDB = @dbName
					LEFT JOIN {0}.dbo.CRD7 T3 ON T3.CardCode = T0.CardCode and T3.AddrType = 'S' and T3.Address = ISNULL(T0.ShipToDef, '')
                    LEFT JOIN DPTerritory T4 ON T4.id = T0.Territory and t4.CompanyDB = @dbName 
            		LEFT JOIN DPIndustrySector T5 ON T5.IndCode = T0.IndustryC and T5.CompanyDB = @dbName 

				WHERE T0.CardCode = @cardCode

INSERT INTO DPBusinessPartner (CompanyDB, cardCode, BusinessPartnerID)
			VALUES (@dbName, @cardCode, @id)


SELECT T0.CardCode, ISNULL(T3.TaxId0, '') TaxId0, ISNULL(T3.TaxId4, '') TaxId4, ISNULL(T0.CardType, '') CardType,
            T0.QryGroup1, T0.QryGroup2, T0.QryGroup3, T0.QryGroup4, T0.QryGroup5, T0.QryGroup6, T0.QryGroup7, T0.QryGroup8, T0.QryGroup9, T0.QryGroup10, T0.QryGroup11, T0.QryGroup12, T0.QryGroup13, T0.QryGroup14, T0.QryGroup15, T0.QryGroup16, T0.QryGroup17, T0.QryGroup18, T0.QryGroup19, T0.QryGroup20, T0.QryGroup21, T0.QryGroup22, T0.QryGroup23, T0.QryGroup24, T0.QryGroup25, T0.QryGroup26, T0.QryGroup27, T0.QryGroup28, T0.QryGroup29, T0.QryGroup30, T0.QryGroup31, T0.QryGroup32, T0.QryGroup33, T0.QryGroup34, T0.QryGroup35, T0.QryGroup36, T0.QryGroup37, T0.QryGroup38, T0.QryGroup39, T0.QryGroup40, T0.QryGroup41, T0.QryGroup42, T0.QryGroup43, T0.QryGroup44, T0.QryGroup45, T0.QryGroup46, T0.QryGroup47, T0.QryGroup48, T0.QryGroup49, T0.QryGroup50, T0.QryGroup51, T0.QryGroup52, T0.QryGroup53, T0.QryGroup54, T0.QryGroup55, T0.QryGroup56, T0.QryGroup57, T0.QryGroup58, T0.QryGroup59, T0.QryGroup60, T0.QryGroup61, T0.QryGroup62, T0.QryGroup63, T0.QryGroup64
			FROM SBODemoBR.dbo.OCRD T0 LEFT JOIN SBODemoBR.dbo.CRD7 T3 ON T3.CardCode = T0.CardCode and T3.AddrType = 'S' and T3.Address = T0.ShipToDef

select BusinessPartnerId from DPBusinessPartner WHERE CardCode = @cardCode and companyDB = @dbName
select TOP 1 id from OBusinessPartner
				WHERE ((ISNULL(CNPJ, '') = ISNULL(@cnpj, '') AND ISNULL(CNPJ, '') <> '' AND ISNULL(CNPJ, '') <> 'EX' AND ISNULL(CNPJ, '') <> '0' )
				OR 
				(ISNULL(CPF, '') = ISNULL(@cpf, '') AND ISNULL(CPF, '') <> '' AND ISNULL(CPF, '') <> 'EX' AND ISNULL(CPF, '') <> '0'))
				and CardType = @cardType

INSERT INTO OBPCharacteristicValues (BusinessPartnerId, BPCharacteristicId) VALUES (@itemId, @id)

/*
Carga de pessoas de contato
*/
insert into OContactPerson (CompanyDB, CntctCode, BusinessPartnerID, Name, Position, Address, Tel1, Tel2, Cellolar, Fax, E_MailL, Pager, Notes1, Notes2, Password,
	BirthDate, Gender, Profession, Title, BirthCity, FirstName, MiddleName, LastName)

select cast('SBODemoBR' as nvarchar(50)) CompanyDB, CntctCode, DPBusinessPartner.BusinessPartnerID, Name, Position, Address, Tel1, Tel2, Cellolar, Fax, E_MailL, Pager, Notes1, Notes2, Password,
	BirthDate, Gender, Profession, Title, BirthCity, FirstName, MiddleName, LastName
from SBODemoBR.dbo.ocpr
	INNER JOIN DPBusinessPartner on DPBusinessPartner.CompanyDB = 'SBODemoBR' and DPBusinessPartner.CardCode = OCPR.CardCode collate SQL_Latin1_General_CP850_CI_AS

where ocpr.cardCode = @cardCode or @cardCode is null


/*
Utilização
*/
SELECT T0.ID, T0.Usage
FROM SBODemoBR.dbo.OUSG T0 where id = @id or @id = -1

select UsageID id from DPUsage WHERE ID = @id and companyDB = @dbName

select TOP 1 id from OUsage T0 WHERE
				LTRIM(RTRIM(UPPER(T0.Usage))) = LTRIM(RTRIM(UPPER(@usage)))

INSERT INTO OUsage (Usage) values (@usage)

INSERT INTO DPUsage (CompanyDB, ID, UsageID)
				VALUES (@dbName, @id, @usageId)


/*
Grupo de itens
*/
SELECT T0.ItmsGrpCod, T0.ItmsGrpNam FROM SBODemoBR.dbo.OITB T0
select ItemGroupId id from DPItemGroup
    			WHERE ItmsGrpCod = @sapGroupId and companyDB = @dbName
select TOP 1 id from OItemGroup T0 WHERE
				LTRIM(RTRIM(UPPER(T0.ItmsGrpNam))) = LTRIM(RTRIM(UPPER(@groupName)))
INSERT INTO OItemGroup (ItmsGrpNam) values (@groupName)
INSERT INTO DPItemGroup (CompanyDB, ItmsGrpCod, ItemGroupId)
				VALUES (@dbName, @sapGroupId, @groupId)

/*
Características de item
*/
SELECT T0.ItmsTypCod, T0.ItmsGrpNam FROM SBODemoBR.dbo.OITG T0
select TOP 1 id from OCharacteristics T0 WHERE T0.id = @sapGroupId
INSERT INTO OCharacteristics (id, Name) values (@sapGroupId, @groupName)

/*
Fabricante
*/
SELECT T0.FirmCode, T0.FirmName  FROM SBODemoBR.dbo.OMRC T0
select ManufacturerId id from DPManufacturers
		WHERE FirmCode = @firmCode and companyDB = @dbName
select TOP 1 id from OManufacturer T0 WHERE
		LTRIM(RTRIM(UPPER(T0.manufacturerName))) = LTRIM(RTRIM(UPPER(@manufacturerName)))

INSERT INTO OManufacturer (manufacturerName) values (@manufacturerName)
INSERT INTO DPManufacturers (CompanyDB, FirmCode, ManufacturerId)
				VALUES (@dbName, @firmCode, @manufacturerId)


/*
Projetos
*/
if exists (select PrjCode, PrjName from SBODemoBR.dbo.OPRJ)      begin        INSERT INTO OProject (PrjCode, PrjName)      select PrjCode, PrjName from SBODemoBR.dbo.OPRJ where not exists (select PrjCode from OProject where OProject.PrjCode = OPRJ.PrjCode collate SQL_Latin1_General_CP850_CI_AS)        end


/*
Centro de Custo
*/
insert into OCostingCode (PrcCode, PrcName, DimCode, GrpCode)  select PrcCode, PrcName, DimCode, GrpCode from SBODemoBR.dbo.OPRC where Locked = 'N'      and not exists (select PrcCode from OCostingCode where OCostingCode.PrcCode = OPRC.PrcCode collate SQL_Latin1_General_CP850_CI_AS)


/*
Ship Types
*/
SELECT T0.TrnspCode, T0.TrnspName, T0.WebSite  FROM SBODemoBR.dbo.OSHP T0
select ShipTypeId id from DPShipType
			WHERE TrnsCode = @trnspCode and companyDB = @dbName
select TOP 1 id from OShipType T0 WHERE
				LTRIM(RTRIM(UPPER(T0.transportName))) = LTRIM(RTRIM(UPPER(@transportName)))
INSERT INTO OShipType (transportName) values (@transportName)
INSERT INTO DPShipType (CompanyDB, TrnsCode, ShipTypeId)
				VALUES (@dbName, @trnspCode, @shipTypeId)


/*
Item
*/
SELECT T0.ItemCode, ISNULL(T0.ItemName, '') ItemName, T0.QryGroup1, T0.QryGroup2, T0.QryGroup3, T0.QryGroup4, T0.QryGroup5, T0.QryGroup6, T0.QryGroup7, T0.QryGroup8, T0.QryGroup9, T0.QryGroup10, T0.QryGroup11, T0.QryGroup12, T0.QryGroup13, T0.QryGroup14, T0.QryGroup15, T0.QryGroup16, T0.QryGroup17, T0.QryGroup18, T0.QryGroup19, T0.QryGroup20, T0.QryGroup21, T0.QryGroup22, T0.QryGroup23, T0.QryGroup24, T0.QryGroup25, T0.QryGroup26, T0.QryGroup27, T0.QryGroup28, T0.QryGroup29, T0.QryGroup30, T0.QryGroup31, T0.QryGroup32, T0.QryGroup33, T0.QryGroup34, T0.QryGroup35, T0.QryGroup36, T0.QryGroup37, T0.QryGroup38, T0.QryGroup39, T0.QryGroup40, T0.QryGroup41, T0.QryGroup42, T0.QryGroup43, T0.QryGroup44, T0.QryGroup45, T0.QryGroup46, T0.QryGroup47, T0.QryGroup48, T0.QryGroup49, T0.QryGroup50, T0.QryGroup51, T0.QryGroup52, T0.QryGroup53, T0.QryGroup54, T0.QryGroup55, T0.QryGroup56, T0.QryGroup57, T0.QryGroup58, T0.QryGroup59, T0.QryGroup60, T0.QryGroup61, T0.QryGroup62, T0.QryGroup63, T0.QryGroup64
			FROM SBODemoBR.dbo.OITM T0
select ItemsId id from DPItems WHERE ItemCode = @itemCode and companyDB = @dbName
select TOP 1 id from OItems
				WHERE ISNULL(ItemName, '') = ISNULL(@itemName, '')
				AND ISNULL(ItemName, '') <> ''
                AND isnull((select count(itemsid) from DPItems where oitems.id = DPItems.ItemsId and
					dpitems.CompanyDB = @company),0) = 0


INSERT INTO OItems
		   ([ItemCode],[ItemName],[InvntItem], [SellItem], [PrchseItem],[AssetItem],[FrgnName],[MinLevel],[MaxLevel]
		   ,[Canceled],[fronzenFrom],[frozenTo],[validFrom],[validTo]
		   ,[validComm],[frozenComm],[UserText],[ItemGroupId],	ManufacturerId, ShipTypeId,
SWeight1, BWeight1, NumInSale, SalPackUn, SalPackMsr, NumInBuy, PurPackMsr,
BuyUnitMsr, SalUnitMsr, NCMCode
)
SELECT T0.ItemCode, T0.ItemName, T0.InvntItem, T0.SellItem, T0.PrchseItem, T0.AssetItem,
    T0.FrgnName, T0.MinLevel, T0.MaxLevel, T0.Canceled,
	T0.frozenFrom, T0.frozenTo, T0.validFrom, T0.validTo, T0.validComm, 
	T0.frozenComm, T0.UserText, T1.ItemGroupId, T2.ManufacturerId, T3.ShipTypeId,
T0.SWeight1, T0.BWeight1, T0.NumInSale, T0.SalPackUn, T0.SalPackMsr, T0.NumInBuy, T0.PurPackMsr,
T0.BuyUnitMsr, T0.SalUnitMsr, ONCM.NcmCode
FROM SBODemoBR.dbo.OITM T0
    LEFT JOIN SBODemoBR.dbo.ONCM on T0.NCMCode = ONCM.AbsEntry
	LEFT JOIN DPItemGroup T1 ON T0.ItmsGrpCod = T1.ItmsGrpCod
				AND T1.CompanyDB = @dbName 
	LEFT JOIN DPManufacturers T2 ON T0.FirmCode = T2.FirmCode
				AND T2.CompanyDB = @dbName
	LEFT JOIN DPShipType T3 ON T0.ShipType = T3.TrnsCode
				AND T3.CompanyDB = @dbName
WHERE T0.ItemCode = @itemCode

INSERT INTO OItemCharacteristic (ItemId, CharacteristicId) VALUES (@itemId, @id)

INSERT INTO DPItems (CompanyDB, ItemCode, ItemsID)
				VALUES (@dbName, @itemCode, @id)


/*
Lotes
*/
SELECT itemCode, DistNumber, expDate, mnfDate, inDate, notes
            FROM SBODemoBR.dbo.OBTN WHERE not exists (select BatchNumberID from DPBatchNumber
            WHERE ItemCode = OBTN.ItemCode collate SQL_Latin1_General_CP850_CI_AS and BatchNumber = OBTN.DistNumber collate SQL_Latin1_General_CP850_CI_AS and CompanyDB = 'SBODemoBR')

INSERT INTO DPBatchNumber (CompanyDB, itemCode, BatchNumber, BatchNumberID)
			SELECT 'SBODemoBR', ItemCode, BatchNumber, id FROM OBatchNumber WHERE 
				NOT EXISTS (select BatchNumberID from DPBatchNumber X0 WHERE X0.BatchNumberID = OBatchNumber.ID)


/*
Conta contábil
*/
INSERT INTO OAccount (AcctCode, AcctName, Finanse, LocManTran, Levels, GroupMask)
SELECT AcctCode, AcctName, Finanse, LocManTran, Levels, GroupMask FROM SBODemoBR.dbo.OACT T0
	WHERE T0.AcctCode collate SQL_Latin1_General_CP850_CI_AS NOT IN (SELECT AcctCode FROM oAccount WHERE OAccount.AcctCode = T0.AcctCode collate SQL_Latin1_General_CP850_CI_AS)


update OAccount 
	SET fatherId = (SELECT ID FROM OAccount X0 INNER JOIN SBODemoBR.dbo.OACT X1 on X1.FatherNum collate SQL_Latin1_General_CP850_CI_AS = X0.AcctCode and X1.AcctCode collate SQL_Latin1_General_CP850_CI_AS = OAccount.AcctCode)
	WHERE (SELECT ID FROM OAccount X0 INNER JOIN SBODemoBR.dbo.OACT X1 on X1.FatherNum collate SQL_Latin1_General_CP850_CI_AS = X0.AcctCode and X1.AcctCode collate SQL_Latin1_General_CP850_CI_AS = OAccount.AcctCode) is not null

/*
Depósitos
*/

INSERT INTO OWarehouse (CompanyDB, WhsCode, WhsName, Location, BPLid) 
SELECT 'SBODemoBR', T0.WhsCode, T0.WhsName, ISNULL(T1.Location, 'Indefinido') Location, isnull(BPLId, -1)	FROM SBODemoBR.dbo.OWHS T0 
            LEFT JOIN SBODemoBR.dbo.OLCT T1 ON T0.Location = T1.Code

/*
Lista de preço
*/

insert into OListPrice (CompanyDB, ListNum, ListName)
    select CAST('SBODemoBR' as nvarchar(50)) CompanyDB, ListNum, ListName from SBODemoBR.dbo.OPLN


insert into OListPriceDetails (CompanyDB, PriceList, ItemsId, Price, Currency)
select CAST('SBODemoBR' as nvarchar(50)) CompanyDB, PriceList, DPItems.ItemsId, ISNULL(Price, 0),
    ISNULL(ITM1.Currency, OADM.MainCurnCy) Currency
from SBODemoBR.dbo.ITM1
	INNER JOIN DPItems on DPItems.ItemCode = ITM1.ItemCode collate SQL_Latin1_General_CP850_CI_AS and DPItems.CompanyDB = 'SBODemoBR',
    SBODemoBR.dbo.OADM

/*
Ordem de serviço
*/
select * into FactServiceOrder from (
select cast('SBODemoBR' as nvarchar(50)) CompanyDB, T0.callID DocEntry, T0.DocNum, T4.BusinessPartnerID, ISNULL(t1.Name, '') contctName, 
	manufSN, internalSN, ISNULL(T3.ItemsId, -1) ItemsId, ISNULL(T2.ItemGroupId, -1) ItemGroupId,
	T0.subject,
	T0.descrption,
	T5.Name StatusName,
	t5.Descriptio StatusDescription,
	T0.priority,
	T0.createDate,
	T0.createTime,
	T0.closeDate, T0.closeTime,
	T0.contractID, T0.cntrctDate,
	T0.origin,
    OUSR.U_Name AssigneeName,   
	ISNULL(OSCO.Name, '-') OriginName,
	ISNULL(OSCO.Descriptio, '-') OriginDesc,
	ISNULL(OSCP.Name, '-') ProblemName,
	ISNULL(OSCP.Descriptio, '-') ProblemDesc,
	ISNULL(OSCT.Name, '-') callTypeName,
	ISNULL(OSCT.Descriptio, '-') callTypeDesc	
	
 from SBODemoBR.dbo.OSCL T0
	INNER JOIN SBODemoBR.dbo.OSCS T5 on T5.statusID = T0.status
	INNER JOIN DPBusinessPartner T4 ON T4.CardCode = T0.customer collate SQL_Latin1_General_CP850_CI_AS and T4.CompanyDB = 'SBODemoBR'
    inner join SBODemoBR.dbo.ousr on ousr.USERID = T0.assignee

	LEFT JOIN SBODemoBR.dbo.OCPR T1 ON T0.contctCode = t1.CntctCode
	LEFT JOIN DPItemGroup T2 on T0.itemGroup = T2.ItmsGrpCod and T2.CompanyDB = 'SBODemoBR'
	LEFT JOIN DPItems T3 ON T3.ItemCode = T0.itemCode collate SQL_Latin1_General_CP850_CI_AS and T3.CompanyDB = 'SBODemoBR'
	LEFT JOIN SBODemoBR.dbo.OSCO on OSCO.originID = T0.origin
	LEFT JOIN SBODemoBR.dbo.OSCP on OSCP.prblmTypID = t0.problemTyp
	LEFT JOIN SBODemoBR.dbo.OSCT on OSCT.callTypeID = t0.callType

WHERE t0.CallId = @callId or @callId = -1
) tmp

/*
Estrutura de produtos
*/
            
WITH ProdTree (lastChild, Father, FatherQty, Child1, Child1Qty, Child2, Child2Qty,
Child3, Child3Qty,Child4, Child4Qty,Child5, Child5Qty,Child6, Child6Qty,Child7, Child7Qty,
Child8, Child8Qty,Child9, Child9Qty,Child10, Child10Qty,
Level) 
AS
(
select T1.Code lastChild, T0.Code Father, T0.Qauntity fatherQty , T1.Code Child, T1.Quantity childQty, 
	case when 1=0 then t1.Code else '' end Child2,
	case when 1=0 then t1.Quantity else 0 end  Child2Qty, 
	case when 1=0 then t1.Code else '' end Child3,
	case when 1=0 then t1.Quantity else 0 end  Child3Qty, 
	case when 1=0 then t1.Code else '' end Child4,
	case when 1=0 then t1.Quantity else 0 end  Child4Qty, 
	case when 1=0 then t1.Code else '' end Child5,
	case when 1=0 then t1.Quantity else 0 end  Child5Qty, 
	case when 1=0 then t1.Code else '' end Child6,
	case when 1=0 then t1.Quantity else 0 end  Child6Qty, 
	case when 1=0 then t1.Code else '' end Child7,
	case when 1=0 then t1.Quantity else 0 end  Child7Qty, 
	case when 1=0 then t1.Code else '' end Child8,
	case when 1=0 then t1.Quantity else 0 end  Child8Qty, 
	case when 1=0 then t1.Code else '' end Child9,
	case when 1=0 then t1.Quantity else 0 end  Child9Qty, 
	case when 1=0 then t1.Code else '' end Child10,
	case when 1=0 then t1.Quantity else 0 end  Child10Qty, 
	1 Level

from SBODemoBR.dbo.OITT T0 inner join 
	SBODemoBR.dbo.ITT1 T1 on t0.Code = t1.Father
	
UNION ALL

select T1.Code lastChild, ProdTree.Father, ProdTree.fatherQty , ProdTree.Child1, ProdTree.child1Qty, 
	CASE WHEN ProdTree.Level = 1 then T1.Code else ProdTree.Child2 end Child2, 
	CASE WHEN ProdTree.Level = 1 then T1.Quantity else ProdTree.Child2Qty end  Child2Qty, 
	CASE WHEN ProdTree.Level = 2 then T1.Code else ProdTree.Child3 end Child3, 
	CASE WHEN ProdTree.Level = 2 then T1.Quantity else ProdTree.Child3Qty end  Child3Qty, 
	CASE WHEN ProdTree.Level = 3 then T1.Code else ProdTree.Child4 end Child4, 
	CASE WHEN ProdTree.Level = 3 then T1.Quantity else ProdTree.Child4Qty end  Child4Qty, 
	CASE WHEN ProdTree.Level = 4 then T1.Code else ProdTree.Child5 end Child5, 
	CASE WHEN ProdTree.Level = 4 then T1.Quantity else ProdTree.Child5Qty end  Child5Qty, 
	CASE WHEN ProdTree.Level = 5 then T1.Code else ProdTree.Child6 end Child6, 
	CASE WHEN ProdTree.Level = 5 then T1.Quantity else ProdTree.Child6Qty end  Child6Qty, 
	CASE WHEN ProdTree.Level = 6 then T1.Code else ProdTree.Child7 end Child7, 
	CASE WHEN ProdTree.Level = 6 then T1.Quantity else ProdTree.Child7Qty end  Child7Qty, 
	CASE WHEN ProdTree.Level = 7 then T1.Code else ProdTree.Child8 end Child8, 
	CASE WHEN ProdTree.Level = 7 then T1.Quantity else ProdTree.Child8Qty end  Child8Qty, 
	CASE WHEN ProdTree.Level = 8 then T1.Code else ProdTree.Child9 end Child9, 
	CASE WHEN ProdTree.Level = 8 then T1.Quantity else ProdTree.Child9Qty end  Child9Qty, 
	CASE WHEN ProdTree.Level = 9 then T1.Code else ProdTree.Child10 end Child10, 
	CASE WHEN ProdTree.Level = 9 then T1.Quantity else ProdTree.Child10Qty end  Child10Qty, 
	ProdTree.Level+1

from SBODemoBR.dbo.OITT T0 inner join 
	SBODemoBR.dbo.ITT1 T1 on t0.Code = t1.Father
	inner join ProdTree on ProdTree.lastChild = T0.Code -- and ProdTree.Level = 1
)



select cast('SBODemoBR' as nvarchar(50)) companyDB, FATHER.ItemsId Father, FatherQty, ISNULL(DPITMCHILD1.ItemsId, -1) child1, Child1Qty, ISNULL(DPITMCHILD2.ItemsId, -1) Child2, Child2Qty,
ISNULL(DPITMCHILD3.ItemsId, -1) Child3, Child3Qty, ISNULL(DPITMCHILD4.ItemsId, -1) Child4, Child4Qty, ISNULL(DPITMCHILD5.ItemsId, -1) Child5, 
Child5Qty, ISNULL(DPITMCHILD6.ItemsId, -1) Child6, Child6Qty, ISNULL(DPITMCHILD7.ItemsId, -1) Child7, Child7Qty,
ISNULL(DPITMCHILD8.ItemsId, -1) Child8, Child8Qty, ISNULL(DPITMCHILD9.ItemsId, -1) Child9, Child9Qty, 
ISNULL(DPITMCHILD10.ItemsId, -1) Child10, Child10Qty

INTO FactProdTree

from ProdTree X0 
	LEFT JOIN DPItems FATHER on X0.Father collate SQL_Latin1_General_CP850_CI_AS = FATHER.ItemCode and FATHER.CompanyDB = 'SBODemoBR'
	LEFT JOIN DPItems DPITMCHILD1 on X0.Child1 collate SQL_Latin1_General_CP850_CI_AS = DPITMCHILD1.ItemCode and DPITMCHILD1.CompanyDB = 'SBODemoBR'
	LEFT JOIN DPItems DPITMCHILD2 on X0.Child2 collate SQL_Latin1_General_CP850_CI_AS = DPITMCHILD2.ItemCode and DPITMCHILD2.CompanyDB = 'SBODemoBR'
	LEFT JOIN DPItems DPITMCHILD3 on X0.Child3 collate SQL_Latin1_General_CP850_CI_AS = DPITMCHILD3.ItemCode and DPITMCHILD3.CompanyDB = 'SBODemoBR'
	LEFT JOIN DPItems DPITMCHILD4 on X0.Child4 collate SQL_Latin1_General_CP850_CI_AS = DPITMCHILD4.ItemCode and DPITMCHILD4.CompanyDB = 'SBODemoBR'
	LEFT JOIN DPItems DPITMCHILD5 on X0.Child5 collate SQL_Latin1_General_CP850_CI_AS = DPITMCHILD5.ItemCode and DPITMCHILD5.CompanyDB = 'SBODemoBR'
	LEFT JOIN DPItems DPITMCHILD6 on X0.Child6 collate SQL_Latin1_General_CP850_CI_AS = DPITMCHILD6.ItemCode and DPITMCHILD6.CompanyDB = 'SBODemoBR'
	LEFT JOIN DPItems DPITMCHILD7 on X0.Child7 collate SQL_Latin1_General_CP850_CI_AS = DPITMCHILD7.ItemCode and DPITMCHILD7.CompanyDB = 'SBODemoBR'
	LEFT JOIN DPItems DPITMCHILD8 on X0.Child8 collate SQL_Latin1_General_CP850_CI_AS = DPITMCHILD8.ItemCode and DPITMCHILD8.CompanyDB = 'SBODemoBR'
	LEFT JOIN DPItems DPITMCHILD9 on X0.Child9 collate SQL_Latin1_General_CP850_CI_AS = DPITMCHILD8.ItemCode and DPITMCHILD9.CompanyDB = 'SBODemoBR'
	LEFT JOIN DPItems DPITMCHILD10 on X0.Child10 collate SQL_Latin1_General_CP850_CI_AS = DPITMCHILD10.ItemCode and DPITMCHILD10.CompanyDB = 'SBODemoBR'


where 
X0.Level = (select MAX(level) from ProdTree where Father = X0.Father and Child1 = X0.Child1)

/*
Ordem de produção
*/

INSERT INTO FactProdOrderHeader

select 
	cast('SBODemoBR' as nvarchar(50)) companyDB, 
	DocEntry, DocNum, DPItems.ItemsId, Status, Type, 
	PlannedQty, CmpltQty, RjctQty, isnull(OriginNum, -1), isnull(OriginAbs, -1), isnull(DPBusinessPartner.businessPartnerId, -1), OWarehouse.id warehouseId, isnull(Uom, ''), 
	isnull(TransId, -1), CreateDate, UpdateDate, PostDate, DueDate, CloseDate, RlsDate,
	isnull(OcrCode.id, -1) OcrCode, isnull(OcrCode2.id, -1) OcrCode2, 
	isnull(OcrCode3.id, -1) OcrCode3, isnull(OcrCode4.id, -1) OcrCode4, isnull(OcrCode5.id, -1) OcrCode5,
	ISNULL(oproject.id, -1) projectid
 from SBODemoBR.dbo.OWOR
	INNER JOIN DPItems on DPItems.ItemCode = OWOR.ItemCode collate SQL_Latin1_General_CP850_CI_AS and DPItems.CompanyDB = 'SBODemoBR'
    INNER JOIN OWarehouse on OWarehouse.WhsCode = OWOR.Warehouse collate SQL_Latin1_General_CP850_CI_AS and OWarehouse.CompanyDB = 'SBODemoBR'
    LEFT JOIN DPBusinessPartner on DPBusinessPartner.CardCode = OWOR.CardCode collate SQL_Latin1_General_CP850_CI_AS and DPBusinessPartner.companyDB = 'SBODemoBR'
	LEFT JOIN OCostingCode OCRCODE ON OWOR.OcrCode collate SQL_Latin1_General_CP850_CI_AS = OCRCODE.PrcCode and OCRCODE.DimCode = 1
	LEFT JOIN OCostingCode OCRCODE2 ON OWOR.OcrCode2 collate SQL_Latin1_General_CP850_CI_AS = OCRCODE.PrcCode and OCRCODE.DimCode = 2
	LEFT JOIN OCostingCode OCRCODE3 ON OWOR.OcrCode3 collate SQL_Latin1_General_CP850_CI_AS = OCRCODE.PrcCode and OCRCODE.DimCode = 3
	LEFT JOIN OCostingCode OCRCODE4 ON OWOR.OcrCode4 collate SQL_Latin1_General_CP850_CI_AS = OCRCODE.PrcCode and OCRCODE.DimCode = 4
	LEFT JOIN OCostingCode OCRCODE5 ON OWOR.OcrCode5 collate SQL_Latin1_General_CP850_CI_AS = OCRCODE.PrcCode and OCRCODE.DimCode = 5
	LEFT JOIN OProject on OProject.PrjCode = OWOR.Project collate SQL_Latin1_General_CP850_CI_AS
where OWOR.DocEntry = @docEntry or @docEntry = -1


INSERT INTO FactProdOrderLines

select 	cast('SBODemoBR' as nvarchar(50)) companyDB, DocEntry, LineNum,
	DPItems.ItemsId, BaseQty, PlannedQty, IssuedQty, IssueType, OWarehouse.id WarehouseId,
	CompTotal, isnull(OcrCode.id, -1) OcrCode, isnull(OcrCode2.id, -1) OcrCode2, 
	isnull(OcrCode3.id, -1) OcrCode3, isnull(OcrCode4.id, -1) OcrCode4, isnull(OcrCode5.id, -1) OcrCode5,
	ISNULL(oproject.id, -1) projectid
 from SBODemoBR.dbo.WOR1
 INNER JOIN DPItems on DPItems.ItemCode = WOR1.ItemCode collate SQL_Latin1_General_CP850_CI_AS and DPItems.CompanyDB = 'SBODemoBR'
 INNER JOIN OWarehouse on OWarehouse.WhsCode = WOR1.Warehouse collate SQL_Latin1_General_CP850_CI_AS and OWarehouse.CompanyDB = 'SBODemoBR'
 LEFT JOIN OCostingCode OCRCODE ON WOR1.OcrCode collate SQL_Latin1_General_CP850_CI_AS = OCRCODE.PrcCode and OCRCODE.DimCode = 1
 LEFT JOIN OCostingCode OCRCODE2 ON WOR1.OcrCode2 collate SQL_Latin1_General_CP850_CI_AS = OCRCODE.PrcCode and OCRCODE.DimCode = 2
 LEFT JOIN OCostingCode OCRCODE3 ON WOR1.OcrCode3 collate SQL_Latin1_General_CP850_CI_AS = OCRCODE.PrcCode and OCRCODE.DimCode = 3
 LEFT JOIN OCostingCode OCRCODE4 ON WOR1.OcrCode4 collate SQL_Latin1_General_CP850_CI_AS = OCRCODE.PrcCode and OCRCODE.DimCode = 4
 LEFT JOIN OCostingCode OCRCODE5 ON WOR1.OcrCode5 collate SQL_Latin1_General_CP850_CI_AS = OCRCODE.PrcCode and OCRCODE.DimCode = 5
 LEFT JOIN OProject on OProject.PrjCode = WOR1.Project collate SQL_Latin1_General_CP850_CI_AS
where WOR1.DocEntry = @docEntry or @docEntry = -1

/*
Despesas adicionais
*/
-- informações de impostos

SELECT T2.[Code], T0.[DocEntry], T0.[ExpnsCode], AVG(ISNULL(U_Base, 0.0)) Base, AVG(ISNULL(U_Isento, 0.0)) Isento, 
		 AVG(ISNULL(U_Outros, 0.0)) Outros, SUM(ISNULL(T0.TaxSum, 0)) TaxSum, SUM(case when ISNULL(T0.BaseSum, 0) > 0 then T0.BaseSum
		 when ISNULL((T0.TaxRate/100), 0) <> 0 then T0.TaxSum/(T0.TaxRate/100) 
			                     else 0 end) BaseSum,
		 SUM(ISNULL(T0.[U_OthAmtL], 0)) OutrosSum, SUM(ISNULL(T0.[U_ExcAmtL], 0)) IsentosSum
		 FROM SBODemoBR.dbo.INV4  T0 INNER JOIN SBODemoBR.dbo.OSTT T1 ON T0.staType = T1.AbsId INNER JOIN SBODemoBR.dbo.ONFT T2 ON T1.NfTaxId = T2.AbsId AND T0.relateType = 13
	and T0.ExpnsCode <> -1
and (T0.DocEntry = @docEntry or @docEntry = -1)
	GROUP BY T2.[Code], T0.[DocEntry], T0.[ExpnsCode]


SELECT T2.[Code], T0.[DocEntry], T0.LineNum, T0.[ExpnsCode], AVG(ISNULL(U_Base, 0.0)) Base, AVG(ISNULL(U_Isento, 0.0)) Isento, 
		 AVG(ISNULL(U_Outros, 0.0)) Outros, sum(TaxSum) TaxSum, SUM(ISNULL(T0.BaseSum, 0)) BaseSum, 
		 SUM(ISNULL(T0.[U_OthAmtL], 0)) OutrosSum, SUM(ISNULL(T0.[U_ExcAmtL], 0)) IsentosSum
		 FROM SBODemoBR.dbo.INV4  T0 INNER JOIN SBODemoBR.dbo.OSTT T1 ON T0.staType = T1.AbsId INNER JOIN SBODemoBR.dbo.ONFT T2 ON T1.NfTaxId = T2.AbsId AND T0.relateType = 2
	and T0.ExpnsCode <> -1
and (T0.DocEntry = @docEntry or @docEntry = -1)
	GROUP BY T2.[Code], T0.[DocEntry], T0.LineNum, T0.[ExpnsCode]


SELECT ISNULL(T0.BPLId, -1) BPLId, T0.DocEntry, T12.LineNum, T2.ExpnsName, T2.ExpnsCode,
					T1.DistrbMthd,
        CASE WHEN T12.Quantity = 0 then 0 else (SELECT T12.Quantity/(SELECT SUM(X0.Quantity) FROM SBODemoBR.dbo.INV1 X0 WHERE X0.DocEntry = T0.DocEntry)) end Quantity,
        CASE WHEN T12.Volume = 0 then 0 else (SELECT T12.Volume/(SELECT SUM(X0.Volume) FROM SBODemoBR.dbo.INV1 X0 WHERE X0.DocEntry = T0.DocEntry)) end Volume,
		CASE WHEN T12.Weight1 = 0 then 0 else (SELECT T12.Weight1/(SELECT SUM(X0.Weight1) FROM SBODemoBR.dbo.INV1 X0 WHERE X0.DocEntry = T0.DocEntry)) end Weight,
        (SELECT COUNT(X0.DocEntry) FROM SBODemoBR.dbo.INV1 X0 WHERE X0.DocEntry = T0.DocEntry) Count,
        CASE WHEN T12.LineTotal = 0 then 0 else (SELECT T12.LineTotal/(SELECT SUM(X0.LineTotal) FROM SBODemoBR.dbo.INV1 X0 WHERE X0.DocEntry = T0.DocEntry)) end Total,
				T1.LineTotal
        FROM SBODemoBR.dbo.OINV T0 INNER JOIN SBODemoBR.dbo.INV3 T1 ON T0.DocEntry = T1.DocEntry 
				 INNER JOIN SBODemoBR.dbo.INV1 T12 ON T0.DocEntry = T12.DocEntry 
				 INNER JOIN SBODemoBR.dbo.OEXD T2 ON T1.ExpnsCode = T2.ExpnsCode 
				 INNER JOIN SBODemoBR.dbo.INV12 T6 ON T6.DocEntry = T0.DocEntry 
				 INNER JOIN SBODemoBR.dbo.OCTG T8 ON T8.GroupNum = T0.GroupNum 
				  LEFT JOIN SBODemoBR.dbo.OCNT T7 ON T6.CountyS = T7.AbsId AND ISNUMERIC(T6.County)<>0 
        WHERE (T0.DocEntry = @docEntry or @docEntry = -1)
UNION ALL

SELECT ISNULL(T0.BPLId, -1) BPLId, T0.DocEntry, T12.LineNum, T2.ExpnsName, T2.ExpnsCode,
			'L' DistrbMthd,
        CASE WHEN T12.Quantity = 0 then 0 else (SELECT T12.Quantity/(SELECT SUM(X0.Quantity) FROM SBODemoBR.dbo.INV1 X0 WHERE X0.DocEntry = T0.DocEntry)) end Quantity,
        CASE WHEN T12.Volume = 0 then 0 else (SELECT T12.Volume/(SELECT SUM(X0.Volume) FROM SBODemoBR.dbo.INV1 X0 WHERE X0.DocEntry = T0.DocEntry)) end Volume,
		CASE WHEN T12.Weight1 = 0 then 0 else (SELECT T12.Weight1/(SELECT SUM(X0.Weight1) FROM SBODemoBR.dbo.INV1 X0 WHERE X0.DocEntry = T0.DocEntry)) end Weight,
        (SELECT COUNT(X0.DocEntry) FROM SBODemoBR.dbo.INV1 X0 WHERE X0.DocEntry = T0.DocEntry) Count,
        CASE WHEN T12.LineTotal = 0 then 0 else (SELECT T12.LineTotal/(SELECT SUM(X0.LineTotal) FROM SBODemoBR.dbo.INV1 X0 WHERE X0.DocEntry = T0.DocEntry)) end Total,
				T1.LineTotal
        FROM SBODemoBR.dbo.OINV T0 INNER JOIN SBODemoBR.dbo.INV2 T1 ON T0.DocEntry = T1.DocEntry 
				 INNER JOIN SBODemoBR.dbo.INV1 T12 ON T0.DocEntry = T12.DocEntry and T1.LineNum = T12.LineNum
				 INNER JOIN SBODemoBR.dbo.OEXD T2 ON T1.ExpnsCode = T2.ExpnsCode 
				 INNER JOIN SBODemoBR.dbo.INV12 T6 ON T6.DocEntry = T0.DocEntry 
				 INNER JOIN SBODemoBR.dbo.OCTG T8 ON T8.GroupNum = T0.GroupNum 
				  LEFT JOIN SBODemoBR.dbo.OCNT T7 ON T6.CountyS = T7.AbsId AND ISNUMERIC(T6.County)<>0 
        WHERE (T0.DocEntry = @docEntry or @docEntry = -1)

-- Insert com base nas consultas acimas + info das linhas. Lógica dos rateios está na DLL.
INSERT INTO [FactPurchaseSalesAditionalExpenses]
           (BPLId, [CompanyDB], [DocEntry], [LineNum] ,[InvType] ,[ExpnsName] ,[ExpnsCode] ,[Apportionment] ,[LineTotal] ,[PISBase] ,[PisBaseValue], [PISValor] ,[COFINSBase] ,[CofinsBaseValue], [COFINSValor]
           ,[INSSBase] , [INSSBaseValue],  [INSSValor] ,[ISSBase] ,[ISSBaseValue] ,[ISSValor] ,[ICMSBase] , [ICMSBaseValue], [ICMSIsento] ,[ICMSOutros] ,[ICMSValor] ,[ICMSValorIsento] ,[ICMSValorOutros] ,[IPIBase] , [IPIBaseValue], [IPIIsento]
           ,[IPIOutros] ,[IPIValor] ,[IPIValorIsento] ,[IPIValorOutros] ,[ICMSSTBase] , [ICMSSTBaseValue], [ICMSSTIsento] ,[ICMSSTOutros] ,[ICMSSTValor] ,[ICMSSTValorIsento]
           ,[ICMSSTValorOutros] ,[ICMSDifBase] ,[ICMSDifBaseValue], [ICMSDifIsento],[ICMSDifOutros] ,[ICMSDifValor] ,[ICMSDifValorIsento] ,[ICMSDifValorOutros], TaxNotInPrice)
     VALUES
        (@BPLId, @CompanyDB ,@DocEntry, @LineNum, @InvType, @ExpnsName, @ExpnsCode, @Apportionment, @LineTotal, 
            @PISBase, @PISBaseValor, @PISValor, @COFINSBase, @COFINSBaseValor, @COFINSValor, 
            @INSSBase, @INSSBaseValor, @INSSValor, @ISSBase, @ISSBaseValor, @ISSValor, @ICMSBase, @ICMSBaseValor, @ICMSIsento, @ICMSOutros, @ICMSValor, @ICMSValorIsento, @ICMSValorOutros, @IPIBase,@IPIBaseValor, 
            @IPIIsento, @IPIOutros, @IPIValor, @IPIValorIsento, @IPIValorOutros, @ICMSSTBase,@ICMSSTBaseValor, @ICMSSTIsento, @ICMSSTOutros, @ICMSSTValor, @ICMSSTValorIsento,
            @ICMSSTValorOutros, @ICMSDifBase, @ICMSDifBaseValor, @ICMSDifIsento, @ICMSDifOutros, @ICMSDifValor, @ICMSDifValorIsento, @ICMSDifValorOutros, @TaxNotInPrice) 

/*
Header de documento de marketing. É um select para cada tipo de documento. 

*/
SELECT * INTO FactDocumentHeader FROM ( SELECT cast('SBODemoBR' as nvarchar(50)) CompanyDB, ISNULL(T0.BPLId, -1) BPLId, 
			T0.DocEntry, T0.DocNum, T0.TransId, 13 InvType, ISNULL(T3.BusinessPartnerId, -1) BusinessPartnerId, T0.TaxDate, T0.DocDate, T0.DocDueDate, T0.CancelDate, T0.UpdateDate, ISNULL(OHEM.userId, -1) OwnerCode,
             T6.TaxId0 CNPJ, T6.TaxId1 IE, T6.TaxId4 CPF,
			T0.Canceled, T0.DocStatus, ISNULL(T0.NumAtCard, '') NumAtCard, T8.PaymentId, T0.Serial, cast(ISNULL(T0.Model, -1) as smallint) ModelId, T0.CardCode, T0.CardName, 
			T0.DiscPrcnt, T0.DocTotal, T0.DpmAmnt DownPayment,
			T4.SalesPersonId, ISNULL(T5.AgentId, -1) AgentId, T6.Vehicle, 
					T7.Name CountyS, T6.StreetS, T6.BlockS, T6.BuildingS, T6.CityS, T6.ZipCodeS, T6.AddrTypeS, T6.StreetNoS, T6.StateS, T6.NetWeight, T6.Incoterms, ISNULL(OAccount.id, -1) PayAccountId
            
		FROM SBODemoBR.dbo.OINV T0 
		        LEFT JOIN DPBusinessPartner T3 ON T0.CardCode collate SQL_Latin1_General_CP850_CI_AS = T3.CardCode 
					AND T3.CompanyDB = 'SBODemoBR'
		        LEFT JOIN DPSalesPerson T4 ON T0.SlpCode = T4.SlpCode 
					AND T4.CompanyDB = 'SBODemoBR'
		        LEFT JOIN DPSalesRepresentative T5 ON T0.AgentCode collate SQL_Latin1_General_CP850_CI_AS = T5.AgentCode
					AND T5.CompanyDB = 'SBODemoBR'
				 LEFT JOIN DPPaymentGroup T8 ON T8.ID = T0.GroupNum  and T8.CompanyDB = 'SBODemoBR'
				  LEFT JOIN SBODemoBR.dbo.INV12 T6 ON T6.DocEntry = T0.DocEntry AND ISNUMERIC(T6.CountyS)<>0
				  LEFT JOIN SBODemoBR.dbo.OCNT T7 ON T6.CountyS = T7.AbsId  
                  LEFT JOIN SBODemoBR.dbo.OHEM ON OHEM.EmpId = T0.OwnerCode
                  LEFT JOIN SBODemoBR.dbo.OPYM on OPYM.PayMethCod = T0.PeyMethod collate SQL_Latin1_General_CP850_CI_AS
                  LEFT JOIN OAccount on OAccount.AcctCode = OPYM.GLAccount collate SQL_Latin1_General_CP850_CI_AS
    WHERE (T0.DocEntry = @docEntry or @docEntry = -1)
 ) TEMP 
 
 
 /*
 Linhas de documentos. Um SQL desse para cada tipo de doc de marketing.
 */
 SELECT cast('SBODemoBR' as nvarchar(50)) CompanyDB, ISNULL(T0.BPLId, -1) BPLId,
			T0.DocEntry, T1.LineNum, 14 InvType, T1.ShipDate, T1.CFOPCode, 
             NULL ReverseSeqCode, NULL ReverseModel,	
			T1.WhsCode, T2.ItemsId, T1.LineStatus, T1.UnitMsr UM, T1.Quantity, T1.NumPerMsr NumPerUM,  T1.unitMsr2  BaseUM, ISNULL(T5.UsageId, -1) UsageId, T1.PostTax, 
            T1.Currency, T1.Commission, 
			ISNULL(OAccount.Id, -1) AccountId, 
			ISNULL(OCRCODE.id, -1) OcrCode, ISNULL(OCRCODE2.id, -2) OcrCode2, ISNULL(OCRCODE3.id, -3) OcrCode3, 
			ISNULL(OCRCODE4.id, -4) OcrCode4, ISNULL(OCRCODE5.id, -5) OcrCode5,
			ISNULL(COGSOCRCODE.id, -1) CogsOcrCod, ISNULL(COGSOCRCODE2.id, -2) CogsOcrCo2, ISNULL(COGSOCRCODE3.id, -3) CogsOcrCo3,
            ISNULL(COGSOCRCODE4.id, -4) CogsOcrCo4, ISNULL(COGSOCRCODE5.id, -5) CogsOcrCo5,
			COALESCE(PROJECT.id, -1) Project, T1.TaxOnly,
            case when (SELECT SUM(LineTotal) FROM SBODemoBR.dbo.RIN1 X0 WHERE X0.DocEntry = T0.DocEntry) <> 0
                then T1.LineTotal/(SELECT SUM(LineTotal) FROM SBODemoBR.dbo.RIN1 X0 WHERE X0.DocEntry = T0.DocEntry) 
                when (SELECT SUM(Quantity) FROM SBODemoBR.dbo.RIN1 X0 WHERE X0.DocEntry = T0.DocEntry) <> 0
                then T1.Quantity/(SELECT SUM(Quantity) FROM SBODemoBR.dbo.RIN1 X0 WHERE X0.DocEntry = T0.DocEntry)
                else 0 end Apportionment
        FROM SBODemoBR.dbo.ORIN T0 INNER JOIN SBODemoBR.dbo.RIN1 T1 ON T0.DocEntry = T1.DocEntry 
				  INNER JOIN DPItems T2 ON T1.ItemCode collate SQL_Latin1_General_CP850_CI_AS = T2.ItemCode 
					AND T2.CompanyDB = 'SBODemoBR'
				INNER JOIN OAccount ON OAccount.AcctCode = T1.AcctCode collate SQL_Latin1_General_CP850_CI_AS

				  LEFT JOIN DPUsage T5 ON T1.Usage = T5.ID 
					AND T5.CompanyDB = 'SBODemoBR'
                  LEFT JOIN OCostingCode OCRCODE ON ISNULL(T1.OcrCode, (select top 1 T3.ProfitCode from SBODemoBR.dbo.JDT1 T3 where T3.TransId = T0.TransId and T3.Account = t1.AcctCode and t3.Project = t1.Project)) collate SQL_Latin1_General_CP850_CI_AS = OCRCODE.PrcCode and OCRCODE.DimCode = 1
                  LEFT JOIN OCostingCode OCRCODE2 ON ISNULL(T1.OcrCode2, (select top 1 T3.OcrCode2 from SBODemoBR.dbo.JDT1 T3 where T3.TransId = T0.TransId and T3.Account = t1.AcctCode and t3.Project = t1.Project)) collate SQL_Latin1_General_CP850_CI_AS = OCRCODE2.PrcCode and OCRCODE2.DimCode = 2
                  LEFT JOIN OCostingCode OCRCODE3 ON ISNULL(T1.OcrCode3, (select top 1 T3.OcrCode3 from SBODemoBR.dbo.JDT1 T3 where T3.TransId = T0.TransId and T3.Account = t1.AcctCode and t3.Project = t1.Project))  collate SQL_Latin1_General_CP850_CI_AS = OCRCODE3.PrcCode and OCRCODE3.DimCode = 3
                  LEFT JOIN OCostingCode OCRCODE4 ON ISNULL(T1.OcrCode4, (select top 1 T3.OcrCode4 from SBODemoBR.dbo.JDT1 T3 where T3.TransId = T0.TransId and T3.Account = t1.AcctCode and t3.Project = t1.Project)) collate SQL_Latin1_General_CP850_CI_AS = OCRCODE4.PrcCode and OCRCODE4.DimCode = 4
                  LEFT JOIN OCostingCode OCRCODE5 ON ISNULL(T1.OcrCode5, (select top 1 T3.OcrCode5 from SBODemoBR.dbo.JDT1 T3 where T3.TransId = T0.TransId and T3.Account = t1.AcctCode and t3.Project = t1.Project)) collate SQL_Latin1_General_CP850_CI_AS = OCRCODE5.PrcCode and OCRCODE5.DimCode = 5

                  LEFT JOIN OCostingCode COGSOCRCODE ON T1.CogsOcrCod collate SQL_Latin1_General_CP850_CI_AS = COGSOCRCODE.PrcCode and COGSOCRCODE.DimCode = 1
                  LEFT JOIN OCostingCode COGSOCRCODE2 ON T1.CogsOcrCod collate SQL_Latin1_General_CP850_CI_AS = COGSOCRCODE2.PrcCode and COGSOCRCODE2.DimCode = 2
                  LEFT JOIN OCostingCode COGSOCRCODE3 ON T1.CogsOcrCod collate SQL_Latin1_General_CP850_CI_AS = COGSOCRCODE3.PrcCode and COGSOCRCODE3.DimCode = 3
                  LEFT JOIN OCostingCode COGSOCRCODE4 ON T1.CogsOcrCod collate SQL_Latin1_General_CP850_CI_AS = COGSOCRCODE4.PrcCode and COGSOCRCODE4.DimCode = 4
                  LEFT JOIN OCostingCode COGSOCRCODE5 ON T1.CogsOcrCod collate SQL_Latin1_General_CP850_CI_AS = COGSOCRCODE5.PrcCode and COGSOCRCODE5.DimCode = 5

                  LEFT JOIN OProject PROJECT ON T1.Project collate SQL_Latin1_General_CP850_CI_AS = PROJECT.PrjCode


                 
WHERE (T0.DocEntry = @docEntry or @docEntry = -1)


/*
Fatos de doc de marketing. Informações auxiliares (hash temporárias na DLL)
*/
SELECT cast('SBODemoBR' as nvarchar(50)) companyDB, 13 InvType,
		T0.[AbsEntry] DocEntry, T0.Doc1LineNo LineNum, isnull(T2.[WTType], 'Other') WTType,
	 AVG(T0.Rate) Rate, SUM(WTAmnt) WTAmnt
		FROM SBODemoBR.dbo.INV5  T0 INNER JOIN SBODemoBR.dbo.OWHT T1 ON T0.WTCode = T1.WTCode
			LEFT JOIN SBODemoBR.dbo.OWTT T2 ON T1.WTTypeId = T2.WTTypeID AND T0.WtLineType = 'D' 
        WHERE T0.AbsEntry = @docEntry or @docEntry = -1
		GROUP BY T0.[AbsEntry], T0.Doc1LineNo, T2.[WTType]

SELECT cast('SBODemoBR' as nvarchar(50)) companyDB, 13 InvType,
		T0.[AbsEntry] DocEntry, T0.Doc1LineNo LineNum,  T1.category, SUM(WTAmnt) WTAmnt
		FROM SBODemoBR.dbo.INV5  T0 INNER JOIN SBODemoBR.dbo.OWHT T1 ON T0.WTCode = T1.WTCode
        WHERE T0.AbsEntry = @docEntry or @docEntry = -1
		GROUP BY T0.[AbsEntry], T0.Doc1LineNo, t1.Category

SELECT cast('SBODemoBR' as nvarchar(50)) companyDB, 13 InvType, T2.[Code], T0.[DocEntry],
                T0.[LineNum], AVG(ISNULL(U_Base, 0.0)) Base, AVG(ISNULL(U_Isento, 0.0)) Isento, 
			AVG(ISNULL(U_Outros, 0.0)) Outros, SUM(ISNULL(T0.TaxSum, 0)) TaxSum, SUM(case when ISNULL(T0.BaseSum, 0) > 0 then T0.BaseSum
			                     when ISNULL((T0.TaxRate/100), 0) <> 0 then isnull(T0.TaxSum,0)/(T0.TaxRate/100) 
			                     else 0 end) BaseSum, 
			SUM(ISNULL(T0.[U_OthAmtL], 0)) OutrosSum, SUM(ISNULL(T0.[U_ExcAmtL], 0)) IsentosSum
	
		FROM SBODemoBR.dbo.INV4  T0 INNER JOIN SBODemoBR.dbo.OSTT T1 ON T0.staType = T1.AbsId
			INNER JOIN SBODemoBR.dbo.ONFT T2 ON T1.NfTaxId = T2.AbsId AND (T0.relateType = 1
	or T0.ExpnsCode = -1)
        WHERE T0.DocEntry = @docEntry or @docEntry = -1
		GROUP BY T2.[Code], T0.[DocEntry], T0.[LineNum]

/* fatos de doc, informacoes para inserção */
select ROW_NUMBER() over (Order By DocEntry) as lineId, * INTO #tempTB from (SELECT 
        ISNULL(T0.BPLId, -1) BPLId, T0.DocEntry, ISNULL(T1.ShipDate, T0.DocDueDate) DueDate, T0.DocNum, T1.LineNum, ISNULL(T0.TransId, -1) TransId, 
        ISNULL(T1.NumPerMsr, 1) NumPerMsr,
        T1.Weight1 LineWeight, 
		T1.Quantity SalesQuantity, T1.LineTotal LineTotal, T1.Price, isnull(T1.DiscPrcnt, 0) LineDiscount, ISNULL(T0.DiscPrcnt, 0) DiscPrcnt, 
		ISNULL(T1.UnitMsr, '') UM, ISNULL(T1.NumPerMsr, 1) NumPerUM, ISNULL( T1.unitMsr2 ,'') BaseUM, ISNULL(T14.BatchNumberID, -1) BatchNumberID,

        case when ABS(ISNULL(T11.DocQty, T1.Quantity)) > ABS(T1.Quantity) then T1.Quantity/ABS(T11.DocQty) ELSE  1 END 
        *ISNULL(T11.DocQty, T1.Quantity) DocQty, 
        case when ABS(ISNULL(T11.DocQty, T1.Quantity)) > ABS(T1.Quantity) then T1.Quantity/ABS(t11.DocQty) ELSE  1 end
        *ISNULL(T11.Quantity, T1.Quantity) BatchQuantity
			
	FROM SBODemoBR.dbo.OINV T0 INNER JOIN SBODemoBR.dbo.INV1 T1 ON T0.DocEntry = T1.DocEntry 
        
				LEFT JOIN 
            (select X13.ItemCode, X11.DocEntry, X11.DocLine, X11.DocType, X13.DistNumber, X12.Quantity, X11.DocQty FROM 
					SBODemoBR.dbo.OITL X11  
								INNER JOIN SBODemoBR.dbo.ITL1 X12 ON X12.LogEntry = X11.LogEntry 
							INNER JOIN SBODemoBR.dbo.OBTN X13 ON X13.SysNumber = X12.SysNumber AND X13.ItemCode = X11.ItemCode 
					where X11.ManagedBy = '10000044' and ABS(X12.Quantity) > 0) T11 ON (CASE WHEN T1.BaseType in (15, 20) THEN T1.BaseEntry ELSE T1.DocEntry END) = T11.DocEntry
                    and (CASE WHEN T1.BaseType in (15, 20) THEN T1.BaseLine ELSE T1.LineNum END) = T11.DocLine
                    and (CASE WHEN T1.BaseType in (15, 20) THEN T1.BaseType ELSE 13 END) = T11.DocType 
				LEFT JOIN DPBatchNumber T14 ON T14.ItemCode = T11.ItemCode collate SQL_Latin1_General_CP850_CI_AS and ISNULL(T14.BatchNumber, 'Indefinido') = T11.DistNumber collate SQL_Latin1_General_CP850_CI_AS and T14.CompanyDB  = 'SBODemoBR'
    WHERE T0.DocEntry = @docEntry or @docEntry = -1
) TMP


SELECT cast('SBODemoBR' as nvarchar(50)) companyDB, 13 PCHType, T0.[DocEntry],
        T0.[LineNum], SUM(ISNULL(T0.TaxSum, 0)) TaxSum
	
FROM SBODemoBR.dbo.INV4  T0 INNER JOIN SBODemoBR.dbo.OSTT T1 ON T0.staType = T1.AbsId
	INNER JOIN SBODemoBR.dbo.ONFT T2 ON T1.NfTaxId = T2.AbsId AND (T0.relateType = 1
or T0.ExpnsCode = -1)
WHERE T0.DocEntry = @docEntry and T0.LineNum = @lineNum and T0.TaxInPrice = 'N'
GROUP BY T0.[DocEntry], T0.[LineNum]

select InstlmntId, DueDate, InsTotal, T0.InsTotal/T1.DocTotal InstPrcnt
from SBODemoBR.dbo.INV6 T0
INNER JOIN SBODemoBR.dbo.OINV T1 on T0.DocEntry = T1.DocEntry
where ABS(T1.DocTotal) > 0 and T0.DocEntry = @docEntry

-- Neste ponto, com base nos SQL acima, é feito os rateios em memória e em seguida o seguinte INSERT:

INSERT INTO [FactPurchaseSales]
            ([CompanyDB], [BPLId], [DocEntry], [DocNum], [LineNum], [Installment], [DocDueDate], [TransId], [InvType], [UnitWeight], [LineWeight], [SalesQuantity], [Quantity]
            ,[LineTotal], NetLineTotal, [Price], [LineDiscount], [DiscPrcnt], [UM], [NumPerUM], [BaseUM]
            ,[BatchNumberID], 
            [COFINSBase], [COFINSBaseValue], [COFINSIsento], [COFINSOutros], [COFINSValor], [COFINSValorIsento], [COFINSValorOutros], [COFINSSTBase], [COFINSSTBaseValue], [COFINSSTIsento], [COFINSSTOutros], [COFINSSTValor], [COFINSSTValorIsento], [COFINSSTValorOutros], [ICMSBase], [ICMSBaseValue], [ICMSIsento], [ICMSOutros], [ICMSValor], [ICMSValorIsento], [ICMSValorOutros], [ICMSDifBase], [ICMSDifBaseValue], [ICMSDifIsento], [ICMSDifOutros], [ICMSDifValor], [ICMSDifValorIsento], [ICMSDifValorOutros], [ICMSSTBase], [ICMSSTBaseValue], [ICMSSTIsento], [ICMSSTOutros], [ICMSSTValor], [ICMSSTValorIsento], [ICMSSTValorOutros], [IIBase], [IIBaseValue], [IIIsento], [IIOutros], [IIValor], [IIValorIsento], [IIValorOutros], [INSSBase], [INSSBaseValue], [INSSIsento], [INSSOutros], [INSSValor], [INSSValorIsento], [INSSValorOutros], [IPIBase], [IPIBaseValue], [IPIIsento], [IPIOutros], [IPIValor], [IPIValorIsento], [IPIValorOutros], [ISSBase], [ISSBaseValue], [ISSIsento], [ISSOutros], [ISSValor], [ISSValorIsento], [ISSValorOutros], [PISBase], [PISBaseValue], [PISIsento], [PISOutros], [PISValor], [PISValorIsento], [PISValorOutros], [PISSTBase], [PISSTBaseValue], [PISSTIsento], [PISSTOutros], [PISSTValor], [PISSTValorIsento], [PISSTValorOutros],  
            [WTPIS], [WTCofins], [WTCSLL], [WTINSS], [WTISSF], [WTIRRF], [WTOther], WTPaymentAmt, WTInvoiceAmt, TaxNotInPrice, [Apportionment],
            [ApportionmentBatch], [ApportionmentDueDate])
        VALUES
            (@CompanyDB, @BPLId, @DocEntry, @DocNum ,@LineNum , @Installment, @DocDueDate, @TransId ,@InvType, @UnitWeight ,@LineWeight ,@SalesQuantity, 
            @Quantity ,@LineTotal , @NetLineTotal, @Price ,@LineDiscount ,@DiscPrcnt ,@UM ,@NumPerUM ,@BaseUM ,@BatchNumberID, @COFINSBase , @COFINSBaseValor, @COFINSIsento ,@COFINSOutros ,@COFINSValor ,@COFINSValorIsento ,@COFINSValorOutros, @COFINSSTBase , @COFINSSTBaseValor, @COFINSSTIsento ,@COFINSSTOutros ,@COFINSSTValor ,@COFINSSTValorIsento ,@COFINSSTValorOutros, @ICMSBase , @ICMSBaseValor, @ICMSIsento ,@ICMSOutros ,@ICMSValor ,@ICMSValorIsento ,@ICMSValorOutros, @ICMSDifBase , @ICMSDifBaseValor, @ICMSDifIsento ,@ICMSDifOutros ,@ICMSDifValor ,@ICMSDifValorIsento ,@ICMSDifValorOutros, @ICMSSTBase , @ICMSSTBaseValor, @ICMSSTIsento ,@ICMSSTOutros ,@ICMSSTValor ,@ICMSSTValorIsento ,@ICMSSTValorOutros, @IIBase , @IIBaseValor, @IIIsento ,@IIOutros ,@IIValor ,@IIValorIsento ,@IIValorOutros, @INSSBase , @INSSBaseValor, @INSSIsento ,@INSSOutros ,@INSSValor ,@INSSValorIsento ,@INSSValorOutros, @IPIBase , @IPIBaseValor, @IPIIsento ,@IPIOutros ,@IPIValor ,@IPIValorIsento ,@IPIValorOutros, @ISSBase , @ISSBaseValor, @ISSIsento ,@ISSOutros ,@ISSValor ,@ISSValorIsento ,@ISSValorOutros, @PISBase , @PISBaseValor, @PISIsento ,@PISOutros ,@PISValor ,@PISValorIsento ,@PISValorOutros, @PISSTBase , @PISSTBaseValor, @PISSTIsento ,@PISSTOutros ,@PISSTValor ,@PISSTValorIsento ,@PISSTValorOutros,  @WTPIS ,@WTCofins
            ,@WTCSLL ,@WTINSS ,@WTISSF ,@WTIRRF, @WTOther, @WTPaymentAmt, @WTInvoiceAmt,  @TaxNotInPrice, @Apportionment, @ApportionmentBatch, @ApportionmentDueDate)


/*
Fatos financeiro
*/
		SELECT T0.TransId, T0.Line_ID, SUM((T1.ReconSum)) Total
        INTO #ReconValues

		FROM SBODemoBR.dbo.JDT1 T0
				INNER JOIN SBODemoBR.dbo.OJDT T04 ON T04.TransId = T0.TransId
				INNER JOIN SBODemoBR.dbo.ITR1 T01 ON
					T01.TransId = T0.TransId and T01.TransRowID <> T0.Line_ID
			AND T04.TransType NOT IN (13, 14, 15, 16, 17, 18, 19, 20, 21, 203, 204, 30)

					AND T01.ShortName <> T01.Account
				INNER JOIN SBODemoBR.dbo.OACT ON OACT.AcctCode = T0.Account 
                INNER JOIN SBODemoBR.dbo.ITR1 T1 ON T1.ReconNum = T01.ReconNum AND T1.TransId <> T0.TransId
WHERE T0.TransId = @transId or @transId = -1
		GROUP BY T0.TransId, T0.Line_ID	

select * into #TempCA
from
(
select oocr.DimCode, isnull(ocr1.ValidFrom, '19000101') validFrom, isnull(ocr1.ValidTo, '29990101') validTo, 
	ocr1.OcrCode, isnull(OCostingCode.id,oocr.dimCode*-1) id, ocr1.PrcAmount/ocr1.ocrTotal rateio
from SBODemoBR.dbo.ocr1
inner join SBODemoBR.dbo.OOCR on ocr1.OcrCode = oocr.OcrCode
left join OCostingCode on OCostingCode.PrcCode = ocr1.PrcCode collate SQL_Latin1_General_CP850_CI_AS and OCostingCode.DimCode = OOCR.DimCode


union all

select omdr.dimCode , isnull(mdr1.ValidFrom, '19000101') validFrom, isnull(mdr1.ValidTo, '29990101') validTo, 
	mdr1.OcrCode, isnull(OCostingCode.id,omdr.dimCode*-1) id, mdr1.PrcAmount/mdr1.ocrTotal 
from SBODemoBR.dbo.mdr1
inner join SBODemoBR.dbo.omdr on mdr1.OcrCode = omdr.OcrCode
left join OCostingCode on OCostingCode.PrcCode = mdr1.PrcCode collate SQL_Latin1_General_CP850_CI_AS and OCostingCode.DimCode = OMDR.DimCode
) TMP



-- inicio de selects que se repetem para cada doc de marketing, para universo financeiro.
SELECT SUM(ISNULL(X11.LineTotal, 0))+sum(ISNULL(X111.LineTotal, 0))+sum(ISNULL(X112.LineTotal, 0))-
	ISNULL(
(SELECT SUM(WTAmnt) FROM SBODemoBR.dbo.INV5 X0 WHERE X0.AbsEntry = X11.DocEntry), 0) Total, X11.DocEntry
    into #Totals
	FROM SBODemoBR.dbo.INV1 X11
		LEFT JOIN SBODemoBR.dbo.INV2 X111 ON X11.DocEntry = X111.DocEntry AND X11.LineNum = X111.LineNum
		LEFT JOIN SBODemoBR.dbo.INV3 X112 ON X11.DocEntry = X112.DocEntry AND X11.LineNum = X112.LineNum
	WHERE	 X11.TaxOnly = 'N' 
	GROUP BY X11.DocEntry


SELECT 13 InvType,
		T0.[AbsEntry] DocEntry, T0.Doc1LineNo LineNum, 
	 AVG(T0.Rate) Rate, SUM(WTAmnt) WTAmnt
            into #WTValues
		FROM SBODemoBR.dbo.INV5  T0 INNER JOIN SBODemoBR.dbo.OWHT T1 ON T0.WTCode = T1.WTCode
        AND T0.WtLineType = 'D' 
		GROUP BY T0.[AbsEntry], T0.Doc1LineNo

SELECT ROW_NUMBER() over (Order By transid) as lineId, * INTO #tempTB FROM
	select ISNULL(T1.ReconNum, -1) ReconNum, ISNULL(T0.BPLId, -1) BPLId, ISNULL(T1.ReconSum, 0) ReconSum, T0.ShortName, ISNULL(T0.Ref1, '') Ref1, ISNULL(T0.Ref2, '') Ref2, 
        ISNULL(T0.Ref3Line, '') Ref3, T0.TransId, T0.Line_ID, T0.Debit, T0.Credit, isnull(T40.ItemsId, -1) ItemsId,
        ISNULL(T41.BusinessPartnerID, -1) BusinessPartnerID,
		CAST(ISNULL(T1.SrcObjTyp, T04.TransType) AS INT) TransType, ISNULL(T1.SrcObjAbs, T04.CreatedBy) DocEntry, 
        cast(T1.SrcObjTyp as int) BaseType, T1.SrcObjAbs BaseEntry, 
		ISNULL(T11.LineNum, -1) LineNum,
        T1.TransRowId Installment,
		ISNULL(T10.NumAtCard, '') NumAtCard,
		ISNULL(T42.SalesPersonID, -1) SalesPersonID, ISNULL(T43.AgentId, -1) AgentId, T0.Account, ISNULL(T28.ContraAct, T0.ContraAct) ContraAct, 
		T0.DueDate,
		ISNULL(T04.TaxDate, T0.RefDate) TaxDate,
		T0.RefDate, 
		ISNULL(T0.TransCode, '') TransCode, COALESCE(PROJECT.id, -1) Project,
		ISNULL(T0.ProfitCode, '') OcrCode, ISNULL(T0.OcrCode2, '') OcrCode2, ISNULL(T0.OcrCode3, '') OcrCode3, 
		ISNULL(T0.OcrCode4, '') OcrCode4, ISNULL(T0.OcrCode5, '') OcrCode5,
		COALESCE(PROJECTContra.id, -1) ProjectContra,
		ISNULL(T11.OcrCode, '') OcrCodeContra, ISNULL(T11.OcrCode2, '') OcrCode2Contra, ISNULL(T11.OcrCode3, '') OcrCode3Contra, 
		ISNULL(T11.OcrCode4, '') OcrCode4Contra, ISNULL(T11.OcrCode5, '') OcrCode5Contra,
			ISNULL(T11.LineTotal, 0)+ISNULL(T111.LineTotal, 0)+ISNULL(T112.LineTotal, 0) LineTotal, ISNULL(T14.BatchNumberId, -1) BatchNumberId, ISNULL(T15.DocQty, 0) DocQty, ISNULL(T15.Quantity, 0) BatchQuantity,
        ISNULL(T001.ID, cast(-1 as smallint)) AccountID, coalesce(T002.ID, T003.ID, cast(-1 as smallint)) ContraAccountID,
        case when ISNULL(T04.StornoToTr, '') = '' and not exists (select top 1 transid from SBODemoBR.dbo.OJDT X0 WHERE X0.StornoToTr = T0.TransId) then 'N' else 'Y' end 
			        Storno 
	from SBODemoBR.dbo.JDT1 T0 
			INNER JOIN SBODemoBR.dbo.OACT T02 ON T0.Account = T02.AcctCode
		INNER JOIN SBODemoBR.dbo.OJDT T04 ON T04.TransId = T0.TransId 
		LEFT JOIN SBODemoBR.dbo.ITR1 T01 ON
			T01.TransId = T0.TransId and T01.TransRowID <> T0.Line_ID
			AND T04.TransType NOT IN (13, 14, 15, 16, 17, 18, 19, 20, 21, 203, 204, 30)
			AND T01.ShortName <> T01.Account
		INNER JOIN OAccount T001 ON T001.AcctCode = T0.Account collate SQL_Latin1_General_CP850_CI_AS
		LEFT JOIN OAccount T002 ON T002.AcctCode = T0.ContraAct collate SQL_Latin1_General_CP850_CI_AS
		INNER JOIN SBODemoBR.dbo.ITR1 T1 ON T1.ReconNum = T01.ReconNum AND T1.TransId <> T0.TransId
		INNER JOIN SBODemoBR.dbo.OITR T2 ON T01.ReconNum = T2.ReconNum 
		INNER JOIN SBODemoBR.dbo.OINV T10 ON T10.DocEntry = T1.SrcObjAbs AND T1.SrcObjTyp = 13
		INNER JOIN SBODemoBR.dbo.INV1 T11 ON T10.DocEntry = T11.DocEntry AND T11.TaxOnly = 'N'
		INNER JOIN OAccount T003 ON T003.AcctCode = T11.AcctCode collate SQL_Latin1_General_CP850_CI_AS

		LEFT JOIN SBODemoBR.dbo.INV2 T111 ON T11.DocEntry = T111.DocEntry AND T11.LineNum = T111.LineNum
		LEFT JOIN SBODemoBR.dbo.INV3 T112 ON T11.DocEntry = T112.DocEntry AND T11.LineNum = T112.LineNum
        LEFT JOIN SBODemoBR.dbo.JDT1 T28 ON T28.TransId = T1.TransId and T28.Line_ID = T1.TransRowId
		LEFT JOIN 
(select X13.ItemCode, X11.DocEntry, X11.DocLine, X11.DocType, X13.DistNumber, X12.Quantity, X11.DocQty FROM
				SBODemoBR.dbo.OITL X11 
							INNER JOIN SBODemoBR.dbo.ITL1 X12 ON X12.LogEntry = X11.LogEntry
							INNER JOIN SBODemoBR.dbo.OBTN X13 ON X13.SysNumber = X12.SysNumber AND X13.ItemCode = X11.ItemCode
				where X11.ManagedBy = '10000044' AND ABS(X12.Quantity) > 0) T15 
    ON (CASE WHEN T11.BaseType in (15, 20) THEN T11.BaseEntry ELSE ISNULL(T1.SrcObjAbs, T04.BaseRef) END) = T15.DocEntry
                    and (CASE WHEN T11.BaseType in (15, 20) THEN T11.BaseLine ELSE T11.LineNum END) = T15.DocLine
                    and (CASE WHEN T11.BaseType in (15, 20) THEN T11.BaseType ELSE 13 END) = T15.DocType 

		LEFT JOIN DPBatchNumber T14 ON T14.ItemCode = T15.ItemCode collate SQL_Latin1_General_CP850_CI_AS and T14.BatchNumber = T15.DistNumber collate SQL_Latin1_General_CP850_CI_AS and T14.CompanyDB = 'SBODemoBR'
		LEFT JOIN DPItems T40 ON T40.ItemCode = T11.ItemCode collate SQL_Latin1_General_CP850_CI_AS
			and T40.CompanyDB = 'SBODemoBR'
		LEFT JOIN DPBusinessPartner T41 ON T41.CardCode = COALESCE(T10.CardCode, T0.ContraAct) collate SQL_Latin1_General_CP850_CI_AS
			and T41.CompanyDB = 'SBODemoBR'
		LEFT JOIN DPSalesPerson T42 ON T42.SlpCode = T10.SlpCode
			and T42.CompanyDB = 'SBODemoBR'
		LEFT JOIN DPSalesRepresentative T43 ON T43.AgentCode = T10.AgentCode collate SQL_Latin1_General_CP850_CI_AS
			AND T43.CompanyDB = 'SBODemoBR'

        LEFT JOIN OProject PROJECT ON T0.Project collate SQL_Latin1_General_CP850_CI_AS = PROJECT.PrjCode
        LEFT JOIN OProject PROJECTContra ON T11.Project collate SQL_Latin1_General_CP850_CI_AS = PROJECTContra.PrjCode
WHERE (@transId = t0.transId or @transId = -1)



insert into FactFinanse (
[companyDB],[BPLid], [TransId], [Ref1], [Ref2], [Ref3], [Line_ID], [Debit], [Credit], [ItemsId], [BatchNumberId], [BusinessPartnerID], [TransType], [DocEntry], [BaseType], [BaseEntry], [LineNum], [Installment], [NumAtCard], [SalesPersonId], [AccountID], [ContraAccountId], [DueDate], [TaxDate], [RefDate], [TransCode], [Project], [OcrCode], [OcrCode2], [OcrCode3], [OcrCode4], [OcrCode5], [ProjectContra], [OcrCodeContra], [OcrCode2Contra], [OcrCode3Contra], [OcrCode4Contra], [OcrCode5Contra], [AgentId], [Storno])

select
'SBODemoBR', 
TA.BPLId, TA.TransId, TA.Ref1, TA.Ref2, TA.Ref3, TA.Line_ID, 
sum(TA.Debit*rateioConciliacao*rateioLote
	*isnull(ocrCode.rateio,1)*isnull(ocrCode2.rateio,1)*isnull(ocrCode3.rateio,1)*isnull(ocrCode4.rateio,1)*isnull(ocrCode5.rateio,1)
	*isnull(ocrCodeContra.rateio,1)*isnull(ocrCode2Contra.rateio,1)*isnull(ocrCode3Contra.rateio,1)*isnull(ocrCode4Contra.rateio,1)*isnull(ocrCode5Contra.rateio,1)
    *isnull(FDL.Apportionment, 1))
 Debit, 
sum(TA.Credit*rateioConciliacao*rateioLote 
	*isnull(ocrCode.rateio,1)*isnull(ocrCode2.rateio,1)*isnull(ocrCode3.rateio,1)*isnull(ocrCode4.rateio,1)*isnull(ocrCode5.rateio,1)
	*isnull(ocrCodeContra.rateio,1)*isnull(ocrCode2Contra.rateio,1)*isnull(ocrCode3Contra.rateio,1)*isnull(ocrCode4Contra.rateio,1)*isnull(ocrCode5Contra.rateio,1)
    *isnull(FDL.Apportionment, 1))
Credit,
ISNULL(FDL.ItemsId, TA.ItemsId), TA.BatchNumberId, TA.BusinessPartnerID, TA.TransType, 
TA.DocEntry, TA.BaseType, TA.BaseEntry, ISNULL(FDL.LineNum, TA.LineNum) LineNum, 
TA.Installment, TA.NumAtCard, TA.SalesPersonId,  TA.AccountId, TA.ContraAccountId, TA.DueDate, TA.TaxDate, TA.RefDate,  TA.TransCode,
TA.Project, 
isnull(OcrCode.id,-1) OcrCode, isnull(OcrCode2.id,-1) OcrCode2, isnull(OcrCode3.id,-1) OcrCode3, isnull(OcrCode4.id,-1) OcrCode4, isnull(OcrCode5.id,-1) OcrCode5, 
TA.ProjectContra, 
isnull(OcrCodeContra.id,-1) OcrCodeContra, isnull(OcrCode2Contra.id,-1) OcrCode2Contra, isnull(OcrCode3Contra.id,-1) OcrCode3Contra, isnull(OcrCode4Contra.id,-1) OcrCode4Contra, isnull(OcrCode5Contra.id,-1) OcrCode5Contra, 
TA.AgentId, TA.Storno

FROM
(

select T0.BPLId, T0.ReconNum, T0.ReconSum, T0.ShortName, T0.Ref1, T0.Ref2, T0.Ref3, T0.TransId, 
T0.Installment, T0.Line_ID, T0.Debit, T0.Credit, T0.ItemsId, T0.BusinessPartnerID, T0.TransType, T0.DocEntry, T0.BaseType, 
T0.BaseEntry, T0.LineNum, T0.NumAtCard, T0.SalesPersonId, T0.AgentId, T0.DueDate, T0.RefDate, T0.TaxDate, T0.TransCode,
T0.Project, T0.OcrCode, T0.OcrCode2, T0.OcrCode3, T0.OcrCode4, T0.OcrCode5, T0.ProjectContra, T0.OcrCodeContra, T0.OcrCode2Contra, 
T0.OcrCode3Contra, T0.OcrCode4Contra, T0.OcrCode5Contra, T0.LineTotal, T0.AccountId, T0.ContraAccountId, T0.BatchNumberId,
T0.DocQty, T0.BatchQuantity, T0.Storno,
	
	case when T1.DocEntry is null then 1
		else (T0.LineTotal - T1.WTAmnt) / T2.Total
	END rateioDocMarketing,
	
	CASE WHEN T3.TransId is null then 1
		 WHEN T3.Total != 0 and T0.ReconSum != 0 THEN
			T0.ReconSum / T3.Total
		 ELSE 1
	END rateioConciliacao,
	case when T0.batchQuantity !=0  and T0.docQty != 0
		THEN T0.batchQuantity / T0.docQty
		ELSE 1
	END rateioLote
from #TempTB T0
	LEFT JOIN #Totals T2 ON T0.DocEntry = T2.DocEntry
	LEFT JOIN #WTValues T1 ON T0.TransType = T1.InvType and T0.DocEntry = T1.DocEntry and T0.LineNum = T1.LineNum
	LEFT JOIN #ReconValues T3 ON T3.TransId = T0.TransId and T3.Line_ID = T0.Line_ID
) TA
	LEFT JOIN #TempCA OcrCode on OcrCode.DimCode = 1 and OcrCode.OcrCode = TA.OcrCode and TA.TaxDate BETWEEN
		OcrCode.ValidFrom and OcrCode.ValidTo
	LEFT JOIN #TempCA OcrCode2 on OcrCode2.DimCode = 2 and OcrCode2.OcrCode = TA.OcrCode2 and TA.TaxDate BETWEEN
		OcrCode2.ValidFrom and OcrCode2.ValidTo
	LEFT JOIN #TempCA OcrCode3 on OcrCode3.DimCode = 3 and OcrCode3.OcrCode = TA.OcrCode3 and TA.TaxDate BETWEEN
		OcrCode3.ValidFrom and OcrCode3.ValidTo
	LEFT JOIN #TempCA OcrCode4 on OcrCode4.DimCode = 4 and OcrCode4.OcrCode = TA.OcrCode4 and TA.TaxDate BETWEEN
		OcrCode4.ValidFrom and OcrCode4.ValidTo
	LEFT JOIN #TempCA OcrCode5 on OcrCode5.DimCode = 5 and OcrCode5.OcrCode = TA.OcrCode5 and TA.TaxDate BETWEEN
		OcrCode5.ValidFrom and OcrCode5.ValidTo
	LEFT JOIN #TempCA OcrCodeContra on OcrCodeContra.DimCode = 1 and OcrCodeContra.OcrCode = TA.OcrCodeContra and TA.TaxDate BETWEEN
		OcrCodeContra.ValidFrom and OcrCodeContra.ValidTo
	LEFT JOIN #TempCA OcrCode2Contra on OcrCode2Contra.DimCode = 2 and OcrCode2Contra.OcrCode = TA.OcrCode2Contra and TA.TaxDate BETWEEN
		OcrCode2Contra.ValidFrom and OcrCode2Contra.ValidTo
	LEFT JOIN #TempCA OcrCode3Contra on OcrCode3Contra.DimCode = 3 and OcrCode3Contra.OcrCode = TA.OcrCode3Contra and TA.TaxDate BETWEEN
		OcrCode3Contra.ValidFrom and OcrCode3Contra.ValidTo
	LEFT JOIN #TempCA OcrCode4Contra on OcrCode4Contra.DimCode = 4 and OcrCode4Contra.OcrCode = TA.OcrCode4Contra and TA.TaxDate BETWEEN
		OcrCode4Contra.ValidFrom and OcrCode4Contra.ValidTo
	LEFT JOIN #TempCA OcrCode5Contra on OcrCode5Contra.DimCode = 5 and OcrCode5Contra.OcrCode = TA.OcrCode5Contra and TA.TaxDate BETWEEN
		OcrCode5Contra.ValidFrom and OcrCode5Contra.ValidTo
    LEFT JOIN FactDocumentLines FDL on FDL.DocEntry = TA.DocEntry and FDL.InvType= TA.TransType and TA.ItemsId = FDL.ItemsId and TA.LineNum = FDL.LineNum
        and FDL.CompanyDB = 'SBODemoBR'

WHERE TA.TransId = @TransId or @TransId = -1

GROUP BY
TA.BPLId, TA.TransId, TA.Ref1, TA.Ref2, TA.Ref3, TA.Line_ID, 
ISNULL(FDL.ItemsId, TA.ItemsId), TA.BatchNumberId, TA.BusinessPartnerID, TA.TransType, 
TA.DocEntry, TA.BaseType, TA.BaseEntry, ISNULL(FDL.LineNum, TA.LineNum), 
TA.Installment, TA.NumAtCard, TA.SalesPersonId,  TA.AccountId, TA.ContraAccountId, TA.DueDate, TA.TaxDate, TA.RefDate,  TA.TransCode,
TA.Project, 
OcrCode.id, OcrCode2.id, OcrCode3.id, OcrCode4.id, OcrCode5.id, 
TA.ProjectContra, 
OcrCodeContra.id, OcrCode2Contra.id, OcrCode3Contra.id, OcrCode4Contra.id, OcrCode5Contra.id, 
TA.AgentId, TA.Storno

-- fim de selects que se repetem para cada doc de marketing, para universo financeiro.

-- inicio de carga de universo financeiro para movimentos não relacionados a doc de marketing.
SELECT 0 Total, -1 DocEntry into #Totals

SELECT -1 InvType,-1 DocEntry, -1 LineNum, 
	 0 Rate, 0 WTAmnt
            into #WTValues


SELECT ROW_NUMBER() over (Order By transid) as lineId, * INTO #tempTB FROM
	select ISNULL(T1.ReconNum, -1) ReconNum, ISNULL(T0.BPLId, -1) BPLId, ISNULL(T1.ReconSum, 0) ReconSum, T0.ShortName, ISNULL(T0.Ref1, '') Ref1, ISNULL(T0.Ref2, '') Ref2, 
        ISNULL(T0.Ref3Line, '') Ref3, T0.TransId, T0.Line_ID, T0.Debit, T0.Credit, cast(-1 as smallint) ItemsId,
            cast(COALESCE(t42.businesspartnerid, T41.BusinessPartnerID, -1) as smallint) BusinessPartnerID,
		CAST(ISNULL(T1.SrcObjTyp, T04.TransType) AS INT) TransType, ISNULL(T1.SrcObjAbs, T04.CreatedBy) DocEntry, 
        cast(T1.SrcObjTyp as int) BaseType, T1.SrcObjAbs BaseEntry, 
		ISNULL(T11.Line_ID, -1) LineNum,
        T1.TransRowId Installment,
		'' NumAtCard,
		cast(-1 as smallint) SalesPersonID, cast(-1 as smallint) AgentId, T0.Account, ISNULL(T11.ContraAct, T0.ContraAct) ContraAct, 
		T0.DueDate,
		ISNULL(T04.TaxDate, T0.RefDate) TaxDate,
		T0.RefDate, 
		ISNULL(T0.TransCode, '') TransCode, COALESCE(PROJECT.id, -1) Project,
		ISNULL(T0.ProfitCode, '') OcrCode, ISNULL(T0.OcrCode2, '') OcrCode2, ISNULL(T0.OcrCode3, '') OcrCode3, 
		ISNULL(T0.OcrCode4, '') OcrCode4, ISNULL(T0.OcrCode5, '') OcrCode5,
		COALESCE(PROJECTContra.id, -1) ProjectContra,
		ISNULL(T11.ProfitCode, '') OcrCodeContra, ISNULL(T11.OcrCode2, '') OcrCode2Contra, ISNULL(T11.OcrCode3, '') OcrCode3Contra, 
		ISNULL(T11.OcrCode4, '') OcrCode4Contra, ISNULL(T11.OcrCode5, '') OcrCode5Contra,
			cast(0 as numeric(19,6)) LineTotal, cast(-1 as int) BatchNumberId, cast(0 as numeric(19,6)) DocQty, cast(0 as numeric(19,6)) BatchQuantity,
        ISNULL(T001.ID, cast(-1 as smallint)) AccountID, coalesce(T002.ID, T003.ID, cast(-1 as smallint)) ContraAccountID,
        case when ISNULL(T04.StornoToTr, '') = '' and not exists (select top 1 transid from SBODemoBR.dbo.OJDT X0 WHERE X0.StornoToTr = T0.TransId) then 'N' else 'Y' end 
			Storno

	from SBODemoBR.dbo.JDT1 T0 
			INNER JOIN SBODemoBR.dbo.OACT T02 ON T0.Account = T02.AcctCode
		INNER JOIN SBODemoBR.dbo.OJDT T04 ON T04.TransId = T0.TransId 
		LEFT JOIN SBODemoBR.dbo.ITR1 T01 ON
			T01.TransId = T0.TransId and T01.TransRowID <> T0.Line_ID
			AND T04.TransType NOT IN (13, 14, 15, 16, 17, 18, 19, 20, 21, 203, 204, 30)
			AND T01.ShortName <> T01.Account
		INNER JOIN OAccount T001 ON T001.AcctCode = T0.Account collate SQL_Latin1_General_CP850_CI_AS
		LEFT JOIN OAccount T002 ON T002.AcctCode = T0.ContraAct collate SQL_Latin1_General_CP850_CI_AS
		INNER JOIN SBODemoBR.dbo.ITR1 T1 ON T1.ReconNum = T01.ReconNum AND T1.TransId <> T0.TransId
		INNER JOIN SBODemoBR.dbo.OITR T2 ON T01.ReconNum = T2.ReconNum 
		INNER JOIN SBODemoBR.dbo.OJDT T10 ON T10.TransId = T1.SrcObjAbs AND T1.SrcObjTyp = 30
		INNER JOIN SBODemoBR.dbo.JDT1 T11 ON T10.TransId = T11.TransId and T11.Line_ID = T1.TransRowId
		INNER JOIN OAccount T003 ON T003.AcctCode = T11.ContraAct collate SQL_Latin1_General_CP850_CI_AS

		LEFT JOIN DPBusinessPartner T41 ON T41.CardCode = COALESCE(T11.shortName, T0.ContraAct) collate SQL_Latin1_General_CP850_CI_AS
			and T41.CompanyDB = 'SBODemoBR'
		LEFT JOIN DPBusinessPartner T42 ON T42.CardCode = T0.ShortName collate SQL_Latin1_General_CP850_CI_AS
			and T42.CompanyDB = 'SBODemoBR'

        LEFT JOIN OProject PROJECT ON T0.Project collate SQL_Latin1_General_CP850_CI_AS = PROJECT.PrjCode
        LEFT JOIN OProject PROJECTContra ON T11.Project collate SQL_Latin1_General_CP850_CI_AS = PROJECTContra.PrjCode
WHERE (@transId = t0.transId or @transId = -1)

insert into FactFinanse (
[companyDB],[BPLid], [TransId], [Ref1], [Ref2], [Ref3], [Line_ID], [Debit], [Credit], [ItemsId], [BatchNumberId], [BusinessPartnerID], [TransType], [DocEntry], [BaseType], [BaseEntry], [LineNum], [Installment], [NumAtCard], [SalesPersonId], [AccountID], [ContraAccountId], [DueDate], [TaxDate], [RefDate], [TransCode], [Project], [OcrCode], [OcrCode2], [OcrCode3], [OcrCode4], [OcrCode5], [ProjectContra], [OcrCodeContra], [OcrCode2Contra], [OcrCode3Contra], [OcrCode4Contra], [OcrCode5Contra], [AgentId], [Storno])

select
'SBODemoBR', 
TA.BPLId, TA.TransId, TA.Ref1, TA.Ref2, TA.Ref3, TA.Line_ID, 
sum(TA.Debit*rateioConciliacao*rateioLote
	*isnull(ocrCode.rateio,1)*isnull(ocrCode2.rateio,1)*isnull(ocrCode3.rateio,1)*isnull(ocrCode4.rateio,1)*isnull(ocrCode5.rateio,1)
	*isnull(ocrCodeContra.rateio,1)*isnull(ocrCode2Contra.rateio,1)*isnull(ocrCode3Contra.rateio,1)*isnull(ocrCode4Contra.rateio,1)*isnull(ocrCode5Contra.rateio,1)
    *isnull(FDL.Apportionment, 1))
 Debit, 
sum(TA.Credit*rateioConciliacao*rateioLote 
	*isnull(ocrCode.rateio,1)*isnull(ocrCode2.rateio,1)*isnull(ocrCode3.rateio,1)*isnull(ocrCode4.rateio,1)*isnull(ocrCode5.rateio,1)
	*isnull(ocrCodeContra.rateio,1)*isnull(ocrCode2Contra.rateio,1)*isnull(ocrCode3Contra.rateio,1)*isnull(ocrCode4Contra.rateio,1)*isnull(ocrCode5Contra.rateio,1)
    *isnull(FDL.Apportionment, 1))
Credit,
ISNULL(FDL.ItemsId, TA.ItemsId), TA.BatchNumberId, TA.BusinessPartnerID, TA.TransType, 
TA.DocEntry, TA.BaseType, TA.BaseEntry, ISNULL(FDL.LineNum, TA.LineNum) LineNum, 
TA.Installment, TA.NumAtCard, TA.SalesPersonId,  TA.AccountId, TA.ContraAccountId, TA.DueDate, TA.TaxDate, TA.RefDate,  TA.TransCode,
TA.Project, 
isnull(OcrCode.id,-1) OcrCode, isnull(OcrCode2.id,-1) OcrCode2, isnull(OcrCode3.id,-1) OcrCode3, isnull(OcrCode4.id,-1) OcrCode4, isnull(OcrCode5.id,-1) OcrCode5, 
TA.ProjectContra, 
isnull(OcrCodeContra.id,-1) OcrCodeContra, isnull(OcrCode2Contra.id,-1) OcrCode2Contra, isnull(OcrCode3Contra.id,-1) OcrCode3Contra, isnull(OcrCode4Contra.id,-1) OcrCode4Contra, isnull(OcrCode5Contra.id,-1) OcrCode5Contra, 
TA.AgentId, TA.Storno

FROM
(

select T0.BPLId, T0.ReconNum, T0.ReconSum, T0.ShortName, T0.Ref1, T0.Ref2, T0.Ref3, T0.TransId, 
T0.Installment, T0.Line_ID, T0.Debit, T0.Credit, T0.ItemsId, T0.BusinessPartnerID, T0.TransType, T0.DocEntry, T0.BaseType, 
T0.BaseEntry, T0.LineNum, T0.NumAtCard, T0.SalesPersonId, T0.AgentId, T0.DueDate, T0.RefDate, T0.TaxDate, T0.TransCode,
T0.Project, T0.OcrCode, T0.OcrCode2, T0.OcrCode3, T0.OcrCode4, T0.OcrCode5, T0.ProjectContra, T0.OcrCodeContra, T0.OcrCode2Contra, 
T0.OcrCode3Contra, T0.OcrCode4Contra, T0.OcrCode5Contra, T0.LineTotal, T0.AccountId, T0.ContraAccountId, T0.BatchNumberId,
T0.DocQty, T0.BatchQuantity, T0.Storno,
	
	case when T1.DocEntry is null then 1
		else (T0.LineTotal - T1.WTAmnt) / T2.Total
	END rateioDocMarketing,
	
	CASE WHEN T3.TransId is null then 1
		 WHEN T3.Total != 0 and T0.ReconSum != 0 THEN
			T0.ReconSum / T3.Total
		 ELSE 1
	END rateioConciliacao,
	case when T0.batchQuantity !=0  and T0.docQty != 0
		THEN T0.batchQuantity / T0.docQty
		ELSE 1
	END rateioLote
from #TempTB T0
	LEFT JOIN #Totals T2 ON T0.DocEntry = T2.DocEntry
	LEFT JOIN #WTValues T1 ON T0.TransType = T1.InvType and T0.DocEntry = T1.DocEntry and T0.LineNum = T1.LineNum
	LEFT JOIN #ReconValues T3 ON T3.TransId = T0.TransId and T3.Line_ID = T0.Line_ID
) TA
	LEFT JOIN #TempCA OcrCode on OcrCode.DimCode = 1 and OcrCode.OcrCode = TA.OcrCode and TA.TaxDate BETWEEN
		OcrCode.ValidFrom and OcrCode.ValidTo
	LEFT JOIN #TempCA OcrCode2 on OcrCode2.DimCode = 2 and OcrCode2.OcrCode = TA.OcrCode2 and TA.TaxDate BETWEEN
		OcrCode2.ValidFrom and OcrCode2.ValidTo
	LEFT JOIN #TempCA OcrCode3 on OcrCode3.DimCode = 3 and OcrCode3.OcrCode = TA.OcrCode3 and TA.TaxDate BETWEEN
		OcrCode3.ValidFrom and OcrCode3.ValidTo
	LEFT JOIN #TempCA OcrCode4 on OcrCode4.DimCode = 4 and OcrCode4.OcrCode = TA.OcrCode4 and TA.TaxDate BETWEEN
		OcrCode4.ValidFrom and OcrCode4.ValidTo
	LEFT JOIN #TempCA OcrCode5 on OcrCode5.DimCode = 5 and OcrCode5.OcrCode = TA.OcrCode5 and TA.TaxDate BETWEEN
		OcrCode5.ValidFrom and OcrCode5.ValidTo
	LEFT JOIN #TempCA OcrCodeContra on OcrCodeContra.DimCode = 1 and OcrCodeContra.OcrCode = TA.OcrCodeContra and TA.TaxDate BETWEEN
		OcrCodeContra.ValidFrom and OcrCodeContra.ValidTo
	LEFT JOIN #TempCA OcrCode2Contra on OcrCode2Contra.DimCode = 2 and OcrCode2Contra.OcrCode = TA.OcrCode2Contra and TA.TaxDate BETWEEN
		OcrCode2Contra.ValidFrom and OcrCode2Contra.ValidTo
	LEFT JOIN #TempCA OcrCode3Contra on OcrCode3Contra.DimCode = 3 and OcrCode3Contra.OcrCode = TA.OcrCode3Contra and TA.TaxDate BETWEEN
		OcrCode3Contra.ValidFrom and OcrCode3Contra.ValidTo
	LEFT JOIN #TempCA OcrCode4Contra on OcrCode4Contra.DimCode = 4 and OcrCode4Contra.OcrCode = TA.OcrCode4Contra and TA.TaxDate BETWEEN
		OcrCode4Contra.ValidFrom and OcrCode4Contra.ValidTo
	LEFT JOIN #TempCA OcrCode5Contra on OcrCode5Contra.DimCode = 5 and OcrCode5Contra.OcrCode = TA.OcrCode5Contra and TA.TaxDate BETWEEN
		OcrCode5Contra.ValidFrom and OcrCode5Contra.ValidTo
    LEFT JOIN FactDocumentLines FDL on FDL.DocEntry = TA.DocEntry and FDL.InvType= TA.TransType and TA.ItemsId = FDL.ItemsId and TA.LineNum = FDL.LineNum
        and FDL.CompanyDB = 'SBODemoBR'

WHERE TA.TransId = @TransId or @TransId = -1

GROUP BY
TA.BPLId, TA.TransId, TA.Ref1, TA.Ref2, TA.Ref3, TA.Line_ID, 
ISNULL(FDL.ItemsId, TA.ItemsId), TA.BatchNumberId, TA.BusinessPartnerID, TA.TransType, 
TA.DocEntry, TA.BaseType, TA.BaseEntry, ISNULL(FDL.LineNum, TA.LineNum), 
TA.Installment, TA.NumAtCard, TA.SalesPersonId,  TA.AccountId, TA.ContraAccountId, TA.DueDate, TA.TaxDate, TA.RefDate,  TA.TransCode,
TA.Project, 
OcrCode.id, OcrCode2.id, OcrCode3.id, OcrCode4.id, OcrCode5.id, 
TA.ProjectContra, 
OcrCodeContra.id, OcrCode2Contra.id, OcrCode3Contra.id, OcrCode4Contra.id, OcrCode5Contra.id, 
TA.AgentId, TA.Storno


-- carga dos movimentos sem conciliacao.

select distinct T0.transid, T0.account, 
	(select top 1 ContraAct from SBODemoBR.dbo.JDT1 X0
		WHERE X0.TransId = T0.TransId and X0.Account = T0.Account) ContraAct,
	(select top 1 Project from SBODemoBR.dbo.JDT1 X0
		WHERE X0.TransId = T0.TransId and X0.Account = T0.Account) Project,
	(select top 1 ProfitCode from SBODemoBR.dbo.JDT1 X0
		WHERE X0.TransId = T0.TransId and X0.Account = T0.Account) ProfitCode,
	(select top 1 OcrCode2 from SBODemoBR.dbo.JDT1 X0
		WHERE X0.TransId = T0.TransId and X0.Account = T0.Account) OcrCode2,
	(select top 1 OcrCode3 from SBODemoBR.dbo.JDT1 X0
		WHERE X0.TransId = T0.TransId and X0.Account = T0.Account) OcrCode3,
	(select top 1 OcrCode4 from SBODemoBR.dbo.JDT1 X0
		WHERE X0.TransId = T0.TransId and X0.Account = T0.Account) OcrCode4,
	(select top 1 OcrCode5 from SBODemoBR.dbo.JDT1 X0
		WHERE X0.TransId = T0.TransId and X0.Account = T0.Account) OcrCode5

	into #contraTMP
from SBODemoBR.dbo.JDT1 T0

SELECT ROW_NUMBER() over (Order By transid) as lineId, * INTO #tempTB FROM 
select -1 ReconNum, ISNULL(T0.BPLId, -1) BPLId, cast(0 as numeric(19,6)) ReconSum, T0.ShortName, ISNULL(T0.Ref1, '') Ref1, ISNULL(T0.Ref2, '') Ref2,
        ISNULL(T0.Ref3Line, '') Ref3, T0.TransId, T0.Line_ID,
		T0.Debit-ISNULL(ParcialValue.Debit, 0) Debit,
		T0.Credit-ISNULL(ParcialValue.Credit, 0) Credit,
		cast(-1 as smallint) ItemsId,
        cast(COALESCE(T41.BusinessPartnerID, T42.BusinessPartnerId, -1) as smallint) BusinessPartnerID,
		CAST(T04.TransType AS INT) TransType, cast(T04.CreatedBy as int) DocEntry, 
        cast(T04.TransType as int) BaseType, T04.CreatedBy BaseEntry, 
		-1 LineNum,
        -1 Installment,
		'' NumAtCard,
		cast(-1 as smallint) SalesPersonID, cast(-1 as smallint) AgentId,  T0.Account, T0.ContraAct ContraAct, 
		T0.DueDate,
		ISNULL(T04.TaxDate, T0.RefDate) TaxDate,
		T0.RefDate, 
		ISNULL(T0.TransCode, '') TransCode, COALESCE(PROJECT.id, -1) Project,
		ISNULL(T0.ProfitCode, '') OcrCode, ISNULL(T0.OcrCode2, '') OcrCode2, ISNULL(T0.OcrCode3, '') OcrCode3, 
		ISNULL(T0.OcrCode4, '') OcrCode4, ISNULL(T0.OcrCode5, '') OcrCode5,
		COALESCE(PROJECTContra.id, -1) ProjectContra,
		ISNULL(T30.ProfitCode, '') OcrCodeContra, ISNULL(T30.OcrCode2, '') OcrCode2Contra, ISNULL(T30.OcrCode3, '') OcrCode3Contra, 
		ISNULL(T30.OcrCode4, '') OcrCode4Contra, ISNULL(T30.OcrCode5, '') OcrCode5Contra,
			cast(0 as numeric(19,6)) LineTotal, cast(-1 as int) BatchNumberId, cast(0 as numeric(19,6)) DocQty, cast(0 as numeric(19,6)) BatchQuantity,
        ISNULL(T001.ID, cast(-1 as smallint)) AccountID, 
        ISNULL(T002.ID, cast(-1 as smallint)) ContraAccountID,
        case when ISNULL(T04.StornoToTr, '') = '' and not exists (select top 1 transid from SBODemoBR.dbo.OJDT X0 WHERE X0.StornoToTr = T0.TransId) then 'N' else 'Y' end 
			Storno
	from SBODemoBR.dbo.JDT1 T0 
			INNER JOIN SBODemoBR.dbo.OACT T02 ON T0.Account = T02.AcctCode
		INNER JOIN SBODemoBR.dbo.OJDT T04 ON T04.TransId = T0.TransId 
		INNER JOIN OAccount T001 ON T001.AcctCode = T0.Account collate SQL_Latin1_General_CP850_CI_AS
		LEFT JOIN OAccount T002 ON T002.AcctCode = T0.ContraAct collate SQL_Latin1_General_CP850_CI_AS
		LEFT JOIN DPBusinessPartner T41 ON T41.CardCode = T0.ContraAct collate SQL_Latin1_General_CP850_CI_AS 
			and T41.CompanyDB = 'SBODemoBR'
		LEFT JOIN DPBusinessPartner T42 ON T42.CardCode = T0.ShortName collate SQL_Latin1_General_CP850_CI_AS
			and T42.CompanyDB = 'SBODemoBR'

		LEFT JOIN #contraTMP T30 on T30.TransId = T0.TransId and T0.ContraAct = T30.Account and T0.ContraAct = T30.Account 

        LEFT JOIN OProject PROJECT ON T0.Project collate SQL_Latin1_General_CP850_CI_AS = PROJECT.PrjCode
        LEFT JOIN OProject PROJECTContra ON T30.Project collate SQL_Latin1_General_CP850_CI_AS = PROJECTContra.PrjCode

        LEFT JOIN     (select sum(debit) Debit, sum(credit) Credit, TransId, Line_ID, CompanyDB 
    from FactFinanse group by TransId, Line_ID, CompanyDB )
        ParcialValue on  ParcialValue.CompanyDB = 'SBODemoBR' and ParcialValue.TransId = T0.TransId and ParcialValue.Line_ID = T0.Line_ID


where 
(T0.Debit-ISNULL(ParcialValue.Debit, 0) <> 0 or T0.Credit-ISNULL(ParcialValue.Credit, 0) <> 0)
and (@transId = t0.transId or @transId = -1)



insert into FactFinanse (
[companyDB],[BPLid], [TransId], [Ref1], [Ref2], [Ref3], [Line_ID], [Debit], [Credit], [ItemsId], [BatchNumberId], [BusinessPartnerID], [TransType], [DocEntry], [BaseType], [BaseEntry], [LineNum], [Installment], [NumAtCard], [SalesPersonId], [AccountID], [ContraAccountId], [DueDate], [TaxDate], [RefDate], [TransCode], [Project], [OcrCode], [OcrCode2], [OcrCode3], [OcrCode4], [OcrCode5], [ProjectContra], [OcrCodeContra], [OcrCode2Contra], [OcrCode3Contra], [OcrCode4Contra], [OcrCode5Contra], [AgentId], [Storno])

select
'SBODemoBR', 
TA.BPLId, TA.TransId, TA.Ref1, TA.Ref2, TA.Ref3, TA.Line_ID, 
sum(TA.Debit*rateioConciliacao*rateioLote
	*isnull(ocrCode.rateio,1)*isnull(ocrCode2.rateio,1)*isnull(ocrCode3.rateio,1)*isnull(ocrCode4.rateio,1)*isnull(ocrCode5.rateio,1)
	*isnull(ocrCodeContra.rateio,1)*isnull(ocrCode2Contra.rateio,1)*isnull(ocrCode3Contra.rateio,1)*isnull(ocrCode4Contra.rateio,1)*isnull(ocrCode5Contra.rateio,1)
    *isnull(FDL.Apportionment, 1))
 Debit, 
sum(TA.Credit*rateioConciliacao*rateioLote 
	*isnull(ocrCode.rateio,1)*isnull(ocrCode2.rateio,1)*isnull(ocrCode3.rateio,1)*isnull(ocrCode4.rateio,1)*isnull(ocrCode5.rateio,1)
	*isnull(ocrCodeContra.rateio,1)*isnull(ocrCode2Contra.rateio,1)*isnull(ocrCode3Contra.rateio,1)*isnull(ocrCode4Contra.rateio,1)*isnull(ocrCode5Contra.rateio,1)
    *isnull(FDL.Apportionment, 1))
Credit,
ISNULL(FDL.ItemsId, TA.ItemsId), TA.BatchNumberId, TA.BusinessPartnerID, TA.TransType, 
TA.DocEntry, TA.BaseType, TA.BaseEntry, ISNULL(FDL.LineNum, TA.LineNum) LineNum, 
TA.Installment, TA.NumAtCard, TA.SalesPersonId,  TA.AccountId, TA.ContraAccountId, TA.DueDate, TA.TaxDate, TA.RefDate,  TA.TransCode,
TA.Project, 
isnull(OcrCode.id,-1) OcrCode, isnull(OcrCode2.id,-1) OcrCode2, isnull(OcrCode3.id,-1) OcrCode3, isnull(OcrCode4.id,-1) OcrCode4, isnull(OcrCode5.id,-1) OcrCode5, 
TA.ProjectContra, 
isnull(OcrCodeContra.id,-1) OcrCodeContra, isnull(OcrCode2Contra.id,-1) OcrCode2Contra, isnull(OcrCode3Contra.id,-1) OcrCode3Contra, isnull(OcrCode4Contra.id,-1) OcrCode4Contra, isnull(OcrCode5Contra.id,-1) OcrCode5Contra, 
TA.AgentId, TA.Storno

FROM
(

select T0.BPLId, T0.ReconNum, T0.ReconSum, T0.ShortName, T0.Ref1, T0.Ref2, T0.Ref3, T0.TransId, 
T0.Installment, T0.Line_ID, T0.Debit, T0.Credit, T0.ItemsId, T0.BusinessPartnerID, T0.TransType, T0.DocEntry, T0.BaseType, 
T0.BaseEntry, T0.LineNum, T0.NumAtCard, T0.SalesPersonId, T0.AgentId, T0.DueDate, T0.RefDate, T0.TaxDate, T0.TransCode,
T0.Project, T0.OcrCode, T0.OcrCode2, T0.OcrCode3, T0.OcrCode4, T0.OcrCode5, T0.ProjectContra, T0.OcrCodeContra, T0.OcrCode2Contra, 
T0.OcrCode3Contra, T0.OcrCode4Contra, T0.OcrCode5Contra, T0.LineTotal, T0.AccountId, T0.ContraAccountId, T0.BatchNumberId,
T0.DocQty, T0.BatchQuantity, T0.Storno,
	
	case when T1.DocEntry is null then 1
		else (T0.LineTotal - T1.WTAmnt) / T2.Total
	END rateioDocMarketing,
	
	CASE WHEN T3.TransId is null then 1
		 WHEN T3.Total != 0 and T0.ReconSum != 0 THEN
			T0.ReconSum / T3.Total
		 ELSE 1
	END rateioConciliacao,
	case when T0.batchQuantity !=0  and T0.docQty != 0
		THEN T0.batchQuantity / T0.docQty
		ELSE 1
	END rateioLote
from #TempTB T0
	LEFT JOIN #Totals T2 ON T0.DocEntry = T2.DocEntry
	LEFT JOIN #WTValues T1 ON T0.TransType = T1.InvType and T0.DocEntry = T1.DocEntry and T0.LineNum = T1.LineNum
	LEFT JOIN #ReconValues T3 ON T3.TransId = T0.TransId and T3.Line_ID = T0.Line_ID
) TA
	LEFT JOIN #TempCA OcrCode on OcrCode.DimCode = 1 and OcrCode.OcrCode = TA.OcrCode and TA.TaxDate BETWEEN
		OcrCode.ValidFrom and OcrCode.ValidTo
	LEFT JOIN #TempCA OcrCode2 on OcrCode2.DimCode = 2 and OcrCode2.OcrCode = TA.OcrCode2 and TA.TaxDate BETWEEN
		OcrCode2.ValidFrom and OcrCode2.ValidTo
	LEFT JOIN #TempCA OcrCode3 on OcrCode3.DimCode = 3 and OcrCode3.OcrCode = TA.OcrCode3 and TA.TaxDate BETWEEN
		OcrCode3.ValidFrom and OcrCode3.ValidTo
	LEFT JOIN #TempCA OcrCode4 on OcrCode4.DimCode = 4 and OcrCode4.OcrCode = TA.OcrCode4 and TA.TaxDate BETWEEN
		OcrCode4.ValidFrom and OcrCode4.ValidTo
	LEFT JOIN #TempCA OcrCode5 on OcrCode5.DimCode = 5 and OcrCode5.OcrCode = TA.OcrCode5 and TA.TaxDate BETWEEN
		OcrCode5.ValidFrom and OcrCode5.ValidTo
	LEFT JOIN #TempCA OcrCodeContra on OcrCodeContra.DimCode = 1 and OcrCodeContra.OcrCode = TA.OcrCodeContra and TA.TaxDate BETWEEN
		OcrCodeContra.ValidFrom and OcrCodeContra.ValidTo
	LEFT JOIN #TempCA OcrCode2Contra on OcrCode2Contra.DimCode = 2 and OcrCode2Contra.OcrCode = TA.OcrCode2Contra and TA.TaxDate BETWEEN
		OcrCode2Contra.ValidFrom and OcrCode2Contra.ValidTo
	LEFT JOIN #TempCA OcrCode3Contra on OcrCode3Contra.DimCode = 3 and OcrCode3Contra.OcrCode = TA.OcrCode3Contra and TA.TaxDate BETWEEN
		OcrCode3Contra.ValidFrom and OcrCode3Contra.ValidTo
	LEFT JOIN #TempCA OcrCode4Contra on OcrCode4Contra.DimCode = 4 and OcrCode4Contra.OcrCode = TA.OcrCode4Contra and TA.TaxDate BETWEEN
		OcrCode4Contra.ValidFrom and OcrCode4Contra.ValidTo
	LEFT JOIN #TempCA OcrCode5Contra on OcrCode5Contra.DimCode = 5 and OcrCode5Contra.OcrCode = TA.OcrCode5Contra and TA.TaxDate BETWEEN
		OcrCode5Contra.ValidFrom and OcrCode5Contra.ValidTo
    LEFT JOIN FactDocumentLines FDL on FDL.DocEntry = TA.DocEntry and FDL.InvType= TA.TransType and TA.ItemsId = FDL.ItemsId and TA.LineNum = FDL.LineNum
        and FDL.CompanyDB = 'SBODemoBR'

WHERE TA.TransId = @TransId or @TransId = -1

GROUP BY
TA.BPLId, TA.TransId, TA.Ref1, TA.Ref2, TA.Ref3, TA.Line_ID, 
ISNULL(FDL.ItemsId, TA.ItemsId), TA.BatchNumberId, TA.BusinessPartnerID, TA.TransType, 
TA.DocEntry, TA.BaseType, TA.BaseEntry, ISNULL(FDL.LineNum, TA.LineNum), 
TA.Installment, TA.NumAtCard, TA.SalesPersonId,  TA.AccountId, TA.ContraAccountId, TA.DueDate, TA.TaxDate, TA.RefDate,  TA.TransCode,
TA.Project, 
OcrCode.id, OcrCode2.id, OcrCode3.id, OcrCode4.id, OcrCode5.id, 
TA.ProjectContra, 
OcrCodeContra.id, OcrCode2Contra.id, OcrCode3Contra.id, OcrCode4Contra.id, OcrCode5Contra.id, 
TA.AgentId, TA.Storno

/*
Fim de fatos financeiro
*/

/*
Fatos de pré-LCM
*/

    INSERT INTO FactJournalVouchers
select cast('SBODemoBR' as nvarchar(50)) CompanyDB, isnull(t0.BPLId, -1) BPLId, T0.batchnum, ISNULL(T0.Ref1, '') Ref1, ISNULL(T0.Ref2, '') Ref2,
            ISNULL(T0.Ref3Line, '') Ref3, T0.TransId, T0.Line_ID,
			(T0.Debit*ISNULL((T30.Debit+T30.Credit)/(SELECT SUM(X0.Debit+X0.Credit) FROM SBODemoBR.dbo.BTF1 X0 where X0.TransId = T0.TransId and T0.ContraAct = X0.Account), 1)) Debit,
			(T0.Credit*ISNULL((T30.Debit+T30.Credit)/(SELECT SUM(X0.Debit+X0.Credit) FROM SBODemoBR.dbo.BTF1 X0 where X0.TransId = T0.TransId and T0.ContraAct = X0.Account), 1)) Credit,
            ISNULL(T41.BusinessPartnerID, -1) BusinessPartnerID,
			CAST(T04.TransType AS INT) TransType, cast(T04.BaseRef as int) DocEntry, 
			T0.DueDate,
			T04.TaxDate,
			T0.RefDate, 
			ISNULL(T0.TransCode, '') TransCode, COALESCE(PROJECT.id, -1) Project,
			ISNULL(OCRCODE.id, -1) OcrCode, ISNULL(OCRCODE2.id, -2) OcrCode2, ISNULL(OCRCODE3.id, -3) OcrCode3, 
			ISNULL(OCRCODE4.id, -4) OcrCode4, ISNULL(OCRCODE5.id, -5) OcrCode5,
			COALESCE(PROJECTContra.id, -1) ProjectContra,
			ISNULL(OCRCODEContra.id, -1) OcrCodeContra, ISNULL(OCRCODE2Contra.id, -2) OcrCode2Contra, ISNULL(OCRCODE3Contra.id, -3) OcrCode3Contra, 
			ISNULL(OCRCODE4Contra.id, -4) OcrCode4Contra, ISNULL(OCRCODE5Contra.id, -5) OcrCode5Contra,
            ISNULL(T001.ID, cast(-1 as smallint)) AccountID, 
            ISNULL(T002.ID, cast(-1 as smallint)) ContraAccountID
            
		from SBODemoBR.dbo.BTF1 T0 
				INNER JOIN SBODemoBR.dbo.OACT T02 ON T0.Account = T02.AcctCode
			INNER JOIN SBODemoBR.dbo.OBTF T04 ON T04.TransId = T0.TransId  AND T0.BATCHNUM = T04.BATCHNUM
			INNER JOIN OAccount T001 ON T001.AcctCode = T0.Account collate SQL_Latin1_General_CP850_CI_AS
			LEFT JOIN OAccount T002 ON T002.AcctCode = T0.ContraAct collate SQL_Latin1_General_CP850_CI_AS
			LEFT JOIN DPBusinessPartner T41 ON T41.CardCode = T0.ContraAct collate SQL_Latin1_General_CP850_CI_AS 
				and T41.CompanyDB = 'SBODemoBR'

			LEFT JOIN SBODemoBR.dbo.BTF1 T30 on T30.TransId = T0.TransId and T0.ContraAct = T30.Account

            LEFT JOIN OCostingCode OCRCODE ON T0.ProfitCode collate SQL_Latin1_General_CP850_CI_AS = OCRCODE.PrcCode and OCRCODE.DimCode = 1
            LEFT JOIN OCostingCode OCRCODE2 ON T0.OcrCode2 collate SQL_Latin1_General_CP850_CI_AS = OCRCODE2.PrcCode and OCRCODE.DimCode = 2
            LEFT JOIN OCostingCode OCRCODE3 ON T0.OcrCode3 collate SQL_Latin1_General_CP850_CI_AS = OCRCODE3.PrcCode and OCRCODE.DimCode = 3
            LEFT JOIN OCostingCode OCRCODE4 ON T0.OcrCode4 collate SQL_Latin1_General_CP850_CI_AS = OCRCODE4.PrcCode and OCRCODE.DimCode = 4
            LEFT JOIN OCostingCode OCRCODE5 ON T0.OcrCode5 collate SQL_Latin1_General_CP850_CI_AS = OCRCODE5.PrcCode and OCRCODE.DimCode = 5
            LEFT JOIN OProject PROJECT ON T0.Project collate SQL_Latin1_General_CP850_CI_AS = PROJECT.PrjCode

            LEFT JOIN OCostingCode OCRCODEContra ON T30.ProfitCode collate SQL_Latin1_General_CP850_CI_AS = OCRCODEContra.PrcCode and OCRCODEContra.DimCode = 1
            LEFT JOIN OCostingCode OCRCODE2Contra ON T30.OcrCode2 collate SQL_Latin1_General_CP850_CI_AS = OCRCODE2Contra.PrcCode and OCRCODEContra.DimCode = 2
            LEFT JOIN OCostingCode OCRCODE3Contra ON T30.OcrCode3 collate SQL_Latin1_General_CP850_CI_AS = OCRCODE3Contra.PrcCode and OCRCODEContra.DimCode = 3
            LEFT JOIN OCostingCode OCRCODE4Contra ON T30.OcrCode4 collate SQL_Latin1_General_CP850_CI_AS = OCRCODE4Contra.PrcCode and OCRCODEContra.DimCode = 4
            LEFT JOIN OCostingCode OCRCODE5Contra ON T30.OcrCode5 collate SQL_Latin1_General_CP850_CI_AS = OCRCODE5Contra.PrcCode and OCRCODEContra.DimCode = 5
            LEFT JOIN OProject PROJECTContra ON T30.Project collate SQL_Latin1_General_CP850_CI_AS = PROJECTContra.PrjCode
where t04.BtfStatus = 'O'

/*
Fatos de boletos
*/

INSERT INTO FactBillOfExchange
(CompanyDB, BPLId, APInvType,APDocEntry, DocEntry, InvType, Installment, AppliedSys, PaymentDate, OurNum, BoeStatus, TransId)

 SELECT cast ('SBODemoBR' as nvarchar(50)) companyDB, ISNULL(T0.BPLId, -1) BPLId, T0.ObjType APInvType, T0.DocNum as APDocEntry,
 T2.DocEntry, T2.InvType, T2.DocLine,
 T2.SumApplied-T2.Wtappld+T2.WtOnHold SumApplied,
 MAX(OBOT.TaxDate) as PaymentDate,
  --T3.Serial as Número_da_NF ,
 T1.OurNum,
 T1.BoeStatus, MAX(OBOT.TransId) TransId
 FROM SBODemoBR.dbo.ORCT T0 inner join SBODemoBR.dbo.OBOE T1 ON T0.BoeAbs = T1.BoeKey
 INNER JOIN SBODemoBR.dbo.RCT2 T2 ON T0.DocNum = T2.DocNum
 INNER JOIN SBODemoBR.dbo.BOT1 ON BOT1.BOENumber = T1.BoeNum AND BOT1.BoeType = 'I'
 INNER JOIN SBODemoBR.dbo.OBOT on OBOT.AbsEntry = BOT1.AbsEntry and OBOT.StatusTo = 'P'
 WHERE T1.BoeStatus = 'P'
and (OBOT.AbsEntry = @absEntry or -1 = @absEntry)
and T1.PostType = 'D'

GROUP BY 
T0.BPLId, T0.ObjType, T0.DocNum, T2.DocEntry, T2.InvType, T2.DocLine,
 T2.SumApplied-T2.Wtappld+T2.WtOnHold, T1.OurNum,  BOT1.DueDate, T1.BoeStatus



INSERT INTO FactBillOfExchange
(CompanyDB, BPLId, APInvType,APDocEntry, DocEntry, InvType, Installment, AppliedSys, PaymentDate, OurNum, BoeStatus, TransId)

 SELECT cast ('SBODemoBR' as nvarchar(50)) companyDB, ISNULL(T0.BPLId, -1) BPLId, T0.ObjType APInvType, T0.DocNum as APDocEntry,
 T2.DocEntry, T2.InvType, T2.DocLine,
 T2.SumApplied-T2.Wtappld+T2.WtOnHold SumApplied,
 MAX(OBOT.TaxDate) as PaymentDate,
  --T3.Serial as Número_da_NF ,
 T1.OurNum,
 T1.BoeStatus, MAX(OBOT.TransId) TransId
 FROM SBODemoBR.dbo.OVPM T0 inner join SBODemoBR.dbo.OBOE T1 ON T0.BoeAbs = T1.BoeKey
 INNER JOIN SBODemoBR.dbo.VPM2 T2 ON T0.DocNum = T2.DocNum
 INNER JOIN SBODemoBR.dbo.BOT1 ON BOT1.BOENumber = T1.BoeNum AND BOT1.BoeType = 'O'
 INNER JOIN SBODemoBR.dbo.OBOT on OBOT.AbsEntry = BOT1.AbsEntry and OBOT.StatusTo = 'P'
 WHERE T1.BoeStatus = 'P'
and (OBOT.AbsEntry = @absEntry or -1 = @absEntry)
and T1.PostType = 'D'

GROUP BY 
T0.BPLId, T0.ObjType, T0.DocNum, T2.DocEntry, T2.InvType, T2.DocLine,
 T2.SumApplied-T2.Wtappld+T2.WtOnHold, T1.OurNum,  T1.BoeStatus


/*
Fatos de contas a pagar e receber
*/
SELECT * INTO FactOutcomePayment FROM
(
SELECT cast('SBODemoBR' as nvarchar(50)) CompanyDB, BPLId, 
	ProjectId, ISNULL(SalesPersonId, -1) SalesPersonId,
	TransId, Line_ID, cast(TransType as int) TransType, RELAT.BaseEntry, RELAT.InvType, RELAT.DocEntry, ISNULL(LineNum, -1) LineNum,
	cast((ISNULL(DownPayment*invRate*rinRate*rctRate*rctInvRate*rctRinRate, 0)) as numeric(19,6)) DownPayment,
	cast((LineTotal*invRate*rinRate*rctRate*rctInvRate*rctRinRate) as numeric(19,6)) LineTotal, cast((sum(value*invRate*rinRate*rctRate*rctInvRate*rctRinRate)) as numeric(19,6)) ConciliedValue, 
	cast((LineTotal*invRate*rinRate*rctRate*rctInvRate*rctRinRate)-(sum(value*invRate*rinRate*rctRate*rctInvRate*rctRinRate)) as numeric(19,6)) OpenBalance,
	BusinessPartnerId, ISNULL(ItemsId, -1) ItemsId, ISNULL(BatchNumberId, -1) BatchNumberId, ISNULL(T41.ID, -1) AccountId, DueDate, 
    ISNULL(Serial, '-1') Serial, ISNULL(Installment, -1) Installment,
	BillOfExchange,
		ISNULL(PeyMethod, 'Indefinido') PeyMethod, isnull(T35.ID, -1) PayAccountId, RefDate, RELAT.CreateDate, Apportionment
FROM
(

Select T0.TransId, ISNULL(T0.BPLId, -1) BPLId, T0.Line_ID,
    COALESCE(T9.DocEntry, T11.DocEntry, T21.DocEntry, T23.DocEntry, -1) DocEntry,
    COALESCE(T9.ObjType, T11.ObjType, T21.ObjType, T23.ObjType, -1) InvType,
	COALESCE(T9.LineNum, T11.LineNum, T21.LineNum, T23.LineNum, T15.InvoiceId, -1) LineNum,
	ISNULL(OProject.id, -1) ProjectId,
	COALESCE(T5.DpmAmnt, T6.DpmAmnt, T20.DpmAmnt, T22.DpmAmnt, 0)*ISNULL(BN.Quantity/BN.DocQty, 1) DownPayment,
	cast(COALESCE(OSLP.SalesPersonId, -1) as smallint) SalesPersonId, 
	COALESCE(T9.Weight1, T11.Weight1, T21.Weight1, T23.Weight1, 0) LineWeight,
	cast(T1.TransType as int) TransType, T1.CreatedBy BaseEntry, (T0.Credit-T0.Debit)*ISNULL(BN.Quantity/BN.DocQty, 1) LineTotal,

ISNULL(((CASE WHEN T10.ReconNum IS NULL THEN 0 WHEN T4.IsCredit = 'C' THEN T4.ReconSum
							WHEN T4.IsCredit = 'D' THEN T4.ReconSum*-1 END)),0)*ISNULL(BN.Quantity/BN.DocQty, 1) value,
T3.BusinessPartnerId, ISNULL(T40.ItemsId, -1) ItemsId, ISNULL(DPBN.BatchNumberId, -1) BatchNumberId, 
COALESCE(T9.AcctCode, T11.AcctCode, T21.AcctCode, T23.AcctCode, T0.ContraAct) AcctCode, 

T0.DueDate, T1.RefDate, T1.CreateDate,

COALESCE(CAST(T5.Serial as nvarchar(100)), CAST(T6.Serial as nvarchar(100)),
		(SELECT TOP 1 cast(X0.Serial as nvarchar(100)) from SBODemoBR.dbo.OPCH X0 INNER JOIN SBODemoBR.dbo.VPM2 X1 ON X0.DocEntry = X1.DocEntry and X1.InvType = 18
			WHERE X1.DocNum = T1.CreatedBy and T1.TransType = 46  and X1.InvoiceId = T15.InvoiceId), -1) Serial,
			cast(COALESCE(T51.InstlmntID, T61.InstlmntID, T151.InstlmntID, T161.InstlmntID, -1) as smallint) Installment,
			COALESCE(T51.InstPrcnt, T61.InstPrcnt, T151.InstPrcnt, T161.InstPrcnt, 100)/100 Apportionment,
COALESCE(CAST(T5.Model as nvarchar(100)), CAST(T6.Model as nvarchar(100)),
		(SELECT TOP 1 X0.Model from SBODemoBR.dbo.OPCH X0 INNER JOIN SBODemoBR.dbo.VPM2 X1 ON X0.DocEntry = X1.DocEntry and X1.InvType = 18
			WHERE X1.DocNum = T1.CreatedBy and T1.TransType = 46), '-') Modelo,

 ISNULL(T8.OurNum, -1) BillOfExchange,
		coalesce(T30.Descript, T31.Descript, T32.Descript, T33.Descript, T34.Descript, '-') PeyMethod,
        COALESCE(T30.GLAccount, T31.GLAccount, T32.GLAccount, T33.GLAccount, T34.GLAccount) PayAccount,
			cast(ISNULL(CASE WHEN T9.LineTotal = 0 and (T5.DocTotal+T5.WTSUm-T5.VatSum+T5.DiscSum-T5.TotalExpns+T5.DpmAmnt)= 0 THEN 1 WHEN (T5.DocTotal+T5.WTSUm-T5.VatSum+T5.DiscSum-T5.TotalExpns+T5.DpmAmnt)= 0 THEN 0 ELSE (T9.LineTotal/(T5.DocTotal+T5.WTSUm-T5.VatSum+T5.DiscSum-T5.TotalExpns+T5.DpmAmnt)) END, 1) as float) invRate,
			cast(ISNULL(CASE WHEN ISNULL(T11.LineTotal,0) = 0 and (T6.DocTotal+T6.WTSUm-T6.VatSum+T6.DiscSum-T6.TotalExpns+T6.DpmAmnt)=0 THEN 1 WHEN (T6.DocTotal+T6.WTSUm-T6.VatSum+T6.DiscSum-T6.TotalExpns+T6.DpmAmnt)=0 THEN 0 ELSE (T11.LineTotal/(T6.DocTotal+T6.WTSUm-T6.VatSum+T6.DiscSum-T6.TotalExpns+T6.DpmAmnt)) END, 1) as float) rinRate,
			cast(ISNULL(CASE WHEN T7.DocTotal = 0 THEN 0 ELSE T15.AppliedSys/T7.DocTotal END, 1) as float) rctRate,
			cast(ISNULL(CASE WHEN T21.LineTotal = 0 and (T20.DocTotal+T20.WTSUm-T20.VatSum+T20.DiscSum-T20.TotalExpns+T20.DpmAmnt)=0 THEN 1 WHEN (T20.DocTotal+T20.WTSUm-T20.VatSum+T20.DiscSum-T20.TotalExpns+T20.DpmAmnt)=0 THEN 0 ELSE (T21.LineTotal/(T20.DocTotal+T20.WTSUm-T20.VatSum+T20.DiscSum-T20.TotalExpns+T20.DpmAmnt)) END, 1) as float) rctInvRate,
			cast(ISNULL(CASE WHEN T21.LineTotal = 0 and (T22.DocTotal+T22.WTSUm-T22.VatSum+T22.DiscSum-T22.TotalExpns+T22.DpmAmnt)=0 THEN 1 WHEN (T22.DocTotal+T22.WTSUm-T22.VatSum+T22.DiscSum-T22.TotalExpns+T22.DpmAmnt)=0 THEN 0 ELSE (T23.LineTotal/(T22.DocTotal+T22.WTSUm-T22.VatSum+T22.DiscSum-T22.TotalExpns+T22.DpmAmnt)) END, 1) as float) rctRinRate
		
	from SBODemoBR.dbo.JDT1 T0 INNER JOIN SBODemoBR.dbo.OJDT T1 ON T0.TransId = T1.TransId
			INNER JOIN SBODemoBR.dbo.OACT T2 ON T0.Account = T2.AcctCode
            INNER JOIN SBODemoBR.dbo.OCRD on OCRD.CardCode = T0.ShortName
			INNER JOIN DPBusinessPartner T3 ON T0.ShortName collate SQL_Latin1_General_CP850_CI_AS = T3.CardCode
					AND T3.CompanyDB = 'SBODemoBR'
			INNER JOIN OBusinessPartner TT3 ON T3.BusinessPartnerId = TT3.Id
			LEFT JOIN SBODemoBR.dbo.ITR1 T4 ON T1.TransType = T4.SrcObjTyp and T1.CreatedBy = T4.SrcObjAbs and T0.Line_ID = T4.TransRowId and T0.TransId = T4.TransId
			LEFT JOIN SBODemoBR.dbo.OITR T10 ON T4.ReconNum = T10.ReconNum
			LEFT JOIN SBODemoBR.dbo.OPCH T5 ON T1.CreatedBy = T5.DocEntry and T1.TransType = 18
			LEFT JOIN SBODemoBR.dbo.PCH6 T51 ON T51.DocEntry = T5.DocEntry and T51.InstlmntId = T0.SourceLine				
			LEFT JOIN SBODemoBR.dbo.ORPC T6 ON T1.CreatedBy = T6.DocEntry and T1.TransType = 19
			LEFT JOIN SBODemoBR.dbo.RPC6 T61 ON T61.DocEntry = T6.DocEntry and T61.InstlmntId = T0.SourceLine
			LEFT JOIN SBODemoBR.dbo.OVPM T7 ON T1.CreatedBy = T7.DocNum and T1.TransType = 46
			LEFT JOIN SBODemoBR.dbo.VPM2 T15 ON T7.DocNum = T15.DocNum and T15.InvType in (18, 19, 30)
			LEFT JOIN SBODemoBR.dbo.OPCH T20 ON T15.DocEntry = T20.DocEntry and T15.InvType = 18
			LEFT JOIN SBODemoBR.dbo.PCH1 T21 ON T20.DocEntry = T21.DocEntry AND T21.TaxOnly = 'N'
			LEFT JOIN SBODemoBR.dbo.ORPC T22 ON T15.DocEntry = T22.DocEntry and T15.InvType = 19
			LEFT JOIN SBODemoBR.dbo.RPC1 T23 ON T22.DocEntry = T23.DocEntry AND T23.TaxOnly = 'N'
			LEFT JOIN SBODemoBR.dbo.PCH6 T151 ON T151.DocEntry = T20.DocEntry and T151.InstlmntId = T15.InstId
			LEFT JOIN SBODemoBR.dbo.RPC6 T161 ON T161.DocEntry = T22.DocEntry and T161.InstlmntId = T15.InstId
			LEFT JOIN SBODemoBR.dbo.OBOE T8 ON T7.BoeAbs = T8.BoeKey
			LEFT JOIN SBODemoBR.dbo.PCH1 T9 ON T5.DocEntry = T9.DocEntry and T9.TaxOnly = 'N'
			LEFT JOIN SBODemoBR.dbo.RPC1 T11 ON T6.DocEntry = T11.DocEntry and T11.TaxOnly = 'N'
			LEFT JOIN SBODemoBR.dbo.OPYM T30 ON T5.PeyMethod = T30.PayMethCod
			LEFT JOIN SBODemoBR.dbo.OPYM T31 ON T8.PayMethCod = T31.PayMethCod
			LEFT JOIN SBODemoBR.dbo.OPYM T32 ON T6.PeyMethod = T32.PayMethCod
			LEFT JOIN SBODemoBR.dbo.OPYM T33 ON T20.PeyMethod = T33.PayMethCod
			LEFT JOIN SBODemoBR.dbo.OPYM T34 ON T22.PeyMethod = T34.PayMethCod

			LEFT JOIN DPItems T40 ON T40.ItemCode = COALESCE(T9.ItemCode, T11.ItemCode, T21.ItemCode, T23.ItemCode) collate SQL_Latin1_General_CP850_CI_AS
				AND T40.CompanyDB = 'SBODemoBR'
			LEFT JOIN  (select X13.ItemCode, X11.DocEntry, X11.DocLine, X11.DocType, X13.DistNumber, X12.Quantity, X11.DocQty FROM 
					SBODemoBR.dbo.OITL X11  
								INNER JOIN SBODemoBR.dbo.ITL1 X12 ON X12.LogEntry = X11.LogEntry 
							INNER JOIN SBODemoBR.dbo.OBTN X13 ON X13.SysNumber = X12.SysNumber AND X13.ItemCode = X11.ItemCode 
					where X11.ManagedBy = '10000044' and abs(X12.Quantity) > 0) BN ON BN.ItemCode = COALESCE(T9.ItemCode, T11.ItemCode, T21.ItemCode, T23.ItemCode)
							and BN.DocEntry = T1.CreatedBy and BN.DocLine = COALESCE(T9.LineNum, T11.LineNum, T21.LineNum, T23.LineNum)
							and BN.DocType = T1.TransType
			LEFT JOIN DPBatchNumber DPBN ON DPBN.ItemCode = BN.ItemCode collate SQL_Latin1_General_CP850_CI_AS and ISNULL(DPBN.BatchNumber, 'Indefinido') = BN.DistNumber collate SQL_Latin1_General_CP850_CI_AS and DPBN.CompanyDB  = 'SBODemoBR'
			LEFT JOIN DPSalesPerson OSLP ON OSLP.SlpCode = COALESCE(T9.SlpCode, T11.SlpCode, T21.SlpCode, T23.SlpCode, T5.SlpCode, T6.SlpCode, T20.SlpCode, T22.SlpCode)
						and OSLP.CompanyDB = 'SBODemoBR'
            LEFT JOIN OProject ON OProject.PrjCode = COALESCE(T9.Project, T11.Project, T21.Project, T23.Project, T5.Project, T6.Project, T20.Project, T22.Project, T0.Project) collate SQL_Latin1_General_CP850_CI_AS
WHERE T2.LocManTran = 'Y' and OCRD.CardType = 'S'
and (T0.TransId = @transId or @transId = -1)
and (@reconNum = -1 or T0.TransId in (SELECT TransId FROM SBODemoBR.dbo.ITR1 WHERE ReconNum = @reconNum))
and T0.TransType <> 321

) RELAT
            LEFT JOIN OAccount T35 on PayAccount collate SQL_Latin1_General_CP850_CI_AS = T35.AcctCode
			LEFT JOIN OAccount T41 ON T41.AcctCode =  RELAT.AcctCode collate SQL_Latin1_General_CP850_CI_AS

GROUP BY
BPLId, TransId, ProjectId, SalesPersonId, Line_ID, TransType, RELAT.BaseEntry, RELAT.LineNum, RELAT.InvType, RELAT.DocEntry, BusinessPartnerId, ItemsId, BatchNumberId, T41.Id, DueDate, Serial, Installment, Modelo, BillOfExchange, TransType,
		PeyMethod, T35.Id, RefDate, RELAT.CreateDate, 
		DownPayment, LineTotal, invRate, rinRate, rctRate, rctInvRate, rctRinRate, Apportionment
HAVING (LineTotal*invRate*rinRate*rctRate*rctInvRate*rctRinRate) <> SUM(value*invRate*rinRate*rctRate*rctInvRate*rctRinRate)
) TMP


SELECT * INTO FactIncomePayment FROM
(
SELECT cast('SBODemoBR' as nvarchar(50)) CompanyDB, BPLId,
	ProjectId, ISNULL(SalesPersonId, -1) SalesPersonId,
	TransId, Line_ID, cast(TransType as int) TransType, RELAT.BaseEntry, RELAT.InvType, RELAT.DocEntry, ISNULL(LineNum, -1) LineNum,

	cast((ISNULL(DownPayment*invRate*rinRate*rctRate*rctInvRate*rctRinRate, 0)) as numeric(19,6)) DownPayment,
	cast((LineTotal*invRate*rinRate*rctRate*rctInvRate*rctRinRate) as numeric(19,6)) LineTotal, cast((sum(value*invRate*rinRate*rctRate*rctInvRate*rctRinRate)) as numeric(19,6)) ConciliedValue, 
	cast((LineTotal*invRate*rinRate*rctRate*rctInvRate*rctRinRate)-(sum(value*invRate*rinRate*rctRate*rctInvRate*rctRinRate)) as numeric(19,6)) OpenBalance,
	BusinessPartnerId, ISNULL(ItemsId, -1) ItemsId, ISNULL(BatchNumberId, -1) BatchNumberId, ISNULL(T41.ID, -1) AccountId, DueDate, 
    ISNULL(Serial, '-1') Serial, ISNULL(Installment, -1) Installment,
	BillOfExchange,
		ISNULL(PeyMethod, 'Indefinido') PeyMethod, isnull(T35.ID, -1) PayAccountId, RefDate, RELAT.CreateDate, Apportionment
FROM
(

Select T0.TransId, ISNULL(T0.BPLId, -1) BPLId, T0.Line_ID,
    COALESCE(T9.DocEntry, T11.DocEntry, T21.DocEntry, T23.DocEntry, -1) DocEntry,
    COALESCE(T9.ObjType, T11.ObjType, T21.ObjType, T23.ObjType, -1) InvType,
	COALESCE(T9.LineNum, T11.LineNum, T21.LineNum, T23.LineNum, T15.InvoiceId, -1) LineNum,
	ISNULL(OProject.id, -1) ProjectId, 
	COALESCE(T5.DpmAmnt, T6.DpmAmnt, T20.DpmAmnt, T22.DpmAmnt, 0)*ISNULL(BN.Quantity/BN.DocQty, 1) DownPayment,
	cast(COALESCE(OSLP.SalesPersonId, -1) as smallint) SalesPersonId, 
	COALESCE(T9.Weight1, T11.Weight1, T21.Weight1, T23.Weight1, 0) LineWeight,
	cast(T1.TransType as int) TransType, T1.CreatedBy BaseEntry, (T0.Debit-T0.Credit)*ISNULL(BN.Quantity/BN.DocQty, 1) LineTotal,

ISNULL(((CASE WHEN T10.ReconNum IS NULL THEN 0 WHEN T4.IsCredit = 'D' THEN T4.ReconSum
							WHEN T4.IsCredit = 'C' THEN T4.ReconSum*-1 END)),0)*ISNULL(BN.Quantity/BN.DocQty, 1) value,
T3.BusinessPartnerId, ISNULL(T40.ItemsId, -1) ItemsId, ISNULL(DPBN.BatchNumberId, -1) BatchNumberId, 
    COALESCE(T9.AcctCode, T11.AcctCode, T21.AcctCode, T23.AcctCode, T0.ContraAct) AcctCode,
    T0.DueDate, T1.RefDate, T1.CreateDate,

COALESCE(CAST(T5.Serial as nvarchar(100)), CAST(T6.Serial as nvarchar(100)),
		(SELECT TOP 1 cast(X0.Serial as nvarchar(100)) from SBODemoBR.dbo.OINV X0 INNER JOIN SBODemoBR.dbo.RCT2 X1 ON X0.DocEntry = X1.DocEntry and X1.InvType = 13
			WHERE X1.DocNum = T1.CreatedBy and T1.TransType = 24 and X1.InvoiceId = T15.InvoiceId), -1) Serial,
			cast(COALESCE(T51.InstlmntID, T61.InstlmntID, T151.InstlmntID, T161.InstlmntID, -1) as smallint) Installment,
			COALESCE(T51.InstPrcnt, T61.InstPrcnt, T151.InstPrcnt, T161.InstPrcnt, 100)/100 Apportionment,
COALESCE(CAST(T5.Model as nvarchar(100)), CAST(T6.Model as nvarchar(100)),
		(SELECT TOP 1 X0.Model from SBODemoBR.dbo.OINV X0 INNER JOIN SBODemoBR.dbo.RCT2 X1 ON X0.DocEntry = X1.DocEntry and X1.InvType = 13
			WHERE X1.DocNum = T1.CreatedBy and T1.TransType = 24), '-') Modelo,

 ISNULL(T8.OurNum, -1) BillOfExchange,
		coalesce(T30.Descript, T31.Descript, '-') PeyMethod,
            COALESCE(T30.GLAccount, T31.GLAccount, T32.GLAccount, T33.GLAccount, T34.GLAccount) PayAccount,
			cast(ISNULL(CASE WHEN T9.LineTotal = 0 and (T5.DocTotal+T5.WTSUm-T5.VatSum+T5.DiscSum-T5.TotalExpns+T5.DpmAmnt)= 0 THEN 1 WHEN (T5.DocTotal+T5.WTSUm-T5.VatSum+T5.DiscSum-T5.TotalExpns+T5.DpmAmnt)= 0 THEN 0 ELSE (T9.LineTotal/(T5.DocTotal+T5.WTSUm-T5.VatSum+T5.DiscSum-T5.TotalExpns+T5.DpmAmnt)) END, 1) as float) invRate,
			cast(ISNULL(CASE WHEN ISNULL(T11.LineTotal,0) = 0 and (T6.DocTotal+T6.WTSUm-T6.VatSum+T6.DiscSum-T6.TotalExpns+T6.DpmAmnt)=0 THEN 1 WHEN (T6.DocTotal+T6.WTSUm-T6.VatSum+T6.DiscSum-T6.TotalExpns+T6.DpmAmnt)=0 THEN 0 ELSE (T11.LineTotal/(T6.DocTotal+T6.WTSUm-T6.VatSum+T6.DiscSum-T6.TotalExpns+T6.DpmAmnt)) END, 1) as float) rinRate,
			cast(ISNULL(CASE WHEN T7.DocTotal = 0 THEN 0 ELSE T15.AppliedSys/T7.DocTotal END, 1) as float) rctRate,
			cast(ISNULL(CASE WHEN T21.LineTotal = 0 and (T20.DocTotal+T20.WTSUm-T20.VatSum+T20.DiscSum-T20.TotalExpns+T20.DpmAmnt)=0 THEN 1 WHEN (T20.DocTotal+T20.WTSUm-T20.VatSum+T20.DiscSum-T20.TotalExpns+T20.DpmAmnt)=0 THEN 0 ELSE (T21.LineTotal/(T20.DocTotal+T20.WTSUm-T20.VatSum+T20.DiscSum-T20.TotalExpns+T20.DpmAmnt)) END, 1) as float) rctInvRate,
			cast(ISNULL(CASE WHEN T23.LineTotal = 0 and (T22.DocTotal+T22.WTSUm-T22.VatSum+T22.DiscSum-T22.TotalExpns+T22.DpmAmnt)=0 THEN 1 WHEN (T22.DocTotal+T22.WTSUm-T22.VatSum+T22.DiscSum-T22.TotalExpns+T22.DpmAmnt)=0 THEN 0 ELSE (T23.LineTotal/(T22.DocTotal+T22.WTSUm-T22.VatSum+T22.DiscSum-T22.TotalExpns+T22.DpmAmnt)) END, 1) as float) rctRinRate
		
	from SBODemoBR.dbo.JDT1 T0 INNER JOIN SBODemoBR.dbo.OJDT T1 ON T0.TransId = T1.TransId
			INNER JOIN SBODemoBR.dbo.OACT T2 ON T0.Account = T2.AcctCode
            INNER JOIN SBODemoBR.dbo.OCRD on OCRD.CardCode = T0.ShortName
			INNER JOIN DPBusinessPartner T3 ON T0.ShortName collate SQL_Latin1_General_CP850_CI_AS = T3.CardCode
					AND T3.CompanyDB = 'SBODemoBR'
			INNER JOIN OBusinessPartner TT3 ON T3.BusinessPartnerId = TT3.Id
			LEFT JOIN SBODemoBR.dbo.ITR1 T4 ON T1.TransType = T4.SrcObjTyp and T1.CreatedBy = T4.SrcObjAbs and T0.Line_ID = T4.TransRowId and T0.TransId = T4.TransId
			LEFT JOIN SBODemoBR.dbo.OITR T10 ON T4.ReconNum = T10.ReconNum
			LEFT JOIN SBODemoBR.dbo.OINV T5 ON T1.CreatedBy = T5.DocEntry and T1.TransType = 13
			LEFT JOIN SBODemoBR.dbo.INV6 T51 ON T51.DocEntry = T5.DocEntry and T51.InstlmntId = T0.SourceLine				
			LEFT JOIN SBODemoBR.dbo.ORIN T6 ON T1.CreatedBy = T6.DocEntry and T1.TransType = 14
			LEFT JOIN SBODemoBR.dbo.RIN6 T61 ON T61.DocEntry = T6.DocEntry and T61.InstlmntId = T0.SourceLine
			LEFT JOIN SBODemoBR.dbo.ORCT T7 ON T1.CreatedBy = T7.DocNum and T1.TransType = 24
			LEFT JOIN SBODemoBR.dbo.RCT2 T15 ON T7.DocNum = T15.DocNum and T15.InvType in (13, 14, 30)
			LEFT JOIN SBODemoBR.dbo.OINV T20 ON T15.DocEntry = T20.DocEntry and T15.InvType = 13
			LEFT JOIN SBODemoBR.dbo.INV1 T21 ON T20.DocEntry = T21.DocEntry AND T21.TaxOnly = 'N'
			LEFT JOIN SBODemoBR.dbo.ORIN T22 ON T15.DocEntry = T22.DocEntry and T15.InvType = 14
			LEFT JOIN SBODemoBR.dbo.RIN1 T23 ON T22.DocEntry = T23.DocEntry AND T23.TaxOnly = 'N'
			LEFT JOIN SBODemoBR.dbo.INV6 T151 ON T151.DocEntry = T20.DocEntry and T151.InstlmntId = T15.InstId
			LEFT JOIN SBODemoBR.dbo.RIN6 T161 ON T161.DocEntry = T22.DocEntry and T161.InstlmntId = T15.InstId
			LEFT JOIN SBODemoBR.dbo.OBOE T8 ON T7.BoeAbs = T8.BoeKey
			LEFT JOIN SBODemoBR.dbo.INV1 T9 ON T5.DocEntry = T9.DocEntry and T9.TaxOnly = 'N'
			LEFT JOIN SBODemoBR.dbo.RIN1 T11 ON T6.DocEntry = T11.DocEntry and T11.TaxOnly = 'N'
			LEFT JOIN SBODemoBR.dbo.OPYM T30 ON T5.PeyMethod = T30.PayMethCod
			LEFT JOIN SBODemoBR.dbo.OPYM T31 ON T8.PayMethCod = T31.PayMethCod
			LEFT JOIN SBODemoBR.dbo.OPYM T32 ON T6.PeyMethod = T32.PayMethCod
			LEFT JOIN SBODemoBR.dbo.OPYM T33 ON T20.PeyMethod = T33.PayMethCod
			LEFT JOIN SBODemoBR.dbo.OPYM T34 ON T22.PeyMethod = T34.PayMethCod

			LEFT JOIN DPItems T40 ON T40.ItemCode = COALESCE(T9.ItemCode, T11.ItemCode, T21.ItemCode, T23.ItemCode) collate SQL_Latin1_General_CP850_CI_AS
				AND T40.CompanyDB = 'SBODemoBR'

			LEFT JOIN  (select X13.ItemCode, X11.DocEntry, X11.DocLine, X11.DocType, X13.DistNumber, X12.Quantity, X11.DocQty FROM 
					SBODemoBR.dbo.OITL X11  
								INNER JOIN SBODemoBR.dbo.ITL1 X12 ON X12.LogEntry = X11.LogEntry 
							INNER JOIN SBODemoBR.dbo.OBTN X13 ON X13.SysNumber = X12.SysNumber AND X13.ItemCode = X11.ItemCode 
					where X11.ManagedBy = '10000044' and abs(X12.Quantity) > 0) BN ON BN.ItemCode = COALESCE(T9.ItemCode, T11.ItemCode, T21.ItemCode, T23.ItemCode)
							and BN.DocEntry = T1.CreatedBy and BN.DocLine = COALESCE(T9.LineNum, T11.LineNum, T21.LineNum, T23.LineNum)
							and BN.DocType = T1.TransType
			LEFT JOIN DPBatchNumber DPBN ON DPBN.ItemCode = BN.ItemCode collate SQL_Latin1_General_CP850_CI_AS and ISNULL(DPBN.BatchNumber, 'Indefinido') = BN.DistNumber collate SQL_Latin1_General_CP850_CI_AS and DPBN.CompanyDB  = 'SBODemoBR'
			LEFT JOIN DPSalesPerson OSLP ON OSLP.SlpCode = COALESCE(T9.SlpCode, T11.SlpCode, T21.SlpCode, T23.SlpCode, T5.SlpCode, T6.SlpCode, T20.SlpCode, T22.SlpCode)
						and OSLP.CompanyDB = 'SBODemoBR'
            LEFT JOIN OProject on OProject.PrjCode = COALESCE(T9.Project, T11.Project, T21.Project, T23.Project, T5.Project, T6.Project, T20.Project, T22.Project, T0.Project)  collate SQL_Latin1_General_CP850_CI_AS
WHERE T2.LocManTran = 'Y' and OCRD.CardType = 'C'
and (T0.TransId = @transId or @transId = -1)
and (@reconNum = -1 or T0.TransId in (SELECT TransId FROM SBODemoBR.dbo.ITR1 WHERE ReconNum = @reconNum))
and T0.TransType <> 321

) RELAT
            LEFT JOIN OAccount T35 on PayAccount collate SQL_Latin1_General_CP850_CI_AS = T35.AcctCode
			LEFT JOIN OAccount T41 ON T41.AcctCode =  RELAT.AcctCode collate SQL_Latin1_General_CP850_CI_AS

GROUP BY
BPLId, TransId, ProjectId, SalesPersonId, Line_ID, TransType, RELAT.BaseEntry, RELAT.LineNum, RELAT.InvType, RELAT.DocEntry, BusinessPartnerId, ItemsId, BatchNumberId, T41.Id, DueDate, Serial, Installment, Modelo, BillOfExchange, TransType,
		PeyMethod, T35.Id, RefDate, RELAT.CreateDate, 
		DownPayment, LineTotal, invRate, rinRate, rctRate, rctInvRate, rctRinRate, Apportionment
HAVING (LineTotal*invRate*rinRate*rctRate*rctInvRate*rctRinRate) <> SUM(value*invRate*rinRate*rctRate*rctInvRate*rctRinRate)
) TMP


/*
Fatos de estoque
*/

INSERT INTO FactInventory (CompanyDB, ItemsId, BatchNumberId, DocEntry, InvType, LineNum, InQty, OutQty, TransValue, DocDate, TaxDate, WarehouseId)

select cast('SBODemoBR' as nvarchar(50)) CompanyDB, DPItems.ItemsId, ISNULL(DPBatchNumber.BatchNumberId, -1) BatchNumberId, ISNULL(X0.CreatedBy, -1) DocEntry, X0.TransType InvType, X0.DocLineNum LineNum, 
		CASE WHEN T0.Quantity is null and x1.LayerInQty is not null THEN X1.LayerInQty WHEN x1.LayerInQty is null then X0.InQty WHEN T0.Quantity > 0 THEN T0.Quantity ELSE 0 END InQty,
		CASE WHEN T0.Quantity is null and X1.LayerOutQ is not null then X1.LayerOutQ WHEN X1.LayerOutQ is null then x0.OutQty WHEN T0.Quantity < 0 THEN ABS(T0.Quantity) ELSE 0 END OutQty,
	X1.TransValue*ABS(case when (X0.InQty+X0.OutQty) > 0 then ISNULL(T0.Quantity, (X0.InQty+X0.OutQty))/(X0.InQty+X0.OutQty) else 1 end), X0.DocDate, X0.CreateDate TaxDate, OWarehouse.id WarehouseId
		  from 
		  SBODemoBR.dbo.OIVL X0
    			INNER JOIN SBODemoBR.dbo.IVL1 X1 ON X0.TransSeq = X1.TransSeq
                INNER JOIN DPItems on DPItems.ItemCode = X0.ItemCode collate SQL_Latin1_General_CP850_CI_AS and DPItems.CompanyDB = 'SBODemoBR'
                INNER JOIN OWarehouse on OWarehouse.WhsCode = X0.LocCode collate SQL_Latin1_General_CP850_CI_AS and OWarehouse.CompanyDB = 'SBODemoBR'
		  LEFT JOIN 
			(select T1.SysNumber, T1.Quantity, T0.DocEntry, T0.DocType, T0.DocLine, T0.LocCode FROM SBODemoBR.dbo.OITL T0 
				INNER JOIN SBODemoBR.dbo.ITL1 t1 on T0.logentry = T1.logentry
				WHERE t0.StockEff = 1	) T0
				ON X0.CreatedBy = T0.DocEntry and X0.TransType = T0.DocType and X0.DocLineNum = T0.DocLine and X0.LocCode = T0.LocCode
		  LEFT JOIN SBODemoBR.dbo.OBTN on T0.SysNumber = OBTN.SysNumber and OBTN.ItemCode = X0.ItemCode collate SQL_Latin1_General_CP850_CI_AS
          LEFT JOIN DPBatchNumber on DPBatchNumber.BatchNumber = OBTN.DistNumber collate SQL_Latin1_General_CP850_CI_AS and DPBatchNumber.CompanyDB = 'SBODemoBR'
                and DPBatchNumber.ItemCode = X0.ItemCode collate SQL_Latin1_General_CP850_CI_AS
    WHERE (CASE WHEN T0.Quantity is null THEN X0.InQty WHEN T0.Quantity > 0 THEN T0.Quantity ELSE 0 END <> 0 
        or CASE WHEN T0.Quantity is null then X0.OutQty WHEN T0.Quantity < 0 THEN ABS(T0.Quantity) ELSE 0 END <> 0 
        or X1.TransValue <> 0)

/*
Fatos de previsão de venda
*/

INSERT INTO [OSalesForecast]
           ([Code],[Name])
SELECT Code, Name FROM SBODemoBR.dbo.OFCT
where not exists (select id from OSalesForecast where OSalesForecast.Code = OFCT.Code collate SQL_Latin1_General_CP850_CI_AS)


INSERT INTO [FactSalesForecast]
	([CompanyDB],[ItemsId],[PrevDate],[Quantity],[salesForecastId])
SELECT 'SBODemoBR', T3.ItemsId, T1.Date, T1.Quantity, T2.Id
FROM SBODemoBR.dbo.OFCT T0 INNER JOIN SBODemoBR.dbo.FCT1 T1 ON T0.AbsID = T1.AbsID
			INNER JOIN OSalesForecast T2 ON T2.Code = T0.Code collate SQL_Latin1_General_CP850_CI_AS
			INNER JOIN DPItems T3 ON T3.ItemCode = T1.ItemCode collate SQL_Latin1_General_CP850_CI_AS and T3.CompanyDB = 'SBODemoBR'

/*
Fatos de Budget
*/
insert into OBudget (sapId, companydb, Name, FinancYear)
select AbsId id, cast('SBODemoBR' as nvarchar(50)), Name, FinancYear from SBODemoBR.dbo.OBGS
where AbsId = @sapId or @sapId = -1


insert into factbudget
select T3.id, t1.AbsId sapId,  T2.ID  AccountId, cast('SBODemoBR' as nvarchar(50)),  T0.DebLTotal, T0.CredLTotal, T0.DebSTotal, T0.CredSTotal
from SBODemoBR.dbo.BGT1 T0 INNER JOIN SBODemoBR.dbo.OBGT T1 ON T0.BudgId = T1.AbsId
	INNER JOIN OAccount T2 ON T1.AcctCode COLLATE SQL_Latin1_General_CP850_CI_AS = T2.AcctCode
	INNER JOIN OBudget T3 ON T3.sapId = t0.Instance and t3.companyDB = 'SBODemoBR'


/*
Sequencia de nota
*/

    INSERT INTO OSeqCode
select cast('SBODemoBR' as nvarchar(50)) companyDB, SeqCode, SeqName from SBODemoBR.dbo.NFN1
    INSERT INTO OSeqCode VALUES (cast('SBODemoBR' as nvarchar(50)), -1, 'Manual')    
    INSERT INTO OSeqCode VALUES (cast('SBODemoBR' as nvarchar(50)), -2, 'Externo')

/*
Finalização da carga
*/

exec createIndexes
exec enableConstraints
exec enableTriggers
