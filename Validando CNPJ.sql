CREATE FUNCTION [dbo].[UDF_VALIDACNPJ]
(
@CNPJ VARCHAR(14)
)
RETURNS CHAR(1)

AS

BEGIN

DECLARE @INDICE INT, @SOMA INT, @DIG1 INT, @DIG2 INT, @VAR1 INT, @VAR2 INT, @RESULTADO CHAR(1)

 --SELECT DBO.UDF_VALIDACNPJ('17609495000156')
 --17.609.495/0001-53

    SET @SOMA = 0

    SET @INDICE = 1

    SET @RESULTADO = 'N'

    /* ALGORÍTIMO PARA O PRIMEIRO DÍGITO 543298765432 */

 

    /* CÁLCULO DO 1º DÍGITO */

 

    /* CÁLCULO DA 1ª PARTE DO ALGORÍTIOM 5432 */

    SET @VAR1 = 5 /* 1a Parte do Algorítimo começando de "5" */

 

    WHILE (@INDICE <= 4)

    BEGIN

      SET @Soma = @Soma + CONVERT(INT,SUBSTRING(@CNPJ,@INDICE,1)) * @VAR1

      --PRINT 'INDICE.: ' + CONVERT(VARCHAR(2),@INDICE)

      --PRINT 'DIGITO-A-DIGITO DO CNPJ.: ' + SUBSTRING(@CNPJ,@INDICE,1)    

      --PRINT 'SOMA PARA O 1o DIGITO, ALGORITIMO 5432 .: ' + CONVERT(VARCHAR(5),@Soma)

      SET @INDICE = @INDICE + 1 /* Navegando um-a-um até < = 4, as quatro primeira posições */

      SET @VAR1 = @VAR1 - 1       /* subtraindo o algorítimo de 5 até 2 */

    END

       --PRINT '------------------------------------'

 

    /* CÁLCULO DA 2ª PARTE DO ALGORÍTIOM 98765432 */

      

    SET @VAR2 = 9

    WHILE (@INDICE <= 12)

    BEGIN

      SET @Soma = @Soma + CONVERT(INT,SUBSTRING(@CNPJ,@INDICE,1)) * @VAR2

      --PRINT 'INDICE.: ' + CONVERT(VARCHAR(2),@INDICE)

      --PRINT 'DIGITO-A-DIGITO DO CNPJ.: ' + SUBSTRING(@CNPJ,@INDICE,1)    

      --PRINT 'SOMA PARA O 1o DIGITO, ALGORITIMO 98765432 .: ' + CONVERT(VARCHAR(5),@Soma)

      SET @INDICE = @INDICE + 1

      SET @VAR2 = @VAR2 - 1            

    END

      

       --PRINT 'SOMA TOTAL = ' + CONVERT(VARCHAR(5),@Soma)

 

       SET @DIG1 = (@soma % 11)

 

       --PRINT 'DIG1, RESTO DA DIVISAO .: ' + CONVERT(VARCHAR(3),(@SOMA % 11))

      

       /* SE O RESTO DA DIVISÃO FOR < 2, O DIGITO = 0 */

       IF @DIG1 < 2

            SET @DIG1 = 0;

       ELSE /* SE O RESTO DA DIVISÃO NÃO FOR < 2*/

            SET @DIG1 = 11 - (@soma % 11);

 

       --PRINT 'DIG1 É.: ' + CONVERT(VARCHAR(3),@DIG1)

 

 

    /* CÁLCULO DO 2º DÍGITO */

    /* ZERANDO O INDICE E A SOMA PARA COMEÇAR A CALCULAR O 2º DÍGITO*/   

    SET @INDICE = 1

    SET @SOMA = 0

    /* CÁLCULO DA 1ª PARTE DO ALGORÍTIOM 65432 */

    SET @VAR1 = 6 /* 2a Parte do Algorítimo começando de "6" */

    SET @RESULTADO = 'N'

    WHILE (@INDICE <= 5)

    BEGIN

      SET @Soma = @Soma + CONVERT(INT,SUBSTRING(@CNPJ,@INDICE,1)) * @VAR1

      --PRINT 'INDICE.: ' + CONVERT(VARCHAR(2),@INDICE)

      --PRINT 'DIGITO-A-DIGITO DO CNPJ.: ' + SUBSTRING(@CNPJ,@INDICE,1)    

      --PRINT 'SOMA PARA O 2o DIGITO, ALGORITIMO 65432 .: ' + CONVERT(VARCHAR(5),@Soma)

      SET @INDICE = @INDICE + 1 /* Navegando um-a-um até < = 5, as quatro primeira posições */

      SET @VAR1 = @VAR1 - 1       /* subtraindo o algorítimo de 6 até 2 */

    END

    --PRINT '------------------------------------'

 

    

    /* CÁLCULO DA 2ª PARTE DO ALGORÍTIOM 98765432 */

 

    SET @VAR2 = 9

    WHILE (@INDICE <= 13)

    BEGIN

      SET @Soma = @Soma + CONVERT(INT,SUBSTRING(@CNPJ,@INDICE,1)) * @VAR2

      --PRINT 'INDICE.: ' + CONVERT(VARCHAR(2),@INDICE)

      --PRINT 'DIGITO-A-DIGITO DO CNPJ.: ' + SUBSTRING(@CNPJ,@INDICE,1)    

      --PRINT 'SOMA PARA O 2o DIGITO, ALGORITIMO 98765432 .: ' + CONVERT(VARCHAR(5),@Soma)

      SET @INDICE = @INDICE + 1

      SET @VAR2 = @VAR2 - 1            

    END

      

    --PRINT 'SOMA TOTAL = ' + CONVERT(VARCHAR(5),@Soma)

 

       SET @DIG2 = (@soma % 11)

 

       --PRINT 'DIG2, RESTO DA DIVISAO .: ' + CONVERT(VARCHAR(3),(@SOMA % 11))

      

       /* SE O RESTO DA DIVISÃO FOR < 2, O DIGITO = 0 */

       IF @DIG2 < 2

           SET @DIG2 = 0;

       ELSE /* SE O RESTO DA DIVISÃO NÃO FOR < 2*/

           SET @DIG2 = 11 - (@soma % 11);

 

       --PRINT 'DIG2 É.: ' + CONVERT(VARCHAR(3),@DIG2)

 

    --PRINT '------------------------------------'

    --PRINT '------------------------------------'

    --PRINT 'DIG1 É.: ' + CONVERT(VARCHAR(3),@DIG1)

    --PRINT 'DIG2 É.: ' + CONVERT(VARCHAR(3),@DIG2)

    --PRINT SUBSTRING(@CNPJ,LEN(@CNPJ)-1,1)

    --PRINT SUBSTRING(@CNPJ,LEN(@CNPJ),1)


    IF (@DIG1 = SUBSTRING(@CNPJ,LEN(@CNPJ)-1,1)) AND (@DIG2 = SUBSTRING(@CNPJ,LEN(@CNPJ),1))

      SET @RESULTADO = 'S'

    ELSE

      SET @RESULTADO = 'N'


  --PRINT 'RESULTADO .: ' + @RESULTADO
  RETURN @RESULTADO  
  END
  