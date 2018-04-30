Create Function FVE_BraModulo11(@Carteira Varchar(3), @NossoNum Varchar(20)) returns char
Begin
	Declare 
			@NossoNumero varchar(30) = '00900000000188',/*Carteira 009 NossoNumero 00000000188 Resultado é 3*/
			@c char,
			@Digito char,
			@Soma int = 0,
			@Resto int,
			@Mult int = 2,
			@Base int = 7,
			@i int = 1


	Set @NossoNumero = @Carteira + @NossoNum
	Set @i = LEN(@NossoNumero)

	While(@i >0 )
	Begin
			--print SUBSTRING(@NossoNumero,@i,1)
			SET @c = SUBSTRING(@NossoNumero,@i,1)
			Select @Soma = @Soma + @c * @Mult
			--print @Soma

			if(@Mult = @Base)
				Set @Mult = 2
			Else
				Set @Mult = @Mult + 1
			SET @i = @i-1
	End

	Set @Resto = @Soma % 11

	--Print @Resto

	Return 
		(Select 
		CASE @Resto
			When 1 Then 'P'
			When 0 Then '0'
			Else Cast(11 - @Resto as varchar)
		End)

End