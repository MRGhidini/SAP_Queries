/*KeyWords: Saldo, Saldo em Aberto, PN, Contas a Receber*/
Select
	MAX(T0.TransId),
	T1.ShortName,
	MAX(T1.DueDate),
	SUM(T1.Debit),
	SUM(T1.BalDueDeb)
From
	OJDT T0
	Inner Join JDT1 T1 On T0.TransId = T1.TransId
Where
	T1.ShortName in (Select CardCode From OCRD Where CardType = 'C') And
	T1.BalDueDeb > 0
Group By
	T1.ShortName
Order By 5 DESC

/*
Verificação de saldo em aberto por pn
Declare @CardCode as VARCHAR(100) = 'C20000'

Select Count(1), SUM(J1.BalDueDeb) From JDT1 J1 Where J1.ShortName = @CardCode And J1.BalDueDeb > 0 And J1.DueDate < DATEADD(DAY, -70, GETDATE())
*/