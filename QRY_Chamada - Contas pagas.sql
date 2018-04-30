/*Relatório de contas a pagar - Duplicatas pagas - Revisado em 13/05/2013 */




/*SELECT 1 FROM [dbo].[JDT1] T0 WHERE 
T0.RefDate >= '[%1]' and T0.RefDate <= '[%2]'
(SELECT 1 FROM [dbo].[OACT] T43 WHERE T43.FrgnName ='[%0]')
SELECT 1 FROM [dbo].[OCRD] T41 WHERE T41.CARDNAME = '[%3]'
SELECT 1 from [dbo].[@SKILL_1101_CT_ITM] T42 where T42.U_CNPJ = '[%4]' 

*/
declare @p1 nvarchar(20) = (SELECT top 1 T43.AcctCode FROM [dbo].[OACT] T43 WHERE T43.FrgnName ='[%0]'),
        @p2 datetime     = '[%1]',
        @p3 datetime     = '[%2]',
        @NomePN Varchar(100)     = '[%3]',
        @CNPJ Varchar(100)     = '[%4]'


select * from (
select * from SBOKromi_Brazil..GA_ContasPagarPagas(@p1,@p2,@p3) T0 union all
select * from SBOKromiCapivari_Brazil..GA_ContasPagarPagas(@p1,@p2,@p3) T0 )
 k0 where (isnull(@NomePN,'') = '' or k0.[Fornecedor / Conta] like '%'+isnull(@NomePN,'')+'%') AND 
 (isnull(@CNPJ,'') = '' or replace(replace(replace(k0.CNPJ,'.',''),'/',''),'-','') like '%'+isnull(@CNPJ,'')+'%')
ORDER BY k0.[Data da Baixa],
k0.[Chave do Lançamento]