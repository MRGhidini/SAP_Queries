Select * From (
Select replace(substring(convert(varchar, T0.DocDate, 102),1, 7),'.','-') 'ano',
sum(T0.inqty - T0.OutQty) over (partition by replace(substring(convert(varchar, T0.DocDate, 102),1, 7),'.','-') order by cast(replace(substring(convert(varchar, T0.DocDate, 102),1, 7),'.','-') as varchar))'teste',
sum(T0.inqty - T0.OutQty) Over(order by cast(replace(substring(convert(varchar, T0.DocDate, 102),1, 7),'.','-') as varchar)) 'soma'
From
OIVL T0 inner join OITM T1 On T0.ItemCode = T1.ItemCode )T100
group by 
T100.Ano, T100.Soma, T100.teste
--Select
--	Ano,
--	Soma,
--	Sum(Soma) over (order by cast(Ano as varchar))
--From
--	#Teste
--Order by Ano