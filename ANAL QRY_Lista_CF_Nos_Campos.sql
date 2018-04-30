--QRY_Lista_CF_Nos_Campos 
--
---------------------------------------------------------------------------------------
declare @CF as nvarchar(100) = ''
declare @CampoUDF_ou_Coluna as nvarchar (100) = ''

set @CF = '%' + @CF + '%'
set @CampoUDF_ou_Coluna = '%' + @CampoUDF_ou_Coluna + '%';

with TAB1 as 
(
select	t1.QName as 'Nome Query',
				(select 
			case	when t0.FormID = '62' then 'Depósitos - Configuração'
					when t0.FormID = '132' then 'Grupo de Itens'
					when t0.FormID = '133' then 'Nota Fiscal de Saída'
					when t0.FormID = '134' then 'Cadastro de Parceiro de Negócios'
					when t0.FormID = '139' then 'Pedido de Vendas'
					when t0.FormID = '140' then 'Entrega'
					when t0.FormID = '141' then 'Nota Fiscal de Entrada'
					when t0.FormID = '142' then 'Pedido de Compras'
					when t0.FormID = '143' then 'Recepção de Mercadorias'
					when t0.FormID = '149' then 'Cotação de Vendas'
					when t0.FormID = '150' then 'Cadastro de Itens'
					when t0.FormID = '170' then 'Contas a Receber'
					when t0.FormID = '179' then 'Devolução de Nota Fiscal Saída'
					when t0.FormID = '180' then 'Devolução Entrega'
					when t0.FormID = '181' then 'Devolução de Nota Fiscal de Entrada'
					when t0.FormID = '182' then 'Devolução de Mercadorias'
					when t0.FormID = '392' then 'Lançamento Contábil'
					when t0.FormID = '426' then 'Contas a Pagar'
					when t0.FormID = '651' then 'Atividade'
					when t0.FormID = '60091' then 'NF Entrega Futura'
					when t0.FormID = '60092' then 'NF Recebimento Futuro'
					when t0.FormID = '60110' then 'Chamada de Serviço'
					when t0.FormID = '60126' then 'Contrato de Serviço'
					when t0.FormID = '65300' then 'Adiantamento de Clientes'
					when t0.FormID = '65301' then 'Adiantamento para Fornecedor'
					when t0.FormID = '540000988' then 'Cotação de Compras'
					--when (t0.FormID - 11000) > 0	then 
					--								(case when (select top(1) count(t99.TblNum) from OUTB as t99 where t99.TblNum = (t0.FormID - 11000)) = 1
					--										then (select top(1) t99.TableName from OUTB as t99 where t99.TblNum = (t0.FormID - 11000))
					--										else '+++++++++++++++++++'
					--										end) 
														 
					else '??????????????????????'
					end) as 'Documento',
		t0.ColID,
		t0.FormID,
		t0.ItemID,
		t0.Refresh as 'Atualização Autom',
		(select case	when t0.ByField = 'N' then 'lines  : Ao Sair da Coluna'
						when t0.ByField = 'Y' then 'Header : Quando o Campo Muda'
						else '?????' end) as 'Quando ?',			
		t0.FieldID as 'Campo Trigger',
		(select case	when t0.FrceRfrsh = 'Y' then 'Atualizar Regularmente'
						when t0.FrceRfrsh = 'N' then 'Exibir valores gravados'
						else 'Cadastro' end) as 'Como ?',					

		t1.QString		
from CSHS as t0 
inner join OUQR as t1 on t0.QueryId = t1.IntrnalKey
--where		
			--t1.QName like @CF and 
			--isnull(t0.ItemID,' ') + ISNULL(t0.ColID,' ') + ISNULL(t0.FieldID,' ') like @CampoUDF_ou_Coluna
			--and 
			--t0.FrceRfrsh = 'Y'
			
			
)

select * from TAB1 as t0
--where t0.Documento like '%Pedido de Vendas' or t0.Documento like '%Cotação de Vendas'
order by t0.Documento asc, t0.[Nome Query] asc
		
		
		