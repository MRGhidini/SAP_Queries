Select U_NossoNumero, U_DigNossoNro, dbo.FVE_BraModulo11('009', U_NossoNumero), * From 
update [@ADD_BOLETO]
set U_DigNossoNro = dbo.FVE_BraModulo11('009', U_NossoNumero)
Where 
--U_DigNossoNro is not null or right(U_NossoNumero,1) = 'P'
LEN(U_NossoNumero) = 11
order by docentry desc


--Select Len('00000001253P')
--Select Len('00000001252')

--Select U_Carteira, * from [@ADD_CARTEIRA]