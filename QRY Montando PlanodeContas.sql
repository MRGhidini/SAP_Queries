WITH AcctTree--(AcctCode, AcctName, FatherNum, CurrTotal, Levels)
AS
	(
		Select	
			[AcctCode] = cast(T0.AcctCode as Varchar), 
			[AcctName] = cast(T0.AcctName as Varchar),
			[FatherNum] = T0.FatherNum,
			[Caminho] = cast(T0.AcctCode as Varchar(max)),
			[Level] = cast(T0.Levels as varchar)
		from OACT T0
		Where T0.Levels = '1'
	Union All
		Select	
			[AcctCode] = cast(T0.AcctCode as varchar), 
			[AcctName] = cast(T0.AcctName as varchar),
			[FatherNum] = ISNULL(T0.FatherNum,''),
			[Caminho] = cast(cast(T1.Caminho as varchar)+ left(cast(T0.AcctCode as Varchar)+'0000000000',10) as varchar(max)),
			[Level] = cast(T0.Levels as Varchar)
		from OACT T0
		Inner join AcctTree T1 on T1.AcctCode = T0.FatherNum
	) 
	Select [AcctCode] = Space((Level -1 )*5)+ case right(AcctCode,5) when '00000' then LEFT(AcctCode,1) else AcctCode end, AcctName from AcctTree
	order by Caminho, AcctCode