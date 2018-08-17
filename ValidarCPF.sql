alter FUNCTION [dbo].[fncValida_CPF](
    @Nr_Documento VARCHAR(11)
)
RETURNS BIT -- 1 = válido, 0 = inválido
WITH SCHEMABINDING
BEGIN
--SELECT [dbo].[fncValida_CPF]('34984339896')
    DECLARE
        @Contador_1 INT,
        @Contador_2 INT,
        @Digito_1 INT,
        @Digito_2 INT,
        @Nr_Documento_Aux VARCHAR(11)

    -- Remove espaços em branco
    SET @Nr_Documento_Aux = LTRIM(RTRIM(@Nr_Documento))
    SET @Digito_1 = 0


    -- Remove os números que funcionam como validação para CPF, pois eles "passam" pela regra de validação
    IF (@Nr_Documento_Aux IN ('00000000000', '11111111111', '22222222222', '33333333333', '44444444444', '55555555555', '66666666666', '77777777777', '88888888888', '99999999999', '12345678909'))
        RETURN 0


    -- Verifica se possui apenas 11 caracteres
    IF (LEN(@Nr_Documento_Aux) <> 11)
        RETURN 0
    ELSE 
    BEGIN

        -- Cálculo do segundo dígito
        SET @Nr_Documento_Aux = SUBSTRING(@Nr_Documento_Aux, 1, 9)

        SET @Contador_1 = 2

        WHILE (@Contador_1 <= 10)
        BEGIN 
            SET @Digito_1 = @Digito_1 + (@Contador_1 * CAST(SUBSTRING(@Nr_Documento_Aux, 11 - @Contador_1, 1) as int))
            SET @Contador_1 = @Contador_1 + 1
        end 

        SET @Digito_1 = @Digito_1 - (@Digito_1/11)*11

        IF (@Digito_1 <= 1)
            SET @Digito_1 = 0
        ELSE 
            SET @Digito_1 = 11 - @Digito_1

        SET @Nr_Documento_Aux = @Nr_Documento_Aux + CAST(@Digito_1 AS VARCHAR(1))

        IF (@Nr_Documento_Aux <> SUBSTRING(@Nr_Documento, 1, 10))
            RETURN 0
        ELSE BEGIN 
        
            -- Cálculo do segundo dígito
            SET @Digito_2 = 0
            SET @Contador_2 = 2

            WHILE (@Contador_2 <= 11)
            BEGIN 
                SET @Digito_2 = @Digito_2 + (@Contador_2 * CAST(SUBSTRING(@Nr_Documento_Aux, 12 - @Contador_2, 1) AS INT))
                SET @Contador_2 = @Contador_2 + 1
            end 

            SET @Digito_2 = @Digito_2 - (@Digito_2/11)*11

            IF (@Digito_2 < 2)
                SET @Digito_2 = 0
            ELSE 
                SET @Digito_2 = 11 - @Digito_2

            SET @Nr_Documento_Aux = @Nr_Documento_Aux + CAST(@Digito_2 AS VARCHAR(1))

            IF (@Nr_Documento_Aux <> @Nr_Documento)
                RETURN 0
                
        END
    END 
    
	RETURN 1
    
END

