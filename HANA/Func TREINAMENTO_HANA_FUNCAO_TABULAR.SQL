/*
SELECT * FROM TREINAMENTO_HANA_FUNCAO_TABELA();
*/

DROP FUNCTION "TREINAMENTO_HANA_FUNCAO_TABELA";
CREATE FUNCTION "TREINAMENTO_HANA_FUNCAO_TABELA" (pCardCode VARCHAR(100) default '*sempn*')
RETURNS TABLE
(
    "CardCode" NVARCHAR(100),
    "CardType" NVARCHAR(1)
)
AS
BEGIN


RETURN
	Select 
		T0."CardCode",
		T0."CardType"
	From
		OCRD T0
	Where
		:pCardCode IN (T0."CardCode", '*sempn*');
END;
