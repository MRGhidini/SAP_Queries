IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK___FactBase__compa__35331FEF]') AND parent_object_id = OBJECT_ID(N'[dbo].[_FactBasePurchaseSales]'))
ALTER TABLE [dbo].[_FactBasePurchaseSales] DROP CONSTRAINT [FK___FactBase__compa__35331FEF]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Branch__CompanyD__52B6FF30]') AND parent_object_id = OBJECT_ID(N'[dbo].[Branch]'))
ALTER TABLE [dbo].[Branch] DROP CONSTRAINT [FK__Branch__CompanyD__52B6FF30]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBatchNu__Batch__54B38AE4]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBatchNumber]'))
ALTER TABLE [dbo].[DPBatchNumber] DROP CONSTRAINT [FK__DPBatchNu__Batch__54B38AE4]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBatchNu__Batch__55A7AF1D]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBatchNumber]'))
ALTER TABLE [dbo].[DPBatchNumber] DROP CONSTRAINT [FK__DPBatchNu__Batch__55A7AF1D]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBatchNu__Batch__569BD356]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBatchNumber]'))
ALTER TABLE [dbo].[DPBatchNumber] DROP CONSTRAINT [FK__DPBatchNu__Batch__569BD356]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBatchNu__Batch__578FF78F]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBatchNumber]'))
ALTER TABLE [dbo].[DPBatchNumber] DROP CONSTRAINT [FK__DPBatchNu__Batch__578FF78F]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBatchNu__Batch__58841BC8]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBatchNumber]'))
ALTER TABLE [dbo].[DPBatchNumber] DROP CONSTRAINT [FK__DPBatchNu__Batch__58841BC8]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBatchNu__Batch__59784001]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBatchNumber]'))
ALTER TABLE [dbo].[DPBatchNumber] DROP CONSTRAINT [FK__DPBatchNu__Batch__59784001]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBatchNu__Compa__5A6C643A]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBatchNumber]'))
ALTER TABLE [dbo].[DPBatchNumber] DROP CONSTRAINT [FK__DPBatchNu__Compa__5A6C643A]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBatchNu__Compa__5B608873]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBatchNumber]'))
ALTER TABLE [dbo].[DPBatchNumber] DROP CONSTRAINT [FK__DPBatchNu__Compa__5B608873]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBatchNu__Compa__5C54ACAC]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBatchNumber]'))
ALTER TABLE [dbo].[DPBatchNumber] DROP CONSTRAINT [FK__DPBatchNu__Compa__5C54ACAC]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBatchNu__Compa__5D48D0E5]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBatchNumber]'))
ALTER TABLE [dbo].[DPBatchNumber] DROP CONSTRAINT [FK__DPBatchNu__Compa__5D48D0E5]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBatchNu__Compa__5E3CF51E]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBatchNumber]'))
ALTER TABLE [dbo].[DPBatchNumber] DROP CONSTRAINT [FK__DPBatchNu__Compa__5E3CF51E]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBatchNu__Compa__5F311957]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBatchNumber]'))
ALTER TABLE [dbo].[DPBatchNumber] DROP CONSTRAINT [FK__DPBatchNu__Compa__5F311957]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBusines__Busin__60253D90]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBusinessPartner]'))
ALTER TABLE [dbo].[DPBusinessPartner] DROP CONSTRAINT [FK__DPBusines__Busin__60253D90]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBusines__Busin__611961C9]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBusinessPartner]'))
ALTER TABLE [dbo].[DPBusinessPartner] DROP CONSTRAINT [FK__DPBusines__Busin__611961C9]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBusines__Busin__620D8602]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBusinessPartner]'))
ALTER TABLE [dbo].[DPBusinessPartner] DROP CONSTRAINT [FK__DPBusines__Busin__620D8602]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBusines__Busin__6301AA3B]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBusinessPartner]'))
ALTER TABLE [dbo].[DPBusinessPartner] DROP CONSTRAINT [FK__DPBusines__Busin__6301AA3B]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBusines__Busin__63F5CE74]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBusinessPartner]'))
ALTER TABLE [dbo].[DPBusinessPartner] DROP CONSTRAINT [FK__DPBusines__Busin__63F5CE74]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBusines__Busin__64E9F2AD]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBusinessPartner]'))
ALTER TABLE [dbo].[DPBusinessPartner] DROP CONSTRAINT [FK__DPBusines__Busin__64E9F2AD]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBusines__Busin__65DE16E6]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBusinessPartnerGroup]'))
ALTER TABLE [dbo].[DPBusinessPartnerGroup] DROP CONSTRAINT [FK__DPBusines__Busin__65DE16E6]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBusines__Busin__66D23B1F]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBusinessPartnerGroup]'))
ALTER TABLE [dbo].[DPBusinessPartnerGroup] DROP CONSTRAINT [FK__DPBusines__Busin__66D23B1F]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBusines__Busin__67C65F58]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBusinessPartnerGroup]'))
ALTER TABLE [dbo].[DPBusinessPartnerGroup] DROP CONSTRAINT [FK__DPBusines__Busin__67C65F58]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBusines__Busin__68BA8391]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBusinessPartnerGroup]'))
ALTER TABLE [dbo].[DPBusinessPartnerGroup] DROP CONSTRAINT [FK__DPBusines__Busin__68BA8391]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBusines__Busin__69AEA7CA]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBusinessPartnerGroup]'))
ALTER TABLE [dbo].[DPBusinessPartnerGroup] DROP CONSTRAINT [FK__DPBusines__Busin__69AEA7CA]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBusines__Busin__6AA2CC03]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBusinessPartnerGroup]'))
ALTER TABLE [dbo].[DPBusinessPartnerGroup] DROP CONSTRAINT [FK__DPBusines__Busin__6AA2CC03]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPIndustr__Indus__6B96F03C]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPIndustrySector]'))
ALTER TABLE [dbo].[DPIndustrySector] DROP CONSTRAINT [FK__DPIndustr__Indus__6B96F03C]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPIndustr__Indus__6C8B1475]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPIndustrySector]'))
ALTER TABLE [dbo].[DPIndustrySector] DROP CONSTRAINT [FK__DPIndustr__Indus__6C8B1475]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPIndustr__Indus__6D7F38AE]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPIndustrySector]'))
ALTER TABLE [dbo].[DPIndustrySector] DROP CONSTRAINT [FK__DPIndustr__Indus__6D7F38AE]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPIndustr__Indus__6E735CE7]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPIndustrySector]'))
ALTER TABLE [dbo].[DPIndustrySector] DROP CONSTRAINT [FK__DPIndustr__Indus__6E735CE7]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPIndustr__Indus__6F678120]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPIndustrySector]'))
ALTER TABLE [dbo].[DPIndustrySector] DROP CONSTRAINT [FK__DPIndustr__Indus__6F678120]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPIndustr__Indus__705BA559]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPIndustrySector]'))
ALTER TABLE [dbo].[DPIndustrySector] DROP CONSTRAINT [FK__DPIndustr__Indus__705BA559]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPManufac__Manuf__73381204]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPManufacturers]'))
ALTER TABLE [dbo].[DPManufacturers] DROP CONSTRAINT [FK__DPManufac__Manuf__73381204]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPManufac__Manuf__742C363D]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPManufacturers]'))
ALTER TABLE [dbo].[DPManufacturers] DROP CONSTRAINT [FK__DPManufac__Manuf__742C363D]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPManufac__Manuf__75205A76]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPManufacturers]'))
ALTER TABLE [dbo].[DPManufacturers] DROP CONSTRAINT [FK__DPManufac__Manuf__75205A76]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPManufac__Manuf__76147EAF]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPManufacturers]'))
ALTER TABLE [dbo].[DPManufacturers] DROP CONSTRAINT [FK__DPManufac__Manuf__76147EAF]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPManufac__Manuf__7708A2E8]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPManufacturers]'))
ALTER TABLE [dbo].[DPManufacturers] DROP CONSTRAINT [FK__DPManufac__Manuf__7708A2E8]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPManufac__Manuf__77FCC721]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPManufacturers]'))
ALTER TABLE [dbo].[DPManufacturers] DROP CONSTRAINT [FK__DPManufac__Manuf__77FCC721]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPSalesPe__Sales__79E50F93]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPSalesPerson]'))
ALTER TABLE [dbo].[DPSalesPerson] DROP CONSTRAINT [FK__DPSalesPe__Sales__79E50F93]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPSalesPe__Sales__7AD933CC]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPSalesPerson]'))
ALTER TABLE [dbo].[DPSalesPerson] DROP CONSTRAINT [FK__DPSalesPe__Sales__7AD933CC]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPSalesPe__Sales__7BCD5805]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPSalesPerson]'))
ALTER TABLE [dbo].[DPSalesPerson] DROP CONSTRAINT [FK__DPSalesPe__Sales__7BCD5805]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPSalesPe__Sales__7CC17C3E]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPSalesPerson]'))
ALTER TABLE [dbo].[DPSalesPerson] DROP CONSTRAINT [FK__DPSalesPe__Sales__7CC17C3E]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPSalesPe__Sales__7DB5A077]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPSalesPerson]'))
ALTER TABLE [dbo].[DPSalesPerson] DROP CONSTRAINT [FK__DPSalesPe__Sales__7DB5A077]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPSalesPe__Sales__7EA9C4B0]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPSalesPerson]'))
ALTER TABLE [dbo].[DPSalesPerson] DROP CONSTRAINT [FK__DPSalesPe__Sales__7EA9C4B0]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPSalesRe__Agent__00920D22]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPSalesRepresentative]'))
ALTER TABLE [dbo].[DPSalesRepresentative] DROP CONSTRAINT [FK__DPSalesRe__Agent__00920D22]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPSalesRe__Agent__0186315B]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPSalesRepresentative]'))
ALTER TABLE [dbo].[DPSalesRepresentative] DROP CONSTRAINT [FK__DPSalesRe__Agent__0186315B]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPSalesRe__Agent__027A5594]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPSalesRepresentative]'))
ALTER TABLE [dbo].[DPSalesRepresentative] DROP CONSTRAINT [FK__DPSalesRe__Agent__027A5594]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPSalesRe__Agent__036E79CD]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPSalesRepresentative]'))
ALTER TABLE [dbo].[DPSalesRepresentative] DROP CONSTRAINT [FK__DPSalesRe__Agent__036E79CD]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPSalesRe__Agent__04629E06]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPSalesRepresentative]'))
ALTER TABLE [dbo].[DPSalesRepresentative] DROP CONSTRAINT [FK__DPSalesRe__Agent__04629E06]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPSalesRe__Agent__7F9DE8E9]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPSalesRepresentative]'))
ALTER TABLE [dbo].[DPSalesRepresentative] DROP CONSTRAINT [FK__DPSalesRe__Agent__7F9DE8E9]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPShipTyp__ShipT__0556C23F]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPShipType]'))
ALTER TABLE [dbo].[DPShipType] DROP CONSTRAINT [FK__DPShipTyp__ShipT__0556C23F]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPShipTyp__ShipT__064AE678]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPShipType]'))
ALTER TABLE [dbo].[DPShipType] DROP CONSTRAINT [FK__DPShipTyp__ShipT__064AE678]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPShipTyp__ShipT__073F0AB1]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPShipType]'))
ALTER TABLE [dbo].[DPShipType] DROP CONSTRAINT [FK__DPShipTyp__ShipT__073F0AB1]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPShipTyp__ShipT__08332EEA]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPShipType]'))
ALTER TABLE [dbo].[DPShipType] DROP CONSTRAINT [FK__DPShipTyp__ShipT__08332EEA]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPShipTyp__ShipT__09275323]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPShipType]'))
ALTER TABLE [dbo].[DPShipType] DROP CONSTRAINT [FK__DPShipTyp__ShipT__09275323]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPShipTyp__ShipT__0A1B775C]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPShipType]'))
ALTER TABLE [dbo].[DPShipType] DROP CONSTRAINT [FK__DPShipTyp__ShipT__0A1B775C]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactBillO__compa__059784B8]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactBillOfExchange]'))
ALTER TABLE [dbo].[FactBillOfExchange] DROP CONSTRAINT [FK__FactBillO__compa__059784B8]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactBillO__compa__068BA8F1]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactBillOfExchange]'))
ALTER TABLE [dbo].[FactBillOfExchange] DROP CONSTRAINT [FK__FactBillO__compa__068BA8F1]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactBillO__compa__077FCD2A]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactBillOfExchange]'))
ALTER TABLE [dbo].[FactBillOfExchange] DROP CONSTRAINT [FK__FactBillO__compa__077FCD2A]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactBillO__compa__0873F163]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactBillOfExchange]'))
ALTER TABLE [dbo].[FactBillOfExchange] DROP CONSTRAINT [FK__FactBillO__compa__0873F163]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactBillO__compa__0968159C]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactBillOfExchange]'))
ALTER TABLE [dbo].[FactBillOfExchange] DROP CONSTRAINT [FK__FactBillO__compa__0968159C]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactBillO__compa__0A5C39D5]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactBillOfExchange]'))
ALTER TABLE [dbo].[FactBillOfExchange] DROP CONSTRAINT [FK__FactBillO__compa__0A5C39D5]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactBudge__accou__3DB0F552]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactBudget]'))
ALTER TABLE [dbo].[FactBudget] DROP CONSTRAINT [FK__FactBudge__accou__3DB0F552]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactBudge__budge__3BC8ACE0]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactBudget]'))
ALTER TABLE [dbo].[FactBudget] DROP CONSTRAINT [FK__FactBudge__budge__3BC8ACE0]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactBudge__compa__3CBCD119]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactBudget]'))
ALTER TABLE [dbo].[FactBudget] DROP CONSTRAINT [FK__FactBudge__compa__3CBCD119]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactCurre__Compa__13A4E196]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactCurrency]'))
ALTER TABLE [dbo].[FactCurrency] DROP CONSTRAINT [FK__FactCurre__Compa__13A4E196]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactCurre__Compa__149905CF]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactCurrency]'))
ALTER TABLE [dbo].[FactCurrency] DROP CONSTRAINT [FK__FactCurre__Compa__149905CF]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactCurre__Compa__158D2A08]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactCurrency]'))
ALTER TABLE [dbo].[FactCurrency] DROP CONSTRAINT [FK__FactCurre__Compa__158D2A08]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactCurre__Compa__16814E41]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactCurrency]'))
ALTER TABLE [dbo].[FactCurrency] DROP CONSTRAINT [FK__FactCurre__Compa__16814E41]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactCurre__Compa__1775727A]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactCurrency]'))
ALTER TABLE [dbo].[FactCurrency] DROP CONSTRAINT [FK__FactCurre__Compa__1775727A]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactCurre__Compa__186996B3]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactCurrency]'))
ALTER TABLE [dbo].[FactCurrency] DROP CONSTRAINT [FK__FactCurre__Compa__186996B3]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactCurre__Compa__195DBAEC]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactCurrency]'))
ALTER TABLE [dbo].[FactCurrency] DROP CONSTRAINT [FK__FactCurre__Compa__195DBAEC]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactCurre__Compa__1A51DF25]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactCurrency]'))
ALTER TABLE [dbo].[FactCurrency] DROP CONSTRAINT [FK__FactCurre__Compa__1A51DF25]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactCurre__Compa__1B46035E]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactCurrency]'))
ALTER TABLE [dbo].[FactCurrency] DROP CONSTRAINT [FK__FactCurre__Compa__1B46035E]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactCurre__Compa__1C3A2797]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactCurrency]'))
ALTER TABLE [dbo].[FactCurrency] DROP CONSTRAINT [FK__FactCurre__Compa__1C3A2797]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactCurre__Compa__1D2E4BD0]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactCurrency]'))
ALTER TABLE [dbo].[FactCurrency] DROP CONSTRAINT [FK__FactCurre__Compa__1D2E4BD0]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactCurre__Compa__1E227009]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactCurrency]'))
ALTER TABLE [dbo].[FactCurrency] DROP CONSTRAINT [FK__FactCurre__Compa__1E227009]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactCurre__Compa__1F169442]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactCurrency]'))
ALTER TABLE [dbo].[FactCurrency] DROP CONSTRAINT [FK__FactCurre__Compa__1F169442]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactCurre__Compa__200AB87B]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactCurrency]'))
ALTER TABLE [dbo].[FactCurrency] DROP CONSTRAINT [FK__FactCurre__Compa__200AB87B]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactCurre__Compa__20FEDCB4]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactCurrency]'))
ALTER TABLE [dbo].[FactCurrency] DROP CONSTRAINT [FK__FactCurre__Compa__20FEDCB4]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactCurre__Compa__21F300ED]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactCurrency]'))
ALTER TABLE [dbo].[FactCurrency] DROP CONSTRAINT [FK__FactCurre__Compa__21F300ED]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactCurre__Compa__22E72526]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactCurrency]'))
ALTER TABLE [dbo].[FactCurrency] DROP CONSTRAINT [FK__FactCurre__Compa__22E72526]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactCurre__Compa__23DB495F]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactCurrency]'))
ALTER TABLE [dbo].[FactCurrency] DROP CONSTRAINT [FK__FactCurre__Compa__23DB495F]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__Busin__14C6505D]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentHeader]'))
ALTER TABLE [dbo].[FactDocumentHeader] DROP CONSTRAINT [FK__FactDocum__Busin__14C6505D]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__Compa__12DE07EB]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentHeader]'))
ALTER TABLE [dbo].[FactDocumentHeader] DROP CONSTRAINT [FK__FactDocum__Compa__12DE07EB]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__DocDa__16AE98CF]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentHeader]'))
ALTER TABLE [dbo].[FactDocumentHeader] DROP CONSTRAINT [FK__FactDocum__DocDa__16AE98CF]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__InvTy__15BA7496]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentHeader]'))
ALTER TABLE [dbo].[FactDocumentHeader] DROP CONSTRAINT [FK__FactDocum__InvTy__15BA7496]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__Model__1896E141]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentHeader]'))
ALTER TABLE [dbo].[FactDocumentHeader] DROP CONSTRAINT [FK__FactDocum__Model__1896E141]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__Payme__198B057A]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentHeader]'))
ALTER TABLE [dbo].[FactDocumentHeader] DROP CONSTRAINT [FK__FactDocum__Payme__198B057A]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__Sales__13D22C24]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentHeader]'))
ALTER TABLE [dbo].[FactDocumentHeader] DROP CONSTRAINT [FK__FactDocum__Sales__13D22C24]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__TaxDa__17A2BD08]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentHeader]'))
ALTER TABLE [dbo].[FactDocumentHeader] DROP CONSTRAINT [FK__FactDocum__TaxDa__17A2BD08]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__Accou__1C677225]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentLines]'))
ALTER TABLE [dbo].[FactDocumentLines] DROP CONSTRAINT [FK__FactDocum__Accou__1C677225]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__CogsO__240893ED]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentLines]'))
ALTER TABLE [dbo].[FactDocumentLines] DROP CONSTRAINT [FK__FactDocum__CogsO__240893ED]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__CogsO__24FCB826]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentLines]'))
ALTER TABLE [dbo].[FactDocumentLines] DROP CONSTRAINT [FK__FactDocum__CogsO__24FCB826]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__CogsO__25F0DC5F]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentLines]'))
ALTER TABLE [dbo].[FactDocumentLines] DROP CONSTRAINT [FK__FactDocum__CogsO__25F0DC5F]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__CogsO__26E50098]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentLines]'))
ALTER TABLE [dbo].[FactDocumentLines] DROP CONSTRAINT [FK__FactDocum__CogsO__26E50098]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__CogsO__27D924D1]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentLines]'))
ALTER TABLE [dbo].[FactDocumentLines] DROP CONSTRAINT [FK__FactDocum__CogsO__27D924D1]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__Compa__1A7F29B3]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentLines]'))
ALTER TABLE [dbo].[FactDocumentLines] DROP CONSTRAINT [FK__FactDocum__Compa__1A7F29B3]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__InvTy__1E4FBA97]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentLines]'))
ALTER TABLE [dbo].[FactDocumentLines] DROP CONSTRAINT [FK__FactDocum__InvTy__1E4FBA97]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__Items__1B734DEC]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentLines]'))
ALTER TABLE [dbo].[FactDocumentLines] DROP CONSTRAINT [FK__FactDocum__Items__1B734DEC]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__OcrCo__1F43DED0]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentLines]'))
ALTER TABLE [dbo].[FactDocumentLines] DROP CONSTRAINT [FK__FactDocum__OcrCo__1F43DED0]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__OcrCo__20380309]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentLines]'))
ALTER TABLE [dbo].[FactDocumentLines] DROP CONSTRAINT [FK__FactDocum__OcrCo__20380309]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__OcrCo__212C2742]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentLines]'))
ALTER TABLE [dbo].[FactDocumentLines] DROP CONSTRAINT [FK__FactDocum__OcrCo__212C2742]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__OcrCo__22204B7B]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentLines]'))
ALTER TABLE [dbo].[FactDocumentLines] DROP CONSTRAINT [FK__FactDocum__OcrCo__22204B7B]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__OcrCo__23146FB4]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentLines]'))
ALTER TABLE [dbo].[FactDocumentLines] DROP CONSTRAINT [FK__FactDocum__OcrCo__23146FB4]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__Proje__28CD490A]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentLines]'))
ALTER TABLE [dbo].[FactDocumentLines] DROP CONSTRAINT [FK__FactDocum__Proje__28CD490A]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__Usage__1D5B965E]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentLines]'))
ALTER TABLE [dbo].[FactDocumentLines] DROP CONSTRAINT [FK__FactDocum__Usage__1D5B965E]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Accou__229DD7BA]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__Accou__229DD7BA]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Accou__2391FBF3]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__Accou__2391FBF3]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Accou__2486202C]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__Accou__2486202C]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Accou__257A4465]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__Accou__257A4465]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Accou__266E689E]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__Accou__266E689E]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Accou__27628CD7]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__Accou__27628CD7]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Busin__2856B110]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__Busin__2856B110]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Busin__294AD549]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__Busin__294AD549]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Busin__2A3EF982]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__Busin__2A3EF982]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Busin__2B331DBB]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__Busin__2B331DBB]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Busin__2C2741F4]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__Busin__2C2741F4]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Busin__2D1B662D]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__Busin__2D1B662D]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Contr__2E0F8A66]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__Contr__2E0F8A66]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Contr__2F03AE9F]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__Contr__2F03AE9F]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Contr__2FF7D2D8]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__Contr__2FF7D2D8]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Contr__30EBF711]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__Contr__30EBF711]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Contr__31E01B4A]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__Contr__31E01B4A]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Contr__32D43F83]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__Contr__32D43F83]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__DueDa__33C863BC]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__DueDa__33C863BC]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__DueDa__34BC87F5]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__DueDa__34BC87F5]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__DueDa__35B0AC2E]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__DueDa__35B0AC2E]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__DueDa__36A4D067]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__DueDa__36A4D067]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__DueDa__3798F4A0]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__DueDa__3798F4A0]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__DueDa__388D18D9]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__DueDa__388D18D9]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Items__39813D12]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__Items__39813D12]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Items__3A75614B]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__Items__3A75614B]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Items__3B698584]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__Items__3B698584]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Items__3C5DA9BD]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__Items__3C5DA9BD]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Items__3D51CDF6]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__Items__3D51CDF6]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Items__3E45F22F]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__Items__3E45F22F]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__3F3A1668]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__3F3A1668]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__402E3AA1]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__402E3AA1]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__41225EDA]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__41225EDA]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__42168313]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__42168313]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__430AA74C]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__430AA74C]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__43FECB85]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__43FECB85]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__44F2EFBE]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__44F2EFBE]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__45E713F7]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__45E713F7]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__46DB3830]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__46DB3830]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__47CF5C69]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__47CF5C69]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__48C380A2]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__48C380A2]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__49B7A4DB]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__49B7A4DB]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__4AABC914]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__4AABC914]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__4B9FED4D]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__4B9FED4D]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__4C941186]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__4C941186]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__4D8835BF]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__4D8835BF]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__4E7C59F8]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__4E7C59F8]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__4F707E31]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__4F707E31]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__5064A26A]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__5064A26A]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__5158C6A3]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__5158C6A3]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__524CEADC]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__524CEADC]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__53410F15]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__53410F15]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__5435334E]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__5435334E]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__55295787]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__55295787]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__561D7BC0]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__561D7BC0]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__57119FF9]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__57119FF9]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__5805C432]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__5805C432]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__58F9E86B]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__58F9E86B]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__59EE0CA4]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__59EE0CA4]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__5AE230DD]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__5AE230DD]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__5BD65516]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__5BD65516]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__5CCA794F]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__5CCA794F]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__5DBE9D88]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__5DBE9D88]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__5EB2C1C1]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__5EB2C1C1]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__5FA6E5FA]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__5FA6E5FA]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__609B0A33]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__609B0A33]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__618F2E6C]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__618F2E6C]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__628352A5]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__628352A5]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__637776DE]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__637776DE]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__646B9B17]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__646B9B17]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__655FBF50]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__655FBF50]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__6653E389]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__6653E389]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__674807C2]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__674807C2]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__683C2BFB]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__683C2BFB]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__69305034]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__69305034]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__6A24746D]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__6A24746D]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__6B1898A6]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__6B1898A6]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__6C0CBCDF]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__6C0CBCDF]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__6D00E118]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__6D00E118]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__6DF50551]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__6DF50551]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__6EE9298A]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__6EE9298A]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__6FDD4DC3]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__6FDD4DC3]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__70D171FC]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__70D171FC]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__71C59635]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__71C59635]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__72B9BA6E]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__72B9BA6E]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__73ADDEA7]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__73ADDEA7]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__74A202E0]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__74A202E0]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__75962719]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__75962719]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__768A4B52]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__768A4B52]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__777E6F8B]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__OcrCo__777E6F8B]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Proje__0013B58C]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__Proje__0013B58C]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Proje__0107D9C5]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__Proje__0107D9C5]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Proje__01FBFDFE]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__Proje__01FBFDFE]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Proje__02F02237]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__Proje__02F02237]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Proje__787293C4]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__Proje__787293C4]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Proje__7966B7FD]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__Proje__7966B7FD]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Proje__7A5ADC36]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__Proje__7A5ADC36]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Proje__7B4F006F]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__Proje__7B4F006F]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Proje__7C4324A8]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__Proje__7C4324A8]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Proje__7D3748E1]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__Proje__7D3748E1]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Proje__7E2B6D1A]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__Proje__7E2B6D1A]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Proje__7F1F9153]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__Proje__7F1F9153]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Sales__03E44670]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__Sales__03E44670]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Sales__04D86AA9]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__Sales__04D86AA9]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Sales__05CC8EE2]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__Sales__05CC8EE2]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Sales__06C0B31B]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__Sales__06C0B31B]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Sales__07B4D754]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__Sales__07B4D754]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Sales__08A8FB8D]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__Sales__08A8FB8D]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__TaxDa__099D1FC6]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__TaxDa__099D1FC6]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__TaxDa__0A9143FF]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__TaxDa__0A9143FF]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__TaxDa__0B856838]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__TaxDa__0B856838]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__TaxDa__0C798C71]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__TaxDa__0C798C71]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__TaxDa__0D6DB0AA]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__TaxDa__0D6DB0AA]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__TaxDa__0E61D4E3]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse] DROP CONSTRAINT [FK__FactFinan__TaxDa__0E61D4E3]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactIncom__Accou__10019B40]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactIncomePayment]'))
ALTER TABLE [dbo].[FactIncomePayment] DROP CONSTRAINT [FK__FactIncom__Accou__10019B40]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactIncom__Batch__11E9E3B2]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactIncomePayment]'))
ALTER TABLE [dbo].[FactIncomePayment] DROP CONSTRAINT [FK__FactIncom__Batch__11E9E3B2]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactIncom__Busin__0F0D7707]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactIncomePayment]'))
ALTER TABLE [dbo].[FactIncomePayment] DROP CONSTRAINT [FK__FactIncom__Busin__0F0D7707]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactIncom__Compa__0C310A5C]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactIncomePayment]'))
ALTER TABLE [dbo].[FactIncomePayment] DROP CONSTRAINT [FK__FactIncom__Compa__0C310A5C]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactIncom__Items__0D252E95]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactIncomePayment]'))
ALTER TABLE [dbo].[FactIncomePayment] DROP CONSTRAINT [FK__FactIncom__Items__0D252E95]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactIncom__Sales__0E1952CE]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactIncomePayment]'))
ALTER TABLE [dbo].[FactIncomePayment] DROP CONSTRAINT [FK__FactIncom__Sales__0E1952CE]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactIncom__Trans__10F5BF79]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactIncomePayment]'))
ALTER TABLE [dbo].[FactIncomePayment] DROP CONSTRAINT [FK__FactIncom__Trans__10F5BF79]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Batch__2F17F1E1]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory] DROP CONSTRAINT [FK__FactInven__Batch__2F17F1E1]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Batch__300C161A]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory] DROP CONSTRAINT [FK__FactInven__Batch__300C161A]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Batch__31003A53]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory] DROP CONSTRAINT [FK__FactInven__Batch__31003A53]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Batch__31F45E8C]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory] DROP CONSTRAINT [FK__FactInven__Batch__31F45E8C]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Batch__32E882C5]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory] DROP CONSTRAINT [FK__FactInven__Batch__32E882C5]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Batch__33DCA6FE]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory] DROP CONSTRAINT [FK__FactInven__Batch__33DCA6FE]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Compa__34D0CB37]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory] DROP CONSTRAINT [FK__FactInven__Compa__34D0CB37]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Compa__35C4EF70]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory] DROP CONSTRAINT [FK__FactInven__Compa__35C4EF70]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Compa__36B913A9]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory] DROP CONSTRAINT [FK__FactInven__Compa__36B913A9]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Compa__37AD37E2]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory] DROP CONSTRAINT [FK__FactInven__Compa__37AD37E2]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Compa__38A15C1B]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory] DROP CONSTRAINT [FK__FactInven__Compa__38A15C1B]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Compa__39958054]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory] DROP CONSTRAINT [FK__FactInven__Compa__39958054]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__DocDa__3A89A48D]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory] DROP CONSTRAINT [FK__FactInven__DocDa__3A89A48D]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__DocDa__3B7DC8C6]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory] DROP CONSTRAINT [FK__FactInven__DocDa__3B7DC8C6]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__DocDa__3C71ECFF]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory] DROP CONSTRAINT [FK__FactInven__DocDa__3C71ECFF]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__DocDa__3D661138]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory] DROP CONSTRAINT [FK__FactInven__DocDa__3D661138]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__DocDa__3E5A3571]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory] DROP CONSTRAINT [FK__FactInven__DocDa__3E5A3571]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__DocDa__3F4E59AA]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory] DROP CONSTRAINT [FK__FactInven__DocDa__3F4E59AA]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Items__40427DE3]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory] DROP CONSTRAINT [FK__FactInven__Items__40427DE3]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Items__4136A21C]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory] DROP CONSTRAINT [FK__FactInven__Items__4136A21C]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Items__422AC655]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory] DROP CONSTRAINT [FK__FactInven__Items__422AC655]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Items__431EEA8E]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory] DROP CONSTRAINT [FK__FactInven__Items__431EEA8E]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Items__44130EC7]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory] DROP CONSTRAINT [FK__FactInven__Items__44130EC7]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Items__45073300]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory] DROP CONSTRAINT [FK__FactInven__Items__45073300]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__TaxDa__45FB5739]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory] DROP CONSTRAINT [FK__FactInven__TaxDa__45FB5739]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__TaxDa__46EF7B72]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory] DROP CONSTRAINT [FK__FactInven__TaxDa__46EF7B72]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__TaxDa__47E39FAB]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory] DROP CONSTRAINT [FK__FactInven__TaxDa__47E39FAB]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__TaxDa__48D7C3E4]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory] DROP CONSTRAINT [FK__FactInven__TaxDa__48D7C3E4]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__TaxDa__49CBE81D]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory] DROP CONSTRAINT [FK__FactInven__TaxDa__49CBE81D]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__TaxDa__4AC00C56]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory] DROP CONSTRAINT [FK__FactInven__TaxDa__4AC00C56]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Wareh__4BB4308F]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory] DROP CONSTRAINT [FK__FactInven__Wareh__4BB4308F]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Wareh__4CA854C8]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory] DROP CONSTRAINT [FK__FactInven__Wareh__4CA854C8]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Wareh__4D9C7901]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory] DROP CONSTRAINT [FK__FactInven__Wareh__4D9C7901]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Wareh__4E909D3A]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory] DROP CONSTRAINT [FK__FactInven__Wareh__4E909D3A]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Wareh__4F84C173]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory] DROP CONSTRAINT [FK__FactInven__Wareh__4F84C173]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Wareh__5078E5AC]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory] DROP CONSTRAINT [FK__FactInven__Wareh__5078E5AC]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Accou__104A1D55]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__Accou__104A1D55]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Accou__113E418E]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__Accou__113E418E]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Accou__123265C7]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__Accou__123265C7]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Accou__13268A00]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__Accou__13268A00]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Accou__141AAE39]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__Accou__141AAE39]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Accou__150ED272]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__Accou__150ED272]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Busin__1602F6AB]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__Busin__1602F6AB]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Busin__16F71AE4]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__Busin__16F71AE4]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Busin__17EB3F1D]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__Busin__17EB3F1D]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Busin__18DF6356]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__Busin__18DF6356]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Busin__19D3878F]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__Busin__19D3878F]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Busin__1AC7ABC8]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__Busin__1AC7ABC8]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Compa__1BBBD001]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__Compa__1BBBD001]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Compa__1CAFF43A]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__Compa__1CAFF43A]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Compa__1DA41873]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__Compa__1DA41873]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Compa__1E983CAC]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__Compa__1E983CAC]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Compa__1F8C60E5]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__Compa__1F8C60E5]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Compa__2080851E]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__Compa__2080851E]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Contr__2174A957]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__Contr__2174A957]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Contr__2268CD90]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__Contr__2268CD90]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Contr__235CF1C9]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__Contr__235CF1C9]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Contr__24511602]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__Contr__24511602]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Contr__25453A3B]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__Contr__25453A3B]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Contr__26395E74]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__Contr__26395E74]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__DueDa__272D82AD]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__DueDa__272D82AD]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__DueDa__2821A6E6]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__DueDa__2821A6E6]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__DueDa__2915CB1F]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__DueDa__2915CB1F]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__DueDa__2A09EF58]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__DueDa__2A09EF58]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__DueDa__2AFE1391]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__DueDa__2AFE1391]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__DueDa__2BF237CA]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__DueDa__2BF237CA]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__2CE65C03]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__2CE65C03]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__2DDA803C]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__2DDA803C]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__2ECEA475]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__2ECEA475]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__2FC2C8AE]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__2FC2C8AE]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__30B6ECE7]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__30B6ECE7]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__31AB1120]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__31AB1120]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__329F3559]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__329F3559]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__33935992]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__33935992]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__34877DCB]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__34877DCB]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__357BA204]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__357BA204]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__366FC63D]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__366FC63D]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__3763EA76]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__3763EA76]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__38580EAF]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__38580EAF]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__394C32E8]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__394C32E8]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__3A405721]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__3A405721]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__3B347B5A]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__3B347B5A]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__3C289F93]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__3C289F93]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__3D1CC3CC]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__3D1CC3CC]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__3E10E805]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__3E10E805]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__3F050C3E]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__3F050C3E]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__3FF93077]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__3FF93077]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__40ED54B0]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__40ED54B0]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__41E178E9]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__41E178E9]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__42D59D22]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__42D59D22]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__43C9C15B]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__43C9C15B]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__44BDE594]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__44BDE594]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__45B209CD]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__45B209CD]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__46A62E06]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__46A62E06]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__479A523F]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__479A523F]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__488E7678]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__488E7678]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__49829AB1]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__49829AB1]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__4A76BEEA]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__4A76BEEA]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__4B6AE323]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__4B6AE323]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__4C5F075C]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__4C5F075C]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__4D532B95]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__4D532B95]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__4E474FCE]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__4E474FCE]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__4F3B7407]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__4F3B7407]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__502F9840]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__502F9840]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__5123BC79]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__5123BC79]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__5217E0B2]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__5217E0B2]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__530C04EB]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__530C04EB]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__54002924]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__54002924]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__54F44D5D]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__54F44D5D]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__55E87196]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__55E87196]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__56DC95CF]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__56DC95CF]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__57D0BA08]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__57D0BA08]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__58C4DE41]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__58C4DE41]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__59B9027A]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__59B9027A]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__5AAD26B3]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__5AAD26B3]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__5BA14AEC]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__5BA14AEC]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__5C956F25]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__5C956F25]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__5D89935E]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__5D89935E]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__5E7DB797]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__5E7DB797]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__5F71DBD0]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__5F71DBD0]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__60660009]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__60660009]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__615A2442]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__615A2442]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__624E487B]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__624E487B]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__63426CB4]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__63426CB4]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__643690ED]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__643690ED]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__652AB526]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__OcrCo__652AB526]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Proje__661ED95F]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__Proje__661ED95F]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Proje__6712FD98]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__Proje__6712FD98]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Proje__680721D1]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__Proje__680721D1]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Proje__68FB460A]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__Proje__68FB460A]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Proje__69EF6A43]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__Proje__69EF6A43]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Proje__6AE38E7C]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__Proje__6AE38E7C]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Proje__6BD7B2B5]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__Proje__6BD7B2B5]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Proje__6CCBD6EE]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__Proje__6CCBD6EE]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Proje__6DBFFB27]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__Proje__6DBFFB27]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Proje__6EB41F60]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__Proje__6EB41F60]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Proje__6FA84399]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__Proje__6FA84399]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Proje__709C67D2]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__Proje__709C67D2]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__TaxDa__71908C0B]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__TaxDa__71908C0B]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__TaxDa__7284B044]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__TaxDa__7284B044]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__TaxDa__7378D47D]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__TaxDa__7378D47D]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__TaxDa__746CF8B6]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__TaxDa__746CF8B6]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__TaxDa__75611CEF]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__TaxDa__75611CEF]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__TaxDa__76554128]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers] DROP CONSTRAINT [FK__FactJourn__TaxDa__76554128]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactL1Bud__DocDa__386C51F1]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactL1Budget]'))
ALTER TABLE [dbo].[FactL1Budget] DROP CONSTRAINT [FK__FactL1Bud__DocDa__386C51F1]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactL1Bud__DocDa__3960762A]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactL1Budget]'))
ALTER TABLE [dbo].[FactL1Budget] DROP CONSTRAINT [FK__FactL1Bud__DocDa__3960762A]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactL1Bud__DocDa__3A549A63]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactL1Budget]'))
ALTER TABLE [dbo].[FactL1Budget] DROP CONSTRAINT [FK__FactL1Bud__DocDa__3A549A63]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactL1Bud__DocDa__3B48BE9C]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactL1Budget]'))
ALTER TABLE [dbo].[FactL1Budget] DROP CONSTRAINT [FK__FactL1Bud__DocDa__3B48BE9C]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactL1Bud__DocDa__3C3CE2D5]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactL1Budget]'))
ALTER TABLE [dbo].[FactL1Budget] DROP CONSTRAINT [FK__FactL1Bud__DocDa__3C3CE2D5]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactL1Bud__DocDa__3D31070E]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactL1Budget]'))
ALTER TABLE [dbo].[FactL1Budget] DROP CONSTRAINT [FK__FactL1Bud__DocDa__3D31070E]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactL1Bud__OcrCo__3E252B47]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactL1Budget]'))
ALTER TABLE [dbo].[FactL1Budget] DROP CONSTRAINT [FK__FactL1Bud__OcrCo__3E252B47]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactL1Bud__OcrCo__3F194F80]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactL1Budget]'))
ALTER TABLE [dbo].[FactL1Budget] DROP CONSTRAINT [FK__FactL1Bud__OcrCo__3F194F80]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactL1Bud__OcrCo__400D73B9]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactL1Budget]'))
ALTER TABLE [dbo].[FactL1Budget] DROP CONSTRAINT [FK__FactL1Bud__OcrCo__400D73B9]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactL1Bud__OcrCo__410197F2]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactL1Budget]'))
ALTER TABLE [dbo].[FactL1Budget] DROP CONSTRAINT [FK__FactL1Bud__OcrCo__410197F2]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactL1Bud__OcrCo__41F5BC2B]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactL1Budget]'))
ALTER TABLE [dbo].[FactL1Budget] DROP CONSTRAINT [FK__FactL1Bud__OcrCo__41F5BC2B]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactL1Bud__OcrCo__42E9E064]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactL1Budget]'))
ALTER TABLE [dbo].[FactL1Budget] DROP CONSTRAINT [FK__FactL1Bud__OcrCo__42E9E064]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactL1Bud__Proje__43DE049D]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactL1Budget]'))
ALTER TABLE [dbo].[FactL1Budget] DROP CONSTRAINT [FK__FactL1Bud__Proje__43DE049D]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactL1Bud__Proje__44D228D6]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactL1Budget]'))
ALTER TABLE [dbo].[FactL1Budget] DROP CONSTRAINT [FK__FactL1Bud__Proje__44D228D6]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactL1Bud__Proje__45C64D0F]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactL1Budget]'))
ALTER TABLE [dbo].[FactL1Budget] DROP CONSTRAINT [FK__FactL1Bud__Proje__45C64D0F]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactL1Bud__Proje__46BA7148]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactL1Budget]'))
ALTER TABLE [dbo].[FactL1Budget] DROP CONSTRAINT [FK__FactL1Bud__Proje__46BA7148]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactL1Bud__Proje__47AE9581]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactL1Budget]'))
ALTER TABLE [dbo].[FactL1Budget] DROP CONSTRAINT [FK__FactL1Bud__Proje__47AE9581]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactL1Bud__Proje__48A2B9BA]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactL1Budget]'))
ALTER TABLE [dbo].[FactL1Budget] DROP CONSTRAINT [FK__FactL1Bud__Proje__48A2B9BA]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactOutco__Accou__09549DB1]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactOutcomePayment]'))
ALTER TABLE [dbo].[FactOutcomePayment] DROP CONSTRAINT [FK__FactOutco__Accou__09549DB1]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactOutco__Batch__0B3CE623]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactOutcomePayment]'))
ALTER TABLE [dbo].[FactOutcomePayment] DROP CONSTRAINT [FK__FactOutco__Batch__0B3CE623]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactOutco__Busin__08607978]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactOutcomePayment]'))
ALTER TABLE [dbo].[FactOutcomePayment] DROP CONSTRAINT [FK__FactOutco__Busin__08607978]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactOutco__Compa__05840CCD]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactOutcomePayment]'))
ALTER TABLE [dbo].[FactOutcomePayment] DROP CONSTRAINT [FK__FactOutco__Compa__05840CCD]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactOutco__Items__06783106]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactOutcomePayment]'))
ALTER TABLE [dbo].[FactOutcomePayment] DROP CONSTRAINT [FK__FactOutco__Items__06783106]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactOutco__Sales__076C553F]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactOutcomePayment]'))
ALTER TABLE [dbo].[FactOutcomePayment] DROP CONSTRAINT [FK__FactOutco__Sales__076C553F]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactOutco__Trans__0A48C1EA]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactOutcomePayment]'))
ALTER TABLE [dbo].[FactOutcomePayment] DROP CONSTRAINT [FK__FactOutco__Trans__0A48C1EA]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactProdO__busin__4097839E]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdOrderHeader]'))
ALTER TABLE [dbo].[FactProdOrderHeader] DROP CONSTRAINT [FK__FactProdO__busin__4097839E]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactProdO__compa__3EAF3B2C]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdOrderHeader]'))
ALTER TABLE [dbo].[FactProdOrderHeader] DROP CONSTRAINT [FK__FactProdO__compa__3EAF3B2C]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactProdO__Items__3FA35F65]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdOrderHeader]'))
ALTER TABLE [dbo].[FactProdOrderHeader] DROP CONSTRAINT [FK__FactProdO__Items__3FA35F65]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactProdO__OcrCo__427FCC10]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdOrderHeader]'))
ALTER TABLE [dbo].[FactProdOrderHeader] DROP CONSTRAINT [FK__FactProdO__OcrCo__427FCC10]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactProdO__OcrCo__4373F049]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdOrderHeader]'))
ALTER TABLE [dbo].[FactProdOrderHeader] DROP CONSTRAINT [FK__FactProdO__OcrCo__4373F049]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactProdO__OcrCo__44681482]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdOrderHeader]'))
ALTER TABLE [dbo].[FactProdOrderHeader] DROP CONSTRAINT [FK__FactProdO__OcrCo__44681482]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactProdO__OcrCo__455C38BB]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdOrderHeader]'))
ALTER TABLE [dbo].[FactProdOrderHeader] DROP CONSTRAINT [FK__FactProdO__OcrCo__455C38BB]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactProdO__OcrCo__46505CF4]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdOrderHeader]'))
ALTER TABLE [dbo].[FactProdOrderHeader] DROP CONSTRAINT [FK__FactProdO__OcrCo__46505CF4]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactProdO__proje__4744812D]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdOrderHeader]'))
ALTER TABLE [dbo].[FactProdOrderHeader] DROP CONSTRAINT [FK__FactProdO__proje__4744812D]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactProdO__wareh__418BA7D7]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdOrderHeader]'))
ALTER TABLE [dbo].[FactProdOrderHeader] DROP CONSTRAINT [FK__FactProdO__wareh__418BA7D7]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactProdO__compa__4838A566]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdOrderLines]'))
ALTER TABLE [dbo].[FactProdOrderLines] DROP CONSTRAINT [FK__FactProdO__compa__4838A566]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactProdO__Items__492CC99F]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdOrderLines]'))
ALTER TABLE [dbo].[FactProdOrderLines] DROP CONSTRAINT [FK__FactProdO__Items__492CC99F]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactProdO__OcrCo__4B151211]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdOrderLines]'))
ALTER TABLE [dbo].[FactProdOrderLines] DROP CONSTRAINT [FK__FactProdO__OcrCo__4B151211]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactProdO__OcrCo__4C09364A]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdOrderLines]'))
ALTER TABLE [dbo].[FactProdOrderLines] DROP CONSTRAINT [FK__FactProdO__OcrCo__4C09364A]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactProdO__OcrCo__4CFD5A83]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdOrderLines]'))
ALTER TABLE [dbo].[FactProdOrderLines] DROP CONSTRAINT [FK__FactProdO__OcrCo__4CFD5A83]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactProdO__OcrCo__4DF17EBC]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdOrderLines]'))
ALTER TABLE [dbo].[FactProdOrderLines] DROP CONSTRAINT [FK__FactProdO__OcrCo__4DF17EBC]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactProdO__OcrCo__4EE5A2F5]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdOrderLines]'))
ALTER TABLE [dbo].[FactProdOrderLines] DROP CONSTRAINT [FK__FactProdO__OcrCo__4EE5A2F5]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactProdO__proje__4FD9C72E]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdOrderLines]'))
ALTER TABLE [dbo].[FactProdOrderLines] DROP CONSTRAINT [FK__FactProdO__proje__4FD9C72E]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactProdO__Wareh__4A20EDD8]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdOrderLines]'))
ALTER TABLE [dbo].[FactProdOrderLines] DROP CONSTRAINT [FK__FactProdO__Wareh__4A20EDD8]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[child1]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdTree]'))
ALTER TABLE [dbo].[FactProdTree] DROP CONSTRAINT [child1]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[child10]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdTree]'))
ALTER TABLE [dbo].[FactProdTree] DROP CONSTRAINT [child10]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[child2]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdTree]'))
ALTER TABLE [dbo].[FactProdTree] DROP CONSTRAINT [child2]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[child3]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdTree]'))
ALTER TABLE [dbo].[FactProdTree] DROP CONSTRAINT [child3]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[child4]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdTree]'))
ALTER TABLE [dbo].[FactProdTree] DROP CONSTRAINT [child4]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[child5]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdTree]'))
ALTER TABLE [dbo].[FactProdTree] DROP CONSTRAINT [child5]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[child6]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdTree]'))
ALTER TABLE [dbo].[FactProdTree] DROP CONSTRAINT [child6]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[child7]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdTree]'))
ALTER TABLE [dbo].[FactProdTree] DROP CONSTRAINT [child7]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[child8]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdTree]'))
ALTER TABLE [dbo].[FactProdTree] DROP CONSTRAINT [child8]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[child9]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdTree]'))
ALTER TABLE [dbo].[FactProdTree] DROP CONSTRAINT [child9]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[companydb]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdTree]'))
ALTER TABLE [dbo].[FactProdTree] DROP CONSTRAINT [companydb]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[father]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdTree]'))
ALTER TABLE [dbo].[FactProdTree] DROP CONSTRAINT [father]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactPurch__Compa__7CEEC6CC]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactPurchaseSales]'))
ALTER TABLE [dbo].[FactPurchaseSales] DROP CONSTRAINT [FK__FactPurch__Compa__7CEEC6CC]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactPurch__Compa__7DE2EB05]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactPurchaseSales]'))
ALTER TABLE [dbo].[FactPurchaseSales] DROP CONSTRAINT [FK__FactPurch__Compa__7DE2EB05]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactPurch__Compa__7ED70F3E]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactPurchaseSales]'))
ALTER TABLE [dbo].[FactPurchaseSales] DROP CONSTRAINT [FK__FactPurch__Compa__7ED70F3E]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactPurch__InvTy__7FCB3377]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactPurchaseSales]'))
ALTER TABLE [dbo].[FactPurchaseSales] DROP CONSTRAINT [FK__FactPurch__InvTy__7FCB3377]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__Compa__54146C66]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast] DROP CONSTRAINT [FK__FactSales__Compa__54146C66]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__Compa__5508909F]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast] DROP CONSTRAINT [FK__FactSales__Compa__5508909F]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__Compa__55FCB4D8]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast] DROP CONSTRAINT [FK__FactSales__Compa__55FCB4D8]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__Compa__56F0D911]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast] DROP CONSTRAINT [FK__FactSales__Compa__56F0D911]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__Compa__57E4FD4A]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast] DROP CONSTRAINT [FK__FactSales__Compa__57E4FD4A]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__Compa__58D92183]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast] DROP CONSTRAINT [FK__FactSales__Compa__58D92183]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__Items__59CD45BC]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast] DROP CONSTRAINT [FK__FactSales__Items__59CD45BC]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__Items__5AC169F5]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast] DROP CONSTRAINT [FK__FactSales__Items__5AC169F5]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__Items__5BB58E2E]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast] DROP CONSTRAINT [FK__FactSales__Items__5BB58E2E]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__Items__5CA9B267]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast] DROP CONSTRAINT [FK__FactSales__Items__5CA9B267]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__Items__5D9DD6A0]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast] DROP CONSTRAINT [FK__FactSales__Items__5D9DD6A0]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__Items__5E91FAD9]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast] DROP CONSTRAINT [FK__FactSales__Items__5E91FAD9]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__PrevD__5F861F12]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast] DROP CONSTRAINT [FK__FactSales__PrevD__5F861F12]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__PrevD__607A434B]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast] DROP CONSTRAINT [FK__FactSales__PrevD__607A434B]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__PrevD__616E6784]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast] DROP CONSTRAINT [FK__FactSales__PrevD__616E6784]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__PrevD__62628BBD]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast] DROP CONSTRAINT [FK__FactSales__PrevD__62628BBD]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__PrevD__6356AFF6]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast] DROP CONSTRAINT [FK__FactSales__PrevD__6356AFF6]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__PrevD__644AD42F]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast] DROP CONSTRAINT [FK__FactSales__PrevD__644AD42F]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__sales__653EF868]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast] DROP CONSTRAINT [FK__FactSales__sales__653EF868]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__sales__66331CA1]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast] DROP CONSTRAINT [FK__FactSales__sales__66331CA1]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__sales__672740DA]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast] DROP CONSTRAINT [FK__FactSales__sales__672740DA]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__sales__681B6513]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast] DROP CONSTRAINT [FK__FactSales__sales__681B6513]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__sales__690F894C]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast] DROP CONSTRAINT [FK__FactSales__sales__690F894C]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__sales__6A03AD85]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast] DROP CONSTRAINT [FK__FactSales__sales__6A03AD85]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__NFEStatus__compa__6BEBF5F7]') AND parent_object_id = OBJECT_ID(N'[dbo].[NFEStatus]'))
ALTER TABLE [dbo].[NFEStatus] DROP CONSTRAINT [FK__NFEStatus__compa__6BEBF5F7]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__NFEStatus__compa__6CE01A30]') AND parent_object_id = OBJECT_ID(N'[dbo].[NFEStatus]'))
ALTER TABLE [dbo].[NFEStatus] DROP CONSTRAINT [FK__NFEStatus__compa__6CE01A30]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__NFEStatus__compa__6DD43E69]') AND parent_object_id = OBJECT_ID(N'[dbo].[NFEStatus]'))
ALTER TABLE [dbo].[NFEStatus] DROP CONSTRAINT [FK__NFEStatus__compa__6DD43E69]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__NFEStatus__compa__6EC862A2]') AND parent_object_id = OBJECT_ID(N'[dbo].[NFEStatus]'))
ALTER TABLE [dbo].[NFEStatus] DROP CONSTRAINT [FK__NFEStatus__compa__6EC862A2]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__NFEStatus__compa__6FBC86DB]') AND parent_object_id = OBJECT_ID(N'[dbo].[NFEStatus]'))
ALTER TABLE [dbo].[NFEStatus] DROP CONSTRAINT [FK__NFEStatus__compa__6FBC86DB]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__NFEStatus__compa__70B0AB14]') AND parent_object_id = OBJECT_ID(N'[dbo].[NFEStatus]'))
ALTER TABLE [dbo].[NFEStatus] DROP CONSTRAINT [FK__NFEStatus__compa__70B0AB14]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__BPCha__7298F386]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues] DROP CONSTRAINT [FK__OBPCharac__BPCha__7298F386]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__BPCha__738D17BF]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues] DROP CONSTRAINT [FK__OBPCharac__BPCha__738D17BF]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__BPCha__74813BF8]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues] DROP CONSTRAINT [FK__OBPCharac__BPCha__74813BF8]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__BPCha__75756031]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues] DROP CONSTRAINT [FK__OBPCharac__BPCha__75756031]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__BPCha__7669846A]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues] DROP CONSTRAINT [FK__OBPCharac__BPCha__7669846A]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__BPCha__775DA8A3]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues] DROP CONSTRAINT [FK__OBPCharac__BPCha__775DA8A3]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__BPCha__7851CCDC]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues] DROP CONSTRAINT [FK__OBPCharac__BPCha__7851CCDC]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__BPCha__7945F115]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues] DROP CONSTRAINT [FK__OBPCharac__BPCha__7945F115]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__BPCha__7A3A154E]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues] DROP CONSTRAINT [FK__OBPCharac__BPCha__7A3A154E]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__BPCha__7B2E3987]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues] DROP CONSTRAINT [FK__OBPCharac__BPCha__7B2E3987]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__BPCha__7C225DC0]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues] DROP CONSTRAINT [FK__OBPCharac__BPCha__7C225DC0]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__BPCha__7D1681F9]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues] DROP CONSTRAINT [FK__OBPCharac__BPCha__7D1681F9]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__Busin__00E712DD]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues] DROP CONSTRAINT [FK__OBPCharac__Busin__00E712DD]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__Busin__01DB3716]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues] DROP CONSTRAINT [FK__OBPCharac__Busin__01DB3716]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__Busin__02CF5B4F]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues] DROP CONSTRAINT [FK__OBPCharac__Busin__02CF5B4F]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__Busin__03C37F88]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues] DROP CONSTRAINT [FK__OBPCharac__Busin__03C37F88]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__Busin__04B7A3C1]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues] DROP CONSTRAINT [FK__OBPCharac__Busin__04B7A3C1]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__Busin__05ABC7FA]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues] DROP CONSTRAINT [FK__OBPCharac__Busin__05ABC7FA]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__Busin__069FEC33]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues] DROP CONSTRAINT [FK__OBPCharac__Busin__069FEC33]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__Busin__0794106C]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues] DROP CONSTRAINT [FK__OBPCharac__Busin__0794106C]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__Busin__088834A5]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues] DROP CONSTRAINT [FK__OBPCharac__Busin__088834A5]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__Busin__097C58DE]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues] DROP CONSTRAINT [FK__OBPCharac__Busin__097C58DE]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__Busin__0A707D17]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues] DROP CONSTRAINT [FK__OBPCharac__Busin__0A707D17]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__Busin__0B64A150]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues] DROP CONSTRAINT [FK__OBPCharac__Busin__0B64A150]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__Busin__0C58C589]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues] DROP CONSTRAINT [FK__OBPCharac__Busin__0C58C589]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__Busin__0D4CE9C2]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues] DROP CONSTRAINT [FK__OBPCharac__Busin__0D4CE9C2]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__Busin__0E410DFB]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues] DROP CONSTRAINT [FK__OBPCharac__Busin__0E410DFB]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__Busin__7E0AA632]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues] DROP CONSTRAINT [FK__OBPCharac__Busin__7E0AA632]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__Busin__7EFECA6B]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues] DROP CONSTRAINT [FK__OBPCharac__Busin__7EFECA6B]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__Busin__7FF2EEA4]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues] DROP CONSTRAINT [FK__OBPCharac__Busin__7FF2EEA4]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBudget__company__3EA5198B]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBudget]'))
ALTER TABLE [dbo].[OBudget] DROP CONSTRAINT [FK__OBudget__company__3EA5198B]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Busin__00FC2176]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Busin__00FC2176]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Busin__01F045AF]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Busin__01F045AF]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Busin__02E469E8]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Busin__02E469E8]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Busin__03D88E21]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Busin__03D88E21]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Busin__04CCB25A]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Busin__04CCB25A]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Busin__05C0D693]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Busin__05C0D693]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Busin__0F353234]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Busin__0F353234]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Busin__1029566D]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Busin__1029566D]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Busin__111D7AA6]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Busin__111D7AA6]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Busin__12119EDF]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Busin__12119EDF]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Busin__1305C318]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Busin__1305C318]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Busin__13F9E751]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Busin__13F9E751]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Indus__06B4FACC]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Indus__06B4FACC]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Indus__07A91F05]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Indus__07A91F05]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Indus__089D433E]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Indus__089D433E]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Indus__09916777]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Indus__09916777]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Indus__0A858BB0]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Indus__0A858BB0]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Indus__0B79AFE9]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Indus__0B79AFE9]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Indus__14EE0B8A]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Indus__14EE0B8A]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Indus__15E22FC3]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Indus__15E22FC3]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Indus__16D653FC]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Indus__16D653FC]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Indus__17CA7835]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Indus__17CA7835]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Indus__18BE9C6E]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Indus__18BE9C6E]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Indus__19B2C0A7]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Indus__19B2C0A7]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Sales__0C6DD422]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Sales__0C6DD422]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Sales__0D61F85B]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Sales__0D61F85B]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Sales__0E561C94]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Sales__0E561C94]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Sales__0F4A40CD]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Sales__0F4A40CD]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Sales__103E6506]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Sales__103E6506]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Sales__1132893F]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Sales__1132893F]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Sales__1AA6E4E0]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Sales__1AA6E4E0]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Sales__1B9B0919]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Sales__1B9B0919]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Sales__1C8F2D52]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Sales__1C8F2D52]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Sales__1D83518B]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Sales__1D83518B]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Sales__1E7775C4]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Sales__1E7775C4]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Sales__1F6B99FD]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Sales__1F6B99FD]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Terri__1226AD78]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Terri__1226AD78]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Terri__131AD1B1]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Terri__131AD1B1]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Terri__140EF5EA]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Terri__140EF5EA]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Terri__15031A23]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Terri__15031A23]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Terri__15F73E5C]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Terri__15F73E5C]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Terri__16EB6295]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Terri__16EB6295]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Terri__205FBE36]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Terri__205FBE36]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Terri__2153E26F]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Terri__2153E26F]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Terri__224806A8]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Terri__224806A8]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Terri__233C2AE1]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Terri__233C2AE1]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Terri__24304F1A]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Terri__24304F1A]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Terri__25247353]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner] DROP CONSTRAINT [FK__OBusiness__Terri__25247353]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OContactP__Busin__2618978C]') AND parent_object_id = OBJECT_ID(N'[dbo].[OContactPerson]'))
ALTER TABLE [dbo].[OContactPerson] DROP CONSTRAINT [FK__OContactP__Busin__2618978C]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OContactP__Compa__270CBBC5]') AND parent_object_id = OBJECT_ID(N'[dbo].[OContactPerson]'))
ALTER TABLE [dbo].[OContactPerson] DROP CONSTRAINT [FK__OContactP__Compa__270CBBC5]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OItemChar__Chara__2800DFFE]') AND parent_object_id = OBJECT_ID(N'[dbo].[OItemCharacteristic]'))
ALTER TABLE [dbo].[OItemCharacteristic] DROP CONSTRAINT [FK__OItemChar__Chara__2800DFFE]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OItemChar__Chara__28F50437]') AND parent_object_id = OBJECT_ID(N'[dbo].[OItemCharacteristic]'))
ALTER TABLE [dbo].[OItemCharacteristic] DROP CONSTRAINT [FK__OItemChar__Chara__28F50437]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OItemChar__Chara__29E92870]') AND parent_object_id = OBJECT_ID(N'[dbo].[OItemCharacteristic]'))
ALTER TABLE [dbo].[OItemCharacteristic] DROP CONSTRAINT [FK__OItemChar__Chara__29E92870]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OItemChar__Chara__2ADD4CA9]') AND parent_object_id = OBJECT_ID(N'[dbo].[OItemCharacteristic]'))
ALTER TABLE [dbo].[OItemCharacteristic] DROP CONSTRAINT [FK__OItemChar__Chara__2ADD4CA9]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OItemChar__Chara__2BD170E2]') AND parent_object_id = OBJECT_ID(N'[dbo].[OItemCharacteristic]'))
ALTER TABLE [dbo].[OItemCharacteristic] DROP CONSTRAINT [FK__OItemChar__Chara__2BD170E2]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OItemChar__Chara__2CC5951B]') AND parent_object_id = OBJECT_ID(N'[dbo].[OItemCharacteristic]'))
ALTER TABLE [dbo].[OItemCharacteristic] DROP CONSTRAINT [FK__OItemChar__Chara__2CC5951B]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OItemChar__ItemI__2DB9B954]') AND parent_object_id = OBJECT_ID(N'[dbo].[OItemCharacteristic]'))
ALTER TABLE [dbo].[OItemCharacteristic] DROP CONSTRAINT [FK__OItemChar__ItemI__2DB9B954]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OItemChar__ItemI__2EADDD8D]') AND parent_object_id = OBJECT_ID(N'[dbo].[OItemCharacteristic]'))
ALTER TABLE [dbo].[OItemCharacteristic] DROP CONSTRAINT [FK__OItemChar__ItemI__2EADDD8D]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OItemChar__ItemI__2FA201C6]') AND parent_object_id = OBJECT_ID(N'[dbo].[OItemCharacteristic]'))
ALTER TABLE [dbo].[OItemCharacteristic] DROP CONSTRAINT [FK__OItemChar__ItemI__2FA201C6]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OItemChar__ItemI__309625FF]') AND parent_object_id = OBJECT_ID(N'[dbo].[OItemCharacteristic]'))
ALTER TABLE [dbo].[OItemCharacteristic] DROP CONSTRAINT [FK__OItemChar__ItemI__309625FF]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OItemChar__ItemI__318A4A38]') AND parent_object_id = OBJECT_ID(N'[dbo].[OItemCharacteristic]'))
ALTER TABLE [dbo].[OItemCharacteristic] DROP CONSTRAINT [FK__OItemChar__ItemI__318A4A38]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OItemChar__ItemI__327E6E71]') AND parent_object_id = OBJECT_ID(N'[dbo].[OItemCharacteristic]'))
ALTER TABLE [dbo].[OItemCharacteristic] DROP CONSTRAINT [FK__OItemChar__ItemI__327E6E71]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Compa__2815EE97]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPrice]'))
ALTER TABLE [dbo].[OListPrice] DROP CONSTRAINT [FK__OListPric__Compa__2815EE97]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Compa__290A12D0]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPrice]'))
ALTER TABLE [dbo].[OListPrice] DROP CONSTRAINT [FK__OListPric__Compa__290A12D0]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Compa__29FE3709]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPrice]'))
ALTER TABLE [dbo].[OListPrice] DROP CONSTRAINT [FK__OListPric__Compa__29FE3709]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Compa__2AF25B42]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPrice]'))
ALTER TABLE [dbo].[OListPrice] DROP CONSTRAINT [FK__OListPric__Compa__2AF25B42]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Compa__2BE67F7B]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPrice]'))
ALTER TABLE [dbo].[OListPrice] DROP CONSTRAINT [FK__OListPric__Compa__2BE67F7B]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Compa__2CDAA3B4]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPrice]'))
ALTER TABLE [dbo].[OListPrice] DROP CONSTRAINT [FK__OListPric__Compa__2CDAA3B4]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Compa__364EFF55]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPrice]'))
ALTER TABLE [dbo].[OListPrice] DROP CONSTRAINT [FK__OListPric__Compa__364EFF55]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Compa__3743238E]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPrice]'))
ALTER TABLE [dbo].[OListPrice] DROP CONSTRAINT [FK__OListPric__Compa__3743238E]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Compa__383747C7]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPrice]'))
ALTER TABLE [dbo].[OListPrice] DROP CONSTRAINT [FK__OListPric__Compa__383747C7]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Compa__392B6C00]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPrice]'))
ALTER TABLE [dbo].[OListPrice] DROP CONSTRAINT [FK__OListPric__Compa__392B6C00]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Compa__3A1F9039]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPrice]'))
ALTER TABLE [dbo].[OListPrice] DROP CONSTRAINT [FK__OListPric__Compa__3A1F9039]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Compa__3B13B472]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPrice]'))
ALTER TABLE [dbo].[OListPrice] DROP CONSTRAINT [FK__OListPric__Compa__3B13B472]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Compa__3C07D8AB]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPriceDetails]'))
ALTER TABLE [dbo].[OListPriceDetails] DROP CONSTRAINT [FK__OListPric__Compa__3C07D8AB]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Compa__3CFBFCE4]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPriceDetails]'))
ALTER TABLE [dbo].[OListPriceDetails] DROP CONSTRAINT [FK__OListPric__Compa__3CFBFCE4]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Compa__3DF0211D]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPriceDetails]'))
ALTER TABLE [dbo].[OListPriceDetails] DROP CONSTRAINT [FK__OListPric__Compa__3DF0211D]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Compa__3EE44556]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPriceDetails]'))
ALTER TABLE [dbo].[OListPriceDetails] DROP CONSTRAINT [FK__OListPric__Compa__3EE44556]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Compa__3FD8698F]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPriceDetails]'))
ALTER TABLE [dbo].[OListPriceDetails] DROP CONSTRAINT [FK__OListPric__Compa__3FD8698F]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Compa__40CC8DC8]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPriceDetails]'))
ALTER TABLE [dbo].[OListPriceDetails] DROP CONSTRAINT [FK__OListPric__Compa__40CC8DC8]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Items__41C0B201]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPriceDetails]'))
ALTER TABLE [dbo].[OListPriceDetails] DROP CONSTRAINT [FK__OListPric__Items__41C0B201]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Items__42B4D63A]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPriceDetails]'))
ALTER TABLE [dbo].[OListPriceDetails] DROP CONSTRAINT [FK__OListPric__Items__42B4D63A]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Items__43A8FA73]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPriceDetails]'))
ALTER TABLE [dbo].[OListPriceDetails] DROP CONSTRAINT [FK__OListPric__Items__43A8FA73]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Items__449D1EAC]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPriceDetails]'))
ALTER TABLE [dbo].[OListPriceDetails] DROP CONSTRAINT [FK__OListPric__Items__449D1EAC]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Items__459142E5]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPriceDetails]'))
ALTER TABLE [dbo].[OListPriceDetails] DROP CONSTRAINT [FK__OListPric__Items__459142E5]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Items__4685671E]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPriceDetails]'))
ALTER TABLE [dbo].[OListPriceDetails] DROP CONSTRAINT [FK__OListPric__Items__4685671E]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPriceDetail__47798B57]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPriceDetails]'))
ALTER TABLE [dbo].[OListPriceDetails] DROP CONSTRAINT [FK__OListPriceDetail__47798B57]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPriceDetail__486DAF90]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPriceDetails]'))
ALTER TABLE [dbo].[OListPriceDetails] DROP CONSTRAINT [FK__OListPriceDetail__486DAF90]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPriceDetail__4961D3C9]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPriceDetails]'))
ALTER TABLE [dbo].[OListPriceDetails] DROP CONSTRAINT [FK__OListPriceDetail__4961D3C9]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPriceDetail__4A55F802]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPriceDetails]'))
ALTER TABLE [dbo].[OListPriceDetails] DROP CONSTRAINT [FK__OListPriceDetail__4A55F802]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPriceDetail__4B4A1C3B]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPriceDetails]'))
ALTER TABLE [dbo].[OListPriceDetails] DROP CONSTRAINT [FK__OListPriceDetail__4B4A1C3B]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPriceDetail__4C3E4074]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPriceDetails]'))
ALTER TABLE [dbo].[OListPriceDetails] DROP CONSTRAINT [FK__OListPriceDetail__4C3E4074]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OPaymentG__Payme__4D3264AD]') AND parent_object_id = OBJECT_ID(N'[dbo].[OPaymentGroupLines]'))
ALTER TABLE [dbo].[OPaymentGroupLines] DROP CONSTRAINT [FK__OPaymentG__Payme__4D3264AD]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OPaymentG__Payme__4E2688E6]') AND parent_object_id = OBJECT_ID(N'[dbo].[OPaymentGroupLines]'))
ALTER TABLE [dbo].[OPaymentGroupLines] DROP CONSTRAINT [FK__OPaymentG__Payme__4E2688E6]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OPaymentG__Payme__4F1AAD1F]') AND parent_object_id = OBJECT_ID(N'[dbo].[OPaymentGroupLines]'))
ALTER TABLE [dbo].[OPaymentGroupLines] DROP CONSTRAINT [FK__OPaymentG__Payme__4F1AAD1F]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OPaymentG__Payme__500ED158]') AND parent_object_id = OBJECT_ID(N'[dbo].[OPaymentGroupLines]'))
ALTER TABLE [dbo].[OPaymentGroupLines] DROP CONSTRAINT [FK__OPaymentG__Payme__500ED158]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OPaymentG__Payme__5102F591]') AND parent_object_id = OBJECT_ID(N'[dbo].[OPaymentGroupLines]'))
ALTER TABLE [dbo].[OPaymentGroupLines] DROP CONSTRAINT [FK__OPaymentG__Payme__5102F591]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OPaymentG__Payme__51F719CA]') AND parent_object_id = OBJECT_ID(N'[dbo].[OPaymentGroupLines]'))
ALTER TABLE [dbo].[OPaymentGroupLines] DROP CONSTRAINT [FK__OPaymentG__Payme__51F719CA]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OUsers__CompanyD__52EB3E03]') AND parent_object_id = OBJECT_ID(N'[dbo].[OUsers]'))
ALTER TABLE [dbo].[OUsers] DROP CONSTRAINT [FK__OUsers__CompanyD__52EB3E03]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OUsers__CompanyD__53DF623C]') AND parent_object_id = OBJECT_ID(N'[dbo].[OUsers]'))
ALTER TABLE [dbo].[OUsers] DROP CONSTRAINT [FK__OUsers__CompanyD__53DF623C]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OUsers__CompanyD__54D38675]') AND parent_object_id = OBJECT_ID(N'[dbo].[OUsers]'))
ALTER TABLE [dbo].[OUsers] DROP CONSTRAINT [FK__OUsers__CompanyD__54D38675]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OUsers__CompanyD__55C7AAAE]') AND parent_object_id = OBJECT_ID(N'[dbo].[OUsers]'))
ALTER TABLE [dbo].[OUsers] DROP CONSTRAINT [FK__OUsers__CompanyD__55C7AAAE]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OUsers__CompanyD__56BBCEE7]') AND parent_object_id = OBJECT_ID(N'[dbo].[OUsers]'))
ALTER TABLE [dbo].[OUsers] DROP CONSTRAINT [FK__OUsers__CompanyD__56BBCEE7]
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OUsers__CompanyD__57AFF320]') AND parent_object_id = OBJECT_ID(N'[dbo].[OUsers]'))
ALTER TABLE [dbo].[OUsers] DROP CONSTRAINT [FK__OUsers__CompanyD__57AFF320]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[_FactBasePurchaseSales]') AND type in (N'U'))
DROP TABLE [dbo].[_FactBasePurchaseSales]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Branch]') AND type in (N'U'))
DROP TABLE [dbo].[Branch]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Company]') AND type in (N'U'))
DROP TABLE [dbo].[Company]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DimTempo]') AND type in (N'U'))
DROP TABLE [dbo].[DimTempo]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DPBatchNumber]') AND type in (N'U'))
DROP TABLE [dbo].[DPBatchNumber]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DPBusinessPartner]') AND type in (N'U'))
DROP TABLE [dbo].[DPBusinessPartner]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DPBusinessPartnerGroup]') AND type in (N'U'))
DROP TABLE [dbo].[DPBusinessPartnerGroup]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DPIndustrySector]') AND type in (N'U'))
DROP TABLE [dbo].[DPIndustrySector]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DPItemGroup]') AND type in (N'U'))
DROP TABLE [dbo].[DPItemGroup]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DPItems]') AND type in (N'U'))
DROP TABLE [dbo].[DPItems]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DPManufacturers]') AND type in (N'U'))
DROP TABLE [dbo].[DPManufacturers]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DPPaymentGroup]') AND type in (N'U'))
DROP TABLE [dbo].[DPPaymentGroup]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DPSalesPerson]') AND type in (N'U'))
DROP TABLE [dbo].[DPSalesPerson]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DPSalesRepresentative]') AND type in (N'U'))
DROP TABLE [dbo].[DPSalesRepresentative]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DPShipType]') AND type in (N'U'))
DROP TABLE [dbo].[DPShipType]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DPTerritory]') AND type in (N'U'))
DROP TABLE [dbo].[DPTerritory]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DPUsage]') AND type in (N'U'))
DROP TABLE [dbo].[DPUsage]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactBillOfExchange]') AND type in (N'U'))
DROP TABLE [dbo].[FactBillOfExchange]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactBudget]') AND type in (N'U'))
DROP TABLE [dbo].[FactBudget]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactCurrency]') AND type in (N'U'))
DROP TABLE [dbo].[FactCurrency]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactDocumentHeader]') AND type in (N'U'))
DROP TABLE [dbo].[FactDocumentHeader]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactDocumentLines]') AND type in (N'U'))
DROP TABLE [dbo].[FactDocumentLines]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactFechamentoSAP]') AND type in (N'U'))
DROP TABLE [dbo].[FactFechamentoSAP]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactFinanse]') AND type in (N'U'))
DROP TABLE [dbo].[FactFinanse]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactIncomePayment]') AND type in (N'U'))
DROP TABLE [dbo].[FactIncomePayment]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactIncomePaymentHistory]') AND type in (N'U'))
DROP TABLE [dbo].[FactIncomePaymentHistory]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactInventory]') AND type in (N'U'))
DROP TABLE [dbo].[FactInventory]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]') AND type in (N'U'))
DROP TABLE [dbo].[FactJournalVouchers]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactL1Budget]') AND type in (N'U'))
DROP TABLE [dbo].[FactL1Budget]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactLeilao]') AND type in (N'U'))
DROP TABLE [dbo].[FactLeilao]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactOutcomePayment]') AND type in (N'U'))
DROP TABLE [dbo].[FactOutcomePayment]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactOutcomePaymentHistory]') AND type in (N'U'))
DROP TABLE [dbo].[FactOutcomePaymentHistory]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactProdOrderHeader]') AND type in (N'U'))
DROP TABLE [dbo].[FactProdOrderHeader]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactProdOrderLines]') AND type in (N'U'))
DROP TABLE [dbo].[FactProdOrderLines]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactProdTree]') AND type in (N'U'))
DROP TABLE [dbo].[FactProdTree]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactPurchaseSales]') AND type in (N'U'))
DROP TABLE [dbo].[FactPurchaseSales]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactPurchaseSalesAditionalExpenses]') AND type in (N'U'))
DROP TABLE [dbo].[FactPurchaseSalesAditionalExpenses]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]') AND type in (N'U'))
DROP TABLE [dbo].[FactSalesForecast]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactServiceOrder]') AND type in (N'U'))
DROP TABLE [dbo].[FactServiceOrder]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FIFO_SBO_Transaction]') AND type in (N'U'))
DROP TABLE [dbo].[FIFO_SBO_Transaction]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InvType]') AND type in (N'U'))
DROP TABLE [dbo].[InvType]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MAIL_ALERT_CONFIG]') AND type in (N'U'))
DROP TABLE [dbo].[MAIL_ALERT_CONFIG]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NFEStatus]') AND type in (N'U'))
DROP TABLE [dbo].[NFEStatus]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OAccount]') AND type in (N'U'))
DROP TABLE [dbo].[OAccount]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OAccountType]') AND type in (N'U'))
DROP TABLE [dbo].[OAccountType]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OBatchNumber]') AND type in (N'U'))
DROP TABLE [dbo].[OBatchNumber]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OBPCharacteristics]') AND type in (N'U'))
DROP TABLE [dbo].[OBPCharacteristics]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]') AND type in (N'U'))
DROP TABLE [dbo].[OBPCharacteristicValues]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OBudget]') AND type in (N'U'))
DROP TABLE [dbo].[OBudget]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]') AND type in (N'U'))
DROP TABLE [dbo].[OBusinessPartner]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OBusinessPartnerGroup]') AND type in (N'U'))
DROP TABLE [dbo].[OBusinessPartnerGroup]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OCharacteristics]') AND type in (N'U'))
DROP TABLE [dbo].[OCharacteristics]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OContactPerson]') AND type in (N'U'))
DROP TABLE [dbo].[OContactPerson]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OCostingCode]') AND type in (N'U'))
DROP TABLE [dbo].[OCostingCode]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OCostingCodeLevels]') AND type in (N'U'))
DROP TABLE [dbo].[OCostingCodeLevels]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OIndustrySector]') AND type in (N'U'))
DROP TABLE [dbo].[OIndustrySector]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OItemCharacteristic]') AND type in (N'U'))
DROP TABLE [dbo].[OItemCharacteristic]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OItemGroup]') AND type in (N'U'))
DROP TABLE [dbo].[OItemGroup]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OItems]') AND type in (N'U'))
DROP TABLE [dbo].[OItems]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OListPrice]') AND type in (N'U'))
DROP TABLE [dbo].[OListPrice]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OListPriceDetails]') AND type in (N'U'))
DROP TABLE [dbo].[OListPriceDetails]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OManufacturer]') AND type in (N'U'))
DROP TABLE [dbo].[OManufacturer]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OModel]') AND type in (N'U'))
DROP TABLE [dbo].[OModel]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OPaymentGroup]') AND type in (N'U'))
DROP TABLE [dbo].[OPaymentGroup]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OPaymentGroupLines]') AND type in (N'U'))
DROP TABLE [dbo].[OPaymentGroupLines]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OPriority]') AND type in (N'U'))
DROP TABLE [dbo].[OPriority]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OProject]') AND type in (N'U'))
DROP TABLE [dbo].[OProject]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OSalesForecast]') AND type in (N'U'))
DROP TABLE [dbo].[OSalesForecast]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OSalesPerson]') AND type in (N'U'))
DROP TABLE [dbo].[OSalesPerson]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OSalesRepresentative]') AND type in (N'U'))
DROP TABLE [dbo].[OSalesRepresentative]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OSeqCode]') AND type in (N'U'))
DROP TABLE [dbo].[OSeqCode]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OShipType]') AND type in (N'U'))
DROP TABLE [dbo].[OShipType]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OTerritory]') AND type in (N'U'))
DROP TABLE [dbo].[OTerritory]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OUsage]') AND type in (N'U'))
DROP TABLE [dbo].[OUsage]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OUsers]') AND type in (N'U'))
DROP TABLE [dbo].[OUsers]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OWarehouse]') AND type in (N'U'))
DROP TABLE [dbo].[OWarehouse]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReconValues]') AND type in (N'U'))
DROP TABLE [dbo].[ReconValues]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sysdiagrams]') AND type in (N'U'))
DROP TABLE [dbo].[sysdiagrams]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TempCA]') AND type in (N'U'))
DROP TABLE [dbo].[TempCA]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TempTB]') AND type in (N'U'))
DROP TABLE [dbo].[TempTB]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[test]') AND type in (N'U'))
DROP TABLE [dbo].[test]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Totals]') AND type in (N'U'))
DROP TABLE [dbo].[Totals]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TRACE_TABLE]') AND type in (N'U'))
DROP TABLE [dbo].[TRACE_TABLE]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserFields]') AND type in (N'U'))
DROP TABLE [dbo].[UserFields]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WTValues]') AND type in (N'U'))
DROP TABLE [dbo].[WTValues]
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[_FactBasePurchaseSales]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[_FactBasePurchaseSales](
	[companyDB] [nvarchar](50) NULL,
	[InvType] [int] NOT NULL,
	[DocEntry] [int] NOT NULL,
	[LineNum] [int] NOT NULL,
	[BaseEntry] [int] NULL,
	[BaseType] [int] NULL,
	[BaseLine] [int] NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Branch]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Branch](
	[CompanyDB] [nvarchar](50) NULL,
	[BPLId] [int] NOT NULL,
	[BPLName] [nvarchar](100) NULL,
	[BPLFrName] [nvarchar](100) NULL,
	[TaxIdNum] [nvarchar](32) NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Company]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Company](
	[databaseName] [nvarchar](50) NOT NULL,
	[auth] [nvarchar](300) NOT NULL,
	[companyName] [nvarchar](100) NULL,
	[taxId] [nvarchar](50) NULL,
	[Access] [int] NULL,
	[ExpireDate] [date] NULL,
	[AdvancedLCM] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[databaseName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DimTempo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DimTempo](
	[data] [datetime] NOT NULL,
	[dia] [int] NULL,
	[mes] [int] NULL,
	[ano] [int] NULL,
	[diaSemana] [varchar](20) NULL,
	[semana] [int] NULL,
	[diaDoAno] [int] NULL,
	[bimestre] [int] NULL,
	[trimestre] [int] NULL,
	[quadrimestre] [int] NULL,
	[semestre] [int] NULL,
	[mesExtenso] [varchar](20) NULL,
	[mesAbreviado] [varchar](3) NULL,
 CONSTRAINT [XPKDimTempo] PRIMARY KEY CLUSTERED 
(
	[data] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DPBatchNumber]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DPBatchNumber](
	[CompanyDB] [nvarchar](50) NOT NULL,
	[ItemCode] [nvarchar](20) NOT NULL,
	[BatchNumber] [nvarchar](32) NOT NULL,
	[BatchNumberId] [int] NOT NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DPBusinessPartner]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DPBusinessPartner](
	[CompanyDB] [nvarchar](50) NULL,
	[CardCode] [nvarchar](15) NOT NULL,
	[BusinessPartnerID] [int] NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DPBusinessPartnerGroup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DPBusinessPartnerGroup](
	[CompanyDB] [nvarchar](50) NULL,
	[GroupCode] [smallint] NULL,
	[BusinessPartnerGroupID] [smallint] NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DPIndustrySector]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DPIndustrySector](
	[CompanyDB] [nvarchar](50) NULL,
	[IndCode] [int] NULL,
	[IndustrySectorId] [smallint] NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DPItemGroup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DPItemGroup](
	[CompanyDB] [nvarchar](50) NULL,
	[ItmsGrpCod] [smallint] NOT NULL,
	[ItemGroupId] [smallint] NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DPItems]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DPItems](
	[CompanyDB] [nvarchar](50) NULL,
	[ItemCode] [nvarchar](20) NOT NULL,
	[ItemsId] [smallint] NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DPManufacturers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DPManufacturers](
	[CompanyDB] [nvarchar](50) NULL,
	[FirmCode] [smallint] NULL,
	[ManufacturerId] [smallint] NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DPPaymentGroup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DPPaymentGroup](
	[CompanyDB] [nvarchar](50) NULL,
	[ID] [int] NULL,
	[PaymentId] [smallint] NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DPSalesPerson]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DPSalesPerson](
	[CompanyDB] [nvarchar](50) NULL,
	[SlpCode] [smallint] NULL,
	[SalesPersonID] [smallint] NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DPSalesRepresentative]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DPSalesRepresentative](
	[CompanyDB] [nvarchar](50) NULL,
	[AgentCode] [nvarchar](32) NULL,
	[AgentID] [smallint] NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DPShipType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DPShipType](
	[CompanyDB] [nvarchar](50) NULL,
	[TrnsCode] [smallint] NULL,
	[ShipTypeId] [smallint] NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DPTerritory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DPTerritory](
	[companyDB] [nvarchar](50) NULL,
	[ID] [int] NULL,
	[TerritoryId] [int] NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DPUsage]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DPUsage](
	[CompanyDB] [nvarchar](50) NULL,
	[ID] [int] NULL,
	[UsageId] [smallint] NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactBillOfExchange]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FactBillOfExchange](
	[companyDB] [nvarchar](50) NULL,
	[BPLId] [int] NULL,
	[APInvType] [nvarchar](20) NULL,
	[APDocEntry] [int] NOT NULL,
	[DocEntry] [int] NULL,
	[InvType] [nvarchar](20) NULL,
	[Installment] [int] NULL,
	[AppliedSys] [numeric](19, 6) NULL,
	[PaymentDate] [datetime] NULL,
	[OurNum] [int] NULL,
	[BoeStatus] [char](1) NULL,
	[TransId] [int] NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactBudget]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FactBudget](
	[budgetId] [int] NULL,
	[sapId] [int] NULL,
	[accountId] [smallint] NULL,
	[companydb] [nvarchar](50) NULL,
	[DebLTotal] [numeric](19, 6) NOT NULL,
	[CredLTotal] [numeric](19, 6) NOT NULL,
	[DebSTotal] [numeric](19, 6) NOT NULL,
	[CredSTotal] [numeric](19, 6) NOT NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactCurrency]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FactCurrency](
	[CompanyDB] [nvarchar](50) NULL,
	[RateDate] [datetime] NOT NULL,
	[Currency] [nvarchar](3) NOT NULL,
	[Rate] [numeric](19, 6) NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactDocumentHeader]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FactDocumentHeader](
	[CompanyDB] [nvarchar](50) NOT NULL,
	[BPLId] [int] NOT NULL,
	[DocEntry] [int] NOT NULL,
	[DocNum] [int] NULL,
	[TransId] [int] NULL,
	[InvType] [int] NOT NULL,
	[BusinessPartnerId] [int] NOT NULL,
	[TaxDate] [datetime] NULL,
	[DocDate] [datetime] NULL,
	[DocDueDate] [datetime] NULL,
	[CancelDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[OwnerCode] [int] NOT NULL,
	[CNPJ] [nvarchar](100) NULL,
	[IE] [nvarchar](100) NULL,
	[CPF] [nvarchar](100) NULL,
	[Canceled] [char](1) NULL,
	[DocStatus] [char](1) NULL,
	[NumAtCard] [nvarchar](100) NOT NULL,
	[PaymentId] [smallint] NULL,
	[Serial] [int] NULL,
	[ModelId] [smallint] NULL,
	[CardCode] [nvarchar](15) NULL,
	[CardName] [nvarchar](100) NULL,
	[DiscPrcnt] [numeric](19, 6) NULL,
	[DocTotal] [numeric](19, 6) NULL,
	[DownPayment] [numeric](19, 6) NULL,
	[SalesPersonId] [smallint] NOT NULL,
	[AgentId] [smallint] NOT NULL,
	[Vehicle] [nvarchar](10) NULL,
	[CountyS] [nvarchar](100) NULL,
	[StreetS] [nvarchar](100) NULL,
	[BlockS] [nvarchar](100) NULL,
	[BuildingS] [ntext] NULL,
	[CityS] [nvarchar](100) NULL,
	[ZipCodeS] [nvarchar](20) NULL,
	[AddrTypeS] [nvarchar](100) NULL,
	[StreetNoS] [nvarchar](100) NULL,
	[StateS] [nvarchar](3) NULL,
	[NetWeight] [numeric](19, 6) NULL,
	[Incoterms] [nvarchar](3) NULL,
	[PayAccountId] [smallint] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactDocumentLines]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FactDocumentLines](
	[CompanyDB] [nvarchar](50) NOT NULL,
	[BPLId] [int] NOT NULL,
	[DocEntry] [int] NOT NULL,
	[LineNum] [int] NOT NULL,
	[InvType] [int] NOT NULL,
	[ShipDate] [datetime] NULL,
	[CFOPCode] [nvarchar](6) NULL,
	[ReverseSeqCode] [smallint] NULL,
	[ReverseModel] [nvarchar](6) NULL,
	[WhsCode] [nvarchar](8) NULL,
	[ItemsId] [smallint] NOT NULL,
	[LineStatus] [char](1) NULL,
	[UM] [nvarchar](100) NULL,
	[Quantity] [numeric](19, 6) NULL,
	[NumPerUM] [numeric](19, 6) NULL,
	[BaseUM] [nvarchar](100) NULL,
	[UsageId] [smallint] NOT NULL,
	[PostTax] [char](1) NULL,
	[Currency] [nvarchar](3) NULL,
	[Commission] [numeric](19, 6) NULL,
	[AccountId] [smallint] NOT NULL,
	[OcrCode] [int] NOT NULL,
	[OcrCode2] [int] NOT NULL,
	[OcrCode3] [int] NOT NULL,
	[OcrCode4] [int] NOT NULL,
	[OcrCode5] [int] NOT NULL,
	[CogsOcrCod] [int] NOT NULL,
	[CogsOcrCo2] [int] NOT NULL,
	[CogsOcrCo3] [int] NOT NULL,
	[CogsOcrCo4] [int] NOT NULL,
	[CogsOcrCo5] [int] NOT NULL,
	[Project] [int] NULL,
	[TaxOnly] [char](1) NULL,
	[Apportionment] [numeric](38, 19) NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactFechamentoSAP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FactFechamentoSAP](
	[Data] [datetime] NULL,
	[HoraInicio] [smallint] NULL,
	[HoraFim] [smallint] NULL,
	[FatorCobranca] [numeric](19, 6) NOT NULL,
	[FatorPagamento] [numeric](19, 6) NOT NULL,
	[ValorCobranca] [numeric](19, 6) NOT NULL,
	[ValorPagamento] [numeric](19, 6) NOT NULL,
	[Consultor] [nvarchar](200) NULL,
	[CardCode] [nvarchar](200) NULL,
	[DuracaoWD] [numeric](19, 6) NOT NULL,
	[WDCobrado] [numeric](19, 6) NOT NULL,
	[WDPago] [numeric](19, 6) NOT NULL,
	[Horas] [numeric](19, 6) NOT NULL,
	[KmCobrado] [numeric](19, 6) NOT NULL,
	[ValorKmCobrado] [numeric](19, 6) NOT NULL,
	[PedagioCobrado] [numeric](19, 6) NOT NULL,
	[AlimentacaoCobrado] [numeric](19, 6) NOT NULL,
	[OutrosCobrado] [numeric](19, 6) NOT NULL,
	[KmPago] [numeric](19, 6) NOT NULL,
	[ValorKmPago] [numeric](19, 6) NOT NULL,
	[PedagioPago] [numeric](19, 6) NOT NULL,
	[AlimentacaoPago] [numeric](19, 6) NOT NULL,
	[OutrosPago] [numeric](19, 6) NOT NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactFinanse]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FactFinanse](
	[companyDB] [nvarchar](50) NULL,
	[BPLid] [int] NULL,
	[TransId] [int] NOT NULL,
	[Ref1] [nvarchar](100) NULL,
	[Ref2] [nvarchar](100) NULL,
	[Ref3] [nvarchar](27) NULL,
	[Line_ID] [int] NOT NULL,
	[Debit] [numeric](38, 6) NULL,
	[Credit] [numeric](38, 6) NULL,
	[ItemsId] [smallint] NOT NULL,
	[BatchNumberId] [int] NOT NULL,
	[BusinessPartnerID] [int] NOT NULL,
	[TransType] [int] NULL,
	[DocEntry] [int] NULL,
	[BaseType] [int] NULL,
	[BaseEntry] [int] NULL,
	[LineNum] [int] NOT NULL,
	[Installment] [int] NULL,
	[NumAtCard] [nvarchar](100) NULL,
	[SalesPersonId] [smallint] NOT NULL,
	[AccountID] [smallint] NOT NULL,
	[ContraAccountId] [smallint] NOT NULL,
	[DueDate] [datetime] NULL,
	[TaxDate] [datetime] NULL,
	[RefDate] [datetime] NULL,
	[TransCode] [nvarchar](4) NULL,
	[Project] [int] NOT NULL,
	[OcrCode] [int] NOT NULL,
	[OcrCode2] [int] NOT NULL,
	[OcrCode3] [int] NOT NULL,
	[OcrCode4] [int] NOT NULL,
	[OcrCode5] [int] NOT NULL,
	[ProjectContra] [int] NOT NULL,
	[OcrCodeContra] [int] NOT NULL,
	[OcrCode2Contra] [int] NOT NULL,
	[OcrCode3Contra] [int] NOT NULL,
	[OcrCode4Contra] [int] NOT NULL,
	[OcrCode5Contra] [int] NOT NULL,
	[AgentId] [smallint] NULL,
	[Storno] [nvarchar](1) NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactIncomePayment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FactIncomePayment](
	[CompanyDB] [nvarchar](50) NOT NULL,
	[BPLId] [int] NOT NULL,
	[ProjectId] [int] NOT NULL,
	[SalesPersonId] [smallint] NOT NULL,
	[TransId] [int] NOT NULL,
	[Line_ID] [int] NOT NULL,
	[TransType] [int] NOT NULL,
	[BaseEntry] [int] NULL,
	[InvType] [int] NULL,
	[DocEntry] [int] NOT NULL,
	[LineNum] [int] NOT NULL,
	[DownPayment] [numeric](19, 6) NULL,
	[LineTotal] [numeric](19, 6) NULL,
	[ConciliedValue] [numeric](19, 6) NULL,
	[OpenBalance] [numeric](19, 6) NULL,
	[BusinessPartnerId] [int] NOT NULL,
	[ItemsId] [smallint] NOT NULL,
	[BatchNumberId] [int] NOT NULL,
	[AccountId] [smallint] NOT NULL,
	[DueDate] [datetime] NULL,
	[Serial] [int] NOT NULL,
	[Installment] [smallint] NOT NULL,
	[BillOfExchange] [int] NOT NULL,
	[PeyMethod] [nvarchar](100) NOT NULL,
	[PayAccountId] [smallint] NOT NULL,
	[RefDate] [datetime] NULL,
	[CreateDate] [datetime] NULL,
	[Apportionment] [numeric](23, 10) NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactIncomePaymentHistory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FactIncomePaymentHistory](
	[CompanyDB] [nvarchar](50) NULL,
	[BPLId] [int] NOT NULL,
	[ReconDate] [datetime] NULL,
	[ProjectId] [int] NOT NULL,
	[SalesPersonId] [smallint] NOT NULL,
	[TransId] [int] NOT NULL,
	[Line_ID] [int] NOT NULL,
	[TransType] [int] NULL,
	[BaseEntry] [int] NULL,
	[InvType] [int] NULL,
	[DocEntry] [int] NULL,
	[LineNum] [int] NOT NULL,
	[DownPayment] [numeric](19, 6) NULL,
	[LineTotal] [numeric](19, 6) NULL,
	[ConciliedValue] [numeric](19, 6) NULL,
	[OpenBalance] [numeric](19, 6) NULL,
	[BusinessPartnerId] [int] NULL,
	[ItemsId] [smallint] NOT NULL,
	[BatchNumberId] [int] NOT NULL,
	[AccountId] [smallint] NOT NULL,
	[DueDate] [datetime] NULL,
	[Serial] [int] NOT NULL,
	[Installment] [smallint] NOT NULL,
	[BillOfExchange] [int] NOT NULL,
	[PeyMethod] [nvarchar](100) NOT NULL,
	[PayAccountId] [smallint] NOT NULL,
	[RefDate] [datetime] NULL,
	[CreateDate] [datetime] NULL,
	[Apportionment] [numeric](23, 10) NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactInventory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FactInventory](
	[CompanyDB] [nvarchar](50) NOT NULL,
	[DocEntry] [int] NOT NULL,
	[InvType] [int] NOT NULL,
	[LineNum] [smallint] NOT NULL,
	[InQty] [numeric](19, 6) NOT NULL,
	[OutQty] [numeric](19, 6) NOT NULL,
	[TransValue] [numeric](19, 6) NOT NULL,
	[ItemsId] [smallint] NULL,
	[BatchNumberId] [int] NULL,
	[DocDate] [datetime] NULL,
	[TaxDate] [datetime] NULL,
	[WarehouseId] [int] NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FactJournalVouchers](
	[CompanyDB] [nvarchar](50) NOT NULL,
	[BPLId] [int] NULL,
	[batchnum] [int] NOT NULL,
	[Ref1] [nvarchar](100) NOT NULL,
	[Ref2] [nvarchar](100) NOT NULL,
	[Ref3] [nvarchar](27) NOT NULL,
	[TransId] [int] NOT NULL,
	[Line_ID] [int] NOT NULL,
	[Debit] [numeric](38, 6) NULL,
	[Credit] [numeric](38, 6) NULL,
	[BusinessPartnerID] [int] NOT NULL,
	[TransType] [int] NULL,
	[DocEntry] [int] NULL,
	[DueDate] [datetime] NULL,
	[TaxDate] [datetime] NULL,
	[RefDate] [datetime] NULL,
	[TransCode] [nvarchar](4) NOT NULL,
	[Project] [int] NULL,
	[OcrCode] [int] NOT NULL,
	[OcrCode2] [int] NOT NULL,
	[OcrCode3] [int] NOT NULL,
	[OcrCode4] [int] NOT NULL,
	[OcrCode5] [int] NOT NULL,
	[ProjectContra] [int] NULL,
	[OcrCodeContra] [int] NOT NULL,
	[OcrCode2Contra] [int] NOT NULL,
	[OcrCode3Contra] [int] NOT NULL,
	[OcrCode4Contra] [int] NOT NULL,
	[OcrCode5Contra] [int] NOT NULL,
	[AccountID] [smallint] NOT NULL,
	[ContraAccountID] [smallint] NOT NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactL1Budget]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FactL1Budget](
	[CompanyDB] [nvarchar](50) NULL,
	[DocDate] [datetime] NULL,
	[AccountId] [smallint] NOT NULL,
	[OcrCode] [int] NOT NULL,
	[Project] [int] NOT NULL,
	[Value] [numeric](15, 4) NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactLeilao]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FactLeilao](
	[CompanyDB] [nvarchar](50) NULL,
	[DocEntry] [int] NULL,
	[DocNum] [int] NULL,
	[itemsId] [int] NULL,
	[Data] [datetime] NULL,
	[Quantidade] [numeric](19, 6) NULL,
	[preco] [numeric](19, 6) NULL,
	[Prazo] [datetime] NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactOutcomePayment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FactOutcomePayment](
	[CompanyDB] [nvarchar](50) NOT NULL,
	[BPLId] [int] NOT NULL,
	[ProjectId] [int] NOT NULL,
	[SalesPersonId] [smallint] NOT NULL,
	[TransId] [int] NOT NULL,
	[Line_ID] [int] NOT NULL,
	[TransType] [int] NOT NULL,
	[BaseEntry] [int] NULL,
	[InvType] [int] NULL,
	[DocEntry] [int] NOT NULL,
	[LineNum] [int] NOT NULL,
	[DownPayment] [numeric](19, 6) NULL,
	[LineTotal] [numeric](19, 6) NULL,
	[ConciliedValue] [numeric](19, 6) NULL,
	[OpenBalance] [numeric](19, 6) NULL,
	[BusinessPartnerId] [int] NOT NULL,
	[ItemsId] [smallint] NOT NULL,
	[BatchNumberId] [int] NOT NULL,
	[AccountId] [smallint] NOT NULL,
	[DueDate] [datetime] NULL,
	[Serial] [int] NOT NULL,
	[Installment] [smallint] NOT NULL,
	[BillOfExchange] [int] NOT NULL,
	[PeyMethod] [nvarchar](100) NOT NULL,
	[PayAccountId] [smallint] NOT NULL,
	[RefDate] [datetime] NULL,
	[CreateDate] [datetime] NULL,
	[Apportionment] [numeric](23, 10) NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactOutcomePaymentHistory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FactOutcomePaymentHistory](
	[CompanyDB] [nvarchar](50) NULL,
	[BPLId] [int] NOT NULL,
	[ReconDate] [datetime] NULL,
	[ProjectId] [int] NOT NULL,
	[SalesPersonId] [smallint] NOT NULL,
	[TransId] [int] NOT NULL,
	[Line_ID] [int] NOT NULL,
	[TransType] [int] NULL,
	[BaseEntry] [int] NULL,
	[InvType] [int] NULL,
	[DocEntry] [int] NULL,
	[LineNum] [int] NOT NULL,
	[DownPayment] [numeric](19, 6) NULL,
	[LineTotal] [numeric](19, 6) NULL,
	[ConciliedValue] [numeric](19, 6) NULL,
	[OpenBalance] [numeric](19, 6) NULL,
	[BusinessPartnerId] [int] NULL,
	[ItemsId] [smallint] NOT NULL,
	[BatchNumberId] [int] NOT NULL,
	[AccountId] [smallint] NOT NULL,
	[DueDate] [datetime] NULL,
	[Serial] [int] NOT NULL,
	[Installment] [smallint] NOT NULL,
	[BillOfExchange] [int] NOT NULL,
	[PeyMethod] [nvarchar](100) NOT NULL,
	[PayAccountId] [smallint] NOT NULL,
	[RefDate] [datetime] NULL,
	[CreateDate] [datetime] NULL,
	[Apportionment] [numeric](23, 10) NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactProdOrderHeader]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FactProdOrderHeader](
	[companyDB] [nvarchar](50) NULL,
	[DocEntry] [int] NOT NULL,
	[DocNum] [int] NOT NULL,
	[ItemsId] [smallint] NULL,
	[Status] [char](1) NULL,
	[Type] [char](1) NULL,
	[PlannedQty] [numeric](19, 6) NULL,
	[CmpltQty] [numeric](19, 6) NULL,
	[RjctQty] [numeric](19, 6) NULL,
	[OriginNum] [int] NOT NULL,
	[OriginAbs] [int] NOT NULL,
	[businessPartnerId] [int] NOT NULL,
	[warehouseId] [int] NOT NULL,
	[Uom] [nvarchar](20) NOT NULL,
	[TransId] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[PostDate] [datetime] NULL,
	[DueDate] [datetime] NULL,
	[CloseDate] [datetime] NULL,
	[RlsDate] [datetime] NULL,
	[OcrCode] [int] NOT NULL,
	[OcrCode2] [int] NOT NULL,
	[OcrCode3] [int] NOT NULL,
	[OcrCode4] [int] NOT NULL,
	[OcrCode5] [int] NOT NULL,
	[projectid] [int] NOT NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactProdOrderLines]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FactProdOrderLines](
	[companyDB] [nvarchar](50) NULL,
	[DocEntry] [int] NOT NULL,
	[LineNum] [int] NOT NULL,
	[ItemsId] [smallint] NULL,
	[BaseQty] [numeric](19, 6) NULL,
	[PlannedQty] [numeric](19, 6) NULL,
	[IssuedQty] [numeric](19, 6) NULL,
	[IssueType] [char](1) NULL,
	[WarehouseId] [int] NOT NULL,
	[CompTotal] [numeric](19, 6) NULL,
	[OcrCode] [int] NOT NULL,
	[OcrCode2] [int] NOT NULL,
	[OcrCode3] [int] NOT NULL,
	[OcrCode4] [int] NOT NULL,
	[OcrCode5] [int] NOT NULL,
	[projectid] [int] NOT NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactProdTree]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FactProdTree](
	[companyDB] [nvarchar](50) NULL,
	[Father] [smallint] NULL,
	[FatherQty] [numeric](19, 6) NULL,
	[child1] [smallint] NOT NULL,
	[Child1Qty] [numeric](19, 6) NULL,
	[Child2] [smallint] NOT NULL,
	[Child2Qty] [numeric](19, 6) NULL,
	[Child3] [smallint] NOT NULL,
	[Child3Qty] [numeric](19, 6) NULL,
	[Child4] [smallint] NOT NULL,
	[Child4Qty] [numeric](19, 6) NULL,
	[Child5] [smallint] NOT NULL,
	[Child5Qty] [numeric](19, 6) NULL,
	[Child6] [smallint] NOT NULL,
	[Child6Qty] [numeric](19, 6) NULL,
	[Child7] [smallint] NOT NULL,
	[Child7Qty] [numeric](19, 6) NULL,
	[Child8] [smallint] NOT NULL,
	[Child8Qty] [numeric](19, 6) NULL,
	[Child9] [smallint] NOT NULL,
	[Child9Qty] [numeric](19, 6) NULL,
	[Child10] [smallint] NOT NULL,
	[Child10Qty] [numeric](19, 6) NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactPurchaseSales]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FactPurchaseSales](
	[CompanyDB] [nvarchar](50) NOT NULL,
	[BPLId] [int] NOT NULL,
	[DocEntry] [int] NOT NULL,
	[DocNum] [int] NOT NULL,
	[LineNum] [int] NOT NULL,
	[Installment] [int] NOT NULL,
	[DocDueDate] [datetime] NOT NULL,
	[TransId] [int] NULL,
	[InvType] [int] NOT NULL,
	[UnitWeight] [numeric](38, 14) NULL,
	[LineWeight] [numeric](38, 6) NULL,
	[SalesQuantity] [numeric](38, 6) NULL,
	[Quantity] [numeric](38, 11) NULL,
	[LineTotal] [numeric](38, 6) NULL,
	[NetLineTotal] [numeric](38, 6) NULL,
	[Price] [numeric](19, 6) NULL,
	[LineDiscount] [numeric](19, 6) NULL,
	[DiscPrcnt] [numeric](19, 6) NULL,
	[UM] [nvarchar](20) NULL,
	[NumPerUM] [numeric](19, 6) NULL,
	[BaseUM] [nvarchar](20) NULL,
	[BatchNumberID] [int] NOT NULL,
	[COFINSBase] [numeric](19, 6) NOT NULL,
	[COFINSBaseValue] [numeric](19, 6) NOT NULL,
	[COFINSIsento] [numeric](19, 6) NOT NULL,
	[COFINSOutros] [numeric](19, 6) NOT NULL,
	[COFINSValor] [numeric](38, 6) NOT NULL,
	[COFINSValorIsento] [numeric](38, 6) NOT NULL,
	[COFINSValorOutros] [numeric](38, 6) NOT NULL,
	[COFINSSTBase] [numeric](19, 6) NOT NULL,
	[COFINSSTBaseValue] [numeric](19, 6) NOT NULL,
	[COFINSSTIsento] [numeric](19, 6) NOT NULL,
	[COFINSSTOutros] [numeric](19, 6) NOT NULL,
	[COFINSSTValor] [numeric](38, 6) NOT NULL,
	[COFINSSTValorIsento] [numeric](38, 6) NOT NULL,
	[COFINSSTValorOutros] [numeric](38, 6) NOT NULL,
	[CSLLBase] [numeric](19, 6) NOT NULL,
	[CSLLBaseValue] [numeric](19, 6) NOT NULL,
	[CSLLIsento] [numeric](19, 6) NOT NULL,
	[CSLLOutros] [numeric](19, 6) NOT NULL,
	[CSLLValor] [numeric](38, 6) NOT NULL,
	[CSLLValorIsento] [numeric](38, 6) NOT NULL,
	[CSLLValorOutros] [numeric](38, 6) NOT NULL,
	[ICMSBase] [numeric](19, 6) NOT NULL,
	[ICMSBaseValue] [numeric](19, 6) NOT NULL,
	[ICMSIsento] [numeric](19, 6) NOT NULL,
	[ICMSOutros] [numeric](19, 6) NOT NULL,
	[ICMSValor] [numeric](38, 6) NOT NULL,
	[ICMSValorIsento] [numeric](38, 6) NOT NULL,
	[ICMSValorOutros] [numeric](38, 6) NOT NULL,
	[ICMSDifBase] [numeric](19, 6) NOT NULL,
	[ICMSDifBaseValue] [numeric](19, 6) NOT NULL,
	[ICMSDifIsento] [numeric](19, 6) NOT NULL,
	[ICMSDifOutros] [numeric](19, 6) NOT NULL,
	[ICMSDifValor] [numeric](38, 6) NOT NULL,
	[ICMSDifValorIsento] [numeric](38, 6) NOT NULL,
	[ICMSDifValorOutros] [numeric](38, 6) NOT NULL,
	[ICMSSTBase] [numeric](19, 6) NOT NULL,
	[ICMSSTBaseValue] [numeric](19, 6) NOT NULL,
	[ICMSSTIsento] [numeric](19, 6) NOT NULL,
	[ICMSSTOutros] [numeric](19, 6) NOT NULL,
	[ICMSSTValor] [numeric](38, 6) NOT NULL,
	[ICMSSTValorIsento] [numeric](38, 6) NOT NULL,
	[ICMSSTValorOutros] [numeric](38, 6) NOT NULL,
	[ICMSSTRETBase] [numeric](19, 6) NOT NULL,
	[ICMSSTRETBaseValue] [numeric](19, 6) NOT NULL,
	[ICMSSTRETIsento] [numeric](19, 6) NOT NULL,
	[ICMSSTRETOutros] [numeric](19, 6) NOT NULL,
	[ICMSSTRETValor] [numeric](38, 6) NOT NULL,
	[ICMSSTRETValorIsento] [numeric](38, 6) NOT NULL,
	[ICMSSTRETValorOutros] [numeric](38, 6) NOT NULL,
	[IIBase] [numeric](19, 6) NOT NULL,
	[IIBaseValue] [numeric](19, 6) NOT NULL,
	[IIIsento] [numeric](19, 6) NOT NULL,
	[IIOutros] [numeric](19, 6) NOT NULL,
	[IIValor] [numeric](38, 6) NOT NULL,
	[IIValorIsento] [numeric](38, 6) NOT NULL,
	[IIValorOutros] [numeric](38, 6) NOT NULL,
	[INSSBase] [numeric](19, 6) NOT NULL,
	[INSSBaseValue] [numeric](19, 6) NOT NULL,
	[INSSIsento] [numeric](19, 6) NOT NULL,
	[INSSOutros] [numeric](19, 6) NOT NULL,
	[INSSValor] [numeric](38, 6) NOT NULL,
	[INSSValorIsento] [numeric](38, 6) NOT NULL,
	[INSSValorOutros] [numeric](38, 6) NOT NULL,
	[IPIBase] [numeric](19, 6) NOT NULL,
	[IPIBaseValue] [numeric](19, 6) NOT NULL,
	[IPIIsento] [numeric](19, 6) NOT NULL,
	[IPIOutros] [numeric](19, 6) NOT NULL,
	[IPIValor] [numeric](38, 6) NOT NULL,
	[IPIValorIsento] [numeric](38, 6) NOT NULL,
	[IPIValorOutros] [numeric](38, 6) NOT NULL,
	[IRPJBase] [numeric](19, 6) NOT NULL,
	[IRPJBaseValue] [numeric](19, 6) NOT NULL,
	[IRPJIsento] [numeric](19, 6) NOT NULL,
	[IRPJOutros] [numeric](19, 6) NOT NULL,
	[IRPJValor] [numeric](38, 6) NOT NULL,
	[IRPJValorIsento] [numeric](38, 6) NOT NULL,
	[IRPJValorOutros] [numeric](38, 6) NOT NULL,
	[ISSBase] [numeric](19, 6) NOT NULL,
	[ISSBaseValue] [numeric](19, 6) NOT NULL,
	[ISSIsento] [numeric](19, 6) NOT NULL,
	[ISSOutros] [numeric](19, 6) NOT NULL,
	[ISSValor] [numeric](38, 6) NOT NULL,
	[ISSValorIsento] [numeric](38, 6) NOT NULL,
	[ISSValorOutros] [numeric](38, 6) NOT NULL,
	[PISBase] [numeric](19, 6) NOT NULL,
	[PISBaseValue] [numeric](19, 6) NOT NULL,
	[PISIsento] [numeric](19, 6) NOT NULL,
	[PISOutros] [numeric](19, 6) NOT NULL,
	[PISValor] [numeric](38, 6) NOT NULL,
	[PISValorIsento] [numeric](38, 6) NOT NULL,
	[PISValorOutros] [numeric](38, 6) NOT NULL,
	[PISSTBase] [numeric](19, 6) NOT NULL,
	[PISSTBaseValue] [numeric](19, 6) NOT NULL,
	[PISSTIsento] [numeric](19, 6) NOT NULL,
	[PISSTOutros] [numeric](19, 6) NOT NULL,
	[PISSTValor] [numeric](38, 6) NOT NULL,
	[PISSTValorIsento] [numeric](38, 6) NOT NULL,
	[PISSTValorOutros] [numeric](38, 6) NOT NULL,
	[WTPIS] [numeric](38, 6) NOT NULL,
	[WTCofins] [numeric](38, 6) NOT NULL,
	[WTCSLL] [numeric](38, 6) NOT NULL,
	[WTINSS] [numeric](38, 6) NOT NULL,
	[WTISSF] [numeric](38, 6) NOT NULL,
	[WTIRRF] [numeric](38, 6) NOT NULL,
	[WTOther] [numeric](38, 6) NOT NULL,
	[WTPaymentAmt] [numeric](38, 6) NOT NULL,
	[WTInvoiceAmt] [numeric](38, 6) NOT NULL,
	[TaxNotInPrice] [numeric](38, 6) NOT NULL,
	[Apportionment] [numeric](19, 6) NULL,
	[ApportionmentBatch] [numeric](19, 6) NULL,
	[ApportionmentDueDate] [numeric](19, 6) NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactPurchaseSalesAditionalExpenses]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FactPurchaseSalesAditionalExpenses](
	[BPLId] [int] NULL,
	[CompanyDB] [nvarchar](50) NOT NULL,
	[DocEntry] [int] NOT NULL,
	[LineNum] [int] NOT NULL,
	[InvType] [int] NOT NULL,
	[ExpnsName] [nvarchar](20) NOT NULL,
	[ExpnsCode] [int] NOT NULL,
	[Apportionment] [numeric](38, 19) NOT NULL,
	[LineTotal] [numeric](19, 6) NOT NULL,
	[PISBase] [numeric](19, 6) NOT NULL,
	[PISBaseValue] [numeric](19, 6) NOT NULL,
	[PISValor] [numeric](38, 6) NOT NULL,
	[COFINSBase] [numeric](19, 6) NOT NULL,
	[COFINSBaseValue] [numeric](19, 6) NOT NULL,
	[COFINSValor] [numeric](38, 6) NOT NULL,
	[INSSBase] [numeric](19, 6) NOT NULL,
	[INSSBaseValue] [numeric](19, 6) NOT NULL,
	[INSSValor] [numeric](38, 6) NOT NULL,
	[ISSBase] [numeric](19, 6) NOT NULL,
	[ISSBaseValue] [numeric](19, 6) NOT NULL,
	[ISSValor] [numeric](38, 6) NOT NULL,
	[ICMSBase] [numeric](19, 6) NOT NULL,
	[ICMSBaseValue] [numeric](19, 6) NOT NULL,
	[ICMSIsento] [numeric](19, 6) NOT NULL,
	[ICMSOutros] [numeric](19, 6) NOT NULL,
	[ICMSValor] [numeric](38, 6) NOT NULL,
	[ICMSValorIsento] [numeric](38, 6) NOT NULL,
	[ICMSValorOutros] [numeric](38, 6) NOT NULL,
	[IPIBase] [numeric](19, 6) NOT NULL,
	[IPIBaseValue] [numeric](19, 6) NOT NULL,
	[IPIIsento] [numeric](19, 6) NOT NULL,
	[IPIOutros] [numeric](19, 6) NOT NULL,
	[IPIValor] [numeric](38, 6) NOT NULL,
	[IPIValorIsento] [numeric](38, 6) NOT NULL,
	[IPIValorOutros] [numeric](38, 6) NOT NULL,
	[ICMSSTBase] [numeric](19, 6) NOT NULL,
	[ICMSSTBaseValue] [numeric](19, 6) NOT NULL,
	[ICMSSTIsento] [numeric](19, 6) NOT NULL,
	[ICMSSTOutros] [numeric](19, 6) NOT NULL,
	[ICMSSTValor] [numeric](38, 6) NOT NULL,
	[ICMSSTValorIsento] [numeric](38, 6) NOT NULL,
	[ICMSSTValorOutros] [numeric](38, 6) NOT NULL,
	[ICMSDifBase] [numeric](19, 6) NOT NULL,
	[ICMSDifBaseValue] [numeric](19, 6) NOT NULL,
	[ICMSDifIsento] [numeric](19, 6) NOT NULL,
	[ICMSDifOutros] [numeric](19, 6) NOT NULL,
	[ICMSDifValor] [numeric](38, 6) NOT NULL,
	[ICMSDifValorIsento] [numeric](38, 6) NOT NULL,
	[ICMSDifValorOutros] [numeric](38, 6) NOT NULL,
	[TaxNotInPrice] [numeric](19, 6) NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FactSalesForecast](
	[CompanyDB] [nvarchar](50) NULL,
	[ItemsId] [smallint] NULL,
	[PrevDate] [datetime] NULL,
	[Quantity] [numeric](19, 6) NULL,
	[salesForecastId] [smallint] NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactServiceOrder]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FactServiceOrder](
	[CompanyDB] [nvarchar](50) NULL,
	[DocEntry] [int] NOT NULL,
	[DocNum] [int] NOT NULL,
	[BusinessPartnerID] [int] NULL,
	[contctName] [nvarchar](50) NOT NULL,
	[manufSN] [nvarchar](36) NULL,
	[internalSN] [nvarchar](36) NULL,
	[ItemsId] [smallint] NOT NULL,
	[ItemGroupId] [smallint] NOT NULL,
	[subject] [nvarchar](254) NULL,
	[descrption] [ntext] NULL,
	[StatusName] [nvarchar](20) NULL,
	[StatusDescription] [ntext] NULL,
	[priority] [char](1) NULL,
	[createDate] [datetime] NULL,
	[createTime] [smallint] NULL,
	[closeDate] [datetime] NULL,
	[closeTime] [smallint] NULL,
	[contractID] [int] NULL,
	[cntrctDate] [datetime] NULL,
	[origin] [smallint] NULL,
	[AssigneeName] [nvarchar](155) NULL,
	[OriginName] [nvarchar](20) NOT NULL,
	[OriginDesc] [ntext] NOT NULL,
	[ProblemName] [nvarchar](20) NOT NULL,
	[ProblemDesc] [ntext] NOT NULL,
	[callTypeName] [nvarchar](20) NOT NULL,
	[callTypeDesc] [ntext] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FIFO_SBO_Transaction]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FIFO_SBO_Transaction](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[companyDB] [nvarchar](50) NULL,
	[timestamp] [datetime] NULL,
	[objectType] [nvarchar](20) NULL,
	[transactionType] [nchar](10) NULL,
	[num_of_cols_in_key] [int] NULL,
	[list_of_key_cols_tab_del] [nvarchar](255) NULL,
	[list_of_cols_val_tab_del] [nvarchar](255) NULL,
	[transid] [int] NULL,
	[fifoStatus] [nchar](10) NULL,
	[startCustomDate] [datetime] NULL,
	[endCustomDate] [datetime] NULL,
	[startSTDDate] [datetime] NULL,
	[endSTDDate] [datetime] NULL,
	[startDate] [datetime] NULL,
	[endDate] [datetime] NULL,
	[errMessage] [nvarchar](500) NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InvType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[InvType](
	[InvType] [int] NOT NULL,
	[shortDesc] [nvarchar](50) NULL,
	[longDesc] [nvarchar](200) NULL,
	[direction] [nchar](10) NULL,
	[type] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[InvType] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MAIL_ALERT_CONFIG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MAIL_ALERT_CONFIG](
	[profile_name] [nvarchar](50) NULL,
	[recipients] [nvarchar](100) NULL,
	[subject] [nvarchar](100) NULL,
	[maxProcessingTime] [int] NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NFEStatus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NFEStatus](
	[companydb] [nvarchar](50) NULL,
	[docentry] [int] NULL,
	[invtype] [int] NULL,
	[status] [nvarchar](100) NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OAccount]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OAccount](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[AcctCode] [nvarchar](15) NULL,
	[AcctName] [nvarchar](100) NULL,
	[Finanse] [char](1) NULL,
	[LocManTran] [char](1) NULL,
	[Levels] [smallint] NULL,
	[GroupMask] [smallint] NULL,
	[FatherID] [smallint] NULL,
 CONSTRAINT [PK_OAccount] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OAccountType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OAccountType](
	[id] [smallint] NOT NULL,
	[Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_OAccountType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OBatchNumber]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OBatchNumber](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ItemCode] [nvarchar](20) NOT NULL,
	[BatchNumber] [nvarchar](32) NOT NULL,
	[ExpDate] [datetime] NULL,
	[MnfDate] [datetime] NULL,
	[InDate] [datetime] NULL,
	[Notes] [nvarchar](100) NULL,
 CONSTRAINT [PK_OBatchNumber] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OBPCharacteristics]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OBPCharacteristics](
	[id] [smallint] NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OBPCharacteristicValues](
	[BusinessPartnerId] [int] NULL,
	[BPCharacteristicId] [smallint] NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OBudget]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OBudget](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sapId] [int] NULL,
	[companydb] [nvarchar](50) NULL,
	[Name] [nvarchar](100) NULL,
	[FinancYear] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OBusinessPartner](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CardCode] [nvarchar](15) NOT NULL,
	[CardName] [nvarchar](100) NULL,
	[CardFName] [nvarchar](100) NULL,
	[CardType] [char](1) NULL,
	[SalesPersonID] [smallint] NULL,
	[CreateDate] [datetime] NULL,
	[BusinessPartnerGroupID] [smallint] NULL,
	[CNPJ] [nvarchar](100) NULL,
	[IE] [nvarchar](100) NULL,
	[CPF] [nvarchar](100) NULL,
	[RG] [nvarchar](100) NULL,
	[Address] [nvarchar](100) NULL,
	[City] [nvarchar](100) NULL,
	[County] [nvarchar](100) NULL,
	[Country] [nvarchar](3) NULL,
	[Block] [nvarchar](100) NULL,
	[Building] [ntext] NULL,
	[AddrType] [nvarchar](100) NULL,
	[StreetNo] [nvarchar](100) NULL,
	[ZipCode] [nvarchar](20) NULL,
	[State] [nvarchar](3) NULL,
	[MailAddress] [nvarchar](100) NULL,
	[MailCity] [nvarchar](100) NULL,
	[MailCounty] [nvarchar](100) NULL,
	[MailCountry] [nvarchar](3) NULL,
	[MailBlock] [nvarchar](100) NULL,
	[MailBuilding] [ntext] NULL,
	[MailAddrType] [nvarchar](100) NULL,
	[MailStreetNo] [nvarchar](100) NULL,
	[MailZipCode] [nvarchar](20) NULL,
	[MailState] [nvarchar](3) NULL,
	[E_Mail] [nvarchar](100) NULL,
	[Phone1] [nvarchar](20) NULL,
	[Phone2] [nvarchar](20) NULL,
	[Fax] [nvarchar](20) NULL,
	[CntctPrsn] [nvarchar](90) NULL,
	[U_gwe_parc_monsanto] [nvarchar](10) NULL,
	[TerritoryId] [int] NULL,
	[IndustrySectorId] [smallint] NULL,
	[AgentId] [smallint] NULL,
	[paymentId] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OBusinessPartnerGroup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OBusinessPartnerGroup](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[GroupCode] [smallint] NULL,
	[GroupName] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OCharacteristics]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OCharacteristics](
	[id] [smallint] NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OContactPerson]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OContactPerson](
	[CompanyDB] [nvarchar](50) NULL,
	[CntctCode] [int] NOT NULL,
	[BusinessPartnerID] [int] NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Position] [nvarchar](90) NULL,
	[Address] [nvarchar](100) NULL,
	[Tel1] [nvarchar](20) NULL,
	[Tel2] [nvarchar](20) NULL,
	[Cellolar] [nvarchar](50) NULL,
	[Fax] [nvarchar](20) NULL,
	[E_MailL] [nvarchar](100) NULL,
	[Pager] [nvarchar](30) NULL,
	[Notes1] [nvarchar](100) NULL,
	[Notes2] [nvarchar](100) NULL,
	[Password] [nvarchar](8) NULL,
	[BirthDate] [datetime] NULL,
	[Gender] [char](1) NULL,
	[Profession] [nvarchar](50) NULL,
	[Title] [nvarchar](10) NULL,
	[BirthCity] [nvarchar](100) NULL,
	[FirstName] [nvarchar](50) NULL,
	[MiddleName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OCostingCode]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OCostingCode](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[PrcCode] [nvarchar](8) NULL,
	[PrcName] [nvarchar](30) NULL,
	[DimCode] [smallint] NULL,
	[GrpCode] [nvarchar](4) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OCostingCodeLevels]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OCostingCodeLevels](
	[companyDB] [nvarchar](50) NULL,
	[Template] [nvarchar](100) NULL,
	[DimCode] [int] NULL,
	[Name] [nvarchar](254) NULL,
	[Levels] [int] NULL,
	[Fathernum] [smallint] NULL,
	[CatId] [int] NULL,
	[Level1] [nvarchar](200) NULL,
	[Level2] [nvarchar](200) NULL,
	[Level3] [nvarchar](200) NULL,
	[Level4] [nvarchar](200) NULL,
	[Level5] [nvarchar](200) NULL,
	[Level6] [nvarchar](200) NULL,
	[Level7] [nvarchar](200) NULL,
	[Level8] [nvarchar](200) NULL,
	[Level9] [nvarchar](200) NULL,
	[Level10] [nvarchar](200) NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OIndustrySector]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OIndustrySector](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[IndName] [nvarchar](15) NULL,
	[IndDesc] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OItemCharacteristic]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OItemCharacteristic](
	[ItemId] [smallint] NULL,
	[CharacteristicId] [smallint] NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OItemGroup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OItemGroup](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[ItmsGrpNam] [nvarchar](20) NULL,
 CONSTRAINT [PK__ItemGroup__6BAEFA67] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OItems]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OItems](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[ItemCode] [nvarchar](20) NULL,
	[ItemName] [nvarchar](100) NULL,
	[FrgnName] [nvarchar](100) NULL,
	[MinLevel] [numeric](19, 6) NULL,
	[MaxLevel] [numeric](19, 6) NULL,
	[Canceled] [char](1) NULL,
	[fronzenFrom] [datetime] NULL,
	[frozenTo] [datetime] NULL,
	[validFrom] [datetime] NULL,
	[validTo] [datetime] NULL,
	[validComm] [nvarchar](30) NULL,
	[frozenComm] [nvarchar](30) NULL,
	[UserText] [ntext] NULL,
	[ItemGroupId] [smallint] NULL,
	[ManufacturerId] [smallint] NULL,
	[ShipTypeId] [smallint] NULL,
	[SWeight1] [numeric](19, 6) NULL,
	[BWeight1] [numeric](19, 6) NULL,
	[NumInSale] [numeric](19, 6) NULL,
	[SalPackMsr] [nvarchar](8) NULL,
	[SalPackUn] [numeric](19, 6) NULL,
	[NumInBuy] [numeric](19, 6) NULL,
	[PurPackMsr] [nvarchar](8) NULL,
	[BuyUnitMsr] [nvarchar](20) NULL,
	[SalUnitMsr] [nvarchar](20) NULL,
	[NCMCode] [nvarchar](10) NULL,
	[InvntItem] [char](1) NULL,
	[SellItem] [char](1) NULL,
	[PrchseItem] [char](1) NULL,
	[AssetItem] [char](1) NULL,
 CONSTRAINT [PK__Items__79FD19BE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OListPrice]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OListPrice](
	[CompanyDB] [nvarchar](50) NOT NULL,
	[ListName] [nvarchar](50) NOT NULL,
	[ListNum] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CompanyDB] ASC,
	[ListNum] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OListPriceDetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OListPriceDetails](
	[CompanyDB] [nvarchar](50) NOT NULL,
	[PriceList] [smallint] NOT NULL,
	[ItemsId] [smallint] NOT NULL,
	[Price] [numeric](19, 6) NOT NULL,
	[Currency] [nvarchar](3) NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OManufacturer]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OManufacturer](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[manufacturerName] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OModel]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OModel](
	[id] [smallint] NOT NULL,
	[Description] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OPaymentGroup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OPaymentGroup](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[Payment] [nvarchar](70) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OPaymentGroupLines]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OPaymentGroupLines](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[Installment] [smallint] NULL,
	[InstMonth] [smallint] NULL,
	[InstDays] [smallint] NULL,
	[InstPrcnt] [numeric](19, 6) NULL,
	[PaymentGroupId] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OPriority]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OPriority](
	[priority] [char](1) NOT NULL,
	[description] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[priority] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OProject]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OProject](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[PrjCode] [nvarchar](20) NULL,
	[PrjName] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OSalesForecast]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OSalesForecast](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](16) NULL,
	[Name] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OSalesPerson]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OSalesPerson](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[SlpCode] [smallint] NULL,
	[Commission] [numeric](19, 6) NULL,
	[SlpName] [nvarchar](155) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OSalesRepresentative]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OSalesRepresentative](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[AgentCode] [nvarchar](32) NULL,
	[AgentName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OSeqCode]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OSeqCode](
	[companyDB] [nvarchar](50) NULL,
	[SeqCode] [smallint] NOT NULL,
	[SeqName] [nvarchar](8) NOT NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OShipType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OShipType](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[transportName] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OTerritory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OTerritory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Descript] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OUsage]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OUsage](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[Usage] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OUsers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OUsers](
	[CompanyDB] [nvarchar](50) NOT NULL,
	[UserId] [int] NOT NULL,
	[UserCode] [nvarchar](8) NULL,
	[UserName] [nvarchar](155) NULL,
	[EMail] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[CompanyDB] ASC,
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OWarehouse]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OWarehouse](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CompanyDB] [nvarchar](50) NOT NULL,
	[WhsCode] [nvarchar](8) NOT NULL,
	[WhsName] [nvarchar](100) NULL,
	[Location] [nvarchar](100) NULL,
	[BPLid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReconValues]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ReconValues](
	[TransId] [int] NOT NULL,
	[Line_ID] [int] NOT NULL,
	[Total] [numeric](38, 6) NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sysdiagrams]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sysdiagrams](
	[name] [sysname] NOT NULL,
	[principal_id] [int] NOT NULL,
	[diagram_id] [int] IDENTITY(1,1) NOT NULL,
	[version] [int] NULL,
	[definition] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[diagram_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UK_principal_name] UNIQUE NONCLUSTERED 
(
	[principal_id] ASC,
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TempCA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TempCA](
	[DimCode] [smallint] NULL,
	[validFrom] [datetime] NOT NULL,
	[validTo] [datetime] NOT NULL,
	[OcrCode] [nvarchar](8) NOT NULL,
	[id] [int] NOT NULL,
	[rateio] [numeric](38, 19) NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TempTB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TempTB](
	[lineId] [bigint] NULL,
	[ReconNum] [int] NOT NULL,
	[BPLId] [int] NOT NULL,
	[ReconSum] [numeric](19, 6) NOT NULL,
	[ShortName] [nvarchar](15) NULL,
	[Ref1] [nvarchar](100) NOT NULL,
	[Ref2] [nvarchar](100) NOT NULL,
	[Ref3] [nvarchar](27) NOT NULL,
	[TransId] [int] NOT NULL,
	[Line_ID] [int] NOT NULL,
	[Debit] [numeric](19, 6) NULL,
	[Credit] [numeric](19, 6) NULL,
	[ItemsId] [smallint] NOT NULL,
	[BusinessPartnerID] [int] NOT NULL,
	[TransType] [int] NULL,
	[DocEntry] [int] NULL,
	[BaseType] [int] NULL,
	[BaseEntry] [int] NULL,
	[LineNum] [int] NOT NULL,
	[Installment] [int] NULL,
	[NumAtCard] [nvarchar](100) NOT NULL,
	[SalesPersonID] [smallint] NOT NULL,
	[AgentId] [smallint] NOT NULL,
	[Account] [nvarchar](15) NULL,
	[ContraAct] [nvarchar](15) NULL,
	[DueDate] [datetime] NULL,
	[TaxDate] [datetime] NULL,
	[RefDate] [datetime] NULL,
	[TransCode] [nvarchar](4) NOT NULL,
	[Project] [int] NULL,
	[OcrCode] [nvarchar](8) NOT NULL,
	[OcrCode2] [nvarchar](8) NOT NULL,
	[OcrCode3] [nvarchar](8) NOT NULL,
	[OcrCode4] [nvarchar](8) NOT NULL,
	[OcrCode5] [nvarchar](8) NOT NULL,
	[ProjectContra] [int] NULL,
	[OcrCodeContra] [nvarchar](8) NOT NULL,
	[OcrCode2Contra] [nvarchar](8) NOT NULL,
	[OcrCode3Contra] [nvarchar](8) NOT NULL,
	[OcrCode4Contra] [nvarchar](8) NOT NULL,
	[OcrCode5Contra] [nvarchar](8) NOT NULL,
	[LineTotal] [numeric](21, 6) NULL,
	[BatchNumberId] [int] NOT NULL,
	[DocQty] [numeric](19, 6) NOT NULL,
	[BatchQuantity] [numeric](19, 6) NOT NULL,
	[AccountID] [smallint] NOT NULL,
	[ContraAccountID] [smallint] NULL,
	[Storno] [varchar](1) NOT NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[test]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[test](
	[id] [int] NULL,
	[descr] [nvarchar](100) NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Totals]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Totals](
	[Total] [numeric](38, 6) NULL,
	[DocEntry] [int] NOT NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TRACE_TABLE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TRACE_TABLE](
	[RowNumber] [int] IDENTITY(0,1) NOT NULL,
	[EventClass] [int] NULL,
	[TextData] [ntext] NULL,
	[Duration] [bigint] NULL,
	[SPID] [int] NULL,
	[DatabaseID] [int] NULL,
	[DatabaseName] [nvarchar](128) NULL,
	[ObjectType] [int] NULL,
	[LoginName] [nvarchar](128) NULL,
	[BinaryData] [image] NULL,
PRIMARY KEY CLUSTERED 
(
	[RowNumber] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserFields]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserFields](
	[tableName] [nvarchar](10) NULL,
	[field] [nvarchar](100) NULL
) ON [PRIMARY]
END
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WTValues]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[WTValues](
	[companyDB] [nvarchar](50) NULL,
	[InvType] [int] NOT NULL,
	[DocEntry] [int] NOT NULL,
	[LineNum] [int] NOT NULL,
	[Rate] [numeric](38, 6) NULL,
	[WTAmnt] [numeric](38, 6) NULL
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK___FactBase__compa__35331FEF]') AND parent_object_id = OBJECT_ID(N'[dbo].[_FactBasePurchaseSales]'))
ALTER TABLE [dbo].[_FactBasePurchaseSales]  WITH CHECK ADD FOREIGN KEY([companyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Branch__CompanyD__52B6FF30]') AND parent_object_id = OBJECT_ID(N'[dbo].[Branch]'))
ALTER TABLE [dbo].[Branch]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBatchNu__Batch__54B38AE4]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBatchNumber]'))
ALTER TABLE [dbo].[DPBatchNumber]  WITH NOCHECK ADD FOREIGN KEY([BatchNumberId])
REFERENCES [OBatchNumber] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBatchNu__Batch__55A7AF1D]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBatchNumber]'))
ALTER TABLE [dbo].[DPBatchNumber]  WITH NOCHECK ADD FOREIGN KEY([BatchNumberId])
REFERENCES [OBatchNumber] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBatchNu__Batch__569BD356]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBatchNumber]'))
ALTER TABLE [dbo].[DPBatchNumber]  WITH NOCHECK ADD FOREIGN KEY([BatchNumberId])
REFERENCES [OBatchNumber] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBatchNu__Batch__578FF78F]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBatchNumber]'))
ALTER TABLE [dbo].[DPBatchNumber]  WITH NOCHECK ADD FOREIGN KEY([BatchNumberId])
REFERENCES [OBatchNumber] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBatchNu__Batch__58841BC8]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBatchNumber]'))
ALTER TABLE [dbo].[DPBatchNumber]  WITH NOCHECK ADD FOREIGN KEY([BatchNumberId])
REFERENCES [OBatchNumber] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBatchNu__Batch__59784001]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBatchNumber]'))
ALTER TABLE [dbo].[DPBatchNumber]  WITH NOCHECK ADD FOREIGN KEY([BatchNumberId])
REFERENCES [OBatchNumber] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBatchNu__Compa__5A6C643A]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBatchNumber]'))
ALTER TABLE [dbo].[DPBatchNumber]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBatchNu__Compa__5B608873]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBatchNumber]'))
ALTER TABLE [dbo].[DPBatchNumber]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBatchNu__Compa__5C54ACAC]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBatchNumber]'))
ALTER TABLE [dbo].[DPBatchNumber]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBatchNu__Compa__5D48D0E5]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBatchNumber]'))
ALTER TABLE [dbo].[DPBatchNumber]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBatchNu__Compa__5E3CF51E]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBatchNumber]'))
ALTER TABLE [dbo].[DPBatchNumber]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBatchNu__Compa__5F311957]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBatchNumber]'))
ALTER TABLE [dbo].[DPBatchNumber]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBusines__Busin__60253D90]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBusinessPartner]'))
ALTER TABLE [dbo].[DPBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerID])
REFERENCES [OBusinessPartner] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBusines__Busin__611961C9]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBusinessPartner]'))
ALTER TABLE [dbo].[DPBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerID])
REFERENCES [OBusinessPartner] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBusines__Busin__620D8602]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBusinessPartner]'))
ALTER TABLE [dbo].[DPBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerID])
REFERENCES [OBusinessPartner] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBusines__Busin__6301AA3B]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBusinessPartner]'))
ALTER TABLE [dbo].[DPBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerID])
REFERENCES [OBusinessPartner] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBusines__Busin__63F5CE74]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBusinessPartner]'))
ALTER TABLE [dbo].[DPBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerID])
REFERENCES [OBusinessPartner] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBusines__Busin__64E9F2AD]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBusinessPartner]'))
ALTER TABLE [dbo].[DPBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerID])
REFERENCES [OBusinessPartner] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBusines__Busin__65DE16E6]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBusinessPartnerGroup]'))
ALTER TABLE [dbo].[DPBusinessPartnerGroup]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerGroupID])
REFERENCES [OBusinessPartnerGroup] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBusines__Busin__66D23B1F]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBusinessPartnerGroup]'))
ALTER TABLE [dbo].[DPBusinessPartnerGroup]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerGroupID])
REFERENCES [OBusinessPartnerGroup] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBusines__Busin__67C65F58]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBusinessPartnerGroup]'))
ALTER TABLE [dbo].[DPBusinessPartnerGroup]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerGroupID])
REFERENCES [OBusinessPartnerGroup] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBusines__Busin__68BA8391]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBusinessPartnerGroup]'))
ALTER TABLE [dbo].[DPBusinessPartnerGroup]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerGroupID])
REFERENCES [OBusinessPartnerGroup] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBusines__Busin__69AEA7CA]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBusinessPartnerGroup]'))
ALTER TABLE [dbo].[DPBusinessPartnerGroup]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerGroupID])
REFERENCES [OBusinessPartnerGroup] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPBusines__Busin__6AA2CC03]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPBusinessPartnerGroup]'))
ALTER TABLE [dbo].[DPBusinessPartnerGroup]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerGroupID])
REFERENCES [OBusinessPartnerGroup] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPIndustr__Indus__6B96F03C]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPIndustrySector]'))
ALTER TABLE [dbo].[DPIndustrySector]  WITH NOCHECK ADD FOREIGN KEY([IndustrySectorId])
REFERENCES [OIndustrySector] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPIndustr__Indus__6C8B1475]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPIndustrySector]'))
ALTER TABLE [dbo].[DPIndustrySector]  WITH NOCHECK ADD FOREIGN KEY([IndustrySectorId])
REFERENCES [OIndustrySector] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPIndustr__Indus__6D7F38AE]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPIndustrySector]'))
ALTER TABLE [dbo].[DPIndustrySector]  WITH NOCHECK ADD FOREIGN KEY([IndustrySectorId])
REFERENCES [OIndustrySector] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPIndustr__Indus__6E735CE7]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPIndustrySector]'))
ALTER TABLE [dbo].[DPIndustrySector]  WITH NOCHECK ADD FOREIGN KEY([IndustrySectorId])
REFERENCES [OIndustrySector] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPIndustr__Indus__6F678120]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPIndustrySector]'))
ALTER TABLE [dbo].[DPIndustrySector]  WITH NOCHECK ADD FOREIGN KEY([IndustrySectorId])
REFERENCES [OIndustrySector] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPIndustr__Indus__705BA559]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPIndustrySector]'))
ALTER TABLE [dbo].[DPIndustrySector]  WITH NOCHECK ADD FOREIGN KEY([IndustrySectorId])
REFERENCES [OIndustrySector] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPManufac__Manuf__73381204]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPManufacturers]'))
ALTER TABLE [dbo].[DPManufacturers]  WITH NOCHECK ADD FOREIGN KEY([ManufacturerId])
REFERENCES [OManufacturer] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPManufac__Manuf__742C363D]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPManufacturers]'))
ALTER TABLE [dbo].[DPManufacturers]  WITH NOCHECK ADD FOREIGN KEY([ManufacturerId])
REFERENCES [OManufacturer] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPManufac__Manuf__75205A76]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPManufacturers]'))
ALTER TABLE [dbo].[DPManufacturers]  WITH NOCHECK ADD FOREIGN KEY([ManufacturerId])
REFERENCES [OManufacturer] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPManufac__Manuf__76147EAF]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPManufacturers]'))
ALTER TABLE [dbo].[DPManufacturers]  WITH NOCHECK ADD FOREIGN KEY([ManufacturerId])
REFERENCES [OManufacturer] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPManufac__Manuf__7708A2E8]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPManufacturers]'))
ALTER TABLE [dbo].[DPManufacturers]  WITH NOCHECK ADD FOREIGN KEY([ManufacturerId])
REFERENCES [OManufacturer] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPManufac__Manuf__77FCC721]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPManufacturers]'))
ALTER TABLE [dbo].[DPManufacturers]  WITH NOCHECK ADD FOREIGN KEY([ManufacturerId])
REFERENCES [OManufacturer] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPSalesPe__Sales__79E50F93]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPSalesPerson]'))
ALTER TABLE [dbo].[DPSalesPerson]  WITH NOCHECK ADD FOREIGN KEY([SalesPersonID])
REFERENCES [OSalesPerson] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPSalesPe__Sales__7AD933CC]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPSalesPerson]'))
ALTER TABLE [dbo].[DPSalesPerson]  WITH NOCHECK ADD FOREIGN KEY([SalesPersonID])
REFERENCES [OSalesPerson] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPSalesPe__Sales__7BCD5805]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPSalesPerson]'))
ALTER TABLE [dbo].[DPSalesPerson]  WITH NOCHECK ADD FOREIGN KEY([SalesPersonID])
REFERENCES [OSalesPerson] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPSalesPe__Sales__7CC17C3E]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPSalesPerson]'))
ALTER TABLE [dbo].[DPSalesPerson]  WITH NOCHECK ADD FOREIGN KEY([SalesPersonID])
REFERENCES [OSalesPerson] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPSalesPe__Sales__7DB5A077]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPSalesPerson]'))
ALTER TABLE [dbo].[DPSalesPerson]  WITH NOCHECK ADD FOREIGN KEY([SalesPersonID])
REFERENCES [OSalesPerson] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPSalesPe__Sales__7EA9C4B0]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPSalesPerson]'))
ALTER TABLE [dbo].[DPSalesPerson]  WITH NOCHECK ADD FOREIGN KEY([SalesPersonID])
REFERENCES [OSalesPerson] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPSalesRe__Agent__00920D22]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPSalesRepresentative]'))
ALTER TABLE [dbo].[DPSalesRepresentative]  WITH NOCHECK ADD FOREIGN KEY([AgentID])
REFERENCES [OSalesRepresentative] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPSalesRe__Agent__0186315B]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPSalesRepresentative]'))
ALTER TABLE [dbo].[DPSalesRepresentative]  WITH NOCHECK ADD FOREIGN KEY([AgentID])
REFERENCES [OSalesRepresentative] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPSalesRe__Agent__027A5594]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPSalesRepresentative]'))
ALTER TABLE [dbo].[DPSalesRepresentative]  WITH NOCHECK ADD FOREIGN KEY([AgentID])
REFERENCES [OSalesRepresentative] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPSalesRe__Agent__036E79CD]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPSalesRepresentative]'))
ALTER TABLE [dbo].[DPSalesRepresentative]  WITH NOCHECK ADD FOREIGN KEY([AgentID])
REFERENCES [OSalesRepresentative] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPSalesRe__Agent__04629E06]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPSalesRepresentative]'))
ALTER TABLE [dbo].[DPSalesRepresentative]  WITH NOCHECK ADD FOREIGN KEY([AgentID])
REFERENCES [OSalesRepresentative] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPSalesRe__Agent__7F9DE8E9]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPSalesRepresentative]'))
ALTER TABLE [dbo].[DPSalesRepresentative]  WITH NOCHECK ADD FOREIGN KEY([AgentID])
REFERENCES [OSalesRepresentative] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPShipTyp__ShipT__0556C23F]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPShipType]'))
ALTER TABLE [dbo].[DPShipType]  WITH NOCHECK ADD FOREIGN KEY([ShipTypeId])
REFERENCES [OShipType] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPShipTyp__ShipT__064AE678]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPShipType]'))
ALTER TABLE [dbo].[DPShipType]  WITH NOCHECK ADD FOREIGN KEY([ShipTypeId])
REFERENCES [OShipType] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPShipTyp__ShipT__073F0AB1]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPShipType]'))
ALTER TABLE [dbo].[DPShipType]  WITH NOCHECK ADD FOREIGN KEY([ShipTypeId])
REFERENCES [OShipType] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPShipTyp__ShipT__08332EEA]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPShipType]'))
ALTER TABLE [dbo].[DPShipType]  WITH NOCHECK ADD FOREIGN KEY([ShipTypeId])
REFERENCES [OShipType] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPShipTyp__ShipT__09275323]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPShipType]'))
ALTER TABLE [dbo].[DPShipType]  WITH NOCHECK ADD FOREIGN KEY([ShipTypeId])
REFERENCES [OShipType] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DPShipTyp__ShipT__0A1B775C]') AND parent_object_id = OBJECT_ID(N'[dbo].[DPShipType]'))
ALTER TABLE [dbo].[DPShipType]  WITH NOCHECK ADD FOREIGN KEY([ShipTypeId])
REFERENCES [OShipType] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactBillO__compa__059784B8]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactBillOfExchange]'))
ALTER TABLE [dbo].[FactBillOfExchange]  WITH NOCHECK ADD FOREIGN KEY([companyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactBillO__compa__068BA8F1]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactBillOfExchange]'))
ALTER TABLE [dbo].[FactBillOfExchange]  WITH NOCHECK ADD FOREIGN KEY([companyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactBillO__compa__077FCD2A]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactBillOfExchange]'))
ALTER TABLE [dbo].[FactBillOfExchange]  WITH NOCHECK ADD FOREIGN KEY([companyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactBillO__compa__0873F163]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactBillOfExchange]'))
ALTER TABLE [dbo].[FactBillOfExchange]  WITH NOCHECK ADD FOREIGN KEY([companyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactBillO__compa__0968159C]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactBillOfExchange]'))
ALTER TABLE [dbo].[FactBillOfExchange]  WITH NOCHECK ADD FOREIGN KEY([companyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactBillO__compa__0A5C39D5]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactBillOfExchange]'))
ALTER TABLE [dbo].[FactBillOfExchange]  WITH NOCHECK ADD FOREIGN KEY([companyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactBudge__accou__3DB0F552]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactBudget]'))
ALTER TABLE [dbo].[FactBudget]  WITH NOCHECK ADD FOREIGN KEY([accountId])
REFERENCES [OAccount] ([ID])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactBudge__budge__3BC8ACE0]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactBudget]'))
ALTER TABLE [dbo].[FactBudget]  WITH NOCHECK ADD FOREIGN KEY([budgetId])
REFERENCES [OBudget] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactBudge__compa__3CBCD119]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactBudget]'))
ALTER TABLE [dbo].[FactBudget]  WITH NOCHECK ADD FOREIGN KEY([companydb])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactCurre__Compa__13A4E196]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactCurrency]'))
ALTER TABLE [dbo].[FactCurrency]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactCurre__Compa__149905CF]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactCurrency]'))
ALTER TABLE [dbo].[FactCurrency]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactCurre__Compa__158D2A08]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactCurrency]'))
ALTER TABLE [dbo].[FactCurrency]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactCurre__Compa__16814E41]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactCurrency]'))
ALTER TABLE [dbo].[FactCurrency]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactCurre__Compa__1775727A]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactCurrency]'))
ALTER TABLE [dbo].[FactCurrency]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactCurre__Compa__186996B3]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactCurrency]'))
ALTER TABLE [dbo].[FactCurrency]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactCurre__Compa__195DBAEC]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactCurrency]'))
ALTER TABLE [dbo].[FactCurrency]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactCurre__Compa__1A51DF25]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactCurrency]'))
ALTER TABLE [dbo].[FactCurrency]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactCurre__Compa__1B46035E]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactCurrency]'))
ALTER TABLE [dbo].[FactCurrency]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactCurre__Compa__1C3A2797]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactCurrency]'))
ALTER TABLE [dbo].[FactCurrency]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactCurre__Compa__1D2E4BD0]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactCurrency]'))
ALTER TABLE [dbo].[FactCurrency]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactCurre__Compa__1E227009]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactCurrency]'))
ALTER TABLE [dbo].[FactCurrency]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactCurre__Compa__1F169442]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactCurrency]'))
ALTER TABLE [dbo].[FactCurrency]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactCurre__Compa__200AB87B]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactCurrency]'))
ALTER TABLE [dbo].[FactCurrency]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactCurre__Compa__20FEDCB4]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactCurrency]'))
ALTER TABLE [dbo].[FactCurrency]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactCurre__Compa__21F300ED]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactCurrency]'))
ALTER TABLE [dbo].[FactCurrency]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactCurre__Compa__22E72526]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactCurrency]'))
ALTER TABLE [dbo].[FactCurrency]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactCurre__Compa__23DB495F]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactCurrency]'))
ALTER TABLE [dbo].[FactCurrency]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__Busin__14C6505D]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentHeader]'))
ALTER TABLE [dbo].[FactDocumentHeader]  WITH CHECK ADD FOREIGN KEY([BusinessPartnerId])
REFERENCES [OBusinessPartner] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__Compa__12DE07EB]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentHeader]'))
ALTER TABLE [dbo].[FactDocumentHeader]  WITH CHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__DocDa__16AE98CF]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentHeader]'))
ALTER TABLE [dbo].[FactDocumentHeader]  WITH CHECK ADD FOREIGN KEY([DocDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__InvTy__15BA7496]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentHeader]'))
ALTER TABLE [dbo].[FactDocumentHeader]  WITH CHECK ADD FOREIGN KEY([InvType])
REFERENCES [InvType] ([InvType])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__Model__1896E141]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentHeader]'))
ALTER TABLE [dbo].[FactDocumentHeader]  WITH CHECK ADD FOREIGN KEY([ModelId])
REFERENCES [OModel] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__Payme__198B057A]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentHeader]'))
ALTER TABLE [dbo].[FactDocumentHeader]  WITH CHECK ADD FOREIGN KEY([PaymentId])
REFERENCES [OPaymentGroup] ([ID])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__Sales__13D22C24]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentHeader]'))
ALTER TABLE [dbo].[FactDocumentHeader]  WITH CHECK ADD FOREIGN KEY([SalesPersonId])
REFERENCES [OSalesPerson] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__TaxDa__17A2BD08]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentHeader]'))
ALTER TABLE [dbo].[FactDocumentHeader]  WITH CHECK ADD FOREIGN KEY([TaxDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__Accou__1C677225]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentLines]'))
ALTER TABLE [dbo].[FactDocumentLines]  WITH CHECK ADD FOREIGN KEY([AccountId])
REFERENCES [OAccount] ([ID])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__CogsO__240893ED]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentLines]'))
ALTER TABLE [dbo].[FactDocumentLines]  WITH CHECK ADD FOREIGN KEY([CogsOcrCod])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__CogsO__24FCB826]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentLines]'))
ALTER TABLE [dbo].[FactDocumentLines]  WITH CHECK ADD FOREIGN KEY([CogsOcrCo2])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__CogsO__25F0DC5F]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentLines]'))
ALTER TABLE [dbo].[FactDocumentLines]  WITH CHECK ADD FOREIGN KEY([CogsOcrCo3])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__CogsO__26E50098]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentLines]'))
ALTER TABLE [dbo].[FactDocumentLines]  WITH CHECK ADD FOREIGN KEY([CogsOcrCo4])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__CogsO__27D924D1]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentLines]'))
ALTER TABLE [dbo].[FactDocumentLines]  WITH CHECK ADD FOREIGN KEY([CogsOcrCo5])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__Compa__1A7F29B3]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentLines]'))
ALTER TABLE [dbo].[FactDocumentLines]  WITH CHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__InvTy__1E4FBA97]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentLines]'))
ALTER TABLE [dbo].[FactDocumentLines]  WITH CHECK ADD FOREIGN KEY([InvType])
REFERENCES [InvType] ([InvType])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__Items__1B734DEC]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentLines]'))
ALTER TABLE [dbo].[FactDocumentLines]  WITH CHECK ADD FOREIGN KEY([ItemsId])
REFERENCES [OItems] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__OcrCo__1F43DED0]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentLines]'))
ALTER TABLE [dbo].[FactDocumentLines]  WITH CHECK ADD FOREIGN KEY([OcrCode])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__OcrCo__20380309]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentLines]'))
ALTER TABLE [dbo].[FactDocumentLines]  WITH CHECK ADD FOREIGN KEY([OcrCode2])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__OcrCo__212C2742]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentLines]'))
ALTER TABLE [dbo].[FactDocumentLines]  WITH CHECK ADD FOREIGN KEY([OcrCode3])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__OcrCo__22204B7B]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentLines]'))
ALTER TABLE [dbo].[FactDocumentLines]  WITH CHECK ADD FOREIGN KEY([OcrCode4])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__OcrCo__23146FB4]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentLines]'))
ALTER TABLE [dbo].[FactDocumentLines]  WITH CHECK ADD FOREIGN KEY([OcrCode5])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__Proje__28CD490A]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentLines]'))
ALTER TABLE [dbo].[FactDocumentLines]  WITH CHECK ADD FOREIGN KEY([Project])
REFERENCES [OProject] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactDocum__Usage__1D5B965E]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactDocumentLines]'))
ALTER TABLE [dbo].[FactDocumentLines]  WITH CHECK ADD FOREIGN KEY([UsageId])
REFERENCES [OUsage] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Accou__229DD7BA]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([AccountID])
REFERENCES [OAccount] ([ID])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Accou__2391FBF3]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([AccountID])
REFERENCES [OAccount] ([ID])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Accou__2486202C]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([AccountID])
REFERENCES [OAccount] ([ID])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Accou__257A4465]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([AccountID])
REFERENCES [OAccount] ([ID])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Accou__266E689E]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([AccountID])
REFERENCES [OAccount] ([ID])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Accou__27628CD7]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([AccountID])
REFERENCES [OAccount] ([ID])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Busin__2856B110]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerID])
REFERENCES [OBusinessPartner] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Busin__294AD549]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerID])
REFERENCES [OBusinessPartner] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Busin__2A3EF982]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerID])
REFERENCES [OBusinessPartner] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Busin__2B331DBB]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerID])
REFERENCES [OBusinessPartner] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Busin__2C2741F4]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerID])
REFERENCES [OBusinessPartner] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Busin__2D1B662D]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerID])
REFERENCES [OBusinessPartner] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Contr__2E0F8A66]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([ContraAccountId])
REFERENCES [OAccount] ([ID])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Contr__2F03AE9F]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([ContraAccountId])
REFERENCES [OAccount] ([ID])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Contr__2FF7D2D8]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([ContraAccountId])
REFERENCES [OAccount] ([ID])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Contr__30EBF711]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([ContraAccountId])
REFERENCES [OAccount] ([ID])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Contr__31E01B4A]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([ContraAccountId])
REFERENCES [OAccount] ([ID])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Contr__32D43F83]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([ContraAccountId])
REFERENCES [OAccount] ([ID])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__DueDa__33C863BC]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([DueDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__DueDa__34BC87F5]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([DueDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__DueDa__35B0AC2E]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([DueDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__DueDa__36A4D067]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([DueDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__DueDa__3798F4A0]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([DueDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__DueDa__388D18D9]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([DueDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Items__39813D12]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([ItemsId])
REFERENCES [OItems] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Items__3A75614B]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([ItemsId])
REFERENCES [OItems] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Items__3B698584]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([ItemsId])
REFERENCES [OItems] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Items__3C5DA9BD]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([ItemsId])
REFERENCES [OItems] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Items__3D51CDF6]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([ItemsId])
REFERENCES [OItems] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Items__3E45F22F]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([ItemsId])
REFERENCES [OItems] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__3F3A1668]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode3Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__402E3AA1]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode4Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__41225EDA]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode5Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__42168313]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__430AA74C]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode2])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__43FECB85]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode3])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__44F2EFBE]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode4])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__45E713F7]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode5])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__46DB3830]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCodeContra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__47CF5C69]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode2Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__48C380A2]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode3Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__49B7A4DB]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode4Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__4AABC914]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode5Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__4B9FED4D]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__4C941186]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode2])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__4D8835BF]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode3])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__4E7C59F8]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode4])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__4F707E31]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode5])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__5064A26A]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCodeContra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__5158C6A3]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode2Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__524CEADC]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode3Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__53410F15]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode4Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__5435334E]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode5Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__55295787]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__561D7BC0]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode2])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__57119FF9]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode3])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__5805C432]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode4])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__58F9E86B]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode5])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__59EE0CA4]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCodeContra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__5AE230DD]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__5BD65516]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode2Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__5CCA794F]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode2])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__5DBE9D88]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__5EB2C1C1]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode3Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__5FA6E5FA]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode3])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__609B0A33]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode2])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__618F2E6C]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode4Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__628352A5]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode4])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__637776DE]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode3])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__646B9B17]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode5Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__655FBF50]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode5])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__6653E389]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode4])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__674807C2]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCodeContra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__683C2BFB]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode5])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__69305034]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode2Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__6A24746D]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCodeContra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__6B1898A6]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode3Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__6C0CBCDF]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode2Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__6D00E118]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode4Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__6DF50551]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode3Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__6EE9298A]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode5Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__6FDD4DC3]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode4Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__70D171FC]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode5Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__71C59635]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__72B9BA6E]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode2])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__73ADDEA7]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode3])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__74A202E0]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode4])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__75962719]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode5])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__768A4B52]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCodeContra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__OcrCo__777E6F8B]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([OcrCode2Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Proje__0013B58C]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([Project])
REFERENCES [OProject] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Proje__0107D9C5]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([ProjectContra])
REFERENCES [OProject] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Proje__01FBFDFE]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([Project])
REFERENCES [OProject] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Proje__02F02237]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([ProjectContra])
REFERENCES [OProject] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Proje__787293C4]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([Project])
REFERENCES [OProject] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Proje__7966B7FD]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([ProjectContra])
REFERENCES [OProject] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Proje__7A5ADC36]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([Project])
REFERENCES [OProject] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Proje__7B4F006F]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([ProjectContra])
REFERENCES [OProject] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Proje__7C4324A8]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([Project])
REFERENCES [OProject] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Proje__7D3748E1]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([ProjectContra])
REFERENCES [OProject] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Proje__7E2B6D1A]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([Project])
REFERENCES [OProject] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Proje__7F1F9153]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([ProjectContra])
REFERENCES [OProject] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Sales__03E44670]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([SalesPersonId])
REFERENCES [OSalesPerson] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Sales__04D86AA9]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([SalesPersonId])
REFERENCES [OSalesPerson] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Sales__05CC8EE2]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([SalesPersonId])
REFERENCES [OSalesPerson] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Sales__06C0B31B]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([SalesPersonId])
REFERENCES [OSalesPerson] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Sales__07B4D754]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([SalesPersonId])
REFERENCES [OSalesPerson] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__Sales__08A8FB8D]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([SalesPersonId])
REFERENCES [OSalesPerson] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__TaxDa__099D1FC6]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([TaxDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__TaxDa__0A9143FF]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([TaxDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__TaxDa__0B856838]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([TaxDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__TaxDa__0C798C71]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([TaxDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__TaxDa__0D6DB0AA]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([TaxDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactFinan__TaxDa__0E61D4E3]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactFinanse]'))
ALTER TABLE [dbo].[FactFinanse]  WITH NOCHECK ADD FOREIGN KEY([TaxDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactIncom__Accou__10019B40]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactIncomePayment]'))
ALTER TABLE [dbo].[FactIncomePayment]  WITH CHECK ADD FOREIGN KEY([AccountId])
REFERENCES [OAccount] ([ID])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactIncom__Batch__11E9E3B2]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactIncomePayment]'))
ALTER TABLE [dbo].[FactIncomePayment]  WITH CHECK ADD FOREIGN KEY([BatchNumberId])
REFERENCES [OBatchNumber] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactIncom__Busin__0F0D7707]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactIncomePayment]'))
ALTER TABLE [dbo].[FactIncomePayment]  WITH CHECK ADD FOREIGN KEY([BusinessPartnerId])
REFERENCES [OBusinessPartner] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactIncom__Compa__0C310A5C]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactIncomePayment]'))
ALTER TABLE [dbo].[FactIncomePayment]  WITH CHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactIncom__Items__0D252E95]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactIncomePayment]'))
ALTER TABLE [dbo].[FactIncomePayment]  WITH CHECK ADD FOREIGN KEY([ItemsId])
REFERENCES [OItems] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactIncom__Sales__0E1952CE]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactIncomePayment]'))
ALTER TABLE [dbo].[FactIncomePayment]  WITH CHECK ADD FOREIGN KEY([SalesPersonId])
REFERENCES [OSalesPerson] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactIncom__Trans__10F5BF79]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactIncomePayment]'))
ALTER TABLE [dbo].[FactIncomePayment]  WITH CHECK ADD FOREIGN KEY([TransType])
REFERENCES [InvType] ([InvType])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Batch__2F17F1E1]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory]  WITH NOCHECK ADD FOREIGN KEY([BatchNumberId])
REFERENCES [OBatchNumber] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Batch__300C161A]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory]  WITH NOCHECK ADD FOREIGN KEY([BatchNumberId])
REFERENCES [OBatchNumber] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Batch__31003A53]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory]  WITH NOCHECK ADD FOREIGN KEY([BatchNumberId])
REFERENCES [OBatchNumber] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Batch__31F45E8C]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory]  WITH NOCHECK ADD FOREIGN KEY([BatchNumberId])
REFERENCES [OBatchNumber] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Batch__32E882C5]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory]  WITH NOCHECK ADD FOREIGN KEY([BatchNumberId])
REFERENCES [OBatchNumber] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Batch__33DCA6FE]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory]  WITH NOCHECK ADD FOREIGN KEY([BatchNumberId])
REFERENCES [OBatchNumber] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Compa__34D0CB37]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Compa__35C4EF70]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Compa__36B913A9]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Compa__37AD37E2]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Compa__38A15C1B]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Compa__39958054]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__DocDa__3A89A48D]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory]  WITH NOCHECK ADD FOREIGN KEY([DocDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__DocDa__3B7DC8C6]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory]  WITH NOCHECK ADD FOREIGN KEY([DocDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__DocDa__3C71ECFF]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory]  WITH NOCHECK ADD FOREIGN KEY([DocDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__DocDa__3D661138]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory]  WITH NOCHECK ADD FOREIGN KEY([DocDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__DocDa__3E5A3571]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory]  WITH NOCHECK ADD FOREIGN KEY([DocDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__DocDa__3F4E59AA]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory]  WITH NOCHECK ADD FOREIGN KEY([DocDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Items__40427DE3]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory]  WITH NOCHECK ADD FOREIGN KEY([ItemsId])
REFERENCES [OItems] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Items__4136A21C]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory]  WITH NOCHECK ADD FOREIGN KEY([ItemsId])
REFERENCES [OItems] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Items__422AC655]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory]  WITH NOCHECK ADD FOREIGN KEY([ItemsId])
REFERENCES [OItems] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Items__431EEA8E]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory]  WITH NOCHECK ADD FOREIGN KEY([ItemsId])
REFERENCES [OItems] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Items__44130EC7]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory]  WITH NOCHECK ADD FOREIGN KEY([ItemsId])
REFERENCES [OItems] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Items__45073300]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory]  WITH NOCHECK ADD FOREIGN KEY([ItemsId])
REFERENCES [OItems] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__TaxDa__45FB5739]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory]  WITH NOCHECK ADD FOREIGN KEY([TaxDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__TaxDa__46EF7B72]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory]  WITH NOCHECK ADD FOREIGN KEY([TaxDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__TaxDa__47E39FAB]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory]  WITH NOCHECK ADD FOREIGN KEY([TaxDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__TaxDa__48D7C3E4]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory]  WITH NOCHECK ADD FOREIGN KEY([TaxDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__TaxDa__49CBE81D]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory]  WITH NOCHECK ADD FOREIGN KEY([TaxDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__TaxDa__4AC00C56]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory]  WITH NOCHECK ADD FOREIGN KEY([TaxDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Wareh__4BB4308F]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory]  WITH NOCHECK ADD FOREIGN KEY([WarehouseId])
REFERENCES [OWarehouse] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Wareh__4CA854C8]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory]  WITH NOCHECK ADD FOREIGN KEY([WarehouseId])
REFERENCES [OWarehouse] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Wareh__4D9C7901]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory]  WITH NOCHECK ADD FOREIGN KEY([WarehouseId])
REFERENCES [OWarehouse] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Wareh__4E909D3A]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory]  WITH NOCHECK ADD FOREIGN KEY([WarehouseId])
REFERENCES [OWarehouse] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Wareh__4F84C173]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory]  WITH NOCHECK ADD FOREIGN KEY([WarehouseId])
REFERENCES [OWarehouse] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactInven__Wareh__5078E5AC]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactInventory]'))
ALTER TABLE [dbo].[FactInventory]  WITH NOCHECK ADD FOREIGN KEY([WarehouseId])
REFERENCES [OWarehouse] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Accou__104A1D55]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([AccountID])
REFERENCES [OAccount] ([ID])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Accou__113E418E]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([AccountID])
REFERENCES [OAccount] ([ID])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Accou__123265C7]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([AccountID])
REFERENCES [OAccount] ([ID])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Accou__13268A00]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([AccountID])
REFERENCES [OAccount] ([ID])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Accou__141AAE39]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([AccountID])
REFERENCES [OAccount] ([ID])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Accou__150ED272]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([AccountID])
REFERENCES [OAccount] ([ID])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Busin__1602F6AB]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerID])
REFERENCES [OBusinessPartner] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Busin__16F71AE4]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerID])
REFERENCES [OBusinessPartner] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Busin__17EB3F1D]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerID])
REFERENCES [OBusinessPartner] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Busin__18DF6356]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerID])
REFERENCES [OBusinessPartner] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Busin__19D3878F]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerID])
REFERENCES [OBusinessPartner] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Busin__1AC7ABC8]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerID])
REFERENCES [OBusinessPartner] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Compa__1BBBD001]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Compa__1CAFF43A]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Compa__1DA41873]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Compa__1E983CAC]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Compa__1F8C60E5]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Compa__2080851E]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Contr__2174A957]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([ContraAccountID])
REFERENCES [OAccount] ([ID])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Contr__2268CD90]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([ContraAccountID])
REFERENCES [OAccount] ([ID])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Contr__235CF1C9]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([ContraAccountID])
REFERENCES [OAccount] ([ID])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Contr__24511602]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([ContraAccountID])
REFERENCES [OAccount] ([ID])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Contr__25453A3B]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([ContraAccountID])
REFERENCES [OAccount] ([ID])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Contr__26395E74]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([ContraAccountID])
REFERENCES [OAccount] ([ID])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__DueDa__272D82AD]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([DueDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__DueDa__2821A6E6]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([DueDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__DueDa__2915CB1F]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([DueDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__DueDa__2A09EF58]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([DueDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__DueDa__2AFE1391]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([DueDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__DueDa__2BF237CA]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([DueDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__2CE65C03]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode5Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__2DDA803C]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__2ECEA475]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode2])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__2FC2C8AE]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode3])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__30B6ECE7]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode4])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__31AB1120]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode5])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__329F3559]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCodeContra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__33935992]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__34877DCB]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode2Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__357BA204]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode2])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__366FC63D]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__3763EA76]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode3Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__38580EAF]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode3])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__394C32E8]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode2])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__3A405721]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode4Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__3B347B5A]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode4])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__3C289F93]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode3])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__3D1CC3CC]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode5Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__3E10E805]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode5])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__3F050C3E]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode4])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__3FF93077]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCodeContra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__40ED54B0]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode5])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__41E178E9]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode2Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__42D59D22]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCodeContra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__43C9C15B]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode3Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__44BDE594]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode2Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__45B209CD]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode4Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__46A62E06]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode3Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__479A523F]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode5Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__488E7678]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode4Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__49829AB1]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode5Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__4A76BEEA]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__4B6AE323]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode2])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__4C5F075C]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode3])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__4D532B95]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode4])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__4E474FCE]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode5])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__4F3B7407]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCodeContra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__502F9840]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode2Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__5123BC79]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode3Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__5217E0B2]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode4Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__530C04EB]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode5Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__54002924]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__54F44D5D]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode2])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__55E87196]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode3])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__56DC95CF]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode4])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__57D0BA08]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode5])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__58C4DE41]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCodeContra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__59B9027A]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode2Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__5AAD26B3]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode3Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__5BA14AEC]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode4Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__5C956F25]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode5Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__5D89935E]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__5E7DB797]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode2])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__5F71DBD0]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode3])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__60660009]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode4])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__615A2442]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode5])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__624E487B]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCodeContra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__63426CB4]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode2Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__643690ED]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode3Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__OcrCo__652AB526]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([OcrCode4Contra])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Proje__661ED95F]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([Project])
REFERENCES [OProject] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Proje__6712FD98]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([ProjectContra])
REFERENCES [OProject] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Proje__680721D1]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([Project])
REFERENCES [OProject] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Proje__68FB460A]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([ProjectContra])
REFERENCES [OProject] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Proje__69EF6A43]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([Project])
REFERENCES [OProject] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Proje__6AE38E7C]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([ProjectContra])
REFERENCES [OProject] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Proje__6BD7B2B5]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([Project])
REFERENCES [OProject] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Proje__6CCBD6EE]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([ProjectContra])
REFERENCES [OProject] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Proje__6DBFFB27]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([Project])
REFERENCES [OProject] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Proje__6EB41F60]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([ProjectContra])
REFERENCES [OProject] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Proje__6FA84399]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([Project])
REFERENCES [OProject] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__Proje__709C67D2]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([ProjectContra])
REFERENCES [OProject] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__TaxDa__71908C0B]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([TaxDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__TaxDa__7284B044]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([TaxDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__TaxDa__7378D47D]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([TaxDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__TaxDa__746CF8B6]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([TaxDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__TaxDa__75611CEF]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([TaxDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactJourn__TaxDa__76554128]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactJournalVouchers]'))
ALTER TABLE [dbo].[FactJournalVouchers]  WITH NOCHECK ADD FOREIGN KEY([TaxDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactL1Bud__DocDa__386C51F1]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactL1Budget]'))
ALTER TABLE [dbo].[FactL1Budget]  WITH NOCHECK ADD FOREIGN KEY([DocDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactL1Bud__DocDa__3960762A]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactL1Budget]'))
ALTER TABLE [dbo].[FactL1Budget]  WITH NOCHECK ADD FOREIGN KEY([DocDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactL1Bud__DocDa__3A549A63]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactL1Budget]'))
ALTER TABLE [dbo].[FactL1Budget]  WITH NOCHECK ADD FOREIGN KEY([DocDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactL1Bud__DocDa__3B48BE9C]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactL1Budget]'))
ALTER TABLE [dbo].[FactL1Budget]  WITH NOCHECK ADD FOREIGN KEY([DocDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactL1Bud__DocDa__3C3CE2D5]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactL1Budget]'))
ALTER TABLE [dbo].[FactL1Budget]  WITH NOCHECK ADD FOREIGN KEY([DocDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactL1Bud__DocDa__3D31070E]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactL1Budget]'))
ALTER TABLE [dbo].[FactL1Budget]  WITH NOCHECK ADD FOREIGN KEY([DocDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactL1Bud__OcrCo__3E252B47]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactL1Budget]'))
ALTER TABLE [dbo].[FactL1Budget]  WITH NOCHECK ADD FOREIGN KEY([OcrCode])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactL1Bud__OcrCo__3F194F80]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactL1Budget]'))
ALTER TABLE [dbo].[FactL1Budget]  WITH NOCHECK ADD FOREIGN KEY([OcrCode])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactL1Bud__OcrCo__400D73B9]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactL1Budget]'))
ALTER TABLE [dbo].[FactL1Budget]  WITH NOCHECK ADD FOREIGN KEY([OcrCode])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactL1Bud__OcrCo__410197F2]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactL1Budget]'))
ALTER TABLE [dbo].[FactL1Budget]  WITH NOCHECK ADD FOREIGN KEY([OcrCode])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactL1Bud__OcrCo__41F5BC2B]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactL1Budget]'))
ALTER TABLE [dbo].[FactL1Budget]  WITH NOCHECK ADD FOREIGN KEY([OcrCode])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactL1Bud__OcrCo__42E9E064]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactL1Budget]'))
ALTER TABLE [dbo].[FactL1Budget]  WITH NOCHECK ADD FOREIGN KEY([OcrCode])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactL1Bud__Proje__43DE049D]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactL1Budget]'))
ALTER TABLE [dbo].[FactL1Budget]  WITH NOCHECK ADD FOREIGN KEY([Project])
REFERENCES [OProject] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactL1Bud__Proje__44D228D6]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactL1Budget]'))
ALTER TABLE [dbo].[FactL1Budget]  WITH NOCHECK ADD FOREIGN KEY([Project])
REFERENCES [OProject] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactL1Bud__Proje__45C64D0F]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactL1Budget]'))
ALTER TABLE [dbo].[FactL1Budget]  WITH NOCHECK ADD FOREIGN KEY([Project])
REFERENCES [OProject] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactL1Bud__Proje__46BA7148]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactL1Budget]'))
ALTER TABLE [dbo].[FactL1Budget]  WITH NOCHECK ADD FOREIGN KEY([Project])
REFERENCES [OProject] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactL1Bud__Proje__47AE9581]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactL1Budget]'))
ALTER TABLE [dbo].[FactL1Budget]  WITH NOCHECK ADD FOREIGN KEY([Project])
REFERENCES [OProject] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactL1Bud__Proje__48A2B9BA]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactL1Budget]'))
ALTER TABLE [dbo].[FactL1Budget]  WITH NOCHECK ADD FOREIGN KEY([Project])
REFERENCES [OProject] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactOutco__Accou__09549DB1]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactOutcomePayment]'))
ALTER TABLE [dbo].[FactOutcomePayment]  WITH CHECK ADD FOREIGN KEY([AccountId])
REFERENCES [OAccount] ([ID])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactOutco__Batch__0B3CE623]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactOutcomePayment]'))
ALTER TABLE [dbo].[FactOutcomePayment]  WITH CHECK ADD FOREIGN KEY([BatchNumberId])
REFERENCES [OBatchNumber] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactOutco__Busin__08607978]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactOutcomePayment]'))
ALTER TABLE [dbo].[FactOutcomePayment]  WITH CHECK ADD FOREIGN KEY([BusinessPartnerId])
REFERENCES [OBusinessPartner] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactOutco__Compa__05840CCD]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactOutcomePayment]'))
ALTER TABLE [dbo].[FactOutcomePayment]  WITH CHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactOutco__Items__06783106]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactOutcomePayment]'))
ALTER TABLE [dbo].[FactOutcomePayment]  WITH CHECK ADD FOREIGN KEY([ItemsId])
REFERENCES [OItems] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactOutco__Sales__076C553F]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactOutcomePayment]'))
ALTER TABLE [dbo].[FactOutcomePayment]  WITH CHECK ADD FOREIGN KEY([SalesPersonId])
REFERENCES [OSalesPerson] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactOutco__Trans__0A48C1EA]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactOutcomePayment]'))
ALTER TABLE [dbo].[FactOutcomePayment]  WITH CHECK ADD FOREIGN KEY([TransType])
REFERENCES [InvType] ([InvType])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactProdO__busin__4097839E]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdOrderHeader]'))
ALTER TABLE [dbo].[FactProdOrderHeader]  WITH NOCHECK ADD FOREIGN KEY([businessPartnerId])
REFERENCES [OBusinessPartner] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactProdO__compa__3EAF3B2C]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdOrderHeader]'))
ALTER TABLE [dbo].[FactProdOrderHeader]  WITH NOCHECK ADD FOREIGN KEY([companyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactProdO__Items__3FA35F65]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdOrderHeader]'))
ALTER TABLE [dbo].[FactProdOrderHeader]  WITH NOCHECK ADD FOREIGN KEY([ItemsId])
REFERENCES [OItems] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactProdO__OcrCo__427FCC10]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdOrderHeader]'))
ALTER TABLE [dbo].[FactProdOrderHeader]  WITH NOCHECK ADD FOREIGN KEY([OcrCode])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactProdO__OcrCo__4373F049]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdOrderHeader]'))
ALTER TABLE [dbo].[FactProdOrderHeader]  WITH NOCHECK ADD FOREIGN KEY([OcrCode2])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactProdO__OcrCo__44681482]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdOrderHeader]'))
ALTER TABLE [dbo].[FactProdOrderHeader]  WITH NOCHECK ADD FOREIGN KEY([OcrCode3])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactProdO__OcrCo__455C38BB]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdOrderHeader]'))
ALTER TABLE [dbo].[FactProdOrderHeader]  WITH NOCHECK ADD FOREIGN KEY([OcrCode4])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactProdO__OcrCo__46505CF4]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdOrderHeader]'))
ALTER TABLE [dbo].[FactProdOrderHeader]  WITH NOCHECK ADD FOREIGN KEY([OcrCode5])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactProdO__proje__4744812D]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdOrderHeader]'))
ALTER TABLE [dbo].[FactProdOrderHeader]  WITH NOCHECK ADD FOREIGN KEY([projectid])
REFERENCES [OProject] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactProdO__wareh__418BA7D7]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdOrderHeader]'))
ALTER TABLE [dbo].[FactProdOrderHeader]  WITH NOCHECK ADD FOREIGN KEY([warehouseId])
REFERENCES [OWarehouse] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactProdO__compa__4838A566]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdOrderLines]'))
ALTER TABLE [dbo].[FactProdOrderLines]  WITH NOCHECK ADD FOREIGN KEY([companyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactProdO__Items__492CC99F]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdOrderLines]'))
ALTER TABLE [dbo].[FactProdOrderLines]  WITH NOCHECK ADD FOREIGN KEY([ItemsId])
REFERENCES [OItems] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactProdO__OcrCo__4B151211]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdOrderLines]'))
ALTER TABLE [dbo].[FactProdOrderLines]  WITH NOCHECK ADD FOREIGN KEY([OcrCode])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactProdO__OcrCo__4C09364A]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdOrderLines]'))
ALTER TABLE [dbo].[FactProdOrderLines]  WITH NOCHECK ADD FOREIGN KEY([OcrCode2])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactProdO__OcrCo__4CFD5A83]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdOrderLines]'))
ALTER TABLE [dbo].[FactProdOrderLines]  WITH NOCHECK ADD FOREIGN KEY([OcrCode3])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactProdO__OcrCo__4DF17EBC]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdOrderLines]'))
ALTER TABLE [dbo].[FactProdOrderLines]  WITH NOCHECK ADD FOREIGN KEY([OcrCode4])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactProdO__OcrCo__4EE5A2F5]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdOrderLines]'))
ALTER TABLE [dbo].[FactProdOrderLines]  WITH NOCHECK ADD FOREIGN KEY([OcrCode5])
REFERENCES [OCostingCode] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactProdO__proje__4FD9C72E]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdOrderLines]'))
ALTER TABLE [dbo].[FactProdOrderLines]  WITH NOCHECK ADD FOREIGN KEY([projectid])
REFERENCES [OProject] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactProdO__Wareh__4A20EDD8]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdOrderLines]'))
ALTER TABLE [dbo].[FactProdOrderLines]  WITH NOCHECK ADD FOREIGN KEY([WarehouseId])
REFERENCES [OWarehouse] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[child1]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdTree]'))
ALTER TABLE [dbo].[FactProdTree]  WITH NOCHECK ADD  CONSTRAINT [child1] FOREIGN KEY([child1])
REFERENCES [OItems] ([id])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[child1]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdTree]'))
ALTER TABLE [dbo].[FactProdTree] CHECK CONSTRAINT [child1]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[child10]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdTree]'))
ALTER TABLE [dbo].[FactProdTree]  WITH NOCHECK ADD  CONSTRAINT [child10] FOREIGN KEY([Child10])
REFERENCES [OItems] ([id])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[child10]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdTree]'))
ALTER TABLE [dbo].[FactProdTree] CHECK CONSTRAINT [child10]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[child2]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdTree]'))
ALTER TABLE [dbo].[FactProdTree]  WITH NOCHECK ADD  CONSTRAINT [child2] FOREIGN KEY([Child2])
REFERENCES [OItems] ([id])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[child2]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdTree]'))
ALTER TABLE [dbo].[FactProdTree] CHECK CONSTRAINT [child2]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[child3]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdTree]'))
ALTER TABLE [dbo].[FactProdTree]  WITH NOCHECK ADD  CONSTRAINT [child3] FOREIGN KEY([Child3])
REFERENCES [OItems] ([id])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[child3]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdTree]'))
ALTER TABLE [dbo].[FactProdTree] CHECK CONSTRAINT [child3]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[child4]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdTree]'))
ALTER TABLE [dbo].[FactProdTree]  WITH NOCHECK ADD  CONSTRAINT [child4] FOREIGN KEY([Child4])
REFERENCES [OItems] ([id])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[child4]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdTree]'))
ALTER TABLE [dbo].[FactProdTree] CHECK CONSTRAINT [child4]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[child5]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdTree]'))
ALTER TABLE [dbo].[FactProdTree]  WITH NOCHECK ADD  CONSTRAINT [child5] FOREIGN KEY([Child5])
REFERENCES [OItems] ([id])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[child5]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdTree]'))
ALTER TABLE [dbo].[FactProdTree] CHECK CONSTRAINT [child5]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[child6]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdTree]'))
ALTER TABLE [dbo].[FactProdTree]  WITH NOCHECK ADD  CONSTRAINT [child6] FOREIGN KEY([Child6])
REFERENCES [OItems] ([id])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[child6]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdTree]'))
ALTER TABLE [dbo].[FactProdTree] CHECK CONSTRAINT [child6]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[child7]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdTree]'))
ALTER TABLE [dbo].[FactProdTree]  WITH NOCHECK ADD  CONSTRAINT [child7] FOREIGN KEY([Child7])
REFERENCES [OItems] ([id])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[child7]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdTree]'))
ALTER TABLE [dbo].[FactProdTree] CHECK CONSTRAINT [child7]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[child8]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdTree]'))
ALTER TABLE [dbo].[FactProdTree]  WITH NOCHECK ADD  CONSTRAINT [child8] FOREIGN KEY([Child8])
REFERENCES [OItems] ([id])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[child8]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdTree]'))
ALTER TABLE [dbo].[FactProdTree] CHECK CONSTRAINT [child8]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[child9]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdTree]'))
ALTER TABLE [dbo].[FactProdTree]  WITH NOCHECK ADD  CONSTRAINT [child9] FOREIGN KEY([Child9])
REFERENCES [OItems] ([id])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[child9]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdTree]'))
ALTER TABLE [dbo].[FactProdTree] CHECK CONSTRAINT [child9]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[companydb]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdTree]'))
ALTER TABLE [dbo].[FactProdTree]  WITH NOCHECK ADD  CONSTRAINT [companydb] FOREIGN KEY([companyDB])
REFERENCES [Company] ([databaseName])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[companydb]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdTree]'))
ALTER TABLE [dbo].[FactProdTree] CHECK CONSTRAINT [companydb]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[father]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdTree]'))
ALTER TABLE [dbo].[FactProdTree]  WITH NOCHECK ADD  CONSTRAINT [father] FOREIGN KEY([Father])
REFERENCES [OItems] ([id])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[father]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactProdTree]'))
ALTER TABLE [dbo].[FactProdTree] CHECK CONSTRAINT [father]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactPurch__Compa__7CEEC6CC]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactPurchaseSales]'))
ALTER TABLE [dbo].[FactPurchaseSales]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactPurch__Compa__7DE2EB05]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactPurchaseSales]'))
ALTER TABLE [dbo].[FactPurchaseSales]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactPurch__Compa__7ED70F3E]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactPurchaseSales]'))
ALTER TABLE [dbo].[FactPurchaseSales]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactPurch__InvTy__7FCB3377]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactPurchaseSales]'))
ALTER TABLE [dbo].[FactPurchaseSales]  WITH NOCHECK ADD FOREIGN KEY([InvType])
REFERENCES [InvType] ([InvType])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__Compa__54146C66]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__Compa__5508909F]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__Compa__55FCB4D8]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__Compa__56F0D911]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__Compa__57E4FD4A]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__Compa__58D92183]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__Items__59CD45BC]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast]  WITH NOCHECK ADD FOREIGN KEY([ItemsId])
REFERENCES [OItems] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__Items__5AC169F5]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast]  WITH NOCHECK ADD FOREIGN KEY([ItemsId])
REFERENCES [OItems] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__Items__5BB58E2E]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast]  WITH NOCHECK ADD FOREIGN KEY([ItemsId])
REFERENCES [OItems] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__Items__5CA9B267]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast]  WITH NOCHECK ADD FOREIGN KEY([ItemsId])
REFERENCES [OItems] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__Items__5D9DD6A0]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast]  WITH NOCHECK ADD FOREIGN KEY([ItemsId])
REFERENCES [OItems] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__Items__5E91FAD9]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast]  WITH NOCHECK ADD FOREIGN KEY([ItemsId])
REFERENCES [OItems] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__PrevD__5F861F12]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast]  WITH NOCHECK ADD FOREIGN KEY([PrevDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__PrevD__607A434B]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast]  WITH NOCHECK ADD FOREIGN KEY([PrevDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__PrevD__616E6784]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast]  WITH NOCHECK ADD FOREIGN KEY([PrevDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__PrevD__62628BBD]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast]  WITH NOCHECK ADD FOREIGN KEY([PrevDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__PrevD__6356AFF6]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast]  WITH NOCHECK ADD FOREIGN KEY([PrevDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__PrevD__644AD42F]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast]  WITH NOCHECK ADD FOREIGN KEY([PrevDate])
REFERENCES [DimTempo] ([data])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__sales__653EF868]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast]  WITH NOCHECK ADD FOREIGN KEY([salesForecastId])
REFERENCES [OSalesForecast] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__sales__66331CA1]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast]  WITH NOCHECK ADD FOREIGN KEY([salesForecastId])
REFERENCES [OSalesForecast] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__sales__672740DA]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast]  WITH NOCHECK ADD FOREIGN KEY([salesForecastId])
REFERENCES [OSalesForecast] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__sales__681B6513]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast]  WITH NOCHECK ADD FOREIGN KEY([salesForecastId])
REFERENCES [OSalesForecast] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__sales__690F894C]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast]  WITH NOCHECK ADD FOREIGN KEY([salesForecastId])
REFERENCES [OSalesForecast] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__FactSales__sales__6A03AD85]') AND parent_object_id = OBJECT_ID(N'[dbo].[FactSalesForecast]'))
ALTER TABLE [dbo].[FactSalesForecast]  WITH NOCHECK ADD FOREIGN KEY([salesForecastId])
REFERENCES [OSalesForecast] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__NFEStatus__compa__6BEBF5F7]') AND parent_object_id = OBJECT_ID(N'[dbo].[NFEStatus]'))
ALTER TABLE [dbo].[NFEStatus]  WITH NOCHECK ADD FOREIGN KEY([companydb])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__NFEStatus__compa__6CE01A30]') AND parent_object_id = OBJECT_ID(N'[dbo].[NFEStatus]'))
ALTER TABLE [dbo].[NFEStatus]  WITH NOCHECK ADD FOREIGN KEY([companydb])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__NFEStatus__compa__6DD43E69]') AND parent_object_id = OBJECT_ID(N'[dbo].[NFEStatus]'))
ALTER TABLE [dbo].[NFEStatus]  WITH NOCHECK ADD FOREIGN KEY([companydb])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__NFEStatus__compa__6EC862A2]') AND parent_object_id = OBJECT_ID(N'[dbo].[NFEStatus]'))
ALTER TABLE [dbo].[NFEStatus]  WITH NOCHECK ADD FOREIGN KEY([companydb])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__NFEStatus__compa__6FBC86DB]') AND parent_object_id = OBJECT_ID(N'[dbo].[NFEStatus]'))
ALTER TABLE [dbo].[NFEStatus]  WITH NOCHECK ADD FOREIGN KEY([companydb])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__NFEStatus__compa__70B0AB14]') AND parent_object_id = OBJECT_ID(N'[dbo].[NFEStatus]'))
ALTER TABLE [dbo].[NFEStatus]  WITH NOCHECK ADD FOREIGN KEY([companydb])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__BPCha__7298F386]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues]  WITH NOCHECK ADD FOREIGN KEY([BPCharacteristicId])
REFERENCES [OBPCharacteristics] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__BPCha__738D17BF]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues]  WITH NOCHECK ADD FOREIGN KEY([BPCharacteristicId])
REFERENCES [OBPCharacteristics] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__BPCha__74813BF8]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues]  WITH NOCHECK ADD FOREIGN KEY([BPCharacteristicId])
REFERENCES [OBPCharacteristics] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__BPCha__75756031]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues]  WITH NOCHECK ADD FOREIGN KEY([BPCharacteristicId])
REFERENCES [OBPCharacteristics] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__BPCha__7669846A]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues]  WITH NOCHECK ADD FOREIGN KEY([BPCharacteristicId])
REFERENCES [OBPCharacteristics] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__BPCha__775DA8A3]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues]  WITH NOCHECK ADD FOREIGN KEY([BPCharacteristicId])
REFERENCES [OBPCharacteristics] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__BPCha__7851CCDC]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues]  WITH NOCHECK ADD FOREIGN KEY([BPCharacteristicId])
REFERENCES [OBPCharacteristics] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__BPCha__7945F115]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues]  WITH NOCHECK ADD FOREIGN KEY([BPCharacteristicId])
REFERENCES [OBPCharacteristics] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__BPCha__7A3A154E]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues]  WITH NOCHECK ADD FOREIGN KEY([BPCharacteristicId])
REFERENCES [OBPCharacteristics] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__BPCha__7B2E3987]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues]  WITH NOCHECK ADD FOREIGN KEY([BPCharacteristicId])
REFERENCES [OBPCharacteristics] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__BPCha__7C225DC0]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues]  WITH NOCHECK ADD FOREIGN KEY([BPCharacteristicId])
REFERENCES [OBPCharacteristics] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__BPCha__7D1681F9]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues]  WITH NOCHECK ADD FOREIGN KEY([BPCharacteristicId])
REFERENCES [OBPCharacteristics] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__Busin__00E712DD]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerId])
REFERENCES [OBusinessPartner] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__Busin__01DB3716]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerId])
REFERENCES [OBusinessPartner] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__Busin__02CF5B4F]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerId])
REFERENCES [OBusinessPartner] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__Busin__03C37F88]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerId])
REFERENCES [OBusinessPartner] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__Busin__04B7A3C1]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerId])
REFERENCES [OBusinessPartner] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__Busin__05ABC7FA]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerId])
REFERENCES [OBusinessPartner] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__Busin__069FEC33]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerId])
REFERENCES [OBusinessPartner] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__Busin__0794106C]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerId])
REFERENCES [OBusinessPartner] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__Busin__088834A5]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerId])
REFERENCES [OBusinessPartner] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__Busin__097C58DE]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerId])
REFERENCES [OBusinessPartner] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__Busin__0A707D17]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerId])
REFERENCES [OBusinessPartner] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__Busin__0B64A150]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerId])
REFERENCES [OBusinessPartner] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__Busin__0C58C589]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerId])
REFERENCES [OBusinessPartner] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__Busin__0D4CE9C2]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerId])
REFERENCES [OBusinessPartner] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__Busin__0E410DFB]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerId])
REFERENCES [OBusinessPartner] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__Busin__7E0AA632]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerId])
REFERENCES [OBusinessPartner] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__Busin__7EFECA6B]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerId])
REFERENCES [OBusinessPartner] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBPCharac__Busin__7FF2EEA4]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBPCharacteristicValues]'))
ALTER TABLE [dbo].[OBPCharacteristicValues]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerId])
REFERENCES [OBusinessPartner] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBudget__company__3EA5198B]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBudget]'))
ALTER TABLE [dbo].[OBudget]  WITH NOCHECK ADD FOREIGN KEY([companydb])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Busin__00FC2176]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerGroupID])
REFERENCES [OBusinessPartnerGroup] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Busin__01F045AF]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerGroupID])
REFERENCES [OBusinessPartnerGroup] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Busin__02E469E8]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerGroupID])
REFERENCES [OBusinessPartnerGroup] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Busin__03D88E21]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerGroupID])
REFERENCES [OBusinessPartnerGroup] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Busin__04CCB25A]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerGroupID])
REFERENCES [OBusinessPartnerGroup] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Busin__05C0D693]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerGroupID])
REFERENCES [OBusinessPartnerGroup] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Busin__0F353234]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerGroupID])
REFERENCES [OBusinessPartnerGroup] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Busin__1029566D]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerGroupID])
REFERENCES [OBusinessPartnerGroup] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Busin__111D7AA6]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerGroupID])
REFERENCES [OBusinessPartnerGroup] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Busin__12119EDF]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerGroupID])
REFERENCES [OBusinessPartnerGroup] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Busin__1305C318]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerGroupID])
REFERENCES [OBusinessPartnerGroup] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Busin__13F9E751]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerGroupID])
REFERENCES [OBusinessPartnerGroup] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Indus__06B4FACC]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([IndustrySectorId])
REFERENCES [OIndustrySector] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Indus__07A91F05]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([IndustrySectorId])
REFERENCES [OIndustrySector] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Indus__089D433E]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([IndustrySectorId])
REFERENCES [OIndustrySector] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Indus__09916777]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([IndustrySectorId])
REFERENCES [OIndustrySector] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Indus__0A858BB0]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([IndustrySectorId])
REFERENCES [OIndustrySector] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Indus__0B79AFE9]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([IndustrySectorId])
REFERENCES [OIndustrySector] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Indus__14EE0B8A]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([IndustrySectorId])
REFERENCES [OIndustrySector] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Indus__15E22FC3]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([IndustrySectorId])
REFERENCES [OIndustrySector] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Indus__16D653FC]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([IndustrySectorId])
REFERENCES [OIndustrySector] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Indus__17CA7835]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([IndustrySectorId])
REFERENCES [OIndustrySector] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Indus__18BE9C6E]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([IndustrySectorId])
REFERENCES [OIndustrySector] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Indus__19B2C0A7]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([IndustrySectorId])
REFERENCES [OIndustrySector] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Sales__0C6DD422]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([SalesPersonID])
REFERENCES [OSalesPerson] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Sales__0D61F85B]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([SalesPersonID])
REFERENCES [OSalesPerson] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Sales__0E561C94]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([SalesPersonID])
REFERENCES [OSalesPerson] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Sales__0F4A40CD]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([SalesPersonID])
REFERENCES [OSalesPerson] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Sales__103E6506]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([SalesPersonID])
REFERENCES [OSalesPerson] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Sales__1132893F]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([SalesPersonID])
REFERENCES [OSalesPerson] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Sales__1AA6E4E0]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([SalesPersonID])
REFERENCES [OSalesPerson] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Sales__1B9B0919]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([SalesPersonID])
REFERENCES [OSalesPerson] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Sales__1C8F2D52]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([SalesPersonID])
REFERENCES [OSalesPerson] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Sales__1D83518B]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([SalesPersonID])
REFERENCES [OSalesPerson] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Sales__1E7775C4]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([SalesPersonID])
REFERENCES [OSalesPerson] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Sales__1F6B99FD]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([SalesPersonID])
REFERENCES [OSalesPerson] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Terri__1226AD78]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([TerritoryId])
REFERENCES [OTerritory] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Terri__131AD1B1]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([TerritoryId])
REFERENCES [OTerritory] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Terri__140EF5EA]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([TerritoryId])
REFERENCES [OTerritory] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Terri__15031A23]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([TerritoryId])
REFERENCES [OTerritory] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Terri__15F73E5C]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([TerritoryId])
REFERENCES [OTerritory] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Terri__16EB6295]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([TerritoryId])
REFERENCES [OTerritory] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Terri__205FBE36]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([TerritoryId])
REFERENCES [OTerritory] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Terri__2153E26F]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([TerritoryId])
REFERENCES [OTerritory] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Terri__224806A8]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([TerritoryId])
REFERENCES [OTerritory] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Terri__233C2AE1]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([TerritoryId])
REFERENCES [OTerritory] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Terri__24304F1A]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([TerritoryId])
REFERENCES [OTerritory] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OBusiness__Terri__25247353]') AND parent_object_id = OBJECT_ID(N'[dbo].[OBusinessPartner]'))
ALTER TABLE [dbo].[OBusinessPartner]  WITH NOCHECK ADD FOREIGN KEY([TerritoryId])
REFERENCES [OTerritory] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OContactP__Busin__2618978C]') AND parent_object_id = OBJECT_ID(N'[dbo].[OContactPerson]'))
ALTER TABLE [dbo].[OContactPerson]  WITH NOCHECK ADD FOREIGN KEY([BusinessPartnerID])
REFERENCES [OBusinessPartner] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OContactP__Compa__270CBBC5]') AND parent_object_id = OBJECT_ID(N'[dbo].[OContactPerson]'))
ALTER TABLE [dbo].[OContactPerson]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OItemChar__Chara__2800DFFE]') AND parent_object_id = OBJECT_ID(N'[dbo].[OItemCharacteristic]'))
ALTER TABLE [dbo].[OItemCharacteristic]  WITH NOCHECK ADD FOREIGN KEY([CharacteristicId])
REFERENCES [OCharacteristics] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OItemChar__Chara__28F50437]') AND parent_object_id = OBJECT_ID(N'[dbo].[OItemCharacteristic]'))
ALTER TABLE [dbo].[OItemCharacteristic]  WITH NOCHECK ADD FOREIGN KEY([CharacteristicId])
REFERENCES [OCharacteristics] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OItemChar__Chara__29E92870]') AND parent_object_id = OBJECT_ID(N'[dbo].[OItemCharacteristic]'))
ALTER TABLE [dbo].[OItemCharacteristic]  WITH NOCHECK ADD FOREIGN KEY([CharacteristicId])
REFERENCES [OCharacteristics] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OItemChar__Chara__2ADD4CA9]') AND parent_object_id = OBJECT_ID(N'[dbo].[OItemCharacteristic]'))
ALTER TABLE [dbo].[OItemCharacteristic]  WITH NOCHECK ADD FOREIGN KEY([CharacteristicId])
REFERENCES [OCharacteristics] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OItemChar__Chara__2BD170E2]') AND parent_object_id = OBJECT_ID(N'[dbo].[OItemCharacteristic]'))
ALTER TABLE [dbo].[OItemCharacteristic]  WITH NOCHECK ADD FOREIGN KEY([CharacteristicId])
REFERENCES [OCharacteristics] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OItemChar__Chara__2CC5951B]') AND parent_object_id = OBJECT_ID(N'[dbo].[OItemCharacteristic]'))
ALTER TABLE [dbo].[OItemCharacteristic]  WITH NOCHECK ADD FOREIGN KEY([CharacteristicId])
REFERENCES [OCharacteristics] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OItemChar__ItemI__2DB9B954]') AND parent_object_id = OBJECT_ID(N'[dbo].[OItemCharacteristic]'))
ALTER TABLE [dbo].[OItemCharacteristic]  WITH NOCHECK ADD FOREIGN KEY([ItemId])
REFERENCES [OItems] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OItemChar__ItemI__2EADDD8D]') AND parent_object_id = OBJECT_ID(N'[dbo].[OItemCharacteristic]'))
ALTER TABLE [dbo].[OItemCharacteristic]  WITH NOCHECK ADD FOREIGN KEY([ItemId])
REFERENCES [OItems] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OItemChar__ItemI__2FA201C6]') AND parent_object_id = OBJECT_ID(N'[dbo].[OItemCharacteristic]'))
ALTER TABLE [dbo].[OItemCharacteristic]  WITH NOCHECK ADD FOREIGN KEY([ItemId])
REFERENCES [OItems] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OItemChar__ItemI__309625FF]') AND parent_object_id = OBJECT_ID(N'[dbo].[OItemCharacteristic]'))
ALTER TABLE [dbo].[OItemCharacteristic]  WITH NOCHECK ADD FOREIGN KEY([ItemId])
REFERENCES [OItems] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OItemChar__ItemI__318A4A38]') AND parent_object_id = OBJECT_ID(N'[dbo].[OItemCharacteristic]'))
ALTER TABLE [dbo].[OItemCharacteristic]  WITH NOCHECK ADD FOREIGN KEY([ItemId])
REFERENCES [OItems] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OItemChar__ItemI__327E6E71]') AND parent_object_id = OBJECT_ID(N'[dbo].[OItemCharacteristic]'))
ALTER TABLE [dbo].[OItemCharacteristic]  WITH NOCHECK ADD FOREIGN KEY([ItemId])
REFERENCES [OItems] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Compa__2815EE97]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPrice]'))
ALTER TABLE [dbo].[OListPrice]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Compa__290A12D0]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPrice]'))
ALTER TABLE [dbo].[OListPrice]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Compa__29FE3709]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPrice]'))
ALTER TABLE [dbo].[OListPrice]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Compa__2AF25B42]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPrice]'))
ALTER TABLE [dbo].[OListPrice]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Compa__2BE67F7B]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPrice]'))
ALTER TABLE [dbo].[OListPrice]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Compa__2CDAA3B4]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPrice]'))
ALTER TABLE [dbo].[OListPrice]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Compa__364EFF55]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPrice]'))
ALTER TABLE [dbo].[OListPrice]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Compa__3743238E]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPrice]'))
ALTER TABLE [dbo].[OListPrice]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Compa__383747C7]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPrice]'))
ALTER TABLE [dbo].[OListPrice]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Compa__392B6C00]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPrice]'))
ALTER TABLE [dbo].[OListPrice]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Compa__3A1F9039]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPrice]'))
ALTER TABLE [dbo].[OListPrice]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Compa__3B13B472]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPrice]'))
ALTER TABLE [dbo].[OListPrice]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Compa__3C07D8AB]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPriceDetails]'))
ALTER TABLE [dbo].[OListPriceDetails]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Compa__3CFBFCE4]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPriceDetails]'))
ALTER TABLE [dbo].[OListPriceDetails]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Compa__3DF0211D]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPriceDetails]'))
ALTER TABLE [dbo].[OListPriceDetails]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Compa__3EE44556]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPriceDetails]'))
ALTER TABLE [dbo].[OListPriceDetails]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Compa__3FD8698F]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPriceDetails]'))
ALTER TABLE [dbo].[OListPriceDetails]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Compa__40CC8DC8]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPriceDetails]'))
ALTER TABLE [dbo].[OListPriceDetails]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Items__41C0B201]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPriceDetails]'))
ALTER TABLE [dbo].[OListPriceDetails]  WITH NOCHECK ADD FOREIGN KEY([ItemsId])
REFERENCES [OItems] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Items__42B4D63A]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPriceDetails]'))
ALTER TABLE [dbo].[OListPriceDetails]  WITH NOCHECK ADD FOREIGN KEY([ItemsId])
REFERENCES [OItems] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Items__43A8FA73]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPriceDetails]'))
ALTER TABLE [dbo].[OListPriceDetails]  WITH NOCHECK ADD FOREIGN KEY([ItemsId])
REFERENCES [OItems] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Items__449D1EAC]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPriceDetails]'))
ALTER TABLE [dbo].[OListPriceDetails]  WITH NOCHECK ADD FOREIGN KEY([ItemsId])
REFERENCES [OItems] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Items__459142E5]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPriceDetails]'))
ALTER TABLE [dbo].[OListPriceDetails]  WITH NOCHECK ADD FOREIGN KEY([ItemsId])
REFERENCES [OItems] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPric__Items__4685671E]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPriceDetails]'))
ALTER TABLE [dbo].[OListPriceDetails]  WITH NOCHECK ADD FOREIGN KEY([ItemsId])
REFERENCES [OItems] ([id])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPriceDetail__47798B57]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPriceDetails]'))
ALTER TABLE [dbo].[OListPriceDetails]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB], [PriceList])
REFERENCES [OListPrice] ([CompanyDB], [ListNum])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPriceDetail__486DAF90]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPriceDetails]'))
ALTER TABLE [dbo].[OListPriceDetails]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB], [PriceList])
REFERENCES [OListPrice] ([CompanyDB], [ListNum])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPriceDetail__4961D3C9]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPriceDetails]'))
ALTER TABLE [dbo].[OListPriceDetails]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB], [PriceList])
REFERENCES [OListPrice] ([CompanyDB], [ListNum])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPriceDetail__4A55F802]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPriceDetails]'))
ALTER TABLE [dbo].[OListPriceDetails]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB], [PriceList])
REFERENCES [OListPrice] ([CompanyDB], [ListNum])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPriceDetail__4B4A1C3B]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPriceDetails]'))
ALTER TABLE [dbo].[OListPriceDetails]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB], [PriceList])
REFERENCES [OListPrice] ([CompanyDB], [ListNum])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OListPriceDetail__4C3E4074]') AND parent_object_id = OBJECT_ID(N'[dbo].[OListPriceDetails]'))
ALTER TABLE [dbo].[OListPriceDetails]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB], [PriceList])
REFERENCES [OListPrice] ([CompanyDB], [ListNum])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OPaymentG__Payme__4D3264AD]') AND parent_object_id = OBJECT_ID(N'[dbo].[OPaymentGroupLines]'))
ALTER TABLE [dbo].[OPaymentGroupLines]  WITH NOCHECK ADD FOREIGN KEY([PaymentGroupId])
REFERENCES [OPaymentGroup] ([ID])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OPaymentG__Payme__4E2688E6]') AND parent_object_id = OBJECT_ID(N'[dbo].[OPaymentGroupLines]'))
ALTER TABLE [dbo].[OPaymentGroupLines]  WITH NOCHECK ADD FOREIGN KEY([PaymentGroupId])
REFERENCES [OPaymentGroup] ([ID])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OPaymentG__Payme__4F1AAD1F]') AND parent_object_id = OBJECT_ID(N'[dbo].[OPaymentGroupLines]'))
ALTER TABLE [dbo].[OPaymentGroupLines]  WITH NOCHECK ADD FOREIGN KEY([PaymentGroupId])
REFERENCES [OPaymentGroup] ([ID])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OPaymentG__Payme__500ED158]') AND parent_object_id = OBJECT_ID(N'[dbo].[OPaymentGroupLines]'))
ALTER TABLE [dbo].[OPaymentGroupLines]  WITH NOCHECK ADD FOREIGN KEY([PaymentGroupId])
REFERENCES [OPaymentGroup] ([ID])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OPaymentG__Payme__5102F591]') AND parent_object_id = OBJECT_ID(N'[dbo].[OPaymentGroupLines]'))
ALTER TABLE [dbo].[OPaymentGroupLines]  WITH NOCHECK ADD FOREIGN KEY([PaymentGroupId])
REFERENCES [OPaymentGroup] ([ID])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OPaymentG__Payme__51F719CA]') AND parent_object_id = OBJECT_ID(N'[dbo].[OPaymentGroupLines]'))
ALTER TABLE [dbo].[OPaymentGroupLines]  WITH NOCHECK ADD FOREIGN KEY([PaymentGroupId])
REFERENCES [OPaymentGroup] ([ID])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OUsers__CompanyD__52EB3E03]') AND parent_object_id = OBJECT_ID(N'[dbo].[OUsers]'))
ALTER TABLE [dbo].[OUsers]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OUsers__CompanyD__53DF623C]') AND parent_object_id = OBJECT_ID(N'[dbo].[OUsers]'))
ALTER TABLE [dbo].[OUsers]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OUsers__CompanyD__54D38675]') AND parent_object_id = OBJECT_ID(N'[dbo].[OUsers]'))
ALTER TABLE [dbo].[OUsers]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OUsers__CompanyD__55C7AAAE]') AND parent_object_id = OBJECT_ID(N'[dbo].[OUsers]'))
ALTER TABLE [dbo].[OUsers]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OUsers__CompanyD__56BBCEE7]') AND parent_object_id = OBJECT_ID(N'[dbo].[OUsers]'))
ALTER TABLE [dbo].[OUsers]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__OUsers__CompanyD__57AFF320]') AND parent_object_id = OBJECT_ID(N'[dbo].[OUsers]'))
ALTER TABLE [dbo].[OUsers]  WITH NOCHECK ADD FOREIGN KEY([CompanyDB])
REFERENCES [Company] ([databaseName])
IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[JournalEntryTrigger]'))
DROP TRIGGER [dbo].[JournalEntryTrigger]
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[JournalEntryTrigger]'))
EXECUTE dbo.sp_executesql N'
CREATE TRIGGER [dbo].[JournalEntryTrigger] ON [dbo].[FactFinanse]  AFTER  INSERT AS 
EXTERNAL NAME [BOSBOCLR].[Triggers].[JournalEntryTrigger]
'
IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[BusinessPartnerTrigger]'))
DROP TRIGGER [dbo].[BusinessPartnerTrigger]
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[BusinessPartnerTrigger]'))
EXECUTE dbo.sp_executesql N'
CREATE TRIGGER [dbo].[BusinessPartnerTrigger] ON [dbo].[OBusinessPartner]  AFTER  INSERT AS 
EXTERNAL NAME [BOSBOCLR].[Triggers].[BusinessPartnerTrigger]
'
IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[ItemTrigger]'))
DROP TRIGGER [dbo].[ItemTrigger]
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[ItemTrigger]'))
EXECUTE dbo.sp_executesql N'
CREATE TRIGGER [dbo].[ItemTrigger] ON [dbo].[OItems]  AFTER  INSERT AS 
EXTERNAL NAME [BOSBOCLR].[Triggers].[ItemTrigger]
'
IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[ProjectTrigger]'))
DROP TRIGGER [dbo].[ProjectTrigger]
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[ProjectTrigger]'))
EXECUTE dbo.sp_executesql N'
CREATE TRIGGER [dbo].[ProjectTrigger] ON [dbo].[OProject]  AFTER  INSERT AS 
EXTERNAL NAME [BOSBOCLR].[Triggers].[ProjectTrigger]
'
IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[SalesPersonTrigger]'))
DROP TRIGGER [dbo].[SalesPersonTrigger]
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[SalesPersonTrigger]'))
EXECUTE dbo.sp_executesql N'
CREATE TRIGGER [dbo].[SalesPersonTrigger] ON [dbo].[OSalesPerson]  AFTER  INSERT AS 
EXTERNAL NAME [BOSBOCLR].[Triggers].[SalesPersonTrigger]
'
IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[SalesRepresentativeTrigger]'))
DROP TRIGGER [dbo].[SalesRepresentativeTrigger]
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[SalesRepresentativeTrigger]'))
EXECUTE dbo.sp_executesql N'
CREATE TRIGGER [dbo].[SalesRepresentativeTrigger] ON [dbo].[OSalesRepresentative]  AFTER  INSERT AS 
EXTERNAL NAME [BOSBOCLR].[Triggers].[SalesRepresentativeTrigger]
'
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[FactAgingCR]'))
EXEC dbo.sp_executesql @statement = N'

