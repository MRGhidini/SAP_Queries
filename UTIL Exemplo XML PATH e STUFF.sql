Select 
	T0.TransId,
	T0.RefDate,
	T0.Memo,
	STUFF(
			(Select ','+ T10.Account from JDT1 T10 where T10.TransId = T0.TransId FOR XML PATH(''))
	,1,1,'') as 'Contas'
From
	OJDT T0 
	--Inner Join JDT1 T1 On T0.TransId = T1.TransId
