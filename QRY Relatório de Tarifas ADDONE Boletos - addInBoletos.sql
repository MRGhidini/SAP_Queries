Select 
	T0.DocEntry,
	T0.U_NrDocumento,
	[Parcela] = T0.U_BaseLine,
	T0.U_CardCode,
	T0.U_CardName,
	[Tipo Tafifa] = '',/*TODO - Veficiar com o cliente ao aprovar - Provavelmente terá que vincular a careteira.*/
	[Tipo Tafifa 2] = T2.Memo,/*Alternativa à coluna TIPO*/
	[Valor Tarifa] = T0.U_VlPago - T0.U_VlTitulo, /*Verificar calculo - Se houver erro pegar valor do LCM que está no CR ou abaixo*/
	[Valor Tarifa 2] = T2.LocTotal, /*TODO - Conferir valor, caso errado ligar JDT1 e carteira do boleto*/
	T0.U_DataVencimento
From 
	[@ADD_BOLETO] T0
	--Inner Join [@ADD_HISTORICO] T1 On T0.DocEntry = T1.DocEntry And ISNULL(T1.U_IdContasReceber, 0) <> 0
	Inner Join OJDT T2 On CAST(T0.DocEntry AS VARCHAR) = T2.Ref1 And T0.U_NrDocumento = T2.Ref2 /*Existem outros campos de usuário que ligam os documentos bas mas para ligá-los precisa ver se funcionará nas renegociações*/
Where
	T0.DocEntry = '103317'/*Boleto BASE Emergencia*/

	--Select * From [@ADD_BOLETO] Where DocEntry = 103317
	--Select * From OJDT where TransId = 342854