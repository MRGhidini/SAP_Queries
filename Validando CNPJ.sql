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

    /* ALGOR�TIMO PARA O PRIMEIRO D�GITO 543298765432 */

 

    /* C�LCULO DO 1� D�GITO */

 

    /* C�LCULO DA 1� PARTE DO ALGOR�TIOM 5432 */

    SET @VAR1 = 5 /* 1a Parte do Algor�timo come�ando de "5" */

 

    WHILE (@INDICE <= 4)

    BEGIN

      SET @Soma = @Soma + CONVERT(INT,SUBSTRING(@CNPJ,@INDICE,1)) * @VAR1

      --PRINT 'INDICE.: ' + CONVERT(VARCHAR(2),@INDICE)

      --PRINT 'DIGITO-A-DIGITO DO CNPJ.: ' + SUBSTRING(@CNPJ,@INDICE,1)    

      --PRINT 'SOMA PARA O 1o DIGITO, ALGORITIMO 5432 .: ' + CONVERT(VARCHAR(5),@Soma)

      SET @INDICE = @INDICE + 1 /* Navegando um-a-um at� < = 4, as quatro primeira posi��es */

      SET @VAR1 = @VAR1 - 1       /* subtraindo o algor�timo de 5 at� 2 */

    END

       --PRINT '------------------------------------'

 

    /* C�LCULO DA 2� PARTE DO ALGOR�TIOM 98765432 */

      

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

      

       /* SE O RESTO DA DIVIS�O FOR < 2, O DIGITO = 0 */

       IF @DIG1 < 2

            SET @DIG1 = 0;

       ELSE /* SE O RESTO DA DIVIS�O N�O FOR < 2*/

            SET @DIG1 = 11 - (@soma % 11);

 

       --PRINT 'DIG1 �.: ' + CONVERT(VARCHAR(3),@DIG1)

 

 

    /* C�LCULO DO 2� D�GITO */

    /* ZERANDO O INDICE E A SOMA PARA COME�AR A CALCULAR O 2� D�GITO*/   

    SET @INDICE = 1

    SET @SOMA = 0

    /* C�LCULO DA 1� PARTE DO ALGOR�TIOM 65432 */

    SET @VAR1 = 6 /* 2a Parte do Algor�timo come�ando de "6" */

    SET @RESULTADO = 'N'

    WHILE (@INDICE <= 5)

    BEGIN

      SET @Soma = @Soma + CONVERT(INT,SUBSTRING(@CNPJ,@INDICE,1)) * @VAR1

      --PRINT 'INDICE.: ' + CONVERT(VARCHAR(2),@INDICE)

      --PRINT 'DIGITO-A-DIGITO DO CNPJ.: ' + SUBSTRING(@CNPJ,@INDICE,1)    

      --PRINT 'SOMA PARA O 2o DIGITO, ALGORITIMO 65432 .: ' + CONVERT(VARCHAR(5),@Soma)

      SET @INDICE = @INDICE + 1 /* Navegando um-a-um at� < = 5, as quatro primeira posi��es */

      SET @VAR1 = @VAR1 - 1       /* subtraindo o algor�timo de 6 at� 2 */

    END

    --PRINT '------------------------------------'

 

    

    /* C�LCULO DA 2� PARTE DO ALGOR�TIOM 98765432 */

 

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

      

       /* SE O RESTO DA DIVIS�O FOR < 2, O DIGITO = 0 */

       IF @DIG2 < 2

           SET @DIG2 = 0;

       ELSE /* SE O RESTO DA DIVIS�O N�O FOR < 2*/

           SET @DIG2 = 11 - (@soma % 11);

 

       --PRINT 'DIG2 �.: ' + CONVERT(VARCHAR(3),@DIG2)

 

    --PRINT '------------------------------------'

    --PRINT '------------------------------------'

    --PRINT 'DIG1 �.: ' + CONVERT(VARCHAR(3),@DIG1)

    --PRINT 'DIG2 �.: ' + CONVERT(VARCHAR(3),@DIG2)

    --PRINT SUBSTRING(@CNPJ,LEN(@CNPJ)-1,1)

    --PRINT SUBSTRING(@CNPJ,LEN(@CNPJ),1)


    IF (@DIG1 = SUBSTRING(@CNPJ,LEN(@CNPJ)-1,1)) AND (@DIG2 = SUBSTRING(@CNPJ,LEN(@CNPJ),1))

      SET @RESULTADO = 'S'

    ELSE

      SET @RESULTADO = 'N'


  --PRINT 'RESULTADO .: ' + @RESULTADO
  RETURN @RESULTADO  
  END
  