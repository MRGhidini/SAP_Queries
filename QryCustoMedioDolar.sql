Declare @Item nvarchar(50) = '004570'
Declare @Moeda nvarchar(50) = 'USD'
Declare @Deposito nvarchar(50) = '1308'

declare @TBFinal as table(
			ItemCode varchar(50), 
			WhsCode varchar(50), 
			transSeq bigint, 
			Ordem int,
			[Tipo] varchar(10),
			[Custo Medio] decimal(18,4), 
			[Qtd Trans] decimal(18,4),
			[Qtd Acumulada] decimal(18,4),
			[Valor Trans] decimal(18,4),
			[Valor Acumulado] decimal(18,4),
			[Custo Medio Moeda] decimal(18,4),
			[Valor Trans Moeda] decimal(18,4),
			[Valor Acumulado Moeda] decimal(18,4))

declare @ordem int = 1, @ordemMax as int
-- Separa Movimentação para apuração do Custo
Select 
	movestoque.ItemCode,
	movestoque.LocCode as 'WhsCode',
	movestoque.TransSeq,
	movestoque.DocDate,
	movestoque.CreateDate,
	Case 
		When movestoque.InQty <> 0 Then 'Entrada' 
		When (movestoque.InQty = 0 and movestoque.OutQty = 0) Then 'Entrada' 
		Else 'Saida'
	END as 'Tipo',
	movestoque.InQty-movestoque.OutQty 'QuantidadeTransacao',
	movestoque.SumStock as 'PriceBRL',
	movestoque.SumStock as 'ValorTransacao',
	(Select Sum(x.InQty) - Sum(x.OutQty) From OIVL as x where x.ItemCode = movestoque.ItemCode and x.TransSeq <= movestoque.TransSeq and x.LocCode = movestoque.LocCode) as 'SaldoAcumulado',
	(Select Sum(x.SumStock) From OIVL as x where x.ItemCode = movestoque.ItemCode and x.TransSeq <= movestoque.TransSeq and x.LocCode = movestoque.LocCode) as 'ValorAcumulado',	
	(convert (int,ROW_NUMBER () over(partition by movestoque.ItemCode, movestoque.LocCode order by movestoque.TransSeq))) as 'Ordem',
	movestoque.Rate,
	(Select isnull(y.Rate,0.00) From ORTT as y Where y.Currency = @Moeda and y.RateDate = movestoque.CreateDate) as 'RateInf',
	Case 
		When movestoque.Rate = 0 Then movestoque.SumStock / (Select isnull(y.Rate,0.00) From ORTT as y Where y.Currency = @Moeda and y.RateDate = movestoque.CreateDate) 
			Else movestoque.SumStock / movestoque.Rate
	End as 'ValorTransacaoMoeda'

Into #movestoque
From OIVL as movestoque
Where 
	movestoque.ItemCode = @Item and 
	isnull(movestoque.InvntAct,'') <> ''
	and movestoque.LocCode = @Deposito


Select @ordemMax = max(Ordem) from #movestoque
/*While no lugar do cursor pra tratar em blocos de Ordem*/
While @ordem <= @ordemMax
Begin
	Insert Into @TBFinal
	Select
		T0.ItemCode,
		T0.WhsCode, 
		T0.TransSeq, 
		T0.Ordem,
		T0.Tipo,
		[Custo Medio] = Case T0.Tipo 
								When 'Entrada' Then (T0.ValorTransacao + IsNull((Select TOP 1 T10.[Valor Acumulado] From @TBFinal T10 where T10.ItemCode = T0.ItemCode and T10.WhsCode = T0.WhsCode order by T10.Ordem desc),0)) / T0.SaldoAcumulado
								When 'Saida' Then isnull((Select TOP 1 T10.[Custo Medio] From @TBFinal T10 where T10.ItemCode = T0.ItemCode and T10.WhsCode = T0.WhsCode order by T10.Ordem desc),0)
						end,
		[Qtd Trans]= T0.QuantidadeTransacao,
		[Qtd Acumulada]= T0.SaldoAcumulado,
		[Valor Trans] = T0.ValorTransacao,
		[Valor Acumulado] = T0.ValorAcumulado,
		[Custo Medio Moeda] = Case
								--When SaldoAcumulado = 0 then 0
								When T0.Tipo = 'Entrada' Then (T0.ValorTransacaoMoeda + IsNull((Select TOP 1 T10.[Valor Acumulado Moeda] From @TBFinal T10 where T10.ItemCode = T0.ItemCode and T10.WhsCode = T0.WhsCode order by T10.Ordem desc),0)) / T0.SaldoAcumulado
								When T0.Tipo = 'Saida' Then isnull((Select TOP 1 T10.[Custo Medio Moeda] From @TBFinal T10 where T10.ItemCode = T0.ItemCode and T10.WhsCode = T0.WhsCode order by T10.Ordem desc),0)
							end,
		[Valor Trans Moeda] = Case T0.Tipo 
								When 'Entrada' Then T0.ValorTransacaoMoeda
								When 'Saida' Then isnull((Select TOP 1 T10.[Custo Medio Moeda] From @TBFinal T10 where T10.ItemCode = T0.ItemCode and T10.WhsCode = T0.WhsCode order by T10.Ordem desc),0) * T0.QuantidadeTransacao
							end,
		[Valor Acumulado Moeda] = IsNull((Select TOP 1 T10.[Valor Acumulado Moeda] From @TBFinal T10 where T10.ItemCode = T0.ItemCode and T10.WhsCode = T0.WhsCode order by T10.Ordem desc),0)
							+ Case T0.Tipo 
								When 'Entrada' Then T0.ValorTransacaoMoeda
								When 'Saida' Then isnull((Select TOP 1 T10.[Custo Medio Moeda] From @TBFinal T10 where T10.ItemCode = T0.ItemCode and T10.WhsCode = T0.WhsCode order by T10.Ordem desc),0) * T0.QuantidadeTransacao
							end
	From
		#movestoque T0
	Where
		T0.Ordem = @ordem


	set @ordem = @ordem + 1
End
Select * From @TBFinal
Drop table #movestoque