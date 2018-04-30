/*Verificação de saldo em aberto por pn*/
Declare @CardCode as VARCHAR(100) = 'C20000'

Select Count(1), SUM(J1.BalDueDeb) From JDT1 J1 Where J1.ShortName = @CardCode And J1.BalDueDeb > 0 And J1.DueDate < DATEADD(DAY, -7, GETDATE())
