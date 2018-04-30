/* DETERMINAÇÃO GRUPO DE CLIENTE */
Declare @PivotCols Varchar(2000), @priocode int

Set @PivotCols= ''
set @priocode = 2

Select @PivotCols=(Select Distinct '['+ MX1.USAGE +'],' from (SELECT t3.[Priority],
	--   t0.[AbsId] tcd5id,
--       t3.[AbsId] b,
--       t2.[AbsId] c,
--       t1.[AbsId] d,
--       t0.[UsageCode],
       t6.GroupName,
      -- t5.MatGrp,t5.Descrip,
       t2.[KeyFld_3_V] UF,
       t1.[EfctFrom],
       t1.EfctTo,
       t0.[TaxCode],
       t4.[Usage]
FROM   tcd5 t0
       INNER JOIN tcd3 t1
         ON t0.[Tcd3Id] = t1.[AbsId]
       INNER JOIN tcd2 t2
         ON t1.tcd2id = t2.absid
       INNER JOIN tcd1 t3
         ON t2.tcd1id = t3.absid
       INNER JOIN ousg t4
         ON t0.[UsageCode] = t4.[ID]
       --INNER JOIN OMGP t5
         --ON t2.KeyFld_2_V = t5.AbsEntry
       INNER JOIN OCRG t6
         ON t2.KeyFld_1_V = t6.GroupCode
WHERE  t3.[Priority] = @priocode)MX1 for Xml Path(''))
Set @PivotCols=SUBSTRING(@PivotCols,1,len(@PivotCols)-1)
exec('Select * From (

SELECT -- t3.[Priority],
	--   t0.[AbsId] tcd5id,
--       t3.[AbsId] b,
--       t2.[AbsId] c,
--       t1.[AbsId] d,
--       t0.[UsageCode],
       t6.GroupName [Cliente],
   --    t5.MatGrp [Grupo de materiais],t5.Descrip [Descrição],
    --   t2.[KeyFld_3_V] [Estado],
       t1.[EfctFrom] [Efetivo desde],
       t1.EfctTo [Efetivo até],
       t0.[TaxCode],
       t4.[Usage]
FROM   tcd5 t0
       INNER JOIN tcd3 t1
         ON t0.[Tcd3Id] = t1.[AbsId]
       INNER JOIN tcd2 t2
         ON t1.tcd2id = t2.absid
       INNER JOIN tcd1 t3
         ON t2.tcd1id = t3.absid
       INNER JOIN ousg t4
         ON t0.[UsageCode] = t4.[ID]
   --    INNER JOIN OMGP t5
     --    ON t2.KeyFld_2_V = t5.AbsEntry 
       INNER JOIN OCRG t6
         ON t2.KeyFld_1_V = t6.GroupCode
WHERE  t3.[Priority] = '+@priocode+'

) as tmp pivot (max(taxcode) for  usage in ('+@PivotCols+')) as tbl')




