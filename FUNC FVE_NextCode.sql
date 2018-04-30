Alter function FVE_NextCode() returns varchar(8)
begin
	--Select dbo.FVE_NextCode()
	Declare @Char char,
			@Code varchar(8),
			@NewCode varchar(8)='',
			@Qry varchar(1000),
			@i int = 0,
			@bool tinyint = 1;
	--Set @Qry = 'Select 10'
	--Set @Qry = REPLACE('Select Max(Code) From [{0}]','{0}', @tabela)
	--exec (@Qry)

	--Select @Code = isnull(Max(Code),'00000000') From [@ADD_MODULOS] where 1= 0
	--Setar a tabela que quer que use a função; Não fiz recebendo tabela por parametro porque não consigo dar EXEC(@Qry) dentro de func.
	Select @Code = isnull(Max(Code),'00000000') From [@ADD_MODULOS]

	While(@i <8)
	Begin
		Set @Char = SUBSTRING(@Code,8-@i, 1)

		Select @NewCode = CASE 
							When ASCII(@Char) between 48 and 56 And @bool =1 then CHAR(ASCII(@CHAR)+1)
							When ASCII(@Char) = 57 And @bool =1 then 'A'
							When ASCII(@Char) between 65 and 89 And @bool =1 then CHAR(ASCII(@CHAR)+1)
							When ASCII(@Char) = 90 And @bool =1 then '0'
							else @Char
						End + @NewCode
		--print ASCII(@Char)+1
		IF(ASCII(@Char) != 90) Begin Set @bool = 0 end
		Set @i = @i + 1 
	End
--Select @NewCode
Return (@NewCode)
End
