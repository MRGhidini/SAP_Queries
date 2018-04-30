Declare @DataPagIni Datetime = '20170101',
		@DataPagFim Datetime = '20170131'



Select
	J1."TransId",
	J1."Line_ID",
	J1."SourceLine",
	C0."ReconType",
	Case C0."ReconType" 
		When '0' Then 'Manual'
		When '3' Then 'CR/CP'
		When '4' Then 'Devolvido'
		When '5' Then 'Estornado'
		When '7' Then 'Cancelado'
		When '13' Then 'Despesa de Alocação'
		When '16' Then 'Adto'
	End as "ReconTypeDescription",
	C1.ReconSum,
	J1.TransType,
	J1.BaseRef,
	J0.U_BaseType,
	J0.U_BaseEntry,
	J0.U_BaseLine

	,C1.*
From
	OITR C0
	Inner Join ITR1 C1 On C0."ReconNum" = C1."ReconNum"
	Inner Join JDT1 J1
		Inner Join OJDT J0 On J1."TransId" = J0."TransId"
	On J1."TransId" = C1."TransId" And J1."Line_ID" = C1."TransRowId"
	Where
	C0.ReconDate Between @DataPagIni And @DataPagFim
	And ReconType = 0
	--C1."TransId" IN(
	--	13341,
	--	4589
	--)