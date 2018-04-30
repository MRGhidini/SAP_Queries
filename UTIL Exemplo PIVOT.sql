--Create table #teste(dtvenda datetime, produto varchar(10), valor decimal(18,2))
--insert into #teste select '20160101', 'A', 100
--insert into #teste select '20160101', 'A', 200
--insert into #teste select '20160101', 'B', 50
--insert into #teste select '20160101', 'C', 100
--insert into #teste select '20160101', 'A', 100
--insert into #teste select '20160201', 'A', 100
--insert into #teste select '20160201', 'A', 200
--insert into #teste select '20160201', 'B', 50
--insert into #teste select '20160201', 'C', 100
--insert into #teste select '20160201', 'A', 100


Select * From(
Select 
produto,
[Mes] = DATENAME(MM, dtvenda),
valor
From
#teste )as p PIVOT(SUM(VALOR) for [MES] in ([January], [February], [March])) as pvt



/*Passo 1 Criar uma query que apresente o que vc quer tabularmente.*/
Select
	T1.ItemCode,
	T0.CardName,
	T1.Price
From
	OPQT T0
	Inner Join PQT1 T1 On T0.DocEntry = T1.DocEntry



/*Passo 2 Fazer ela virar uma fonte de dados de um SUBSELECT.*/
Select 
	* 
From(
	Select
		T1.ItemCode,
		T0.CardName,
		T1.Price
	From
		OPQT T0
		Inner Join PQT1 T1 On T0.DocEntry = T1.DocEntry) as TAB

Select Distinct T1.ITemCode From PQT1 T1

/*Passo 3 Orientar como o SQL deve pivotear ela.*/
Select 
	* 
From(
	Select
		T1.ItemCode,
		T0.CardName,
		T1.Price
	From
		OPQT T0
		Inner Join PQT1 T1 On T0.DocEntry = T1.DocEntry) as TAB PIVOT(SUM(Price) for ItemCode IN ([M.AB.BEE.0013],
																										[M.AB.BEE.0014],
																										[M.AB.BEE.0015],
																										[M.AB.BEE.0016],
																										[M.AB.BEE.0017],
																										[M.AB.HOO.0002],
																										[M.AB.HOO.0003],
																										[M.AB.HOO.0004],
																										[M.AB.HOO.0005],
																										[M.AB.HOO.0006],
																										[M.AB.HOO.0007])) as pvt

/*Eh assim que faz, mas agora precisa por todos os codigos de item ali... 
pra ser dinamico, tem que aplicar um conceito de query dinamica. 
Pra fazer isso vai ir um tempo consideravel, e da pra ganhar dindin..
Ex*/
Declare @qry as varchar(max) = 'Select * From ODPI'
EXEC(@qry)
