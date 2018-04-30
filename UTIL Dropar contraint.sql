SELECT 'Alter Table [dbo].['+T0.name+'] DROP CONSTRAINT ['+F.name+']', F.parent_object_id ,*
FROM 
	sys.foreign_keys F
	inner join sys.tables T0 On T0.object_id = F.parent_object_id
   WHERE 
	--object_id = OBJECT_ID(N'dbo.FK_TableName_TableName2')
   --AND 
   referenced_object_id = OBJECT_ID(N'dbo.OBusinessPartner')
   