/*
SELECT * FROM TREINAMENTO_HANA_FUNCAO_TABELA();
*/

DROP FUNCTION "TREINAMENTO_HANA_FUNCAO_TABELA_COM_VIEW";
CREATE FUNCTION "TREINAMENTO_HANA_FUNCAO_TABELA_COM_VIEW" (Tabela VARCHAR(4), pCardCode VARCHAR(100) default '*sempn*')
RETURNS TABLE
(
    "CardCode" NVARCHAR(100),
    "CardType" NVARCHAR(1),
	"DocEntry" INT,
	"DocDate" DATETIME,
	"TransId" INT,
	"Vendedor" NVARCHAR(100)
)
AS
BEGIN


RETURN
	Select 
		T0."CardCode",
		T0."CardType",
		T1."DocEntry",
		T1."DocDate",
		T1."TransId",
		T2."SlpName" as "Vendedor"
	From
		OCRD T0
		INNER JOIN DOCUMENTOSDEVENDA T1 ON T0."CardCode" = T1."CardCode"
		INNER JOIN OSLP T2 ON T1."SlpCode" = T2."SlpCode"
	Where
		:pCardCode IN (T0."CardCode", '*sempn*');
END;
