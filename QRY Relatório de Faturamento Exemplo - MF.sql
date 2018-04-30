/*
Select 1 From OINV T0 Where T0.DocDate >= [%0] and T0.DocDate <= [%1]
Select 1 From OBPL T90 Where T90.BplName = '[%2]'
*/
Declare @DataIni datetime, @DataFim datetime, @Filial Int
Set @DataIni = [%0]
Set @DataFim = [%1]
Set @Filial = (Select BplId From OBPL Where BPLName = [%2])
Select
	[TipoDoc] = 'NFS',
	T0.BPLId,
	T0.BPLName,
	T0.DocEntry,
	[Nº Nota] = T0.Serial,
	T0.DocDate,
	T0.CardCode,
	T0.CardName,
	T0.DocTotal
	/*t1.ItemCode,
	T1.Dscription,
	T1.Quantity,
	T1.Price,
	T1.Linetotal*/
From
	OINV T0
	--Inner join INV1 T1 On T0.DocEntry = T1.Docentry
Where
	T0.DocDate Between @DataIni and @DataFim And
	T0.BPLId = @Filial

Union All

Select
	[TipoDoc] = 'DEV-NFS',
	T0.BPLId,
	T0.BPLName,
	T0.DocEntry,
	[Nº Nota] = T0.Serial,
	T0.DocDate,
	T0.CardCode,
	T0.CardName,
	-T0.DocTotal
	/*t1.ItemCode,
	T1.Dscription,
	-T1.Quantity,
	-T1.Price,
	-T1.Linetotal*/
From
	ORIN T0
	--Inner join RIN1 T1 On T0.DocEntry = T1.Docentry
Where
	T0.DocDate Between @DataIni and @DataFim And
	T0.BPLId = @Filial