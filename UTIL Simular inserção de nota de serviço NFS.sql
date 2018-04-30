/*
Select 1 From OINV T0 Where T0.DocEntry = [%0]
*/
Declare @DocEntry as Int
Declare @Code as Int


--SET @DocEntry = 1000000
SET @DocEntry = 4386

IF(isnull(@DocEntry, 0) > 0)
	Begin
		Select @Code =  MAX(CAST(Code as Int)) + 1 From [@SKILL_NOFSNFSE001]

		INSERT INTO [@SKILL_NOFSNFSE001]
		Select @Code, @Code, @DocEntry, NULL, @DocEntry, @DocEntry, 'XXXXXX', '10001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL

		--Select * From [@SKILL_NOFSNFSE001]
	End
ELSE
	Begin
		Select 'Selecione DocEntry > 0'
	End
