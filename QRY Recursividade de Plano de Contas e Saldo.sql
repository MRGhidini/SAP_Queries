declare @level as varchar(2)
Select @level = MAX(Levels) From OACT

;WITH AcctTree(AcctCode, AcctName, FatherNum, CurrTotal, Levels)
AS
	(
		Select	
			[AcctCode] = cast(T0.AcctCode as Varchar), 
			[AcctName] = cast(T0.AcctName as Varchar),
			[FatherNum] = T0.FatherNum,
			[CurrTotal] = T0.CurrTotal,
			[Level] = cast(T0.Levels as varchar)
		from OACT T0
		Where T0.Levels = @level
	Union All
		Select	
			[AcctCode] = cast(T0.AcctCode as varchar), 
			[AcctName] = cast(T0.AcctName as varchar),
			[FatherNum] = ISNULL(T0.FatherNum,''),
			[CurrTotal] = T1.CurrTotal,
			[Level] = cast(T0.Levels as Varchar)
		from 
			OACT T0
			Inner join AcctTree T1 on T0.AcctCode = T1.FatherNum
		

	) 
	
Select 
	AcctCode,AcctName, Sum(CurrTotal), Levels
 from AcctTree 
 group by
	AcctCode,AcctName, Levels
 Order By replace(AcctCode, '.','')

