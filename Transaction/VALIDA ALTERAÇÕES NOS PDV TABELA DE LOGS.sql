--valida quantidade diferente

select
T2.DocNum,T2.[DocStatus], T2.[CardName],T2.[NumAtCard], T1.ItemCode, T1.LineNum+1 as 'Line', 'Qty' as 'Field',
cast(T1.Quantity as varchar(18)) as 'OldValue', cast(T0.Quantity as varchar(18)) as 'NewValue', T2.UpdateDate, T4.[U_Name] as 'UpdatedBy', T2.[DocTime]
FROM adoc T2
JOIN ado1 T1 ON T2.docentry = T1.docentry AND T2.Objtype = T1.Objtype and T1.Loginstanc = 1--T2.LogInstanc-1
JOIN ado1 T0 ON T2.docentry = T0.docentry AND T2.Objtype = T0.Objtype AND T1.LineNum = T0.LineNum
INNER JOIN OUSR T4 ON T2.UserSign2 = T4.INTERNAL_K
AND T0.LogInstanc = T2.Loginstanc
WHERE T2.ObjType = '17'
and T2.CardCode = 'C00617149178'
and T0.Quantity<>T1.Quantity 

--valida quantidade de linhas diferente do valor inicial--

select 
a.DocNum, a.CardCode, a.CardName, a.DocDate, b.QdtLinhasOld, c.QdtLinhasNew
from ordr a
inner join (select count(*) as 'QdtLinhasOld',x.Objtype, x.DocEntry  from ADO1 x where x.LogInstanc in(select min(z.LogInstanc) from ADO1 z where z.DocEntry = x.DocEntry and z.ObjType = x.ObjType) group by x.Objtype, x.DocEntry) b on(a.DocEntry = b.DocEntry and a.ObjType = b.ObjType)
inner join (select count(*) as 'QdtLinhasNew',v.Objtype, v.DocEntry from ADO1 v where v.LogInstanc in(select max(w.LogInstanc) from ADO1 w where w.DocEntry = v.DocEntry and w.ObjType = v.ObjType) group by v.Objtype, v.DocEntry) c on(a.DocEntry = c.DocEntry and a.ObjType = c.ObjType)
where a.ObjType = '17'
and a.DocEntry =490009
and a.CANCELED = 'N'
and a.DocStatus = 'O'
and a.DataSource <> 'I'
and b.QdtLinhasOld <> c.QdtLinhasNew