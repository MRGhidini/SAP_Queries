SELECT 
CASE
	WHEN (T0."validFor" = 'Y' AND current_date NOT BETWEEN ifnull(T0."validFrom", ADD_DAYS(TO_DATE(current_date, 'YYYY-MM-DD'), -1)) and ifnull(T0."validTo", ADD_DAYS(TO_DATE(current_date, 'YYYY-MM-DD'),+1))) THEN 'N'
	WHEN (T0."frozenFor" = 'Y' AND current_date BETWEEN ifnull(T0."frozenFrom", ADD_DAYS(TO_DATE(current_date, 'YYYY-MM-DD'), -1)) and ifnull(T0."frozenTo", ADD_DAYS(TO_DATE(current_date, 'YYYY-MM-DD'),+1))) THEN 'N'
ELSE
	'Y' end as "Ativo",
T0."ItemCode", 
T0."ItemName"
FROM OITM T0   
WHERE 
CASE
	WHEN (T0."validFor" = 'Y' AND current_date NOT BETWEEN ifnull(T0."validFrom", ADD_DAYS(TO_DATE(current_date, 'YYYY-MM-DD'), -1)) and ifnull(T0."validTo", ADD_DAYS(TO_DATE(current_date, 'YYYY-MM-DD'),+1))) THEN 'N'
	WHEN (T0."frozenFor" = 'Y' AND current_date BETWEEN ifnull(T0."frozenFrom", ADD_DAYS(TO_DATE(current_date, 'YYYY-MM-DD'), -1)) and ifnull(T0."frozenTo", ADD_DAYS(TO_DATE(current_date, 'YYYY-MM-DD'),+1))) THEN 'N'
ELSE
	'Y'
End = 'Y'