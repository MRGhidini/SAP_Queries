CALL TESTECURSOR('297');
CREATE PROCEDURE TESTECURSOR
(
	in list_of_cols_val_tab_del nvarchar(255)
)
LANGUAGE SQLSCRIPT
AS
--Declaração de todas as váriaveis obrigatoriamente aqui, Antes do BEGIN;
LineNum int;
LineTotal numeric(10,2);

--Declaração de cursor sempre antes do BEGIN;
--É necessário Usar o parametro para filtrá-lo;
CURSOR xCur(list_of_cols_val_tab_del nvarchar(255)) FOR
		Select "LineNum" From RDR1 Where IFNULL("U_Drawback",'') <> '' And "DocEntry" = :list_of_cols_val_tab_del;


error  int;				-- Result (0 for no error)
error_message nvarchar (200); 		-- Error string to be displayed
begin

	error := 0;
	error_message := N'Ok';

      
	--CUR_ROW é uma constante dos cursores;
	--O FOR  Abre, executa e fechar o cursor quando acabar;
	--É necessário Usar o parametro para filtrá-lo;
	FOR cur_row as xCur(:list_of_cols_val_tab_del) DO
		LineNum := cur_row."LineNum";
		
		UPDATE "@OKS_DRAWBACK" 
		SET "U_ValorExportado" = (ifnull("U_ValorExportado",0) + a."LineTotal"), 
			"U_SaldoaExportar" = "U_ValorDrawback" - (ifnull("U_ValorExportado",0) + a."LineTotal") 
		FROM
			RDR1 a
		WHERE 
			a."DocEntry" = 297 And
			a."LineNum" = :LineNum And
			"Code" = a."U_Drawback";
	END FOR;
	


	select :error, :error_message FROM dummy;

end;