 Restore a backup of the live DB on the server as TEST, run the select queries and then the delete queries.
2. If you can now import your RPT successfully, make sure you have an updated backup of the live DB, and no user is login to B1
3. Run again the select queries on the live DB:
1.-
select * from CDPM where ObjectType = 232 and ObjectKey not in (select doccode from rdoc) order by permid
2.-Select * from USR3 where PermId
not in (Select distinct Absid from OUPT union Select distinct cast(PermId as nvarchar(50) )from CDPM)
4. After that please run the following delete queries
1.-delete from CDPM where ObjectType = 232 and ObjectKey not in
(select doccode from rdoc)
2.-Delete from USR3 where PermId
not in (Select distinct Absid from OUPT union Select distinct
cast(PermId as nvarchar(50) )from CDPM)