CREATE VIEW [dbo].[FactAgingCR]
as


select 
	mes, mesAbreviado, ano, companyDB, case when InvType = -1 then BaseEntry else DocEntry end DocEntry, 
case when invType = -1 then TransType else InvType end InvType, 
case when Invtype = -1 then linenum else Line_ID end Line_ID, BusinessPartnerId, TransId, BatchnumberId, installment,

sum([Aging Até 5 Dias])/COUNT(data) [Aging Até 5 Dias],
sum([Aging de 6 a 15 Dias])/COUNT(data) [Aging de 6 a 15 Dias],
sum([Aging de 16 a 30 Dias])/COUNT(data) [Aging de 16 a 30 Dias],
sum([Aging de 31 a 60 Dias])/COUNT(data) [Aging de 31 a 60 Dias],
sum([Aging de 61 a 90 Dias])/COUNT(data) [Aging de 61 a 90 Dias],
sum([Aging maior que 90])/COUNT(data) [Aging maior que 90]

from
(


SELECT


DimTempo.mes,
DimTempo.mesAbreviado,
DimTempo.ano,
DimTempo.data,
CompanyDB,
BaseEntry, TransType, Line_ID, InvType, DocEntry, LineNum, BatchnumberId, Installment, BusinessPartnerId, TransId, 

case when DATEDIFF (D,DueDate,DimTempo.data) between 1 and 5 then LineTotal-SUM(FactIncomePaymentHistory.ConciliedValue)
	else 0 end ''Aging Até 5 Dias'',
case when DATEDIFF (D,DueDate,DimTempo.data) between 6 and 15 then LineTotal-SUM(FactIncomePaymentHistory.ConciliedValue)
	else 0 end ''Aging de 6 a 15 Dias'',
case when DATEDIFF (D,DueDate,DimTempo.data) between 16 and 30 then LineTotal-SUM(FactIncomePaymentHistory.ConciliedValue)
	else 0 end ''Aging de 16 a 30 Dias'',
case when DATEDIFF (D,DueDate,DimTempo.data) between 31 and 60 then LineTotal-SUM(FactIncomePaymentHistory.ConciliedValue)
	else 0 end ''Aging de 31 a 60 Dias'',
case when DATEDIFF (D,DueDate,DimTempo.data) between 61 and 90 then LineTotal-SUM(FactIncomePaymentHistory.ConciliedValue)
	else 0 end ''Aging de 61 a 90 Dias'',
case when DATEDIFF (D,DueDate,DimTempo.data) > 90 then LineTotal-SUM(FactIncomePaymentHistory.ConciliedValue)
	else 0 end ''Aging maior que 90''

 FROM 
	FactIncomePaymentHistory, DimTempo
where 
	(DueDate+1) < DimTempo.data 
	and DimTempo.data between (select top 1 ReconDate from FactIncomePaymentHistory order by ReconDate asc) and GETDATE()
	and peymethod  not in (''RECUPERAÇÃO JUDICIAL'', ''JURIDICO'')
-- Para a consulta nao ficar muito pesada, o filtro abaixo faz o data-base apenas para o ultimo dia de cada mes

group by DimTempo.mes,
DimTempo.mesAbreviado,
DimTempo.ano,
DimTempo.data,
DueDate,
CompanyDB,
BaseEntry, TransType, Line_ID, InvType, DocEntry, LineNum, BatchnumberId, Installment, BusinessPartnerId, TransId, 
LineTotal
having
Round(LineTotal-sum(ConciliedValue),2)  <> 0
) tmp

