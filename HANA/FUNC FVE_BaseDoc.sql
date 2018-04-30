/*
Função retorna o DocEntry do Documento vinculado desejado(@TypeDesejado ex 17 PV), não importando quantos níveis abaixo ele esteja
Exemplo de uso:
1-)Neste exemplo quero a(s) cotação(ões) referente a Nota fiscal 1

Select FVE_BaseDoc(DocEntry, 13, linenum, 23) from INV1 where docentry = 1
Ou
Select FVE_BaseDoc(BaseEntry, BaseType, BaseLine, 23) from INV1 where docentry = 1

As duas formas são possíveis de consultar, o importante é colocar os parametros do mesmo "nível".

2-) Exemplo de teste;
Select FVE_BaseDoc(227, 15, 0, 23)  From DUMMY;
*/

DROP FUNCTION FVE_BaseDoc;
CREATE FUNCTION FVE_BaseDoc(DocEntry int, ObjType int, linenum int, TypeDesejado int) 
RETURNS result integer
LANGUAGE SQLSCRIPT READS SQL DATA
AS
BEGIN	
	WHILE(:TypeDesejado <> :ObjType AND :DocEntry IS NOT NULL) DO
		/*Documentos de venda*/
		Select TOP 1 T1."BaseEntry", T1."BaseType", T1."BaseLine" INTO DocEntry, ObjType, linenum From INV1 T1 where T1."ObjType" = :ObjType And T1."DocEntry" = :DocEntry and T1."LineNum" = :linenum
		UNION
		Select T1."BaseEntry", T1."BaseType", T1."BaseLine" From RIN1 T1 where T1."ObjType" = :ObjType And T1."DocEntry" = :DocEntry and T1."LineNum" = :linenum
		UNION
		Select T1."BaseEntry", T1."BaseType", T1."BaseLine" From DLN1 T1 where T1."ObjType" = :ObjType And T1."DocEntry" = :DocEntry and T1."LineNum" = :linenum
		UNION
		Select T1."BaseEntry", T1."BaseType", T1."BaseLine" From RDN1 T1 where T1."ObjType" = :ObjType And T1."DocEntry" = :DocEntry and T1."LineNum" = :linenum
		UNION
		Select T1."BaseEntry", T1."BaseType", T1."BaseLine" From RDR1 T1 where T1."ObjType" = :ObjType And T1."DocEntry" = :DocEntry and T1."LineNum" = :linenum
		UNION
		
		/*Documentos de compra*/
		Select T1."BaseEntry", T1."BaseType", T1."BaseLine" From PCH1 T1 where T1."ObjType" = :ObjType And T1."DocEntry" = :DocEntry and T1."LineNum" = :linenum
		UNION
		Select T1."BaseEntry", T1."BaseType", T1."BaseLine" From RPC1 T1 where T1."ObjType" = :ObjType And T1."DocEntry" = :DocEntry and T1."LineNum" = :linenum
		UNION
		Select T1."BaseEntry", T1."BaseType", T1."BaseLine" From PDN1 T1 where T1."ObjType" = :ObjType And T1."DocEntry" = :DocEntry and T1."LineNum" = :linenum
		UNION
		Select T1."BaseEntry", T1."BaseType", T1."BaseLine" From RPD1 T1 where T1."ObjType" = :ObjType And T1."DocEntry" = :DocEntry and T1."LineNum" = :linenum
		UNION
		Select T1."BaseEntry", T1."BaseType", T1."BaseLine" From POR1 T1 where T1."ObjType" = :ObjType And T1."DocEntry" = :DocEntry and T1."LineNum" = :linenum
		UNION
		
		/*cotação de venda e oferta de compra*/
		Select T1."BaseEntry", T1."BaseType", T1."BaseLine" From PRQ1 T1 where T1."ObjType" = :ObjType And T1."DocEntry" = :DocEntry and T1."LineNum" = :linenum
		UNION
		Select T1."BaseEntry", T1."BaseType", T1."BaseLine" From QUT1 T1 where T1."ObjType" = :ObjType And T1."DocEntry" = :DocEntry and T1."LineNum" = :linenum
		UNION
		
		/*Break clausement*/
		SELECT NULL, NULL, NULL FROM DUMMY WHERE :ObjType NOT IN (13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 1470000113);
	END WHILE;
	
	result:= :DocEntry;
end;

