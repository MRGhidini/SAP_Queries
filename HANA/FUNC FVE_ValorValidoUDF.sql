/***
	Exemplo
	Select FVE_ValorValidoUDF('@ADD_BOLETO', 'Origem', '011') From Dummy;
***/
DROP FUNCTION FVE_ValorValidoUDF;
CREATE FUNCTION FVE_ValorValidoUDF(tabela varchar(50), campo varchar(50), valor varchar(20))
RETURNS result NVARCHAR(100)
LANGUAGE SQLSCRIPT READS SQL DATA
AS
BEGIN

	DECLARE EXIT HANDLER FOR SQL_ERROR_CODE 1299	
	BEGIN
	   result :='';
	END;
	
	Select 
		IFNULL(T1."Descr", '') INTO result
	from 
		CUFD T0
		INNER JOIN UFD1 T1 on T0."TableID" = T1."TableID" and T0."FieldID" = T1."FieldID"
	where 
		T0."TableID" = :tabela and 
		T0."AliasID" = :campo And
		T1."FldValue" = :valor;
		
END;