group by 
	mes, mesAbreviado, ano, companyDB, BaseEntry, TransType, Line_ID, InvType, DocEntry, LineNum, BatchnumberId, Installment, BusinessPartnerId, TransId



' 
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[FactAgingCRBackup]'))
EXEC dbo.sp_executesql @statement = N'


CREATE VIEW [dbo].[FactAgingCRBackup]
AS
SELECT

DimTempo.mes,
DimTempo.mesAbreviado,
DimTempo.ano,
CompanyDB,
TransId,

(
Sum (Case When DelayDay
BetWeen 1 and 5 
Then OpenBalance
Else 0 
End) /
Sum (Case When DelayDay
BetWeen 1 and 5 
Then CountAging1a5
End)) as''Aging Até 5 Dias''
,

(
Sum (Case When DelayDay
BetWeen 6 and 15 
Then OpenBalance
Else 0 
End) /
Sum (Case When DelayDay
BetWeen 6 and 15 
Then CountAging6a15
End)) as ''Aging de 6 a 15 Dias'',

(
Sum (Case When DelayDay
BetWeen 16 and 30 
Then OpenBalance
Else 0 
End) /
Sum (Case When DelayDay
BetWeen 16 and 30 
Then CountAging16a30
End)) as ''Aging de 16 a 30 Dias'',

