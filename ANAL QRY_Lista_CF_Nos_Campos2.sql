select *
from CSHS as t0
left outer join OUQR as t1 on t0.QueryID = t1.IntrnalKey
where t1.QName like '%movimento%'