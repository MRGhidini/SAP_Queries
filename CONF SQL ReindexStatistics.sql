exec sp_MSforeachtable "DBCC DBreindex ('?')"
exec sp_MSforeachtable "update statistics ?"