(
Sum (Case When DelayDay
BetWeen 31 and 60 
Then OpenBalance
Else 0 
End) /
Sum (Case When DelayDay
BetWeen 31 and 60 
Then CountAging31a60
End)) as ''Aging de 31 a 60 Dias'',

(
Sum (Case When DelayDay
BetWeen 61 and 90 
Then OpenBalance
Else 0 
End) /
Sum (Case When DelayDay
BetWeen 61 and 90 
Then CountAging61a90
End)) as ''Aging de 61 a 90 Dias'',

(
Sum (Case When DelayDay
> 90 
Then OpenBalance
Else 0 
End) /
Sum (Case When DelayDay
> 90 
Then [CountAging>90]
End)) as ''Aging maior que 90''

FROM
(
SELECT DimTempo.data BaseDate,[CompanyDB],[TransId],[DocEntry],LineTotal-sum(ConciliedValue)OpenBalance
      ,[DueDate],[PeyMethod],DATEDIFF (D,DueDate,DimTempo.data) DelayDay,
      
      Count (Case When DATEDIFF (D,DueDate,DimTempo.data)
BetWeen 1 and 5 
Then DimTempo.data
Else 0 
End) as ''CountAging1a5'',

Count (Case When DATEDIFF (D,DueDate,DimTempo.data)
BetWeen 6 and 15 
Then DimTempo.data
Else 0
End) as ''CountAging6a15'',

Count (Case When DATEDIFF (D,DueDate,DimTempo.data)
BetWeen 16 and 30 
Then DimTempo.data
Else 0
End ) as ''CountAging16a30'',

Count (Case When DATEDIFF (D,DueDate,DimTempo.data)
BetWeen 31 and 60 
Then DimTempo.data
Else 0
End) as ''CountAging31a60'',

Count(Case When DATEDIFF (D,DueDate,DimTempo.data)
BetWeen 61 and 90 
Then DimTempo.data
Else 0
End) as ''CountAging61a90'',

Count(Case When DATEDIFF (D,DueDate,DimTempo.data)
> 90 
Then DimTempo.data
Else 0
End) as ''CountAging>90'' 
      
 FROM 
	FactIncomePaymentHistory, DimTempo
where 
	ReconDate <= DimTempo.data and DimTempo.data between (select top 1 ReconDate from FactIncomePaymentHistory order by ReconDate asc) and GETDATE()
-- Para a consulta nao ficar muito pesada, o filtro abaixo faz o data-base apenas para o ultimo dia de cada mes

 GROUP BY
 DimTempo.data, [CompanyDB],[TransId],[DocEntry], [LineTotal]
 ,[AccountId],[DueDate],[PeyMethod],[PayAccountId],[RefDate],[CreateDate],[Apportionment]

)tmp 
INNER JOIN dbo.DimTempo on BaseDate = DimTempo.data

