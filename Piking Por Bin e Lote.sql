Select
	T0."AbsEntry",
	T0."PickDate",
	T3."USER_CODE",
	T0."Name" as "Operador",
	Case T0."Status"
		When 'R' Then 'Liberado'
		Else '???'
	End as "Status",
	CASE T1."BaseObject"
		When '17' Then 'PV'
		Else '???'
	End As "Tipo",
	T4.DocNum as "PVEntry",
	T4."DocDueDate",
	T4."CardCode",
	T2."ItemCode",
	T5."ItemName",
	(SELECT SUM(S1."OpenQty") From RDR1 S1 Where S1."DocEntry" = T4."DocEntry" And S1."ItemCode" = T2."ItemCode") as "Quantidade",
	B2."OnHandQty" as "Disponivel",
	B4."DistNumber" as "Lote",
	B1."BinCode" as "Localização"
From
	OPKL T0
	Inner Join PKL1 T1 On T0."AbsEntry" = T1."AbsEntry"
	Inner Join PKL2 T2 On T0."AbsEntry" = T2."AbsEntry"
	Inner Join OUSR T3 On T0."UserSign" = T3."USERID"
	Inner Join ORDR T4 On T4.DocEntry = T1."OrderEntry" And T4."ObjType" = T1."BaseObject"
	Inner Join OITM T5 On T5."ItemCode" = T2."ItemCode"
	
	/*Tratamento de Bins e Lotes*/
	Inner Join OIBQ B0 On B0."ItemCode" = T2."ItemCode" And B0."OnHandQty" >0
	Inner Join OBIN B1 ON B0.[BinAbs] = B1.[AbsEntry]
	Inner Join OBBQ B2 ON B0.[BinAbs] = B2.[BinAbs] AND B0.[ItemCode] = B2.[ItemCode] AND B2.[OnHandQty] <> 0
    Inner Join OBTN B4 ON B0.[ItemCode] = B4.ItemCode AND B2.[SnBMDAbs] = B4.AbsEntry
Where
	T0."AbsEntry" = 62
Group By
	T0."AbsEntry",
	T0."PickDate",
	T3."USER_CODE",
	T0."Name",
	Case T0."Status"
		When 'R' Then 'Liberado'
		Else '???'
	End,
	CASE T1."BaseObject"
		When '17' Then 'PV'
		Else '???'
	End,
	T4.DocNum,
	T4."DocDueDate",
	T4."CardCode",
	T2."ItemCode",
	T5."ItemName",
	T4."DocEntry",
	B2."OnHandQty",
	B4."DistNumber",
	B1."BinCode"