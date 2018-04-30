--Select * from [@ADD_BOLETO] where U_BaseType = 13 and U_NotaEntry = 651083110
--Select * from [@ADD_CARTEIRA]
Select
	U_CardCode,
	U_BaseEntry,
	U_NotaEntry,
	U_DataEmissao,
	U_NrDocumento,
	U_DataEmissao,
	U_DataVencimento,
	T1.U_FormaPagto,
	U_VlTitulo,
	Count('1')
From
	[@ADD_BOLETO] T0
	Inner join [@ADD_CARTEIRA] T1 On T0.U_Carteira = T1.Code
Where
	T0.U_Status <> '05'
Group By
	U_CardCode,
	U_BaseEntry,
	U_NotaEntry,
	U_DataEmissao,
	U_NrDocumento,
	U_DataEmissao,
	U_DataVencimento,
	U_VlTitulo,
	T1.U_FormaPagto
Having count('1') > 1
Order by 
	T0.U_DataEmissao