where TransId Not In (select distinct TransId From FactFinanse where Storno = ''Y'') and
DueDate < BaseDate+1  and peymethod  not in (''RECUPERAÇÃO JUDICIAL'', ''JURIDICO'') and
OpenBalance > 0 and DocEntry Not In (select distinct DocEntry From FactIncomePaymentHistory where peymethod  in (''RECUPERAÇÃO JUDICIAL'', ''JURIDICO'') )

GROUP BY
DimTempo.mes, 
DimTempo.mesAbreviado,
DimTempo.ano,
CompanyDB,
TransId
	



' 
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[FactAgingDataCR]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW FactAgingDataCR	
AS

SELECT

DimTempo.mes,
DimTempo.mesAbreviado,
DimTempo.ano,
DimTempo.data,
DueDate,
RefDate,
CompanyDB,
case when InvType = -1 then BaseEntry else DocEntry end DocEntry, 
case when invType = -1 then TransType else InvType end InvType, 
case when Invtype = -1 then linenum else Line_ID end Line_ID, BusinessPartnerId, TransId,
(LineTOtal) LineTotal, BatchnumberId, installment,
LineTotal-sum(ConciliedValue) OpenBalance,

case when DATEDIFF (D,DueDate,DimTempo.data) between 1 and 5 then LineTotal-SUM(FactIncomePaymentHistory.ConciliedValue)
	else 0 end ''Aging Até 5 Dias'',
