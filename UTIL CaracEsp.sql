Declare @Var1 varchar(100), @var2 varchar(1), @Int Integer, @erro varchar(10)

set @Var1 = 'tes@ndo123'
set @Int = 1

While @Int < LEN(@Var1)
Begin
	set @var2 = SUBSTRING(@var1, @int, 1)
	Select @erro = 
		case 
			when (select ASCII(@var2)) between 48 and 57 then 'ok'
			when (select ASCII(@var2)) between 65 and 90 then 'ok'
			when (select ASCII(@var2)) between 97 and 122 then 'ok'
			when (select ASCII(@var2)) = 32 then 'ok'
			Else 'false' end
		If @erro = 'false'
		begin
			goto EndO
		end
	set @Int = @Int + 1
End

EndO:
Select @erro