-- QRY_Lista_UDFs --------------------------------------------------------------
--
--------------------------------------------------------------------------------

with TAB1 as 
( select * from [SBO_STOCKAIG_00]..CUFD as t0 /*where t0.TableId = 'OSRN'*/),

TAB2 as
( select * from [SBODemoBR]..CUFD as t1 /*where t0.TableId = 'OSRN'*/ ), 

TAB3 as 
(
select	t0.TableID as 'TableID', t0.AliasID as 'AliasID', t0.Descr as 'Descr',
		isnull(t1.TableID,'***') as 'TableID-DemoBR', isnull(t1.AliasID,'***') as 'AliasID-DemoBR', isnull(t1.Descr,'***') as 'Descr-DemoBR' 
from TAB1 as t0
full outer join TAB2 as t1
on t0.AliasID = t1.AliasID
),

TAB4 as 
(
select * from TAB3 as t0
where	(isnull(t0.TableID,' ') <> isnull(t0.[TableID-DemoBR],' ')) and
		substring(convert(varchar(20),t0.AliasID),1,3) = 'UDF' 
)

select	t0.AliasID, t0.Descr 
from TAB4 as t0
group by t0.AliasID, t0.Descr 
order by t0.AliasID, t0.Descr