case when DATEDIFF (D,DueDate,DimTempo.data) between 6 and 15 then LineTotal-SUM(FactIncomePaymentHistory.ConciliedValue)
	else 0 end ''Aging de 6 a 15 Dias'',
case when DATEDIFF (D,DueDate,DimTempo.data) between 16 and 30 then LineTotal-SUM(FactIncomePaymentHistory.ConciliedValue)
	else 0 end ''Aging de 16 a 30 Dias'',
case when DATEDIFF (D,DueDate,DimTempo.data) between 31 and 60 then LineTotal-SUM(FactIncomePaymentHistory.ConciliedValue)
	else 0 end ''Aging de 31 a 60 Dias'',
case when DATEDIFF (D,DueDate,DimTempo.data) between 61 and 90 then LineTotal-SUM(FactIncomePaymentHistory.ConciliedValue)
	else 0 end ''Aging de 61 a 90 Dias'',
case when DATEDIFF (D,DueDate,DimTempo.data) > 90 then LineTotal-SUM(FactIncomePaymentHistory.ConciliedValue)
	else 0 end ''Aging maior que 90''

 FROM 
	FactIncomePaymentHistory, DimTempo
where 
	(DueDate+1) < DimTempo.data 
	and DimTempo.data between (select top 1 ReconDate from FactIncomePaymentHistory order by ReconDate asc) and GETDATE()
	and peymethod  not in (''RECUPERAÇÃO JUDICIAL'', ''JURIDICO'')
