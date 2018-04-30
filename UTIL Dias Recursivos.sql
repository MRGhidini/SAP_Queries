declare @dataini datetime, @datafim datetime

set @dataini = '20140101'
set @datafim = '20150131'


;With dias as
(
	Select 
		Data = @dataini
	Union all
		Select Data + 1 From dias where Data+1 <= @Datafim
)
select * from dias 
/* Descomentar essa parte para excluir sabados e domingos
where DATEPART(weekday,Data) NOT IN (7,1)
*/
OPTION(maxrecursion 1000)