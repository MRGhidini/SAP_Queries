Select * from (
Select CardCode, CardType, 
CASE
	WHEN (T0.[ValidFor] = 'Y' AND getdate() NOT BETWEEN isnull(T0.validFrom, getdate()-1) and isnull(T0.validTo, getdate()+1)) THEN 'N'
	WHEN (T0.[frozenFor] = 'Y' AND getdate() BETWEEN isnull(T0.frozenFrom, getdate()-1) and isnull(T0.frozenTo, getdate()+1)) THEN 'N'
ELSE
	'Y'
End 'Ativo'
, T0.validFor, T0.validFrom, T0.validTo, T0.frozenFor, T0.frozenFrom, T0.frozenTo
From OCRD T0) T0
where
	Ativo = 'N'