--	and data = ''20120918'' and TransId = 12381
-- Para a consulta nao ficar muito pesada, o filtro abaixo faz o data-base apenas para o ultimo dia de cada mes
--and TransId = 49448 and data = ''20120913''

group by DimTempo.mes,
DimTempo.mesAbreviado,
DimTempo.ano,
DimTempo.data,
CompanyDB,
DueDate,
RefDate,
BaseEntry, TransType, Line_ID, InvType, DocEntry, LineNum, BatchnumberId, Installment, BusinessPartnerId, TransId, 
LineTotal
having
Round(LineTotal-sum(ConciliedValue),2)  <> 0

' 
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[FactAverageLink]'))
EXEC dbo.sp_executesql @statement = N'

CREATE VIEW [dbo].[FactAverageLink]
AS
select DISTINCT FactDocumentLines.CompanyDB, FactDocumentLines.DocEntry, FactDocumentLines.InvType, FactDocumentLines.LineNum,
	FactDocumentLines.ItemsId,
	FactPurchaseSales.BatchNumberID
from FactDocumentLines
	Inner JOIN FactPurchaseSales ON FactDocumentLines.DocEntry = FactPurchaseSales.DocEntry
		and FactDocumentLines.InvType = FactPurchaseSales.InvType
		and FactDocumentLines.LineNum = FactPurchaseSales.LineNum
		and FactDocumentLines.CompanyDB = FactPurchaseSales.CompanyDB


' 
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[FactBasePurchaseSales]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW FactBasePurchaseSales AS
select * from _FactBasePurchaseSales' 
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[FactBasePurchaseSalesConsolidated]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [dbo].[FactBasePurchaseSalesConsolidated] AS
select
FactDocumentLines.CompanyDB,
FactDocumentLines.InvType,
FactDocumentLines.DocEntry,
FactDocumentLines.LineNum,
FactBasePurchaseSales.BaseEntry PedidoCompraDocEntry,
NFeBaseEntry.BaseEntry NFeDocEntry,
RecBaseEntry.BaseEntry RecDocEntry,
PVBaseEntry.BaseEntry PVDocEntry,
NFsBaseEntry.BaseEntry NFsDocEntry,
EntregaBaseEntry.BaseEntry EntregaDocEntry,
CC.BaseEntry CC,
CV.BaseEntry CV,
AA.BaseEntry AdiantamentoDocEntry
 
from FactDocumentLines
left join FactBasePurchaseSales on
 FactBasePurchaseSales.DocEntry=FactDocumentLines.DocEntry
and FactBasePurchaseSales.InvType=FactDocumentLines.InvType
and FactBasePurchaseSales.LineNum=FactDocumentLines.LineNum
and FactBasePurchaseSales.companyDB=FactDocumentLines.CompanyDB
and FactBasePurchaseSales.BaseType=22
left join FactBasePurchaseSales NFeBaseEntry on
FactBasePurchaseSales.DocEntry=FactDocumentLines.DocEntry
and FactBasePurchaseSales.InvType=FactDocumentLines.InvType
and FactBasePurchaseSales.LineNum=FactDocumentLines.LineNum
and FactBasePurchaseSales.companyDB=FactDocumentLines.CompanyDB
and FactBasePurchaseSales.BaseType=18
left join FactBasePurchaseSales RecBaseEntry on
RecBaseEntry.DocEntry=FactDocumentLines.DocEntry
and RecBaseEntry.InvType=FactDocumentLines.InvType
and RecBaseEntry.LineNum=FactDocumentLines.LineNum
and RecBaseEntry.companyDB=FactDocumentLines.CompanyDB
and RecBaseEntry.BaseType=20
left join FactBasePurchaseSales PVBaseEntry on
PVBaseEntry.DocEntry=FactDocumentLines.DocEntry
and PVBaseEntry.InvType=FactDocumentLines.InvType
and PVBaseEntry.LineNum=FactDocumentLines.LineNum
and PVBaseEntry.companyDB=FactDocumentLines.CompanyDB
and PVBaseEntry.BaseType=17
left join FactBasePurchaseSales NFsBaseEntry on
NFsBaseEntry.DocEntry=FactDocumentLines.DocEntry
and NFsBaseEntry.InvType=FactDocumentLines.InvType
and NFsBaseEntry.LineNum=FactDocumentLines.LineNum
and NFsBaseEntry.companyDB=FactDocumentLines.CompanyDB
and NFsBaseEntry.BaseType=13
left join FactBasePurchaseSales EntregaBaseEntry on
EntregaBaseEntry.DocEntry=FactDocumentLines.DocEntry
and EntregaBaseEntry.InvType=FactDocumentLines.InvType
and EntregaBaseEntry.LineNum=FactDocumentLines.LineNum
and EntregaBaseEntry.companyDB=FactDocumentLines.CompanyDB
and EntregaBaseEntry.BaseType=15
left join FactBasePurchaseSales CV on
CV.DocEntry=FactDocumentLines.DocEntry
and CV.InvType=FactDocumentLines.InvType
and CV.LineNum=FactDocumentLines.LineNum
and CV.companyDB=FactDocumentLines.CompanyDB
and CV.BaseType=23
left join FactBasePurchaseSales CC on
CC.DocEntry=FactDocumentLines.DocEntry
and CC.InvType=FactDocumentLines.InvType
and CC.LineNum=FactDocumentLines.LineNum
and CC.companyDB=FactDocumentLines.CompanyDB
and CC.BaseType=540000006
left join FactBasePurchaseSales AA on
AA.DocEntry=FactDocumentLines.DocEntry
and AA.InvType=FactDocumentLines.InvType
and AA.LineNum=FactDocumentLines.LineNum
and AA.companyDB=FactDocumentLines.CompanyDB
and AA.BaseType=203

' 
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[FactDocumentAverageValues]'))
EXEC dbo.sp_executesql @statement = N'






