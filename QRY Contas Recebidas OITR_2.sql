Declare @DataPagIni Datetime = '20170101',
		@DataPagFim Datetime = '20180131'



Select
	J1."TransId",
	J1."Line_ID",
	J1."SourceLine",
	C1.InstID,
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
	J1.BaseRef
From
	OITR C0
	Inner Join ITR1 C1 On C0."ReconNum" = C1."ReconNum"
	Inner Join JDT1 J1
		Inner Join OJDT J0 On J1."TransId" = J0."TransId"
	On J1."TransId" = C1."TransId" And J1."Line_ID" = C1."TransRowId"

	Left Join ORCT CR On CR.DocEntry = C0.InitObjAbs And C0.InitObjTyp = CR.ObjType
Where
	C0.ReconDate Between @DataPagIni And @DataPagFim
	And ISNULL(J1.SourceLine, 0) != -99
	And ReconType IN (0, 3)
	And CR.Canceled = 'N'