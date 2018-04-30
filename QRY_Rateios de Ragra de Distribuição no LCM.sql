/*SELECT * FROM OFPR L0*/ DECLARE @dtini NVARCHAR(100) /* WHERE */ SET @dtini = /* L0.F_RefDate */ '20150101'--'[%0]'
/*SELECT * FROM OFPR L1*/ DECLARE @dtFim NVARCHAR(100) /* WHERE */ SET @dtFim = /* L1.F_RefDate */ '20151231'--'[%1]'
select
	--a.TransType,
	a.TransId AS 'ID',
	a.Line_ID + 1 as 'Nº Seq',
	case a.TransType
                when 20 then 'RM ' + Convert(varchar(10),a.BaseRef)
                when 67 then 'TR ' + Convert(varchar(10),a.BaseRef)
                when 30 then 'LCM ' + Convert(varchar(10),a.BaseRef)
                when 60 then 'SAI INSU ' + Convert(varchar(10),a.BaseRef)
                when 202 then 'OP ' + Convert(varchar(10),a.BaseRef)
                when 59 then 'ENT PROD ' + Convert(varchar(10),a.BaseRef)
                when 13 then 'NFS ' + Convert(varchar(10),a.BaseRef)
                when 204 then 'ADF ' + Convert(varchar(10),a.BaseRef)
                when 46 then 'CP ' + Convert(varchar(10),a.BaseRef)
                when 18 then 'NFE ' + Convert(varchar(10),a.BaseRef)
                when 24 then 'CR ' + Convert(varchar(10),a.BaseRef)
                when 203 then 'ADC ' + Convert(varchar(10),a.BaseRef)
                when 14 then 'DVSAI ' + Convert(varchar(10),a.BaseRef)
	end as 'Nº Transacao',
                case a.TransType
                when 20 then 'RM'
                when 67 then 'TR'
                when 30 then 'LCM'
                when 60 then 'SAI INSU'
                when 202 then 'OP'
                when 59 then 'ENT PROD'
                when 13 then 'NFS'
                when 204 then 'ADF'
                when 46 then 'CP'
                when 18 then 'NFE'
                when 24 then 'CR'
                when 203 then 'ADC'
                when 14 then 'DVSAI'
                end as 'Tipo',
	a.RefDate as 'Data Lançamento',
	case a.TransType
                when 20 then f.Serial
                when 67 then a.TransId
                when 30 then a.TransId
                when 60 then a.TransId
                when 202 then a.TransId
                when 59 then a.TransId
                when 13 then g.Serial
                when 204 then i.Serial
                when 46 then a.TransId
                when 18 then h.Serial
                when 24 then a.TransId
                when 203 then j.Serial
                when 14 then l.Serial 
	end as 'NºNF/NºLCM',
	b.FormatCode +' - '+ 
		case a.TransType
                when 20 then f.CardCode
                when 67 then 'TR'
                when 30 then 'LCM'
                when 60 then 'SAI INSU'
                when 202 then 'OP'
                when 59 then 'ENT PROD'
                when 13 then g.CardCode
                when 204 then i.CardCode
                when 46 then 'CP'
                when 18 then h.CardCode
                when 24 then 'CR'
                when 203 then j.CardCode
                when 14 then l.CardCode
		end as 'Cont.Contabil/PN',
	b.AcctName,
	isnull(d.PrcCode,'')  as 'Centro de Custo',
	case when isnull(d.PrcCode,'') <> '' then convert(numeric(10,2),((a.Debit * d.PrcAmount) / 100)) else a.Debit end as 'Debito',
	case when isnull(d.PrcCode,'') <> '' then convert(numeric(10,2),((a.Credit * d.PrcAmount) / 100)) else a.Credit end as 'Credito'
INTO #CentroDeCustoLCM
from 
	JDT1 a
	inner join oact b ON(a.account = b.AcctCode)
	left join OOCR c on(a.ProfitCode = c.OcrCode)
	left join OCR1 d on(c.OcrCode = d.OcrCode)
	inner join OJDT e on(e.TransId = a.TransId)
	left join OPDN f on(f.Docentry = a.BaseRef and f.ObjType = a.TransType)
	left join OINV g on(g.Docentry = a.BaseRef and g.ObjType = a.TransType)
	left join OPCH h on(h.Docentry = a.BaseRef and h.ObjType = a.TransType)
	left join ODPO i on(i.Docentry = a.BaseRef and i.ObjType = a.TransType)
	left join ODPI j on(j.Docentry = a.BaseRef and j.ObjType = a.TransType)
	left join ORIN l on(l.Docentry = a.BaseRef and l.ObjType = a.TransType)