CREATE VIEW [dbo].[FactDocumentAverageValues]
AS
SELECT
  sum(FactPurchaseSales.LineWeight)/SUM(FactPurchaseSales.Quantity) LineWeight,
  avg(FactPurchaseSales.Price) Price,
  AVG(FactPurchaseSales.DiscPrcnt) DiscPrcnt,
  AVG(FactPurchaseSales.PISBase) PISBase,
  AVG(FactPurchaseSales.COFINSBase) COFINSBase,
  AVG(FactPurchaseSales.INSSBase) INSSBase,
  AVG(FactPurchaseSales.ISSBase) ISSBase,
  AVG(FactPurchaseSales.ICMSBase) ICMSBase,
  AVG(FactPurchaseSales.ICMSIsento) ICMSIsento,
  AVG(FactPurchaseSales.ICMSOutros) ICMSOutros,
  AVG(FactPurchaseSales.IPIBase) IPIBase,
  AVG(FactPurchaseSales.IPIIsento) IPIIsento,
  AVG(FactPurchaseSales.IPIOutros) IPIOutros,
  AVG(FactPurchaseSales.ICMSSTBase) ICMSSTBase,
  AVG(FactPurchaseSales.ICMSSTIsento) ICMSSTIsento,
  AVG(FactPurchaseSales.ICMSSTOutros) ICMSSTOutros,
  AVG(FactPurchaseSales.ICMSDifBase) ICMSDifBase,
  AVG(FactPurchaseSales.ICMSDifIsento) ICMSDifIsento,
  AVG(FactPurchaseSales.ICMSDifOutros) ICMSDifOutros,
  SUM(FactPurchaseSales.WTPIS)/SUM(FactPurchaseSales.Quantity) WTPIS,
  SUM(FactPurchaseSales.WTCofins)/SUM(FactPurchaseSales.Quantity) WTCofins,
  SUM(FactPurchaseSales.WTCSLL)/SUM(FactPurchaseSales.Quantity) WTCSLL,
  SUM(FactPurchaseSales.WTINSS)/SUM(FactPurchaseSales.Quantity) WTINSS,
  SUM(FactPurchaseSales.WTISSF)/SUM(FactPurchaseSales.Quantity) WTISSF,
  SUM(FactPurchaseSales.WTIRRF)/SUM(FactPurchaseSales.Quantity) WTIRRF,
  SUM(FactPurchaseSales.LineTotal*(CASE WHEN FactDocumentLines.TaxOnly = ''Y'' THEN 0 ELSE 1 END))/SUM(FactPurchaseSales.Quantity) FinanseValue,
  (sum(FactPurchaseSales.LineTotal)+( sum(ISNULL(FactPurchaseSalesAELines.LineTotal,0)*FactPurchaseSales.Apportionment) )+( SUM(FactPurchaseSales.IPIValor)+SUM(ISNULL(FactPurchaseSalesAELines.IPIValor,0)*FactPurchaseSales.Apportionment) ))
	/SUM(FactPurchaseSales.Quantity) DocValue,
  sum(ISNULL(FactPurchaseSalesAELines.LineTotal,0)*FactPurchaseSales.Apportionment)/SUM(FactPurchaseSales.Quantity) AEValue,
  (SUM(FactPurchaseSales.PISValor)+SUM(ISNULL(FactPurchaseSalesAELines.PISValor,0)*FactPurchaseSales.Apportionment))/SUM(FactPurchaseSales.Quantity) PISValor ,
  (SUM(FactPurchaseSales.COFINSValor)+SUM(ISNULL(FactPurchaseSalesAELines.COFINSValor,0)*FactPurchaseSales.Apportionment))/SUM(FactPurchaseSales.Quantity) COFINSValor,
  (SUM(FactPurchaseSales.INSSValor)+SUM(ISNULL(FactPurchaseSalesAELines.INSSValor,0)*FactPurchaseSales.Apportionment))/SUM(FactPurchaseSales.Quantity) INSSValor,
  (SUM(FactPurchaseSales.ISSValor)+SUM(ISNULL(FactPurchaseSalesAELines.ISSValor,0)*FactPurchaseSales.Apportionment))/SUM(FactPurchaseSales.Quantity) ISSValor,
  (SUM(FactPurchaseSales.ICMSValor)+SUM(ISNULL(FactPurchaseSalesAELines.icmsValor,0)*FactPurchaseSales.Apportionment))/SUM(FactPurchaseSales.Quantity) ICMSValor,
  (SUM(FactPurchaseSales.ICMSValorIsento)+SUM(ISNULL(FactPurchaseSalesAELines.ICMSValorIsento,0)*FactPurchaseSales.Apportionment))/SUM(FactPurchaseSales.Quantity) ICMSValorIsento,
  (SUM(FactPurchaseSales.ICMSValorOutros)+SUM(ISNULL(FactPurchaseSalesAELines.ICMSValorOutros,0)*FactPurchaseSales.Apportionment))/SUM(FactPurchaseSales.Quantity) ICMSValorOutros,
  (SUM(FactPurchaseSales.IPIValor)+SUM(ISNULL(FactPurchaseSalesAELines.IPIValor,0)*FactPurchaseSales.Apportionment))/SUM(FactPurchaseSales.Quantity) IPIValor,
  (SUM(FactPurchaseSales.IPIValorIsento)+SUM(ISNULL(FactPurchaseSalesAELines.IPIValorIsento,0)*FactPurchaseSales.Apportionment))/SUM(FactPurchaseSales.Quantity) IPIValorIsento,
  (SUM(FactPurchaseSales.IPIValorOutros)+SUM(ISNULL(FactPurchaseSalesAELines.IPIValorOutros,0)*FactPurchaseSales.Apportionment))/SUM(FactPurchaseSales.Quantity) IPIValorOutros,
  (SUM(FactPurchaseSales.ICMSSTValor)+SUM(ISNULL(FactPurchaseSalesAELines.ICMSSTValor,0)*FactPurchaseSales.Apportionment))/SUM(FactPurchaseSales.Quantity) ICMSSTValor,
  (SUM(FactPurchaseSales.ICMSSTValorIsento)+SUM(ISNULL(FactPurchaseSalesAELines.ICMSSTValorIsento,0)*FactPurchaseSales.Apportionment))/SUM(FactPurchaseSales.Quantity) ICMSSTValorIsento,
  (SUM(FactPurchaseSales.ICMSSTValorOutros)+SUM(ISNULL(FactPurchaseSalesAELines.ICMSSTValorOutros,0)*FactPurchaseSales.Apportionment))/SUM(FactPurchaseSales.Quantity) ICMSSTValorOutros,
  (SUM(FactPurchaseSales.ICMSDifValor)+SUM(ISNULL(FactPurchaseSalesAELines.ICMSDifValor,0)*FactPurchaseSales.Apportionment))/SUM(FactPurchaseSales.Quantity) ICMSDifValor,
  (SUM(FactPurchaseSales.ICMSDifValorIsento)+SUM(ISNULL(FactPurchaseSalesAELines.ICMSDifValorIsento,0)*FactPurchaseSales.Apportionment))/SUM(FactPurchaseSales.Quantity) ICMSDifValorIsento,
  (SUM(FactPurchaseSales.ICMSDifValorOutros)+SUM(ISNULL(FactPurchaseSalesAELines.ICMSDifValorOutros,0)*FactPurchaseSales.Apportionment))/SUM(FactPurchaseSales.Quantity) ICMSDifValorOutros,
  FactPurchaseSales.BatchNumberID,
  FactPurchaseSales.CompanyDB,
  FactPurchaseSales.InvType,
  FactPurchaseSales.DocEntry,
  FactDocumentLines.ItemsId
  
FROM
  FactPurchaseSales INNER JOIN FactDocumentLines ON (FactDocumentLines.CompanyDB=FactPurchaseSales.CompanyDB
	and FactDocumentLines.DocEntry=FactPurchaseSales.DocEntry
	and FactDocumentLines.LineNum=FactPurchaseSales.LineNum
	and FactDocumentLines.InvType=FactPurchaseSales.InvType)
  INNER JOIN InvType ON (FactPurchaseSales.InvType=InvType.InvType)
  LEFT JOIN FactPurchaseSalesAELines ON (FactPurchaseSalesAELines.CompanyDB=FactPurchaseSales.CompanyDB 
	and FactPurchaseSalesAELines.DocEntry=FactPurchaseSales.DocEntry 
	and FactPurchaseSalesAELines.LineNum=FactPurchaseSales.LineNum
	and FactPurchaseSalesAELines.InvType=FactPurchaseSales.InvType)
  LEFT JOIN FactInventory ON (FactPurchaseSales.CompanyDB=FactInventory.CompanyDB 
	and FactPurchaseSales.DocEntry=FactInventory.DocEntry 
	and FactPurchaseSales.LineNum=FactInventory.LineNum 
	and FactPurchaseSales.InvType=FactInventory.InvType)
WHERE FactPurchaseSales.BatchNumberID <> -1
GROUP BY 
FactPurchaseSales.BatchNumberID,
  FactPurchaseSales.CompanyDB,
  FactPurchaseSales.InvType,
  FactPurchaseSales.DocEntry,
  FactDocumentLines.ItemsId






' 
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[FactFinanceBaseDate]'))
EXEC dbo.sp_executesql @statement = N'





CREATE VIEW [dbo].[FactFinanceBaseDate]
AS

select * from
(
SELECT DimTempo.data BaseDate,[CompanyDB],[ProjectId],[SalesPersonId],[TransId],[Line_ID],[TransType],[BaseEntry],[InvType],[DocEntry]
      ,[LineNum],[DownPayment],[LineTotal],sum(ConciliedValue) ConciliedValue,LineTotal-sum(ConciliedValue)OpenBalance,[BusinessPartnerId],[ItemsId] ,[BatchNumberId]
      ,[AccountId],[DueDate],[Serial],[Installment],[BillOfExchange] ,[PeyMethod],[PayAccountId],[RefDate],[CreateDate],[Apportionment]
 FROM FactIncomePaymentHistory, DimTempo
where ReconDate <= DimTempo.data and DimTempo.data <= GETDATE()
-- Para a consulta nao ficar muito pesada, o filtro abaixo faz o data-base apenas para o ultimo dia de cada mes
--and case when datepart(MM, DATEADD(DD, 1, DimTempo.data )) <> DATEPART(MM, DimTempo.data ) then ''Y'' else ''N'' END = ''Y''

 GROUP BY
 DimTempo.data, [CompanyDB],[ProjectId],[SalesPersonId],[TransId],[Line_ID],[TransType],[BaseEntry],[InvType],[DocEntry]
      ,[LineNum],[DownPayment],[LineTotal],[BusinessPartnerId],[ItemsId] ,[BatchNumberId]
      ,[AccountId],[DueDate],[Serial],[Installment],[BillOfExchange] ,[PeyMethod],[PayAccountId],[RefDate],[CreateDate],[Apportionment]


)tmp where --BaseDate = ''20120326'' and
OpenBalance > 0 

union all

select * from
(
SELECT DimTempo.data BaseDate,[CompanyDB],[ProjectId],[SalesPersonId],[TransId],[Line_ID],[TransType],[BaseEntry],[InvType],[DocEntry]
      ,[LineNum],[DownPayment],[LineTotal]*-1 LineTotal,sum(ConciliedValue)*-1 ConciliedValue,(LineTotal-sum(ConciliedValue))*-1 OpenBalance,[BusinessPartnerId],[ItemsId] ,[BatchNumberId]
      ,[AccountId],[DueDate],[Serial],[Installment],[BillOfExchange] ,[PeyMethod],[PayAccountId],[RefDate],[CreateDate],[Apportionment]
 FROM FactOutcomePaymentHistory, DimTempo
where ReconDate <= DimTempo.data and DimTempo.data <= GETDATE()
-- Para a consulta nao ficar muito pesada, o filtro abaixo faz o data-base apenas para o ultimo dia de cada mes
--and case when datepart(MM, DATEADD(DD, 1, DimTempo.data )) <> DATEPART(MM, DimTempo.data ) then ''Y'' else ''N'' END = ''Y''

 GROUP BY
 DimTempo.data, [CompanyDB],[ProjectId],[SalesPersonId],[TransId],[Line_ID],[TransType],[BaseEntry],[InvType],[DocEntry]
      ,[LineNum],[DownPayment],[LineTotal],[BusinessPartnerId],[ItemsId] ,[BatchNumberId]
      ,[AccountId],[DueDate],[Serial],[Installment],[BillOfExchange] ,[PeyMethod],[PayAccountId],[RefDate],[CreateDate],[Apportionment]


)tmp where --BaseDate = ''20120326'' and
OpenBalance > 0 






' 
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[FactFinanseCashAccount]'))
EXEC dbo.sp_executesql @statement = N'


CREATE VIEW [dbo].[FactFinanseCashAccount] AS
SELECT FactFinanse.* FROM FactFinanse INNER JOIN OAccount ON FactFinanse.AccountID = OAccount.ID
WHERE OAccount.Finanse = ''Y''


' 
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[FactFinansePayment]'))
EXEC dbo.sp_executesql @statement = N'







CREATE VIEW 
[dbo].[FactFinansePayment] AS

select T0.CompanyDB, T0.DocEntry, T0.InvType, T2.LineNum, T0.Installment, T3.BatchNumberID, T0.TransId, 
	T0.AppliedSys/*(T0.AppliedSys/T1.DocTotal)*/*T2.Apportionment*T3.Apportionment Recebido, 0 Pago, 
	T0.OurNum, T0.PaymentDate,
	T1.BusinessPartnerId, T1.SalesPersonId, T1.AgentId, T2.ItemsId, ''Boleto'' Tipo
	
	
--	select SUM(LineTotal) FROM FactDocumentLines X0 INNER JOIN 
 from FactBillOfExchange T0
INNER JOIN FactDocumentHeader T1 ON T0.DocEntry = T1.DocEntry and T0.InvType = T1.InvType and T0.CompanyDB = T1.CompanyDB
INNER JOIN FactDocumentLines T2 ON T2.DocEntry = T1.DocEntry and T2.InvType = T1.InvType and T2.CompanyDB = T1.CompanyDB
INNER JOIN FactPurchaseSales T3 ON T3.DocEntry = T1.DocEntry and T3.InvType = T1.InvType and T3.CompanyDB = T1.CompanyDB 
	and T3.LineNum = T2.LineNum and T3.Installment = T0.Installment

UNION ALL

SELECT T0.companyDB, T0.DocEntry, T0.TransType, T0.LineNum, T0.Installment, T0.BatchNumberId, T0.TransId, 
	Debit-Credit,Credit-Debit, -1, TaxDate, 
	T0.BusinessPartnerID, T0.SalesPersonId, T0.AgentId, T0.ItemsId, ''Contabil'' Tipo

FROM FactFinanse T0
	INNER JOIN OAccount T1 ON T0.AccountID = T1.ID
WHERE T1.Finanse = ''Y''








' 
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[FactProdMovimentacoes]'))
EXEC dbo.sp_executesql @statement = N'

CREATE VIEW [dbo].[FactProdMovimentacoes]
AS

SELECT T3.BaseEntry, T0.CompanyDB, T0.DocEntry, t0.DocNum, t0.LineNum, t0.TransId, t0.InvType, t0.BatchNumberID, T2.DocDate, T2.TaxDate, T2.DocDueDate, t0.UnitWeight, t0.LineWeight, t0.Quantity, t0.LineTotal, t0.Price, t0.UM, t0.NumPerUM,
	t1.ItemsId, t1.WhsCode, t1.OcrCode, T1.ocrCode2, T1.OcrCode3, T1.OcrCode4, T1.OcrCode5, T1.Project

 FROM FactPurchaseSales T0
	INNER JOIN FactDocumentLines T1 ON T0.DocEntry = t1.DocEntry and t0.InvType = t1.InvType and t0.LineNum = t1.LineNum and t0.CompanyDB = t1.CompanyDB
	INNER JOIN FactDocumentHeader T2 ON T2.DocEntry = T0.DocEntry AND T2.InvType = T0.InvType AND T2.CompanyDB = T0.CompanyDB
	INNER JOIN FactBasePurchaseSales T3 ON T0.DocEntry = T3.DocEntry and T0.InvType = T3.InvType AND T0.LineNum = T3.LineNum AND T3.BaseType = 202

union all

SELECT T3.BaseEntry, T0.CompanyDB, T0.DocEntry, t2.DocNum, t0.LineNum, t2.TransId, 60 InvType, t0.BatchNumberID, T2.DocDate, T2.TaxDate, T2.DocDueDate, 
	t1.SWeight1, t0.OutQty*t1.SWeight1, 
	t0.OutQty, abs(t0.TransValue), 
	case when t0.outQty > 0 then t0.TransValue/t0.OutQty else 0 end, t1.BuyUnitMsr, t1.NumInBuy,
	t0.ItemsId, t4.WhsCode, t4.OcrCode, T4.ocrCode2, T4.OcrCode3, T4.OcrCode4, T4.OcrCode5, T4.Project

 FROM FactInventory T0
	INNER JOIN FactDocumentHeader T2 ON T2.DocEntry = T0.DocEntry AND T2.InvType = T0.InvType AND T2.CompanyDB = T0.CompanyDB
	INNER JOIN OItems T1 ON T0.ItemsId = t1.id
	INNER JOIN FactBasePurchaseSales T3 ON T0.DocEntry = T3.DocEntry and T0.InvType = T3.InvType AND T0.LineNum = T3.LineNum AND T3.BaseType = 202
	INNER JOIN FactDocumentLines T4 ON T2.DocEntry = T4.DocEntry AND T2.InvType = T4.InvType AND T2.CompanyDB = T4.CompanyDB and t0.LineNum = t4.lineNum
WHERE T0.InvType = 59 and t0.OutQty > 0


' 
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[FactPurchaseSalesAELines]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [dbo].[FactPurchaseSalesAELines] AS
select CompanyDB, DocEntry, LineNum, InvType, sum(Apportionment*LineTotal) LineTotal,
	AVG(PISBase) PISBase, SUM(Apportionment*PISValor) PISValor, AVG(COFINSBase) COFINSBase, SUM(Apportionment*COFINSValor) COFINSValor, AVG(INSSBase) INSSBase, 
	SUM(Apportionment*INSSValor) INSSValor, AVG(ISSBase) ISSBase, SUM(Apportionment*ISSValor) ISSValor, AVG(ICMSBase) ICMSBase, AVG(ICMSIsento) ICMSIsento, AVG(ICMSOutros) ICMSOutros,
	SUM(Apportionment*ICMSValor) ICMSValor, SUM(Apportionment*ICMSValorIsento) ICMSValorIsento, SUM(Apportionment*ICMSValorOutros) ICMSValorOutros, AVG(IPIBase) IPIBase, AVG(IPIIsento) IPIIsento,
	AVG(IPIOutros) IPIOutros, SUM(Apportionment*IPIValor) IPIValor, SUM(Apportionment*IPIValorIsento) IPIValorIsento, SUM(Apportionment*IPIValorOutros) IPIValorOutros, 
	AVG(ICMSSTBase) ICMSSTBase, AVG(ICMSSTIsento) ICMSSTIsento, AVG(ICMSSTOutros) ICMSSTOutros, SUM(Apportionment*ICMSSTValor) ICMSSTValor, SUM(Apportionment*ICMSSTValorIsento) ICMSSTValorIsento,
	SUM(Apportionment*ICMSSTValorOutros) ICMSSTValorOutros, AVG(ICMSDifBase) ICMSDifBase, AVG(ICMSDifIsento) ICMSDifIsento, AVG(ICMSDifOutros) ICMSDifOutros,
	SUM(Apportionment*ICMSDifValor) ICMSDifValor, SUM(Apportionment*ICMSDifValorIsento) ICMSDifValorIsento, SUM(Apportionment*ICMSDifValorOutros) ICMSDifValorOutros
	
from FactPurchaseSalesAditionalExpenses
	GROUP BY CompanyDB, DocEntry, LineNum, InvType

' 
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[VAccountLevel]'))
EXEC dbo.sp_executesql @statement = N'


--SELECT * from VAccountLevel
CREATE VIEW [dbo].[VAccountLevel]
as

WITH TreeAccount (FatherID, AcctID, AcctCode, AcctName, Finanse, LocManTran, Levels, GroupMask, 
				  AcctID1, AcctID2, AcctID3, AcctID4, AcctID5, AcctID6, AcctID7, AcctID8, AcctID9, AcctID10, 
				  AcctCode1, AcctCode2, AcctCode3, AcctCode4, AcctCode5, AcctCode6, AcctCode7, AcctCode8, AcctCode9, AcctCode10, 
				  AcctName1, AcctName2, AcctName3, AcctName4, AcctName5, AcctName6, AcctName7, AcctName8, AcctName9, AcctName10, 
				  Level)
AS
(
	-- Anchor member definition
    SELECT e.FatherID, e.ID, e.AcctCode, e.AcctName, e.Finanse, e.LocManTran, e.Levels, e.GroupMask
    ,e.ID, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
    ,e.AcctCode, CONVERT(NVARCHAR(30),NULL), CONVERT(NVARCHAR(30),NULL), CONVERT(NVARCHAR(30),NULL), CONVERT(NVARCHAR(30),NULL), CONVERT(NVARCHAR(30),NULL), CONVERT(NVARCHAR(30),NULL), CONVERT(NVARCHAR(30),NULL), CONVERT(NVARCHAR(30),NULL), CONVERT(NVARCHAR(30),NULL)
    ,e.AcctName, CONVERT(NVARCHAR(200),NULL), CONVERT(NVARCHAR(200),NULL), CONVERT(NVARCHAR(200),NULL), CONVERT(NVARCHAR(200),NULL), CONVERT(NVARCHAR(200),NULL), CONVERT(NVARCHAR(200),NULL), CONVERT(NVARCHAR(200),NULL), CONVERT(NVARCHAR(200),NULL), CONVERT(NVARCHAR(200),NULL)
    , 0 AS Level
    FROM OAccount AS e
    WHERE FatherID IS NULL
    UNION ALL
	-- Recursive member definition
    SELECT e.FatherID, e.ID, e.AcctCode, e.AcctName, e.Finanse, e.LocManTran, e.Levels, e.GroupMask
    ,t.AcctID1
    ,CASE Level+1 WHEN 1 THEN e.ID ELSE t.AcctID2 END AcctID2
    ,CASE Level+1 WHEN 2 THEN e.ID ELSE t.AcctID3 END AcctID3
    ,CASE Level+1 WHEN 3 THEN e.ID ELSE t.AcctID4 END AcctID4
    ,CASE Level+1 WHEN 4 THEN e.ID ELSE t.AcctID5 END AcctID5
    ,CASE Level+1 WHEN 5 THEN e.ID ELSE t.AcctID6 END AcctID6
    ,CASE Level+1 WHEN 6 THEN e.ID ELSE t.AcctID7 END AcctID7
    ,CASE Level+1 WHEN 7 THEN e.ID ELSE t.AcctID8 END AcctID8
    ,CASE Level+1 WHEN 8 THEN e.ID ELSE t.AcctID9 END AcctID9
    ,CASE Level+1 WHEN 9 THEN e.ID ELSE t.AcctID10 END AcctID10

    ,t.AcctCode1
    ,CASE Level+1 WHEN 1 THEN e.AcctCode ELSE t.AcctCode2 END AcctCode2
    ,CASE Level+1 WHEN 2 THEN e.AcctCode ELSE t.AcctCode3 END AcctCode3
    ,CASE Level+1 WHEN 3 THEN e.AcctCode ELSE t.AcctCode4 END AcctCode4
    ,CASE Level+1 WHEN 4 THEN e.AcctCode ELSE t.AcctCode5 END AcctCode5
    ,CASE Level+1 WHEN 5 THEN e.AcctCode ELSE t.AcctCode6 END AcctCode6
    ,CASE Level+1 WHEN 6 THEN e.AcctCode ELSE t.AcctCode7 END AcctCode7
    ,CASE Level+1 WHEN 7 THEN e.AcctCode ELSE t.AcctCode8 END AcctCode8
    ,CASE Level+1 WHEN 8 THEN e.AcctCode ELSE t.AcctCode9 END AcctCode9
    ,CASE Level+1 WHEN 9 THEN e.AcctCode ELSE t.AcctCode10 END AcctCode10
    
	,t.AcctName1
    ,CASE Level+1 WHEN 1 THEN e.AcctName ELSE t.AcctName2 END AcctName2
    ,CASE Level+1 WHEN 2 THEN e.AcctName ELSE t.AcctName3 END AcctName3
    ,CASE Level+1 WHEN 3 THEN e.AcctName ELSE t.AcctName4 END AcctName4
    ,CASE Level+1 WHEN 4 THEN e.AcctName ELSE t.AcctName5 END AcctName5
    ,CASE Level+1 WHEN 5 THEN e.AcctName ELSE t.AcctName6 END AcctName6
    ,CASE Level+1 WHEN 6 THEN e.AcctName ELSE t.AcctName7 END AcctName7
    ,CASE Level+1 WHEN 7 THEN e.AcctName ELSE t.AcctName8 END AcctName8
    ,CASE Level+1 WHEN 8 THEN e.AcctName ELSE t.AcctName9 END AcctName9
    ,CASE Level+1 WHEN 9 THEN e.AcctName ELSE t.AcctName10 END AcctName10
    
    , Level+1
    FROM OAccount AS e
    INNER JOIN TreeAccount AS T ON e.FatherID = t.AcctID
)
-- Statement that executes the CTE
SELECT AcctID, 
	AcctID1, AcctID2, AcctID3, AcctID4, AcctID5, AcctID6, AcctID7, AcctID8, AcctID9, AcctID10, 
	AcctCode1, AcctCode2, AcctCode3, AcctCode4, AcctCode5, AcctCode6, AcctCode7, AcctCode8, AcctCode9, AcctCode10, 
	AcctName1, AcctName2, AcctName3, AcctName4, AcctName5, AcctName6, AcctName7, AcctName8, AcctName9, AcctName10
FROM TreeAccount




' 
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vCashFlow]'))
EXEC dbo.sp_executesql @statement = N'






-- select * from vCashFlow



CREATE VIEW [dbo].[vCashFlow] as 


-- CONTAS A RECEBER
select T0.CompanyDB, T0.TransId, T0.TransType, T0.DocEntry, T0.LineNum, T0.BusinessPartnerId, T0.ItemsId, T0.BatchNumberId, T0.SalesPersonId, T0.Serial,
	T0.AccountId, -1 Project, T0.DueDate, T0.RefDate, T0.OpenBalance LineTotal from FactIncomePayment T0

UNION ALL

-- CONTAS A PAGAR

select T0.CompanyDB, T0.TransId, T0.TransType, T0.DocEntry, T0.LineNum, T0.BusinessPartnerId, T0.ItemsId, T0.BatchNumberId, T0.SalesPersonId, T0.Serial,
	T0.AccountId, -1 Project, T0.DueDate, T0.RefDate, T0.OpenBalance*-1 LineTotal from FactOutcomePayment T0

UNION ALL

-- PEDIDOS DE VENDA	
SELECT 
	T0.CompanyDB,
	-1,
	T0.InvType,
	T0.DocEntry,
	T0.LineNum,
	T01.BusinessPartnerId,
	T02.ItemsId,
	T0.BatchNumberId,
	T01.SalesPersonId,
	CAST(T01.Serial AS NVARCHAR(100)),
	T02.AccountId,
	T02.Project,
		dateadd(month, T2.InstMonth, T01.DocDate)+T2.InstDays DueDate,
		T01.DocDate,	
		T0.LineTotal*(T2.InstPrcnt/100) ''LineTotal''
	--T4.InstDays, T4.InstMonth
FROM FactPurchaseSales T0
	INNER JOIN FactDocumentHeader T01 ON T0.DocEntry = T01.DocEntry and T0.InvType = T01.InvType and T0.CompanyDB = T01.CompanyDB
	INNER JOIN FactDocumentLines T02 ON T0.DocEntry = T02.DocEntry and T0.InvType = T02.InvType and T0.CompanyDB = T02.CompanyDB
			and T02.LineNum = T0.LineNum
	INNER JOIN OPaymentGroup T1 ON T01.PaymentId = T1.Id
	INNER JOIN OPaymentGroupLines T2 ON T1.Id = T2.PaymentGroupId
WHERE T0.InvType = ''17'' and T01.DocStatus = ''O''


UNION ALL

-- PEDIDOS DE COMPRA	
SELECT
	T0.CompanyDB,
	-1,
	T0.InvType,
	T0.DocEntry,
	T0.LineNum,
	T01.BusinessPartnerId,
	T02.ItemsId,
	T0.BatchNumberId,
	T01.SalesPersonId,
	CAST(T01.Serial AS NVARCHAR(100)),
	T02.AccountId,
	T02.Project,
		dateadd(month, T2.InstMonth, T01.DocDate)+T2.InstDays DueDate,
		T01.DocDate,	
		T0.LineTotal*(T2.InstPrcnt/100)*-1 ''LineTotal''
	--T4.InstDays, T4.InstMonth
FROM FactPurchaseSales T0 
	INNER JOIN FactDocumentHeader T01 ON T0.DocEntry = T01.DocEntry and T0.InvType = T01.InvType and T0.CompanyDB = T01.CompanyDB
	INNER JOIN FactDocumentLines T02 ON T0.DocEntry = T02.DocEntry and T0.InvType = T02.InvType and T0.CompanyDB = T02.CompanyDB
			and T02.LineNum = T0.LineNum
	INNER JOIN OPaymentGroup T1 ON T01.PaymentId = T1.Id
	INNER JOIN OPaymentGroupLines T2 ON T1.Id = T2.PaymentGroupId
WHERE T0.InvType = ''22''	and T01.DocStatus = ''O''




' 
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[checkDocumentHeader]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[checkDocumentHeader]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[checkDocumentHeader]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[checkDocumentHeader]
	@company [nvarchar](4000)
WITH EXECUTE AS CALLER
AS
EXTERNAL NAME [BOSBOCLR].[StoredProcedures].[checkDocumentHeader]' 
END
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[checkFinance]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[checkFinance]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[checkFinance]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[checkFinance]
	@company [nvarchar](4000)
WITH EXECUTE AS CALLER
AS
EXTERNAL NAME [BOSBOCLR].[StoredProcedures].[checkFinance]' 
END
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[checkIncomePayment]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[checkIncomePayment]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[checkIncomePayment]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[checkIncomePayment]
	@company [nvarchar](4000)
WITH EXECUTE AS CALLER
AS
EXTERNAL NAME [BOSBOCLR].[StoredProcedures].[checkIncomePayment]' 
END
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[checkInventory]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[checkInventory]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[checkInventory]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[checkInventory]
	@company [nvarchar](4000)
WITH EXECUTE AS CALLER
AS
EXTERNAL NAME [BOSBOCLR].[StoredProcedures].[checkInventory]' 
END
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[checkOutcomePayment]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[checkOutcomePayment]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[checkOutcomePayment]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[checkOutcomePayment]
	@company [nvarchar](4000)
WITH EXECUTE AS CALLER
AS
EXTERNAL NAME [BOSBOCLR].[StoredProcedures].[checkOutcomePayment]' 
END
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[checkPurchaseSales]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[checkPurchaseSales]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[checkPurchaseSales]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[checkPurchaseSales]
	@company [nvarchar](4000)
WITH EXECUTE AS CALLER
AS
EXTERNAL NAME [BOSBOCLR].[StoredProcedures].[checkPurchaseSales]' 
END
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[clean]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[clean]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[clean]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[clean]
WITH EXECUTE AS CALLER
AS
EXTERNAL NAME [BOSBOCLR].[StoredProcedures].[clean]' 
END
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[companyAccess]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[companyAccess]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[companyAccess]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[companyAccess]
WITH EXECUTE AS CALLER
AS
EXTERNAL NAME [BOSBOCLR].[StoredProcedures].[companyAccess]' 
END
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[createDatabase]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[createDatabase]
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
		ALTER TABLE FactOutcomePayment  ALTER COLUMN BusinessPartnerId int NOT NULL
		ALTER TABLE FactOutcomePayment  ALTER COLUMN ItemsId smallint NOT NULL
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

		/*ALTER TABLE FactIncomePayment  ALTER COLUMN CompanyDB nvarchar(50) NOT NULL
		ALTER TABLE FactIncomePayment  ALTER COLUMN TransType int NOT NULL
		ALTER TABLE FactIncomePayment  ALTER COLUMN DocEntry int NOT NULL
		ALTER TABLE FactIncomePayment  ALTER COLUMN LineNum int NOT NULL
		ALTER TABLE FactIncomePayment  ALTER COLUMN ItemsId smallint NOT NULL
		ALTER TABLE FactIncomePayment  ALTER COLUMN BusinessPartnerId int NOT NULL
		ALTER TABLE FactIncomePayment  ALTER COLUMN SalesPersonId smallint NOT NULL*/
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
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[createProcedures]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[createProcedures]
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
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[debug]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[debug]
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
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dropProcedures]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dropProcedures]
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
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[info]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[info]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[info]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[info]
WITH EXECUTE AS CALLER
AS
EXTERNAL NAME [BOSBOCLR].[StoredProcedures].[info]' 
END
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[insertCompany]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[insertCompany]
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
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[loadData]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[loadData]
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
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sboTransactionDebug]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sboTransactionDebug]
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
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sboTransactionJOB]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sboTransactionJOB]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sboTransactionJOB]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sboTransactionJOB]
WITH EXECUTE AS CALLER
AS
EXTERNAL NAME [BOSBOCLR].[StoredProcedures].[sboTransactionJOB]' 
END
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[upgradeDatabase]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[upgradeDatabase]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[upgradeDatabase]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[upgradeDatabase]
WITH EXECUTE AS CALLER
AS
EXTERNAL NAME [BOSBOCLR].[StoredProcedures].[upgradeDatabase]' 
END
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[verifyDB]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[verifyDB]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[verifyDB]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[verifyDB]
WITH EXECUTE AS CALLER
AS
EXTERNAL NAME [BOSBOCLR].[StoredProcedures].[verifyDB]' 
END
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[verifyDBJob]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[verifyDBJob]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[verifyDBJob]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[verifyDBJob]
WITH EXECUTE AS CALLER
AS
EXTERNAL NAME [BOSBOCLR].[StoredProcedures].[verifyDBJob]' 
END
