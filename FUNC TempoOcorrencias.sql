Alter Function OKS_TempoOcorrencias(@DataIni datetime, @DataFim datetime) 
Returns TABLE
as Return

/*declare @DataIni datetime = '20150801 00:00:00.000',
		@DataFim datetime = '20150810 08:00:00.000'
*/
With Ocorrencias as (Select
	*
From
	(SELECT           
		DataInicial = cast(convert(varchar, R1.U_GWE_DtIni, 102) + ' ' + SUBSTRING(RIGHT('0000' + CONVERT(VARCHAR(4), R1.U_GWE_HrInic), 4), 1, 2) + ':' + SUBSTRING(RIGHT('0000' + CONVERT(VARCHAR(4), R1.U_GWE_HrInic), 4), 3, 2) as datetime)
		,DataFinal = cast(convert(varchar, R1.U_GWE_DtFim, 102) + ' ' + SUBSTRING(RIGHT('0000' + CONVERT(VARCHAR(4), R1.U_GWE_HrFim), 4), 1, 2) + ':' + SUBSTRING(RIGHT('0000' + CONVERT(VARCHAR(4), R1.U_GWE_HrFim), 4), 3, 2) as datetime)
		--,R1.U_GWE_DtFim
		--,R1.U_GWE_DtIni
		--,SUBSTRING(RIGHT('0000' + CONVERT(VARCHAR(4), R1.U_GWE_HrFim), 4), 1, 2) + ':' + SUBSTRING(RIGHT('0000' + CONVERT(VARCHAR(4), R1.U_GWE_HrFim), 4), 3, 2) AS HoraFim
		--,SUBSTRING(RIGHT('0000' + CONVERT(VARCHAR(4), R1.U_GWE_HrInic), 4), 1, 2) + ':' + SUBSTRING(RIGHT('0000' + CONVERT(VARCHAR(4), R1.U_GWE_HrInic), 4), 3, 2) AS HoraIni       
	FROM
		[@GWE_PLA] R0 
		INNER JOIN [@GWE_PLA1] R1 ON R0.DocEntry=R1.DocEntry
	)T0
Where
	@DataIni Between T0.DataInicial and T0.DataFinal
	Or
	@DataFim Between T0.DataInicial and T0.DataFinal
	Or
	T0.DataFinal between @DataIni and @DataFim
),
Ocorrencias2 as (
	Select Top 1
		DataInicial, 
		DataFinal =(Select max(DataFinal)From Ocorrencias T10 Where T10.DataInicial between T0.DataInicial and T0.DataFinal)
	From 
		Ocorrencias T0
	Order By
		DataInicial
),
Ocorrencias3 as (
	Select Top 1
		DataInicial, 
		(Select max(DataFinal) From Ocorrencias T10 Where T10.DataInicial between T0.DataInicial and T0.DataFinal)DataFinal 
	From 
		Ocorrencias T0
	Where
		T0.DataInicial not between(select DataInicial from Ocorrencias2) and (Select DataFinal From Ocorrencias2)
	Order By
		DataInicial

	Union All
	Select * From Ocorrencias2
),
Final as(
	SELECT 
		*,
		ParametroInicial = @DataIni, 
		ParametroFinal = @DataFim, 
		Minutos = 
			Case 
				When @DataIni <= DataInicial Then DATEDIFF(MINUTE,DataInicial,DataFinal)
				Else DATEDIFF(MINUTE,@DataIni,DataFinal)
			End
	FROM 
		Ocorrencias3
)

Select 
	*,
	Formatada = RIGHT('00' + CAST(Minutos/60 AS VARCHAR),2) + ':' + RIGHT('00' + CAST(Minutos%60 AS VARCHAR), 2)
from Final