where 
	a.RefDate between @dtini and @dtFim
--where a.TransId not in (Select id from #NotaDeSaida)
--            and a.TransId not in (Select id from #NotaDeEntrada)


select 
	Id,
	[Nº Seq],
	[DebCred] = Case When MAX(Debito) > 0 then 'D' else 'C' end,
	[CCMax] = MAX(T0.[Centro de Custo] ),
	[Diff] = sum(T0.Debito - T0.Credito) - (Select debit - credit from JDT1 where TransId = id and Line_ID = [Nº Seq]-1)
	--,sum(T0.Debito - T0.Credito), (Select debit - credit from JDT1 where TransId = id and Line_ID = [Nº Seq]-1)
Into #Diferencas
from 
	#CentroDeCustoLCM T0
--where 
	--Len(rtrim(ltrim(T0.[Centro de Custo])))>0
	--T0.ID = 20055
Group by
	T0.ID,
	T0.[Nº Seq]
Having sum(T0.Debito - T0.Credito) /*Over (Partition By T0.Id, T0.[Nº Seq]) */<> (Select debit - credit from JDT1 where TransId = id and Line_ID = [Nº Seq] -1)
order by ID, [Nº Seq]

update #CentroDeCustoLCM set Debito = Debito - T0.Diff 
from 
	#Diferencas T0 
where 
	T0.ID = #CentroDeCustoLCM.ID and 
	T0.[Nº Seq] = #CentroDeCustoLCM.[Nº Seq] And
	#CentroDeCustoLCM.[Centro de Custo] = T0.CCMax And
	T0.DebCred = 'D'

update #CentroDeCustoLCM set Credito = Credito + T0.Diff 
from 
	#Diferencas T0 
where 
	T0.ID = #CentroDeCustoLCM.ID and 
	T0.[Nº Seq] = #CentroDeCustoLCM.[Nº Seq] And
	#CentroDeCustoLCM.[Centro de Custo] = T0.CCMax And
	T0.DebCred = 'C'

select * from #CentroDeCustoLCM order by ID, [Nº Seq]
Drop table #CentroDeCustoLCM
Drop Table #Diferencas

/* Analise Para alteração de query
Select * into #Cc2 from #CentroDeCustoLCM
update #Cc2 set Debito = Debito - T0.Diff 
from 
	#Diferencas T0 
where 
	T0.ID = #Cc2.ID and 
	T0.[Nº Seq] = #Cc2.[Nº Seq] And
	#Cc2.[Centro de Custo] = T0.CCMax And
	T0.DebCred = 'D'

update #Cc2 set Credito = Credito + T0.Diff 
from 
	#Diferencas T0 
where 
	T0.ID = #Cc2.ID and 
	T0.[Nº Seq] = #Cc2.[Nº Seq] And
	#Cc2.[Centro de Custo] = T0.CCMax And
	T0.DebCred = 'C'

Select 
	T0.*,
	T1.Debito,
	T1.Credito,
	[Depois do Up] = sum(T0.Debito - T0.Credito) Over (Partition By T0.Id, T0.[Nº Seq]),
	[Antes do Up] = sum(T1.Debito - T1.Credito) Over (Partition By T1.Id, T1.[Nº Seq]),
	[Do b1] = (Select debit - credit from JDT1 where TransId = T0.id and Line_ID = T0.[Nº Seq] -1)
from 
	#Cc2 T0
	inner join #CentroDeCustoLCM T1 On T0.ID = T1.ID and T0.[Nº Seq] = T1.[Nº Seq] and T0.[Centro de Custo] = T1.[Centro de Custo]
	inner join #Diferencas T2 On T2.ID = T0.ID and T2.[Nº Seq] = T0.[Nº Seq] /* Para filtrar*/

	Drop table #cc2
*/