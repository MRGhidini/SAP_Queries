-- CRIA_FVT_DOCMKT_UDF_5 --------------------------------------------------------------------
--
-- @DOC = Documento a listar os campos  ---------------------------------------------------------------
--
-------------------------------------------------------------------------------------------------------


if OBJECT_ID ('FVT_DOCMKT_UDF_5') is not null
	drop function FVT_DOCMKT_UDF_5
go
create function FVT_DOCMKT_UDF_5
	(	@BPLIdIni as int, 
		@BPLIdFim as int, 
		@DataIni as datetime, 
		@DataFim as datetime, 
		@DOC as nvarchar(6)
	) returns table as return
	
--------------------------------------- NFS ------------------------------------------------------------	
with COV as
(
select	t0.DocEntry as 'U_DocEntry',
				t1.LineNum as 'U_Linha Doc'
				---------------------------------------								
--			,t0.U_OKS_Vlr_Cot_Frete as 'Vlr_Cot_Frete_Header'
from OQUT as t0    
inner join QUT1 as t1 on t1.DocEntry = t0.DocEntry
where	(t0.DocDate between @DataIni and @DataFim) 
		and ( t0.BPLId is null or t0.BPLId between @BPLIdIni and @BPLIdFim)
		and @DOC = 'COV'
),

PEV as
(
select	t0.DocEntry as 'U_DocEntry',
				t1.LineNum as 'U_Linha Doc'
				---------------------------------------								
--				t0.U_OKS_Vlr_Cot_Frete as 'Vlr_Cot_Frete_Header'
from ORDR as t0    
inner join RDR1 as t1 on t1.DocEntry = t0.DocEntry
where	(t0.DocDate between @DataIni and @DataFim) 
		and ( t0.BPLId is null or t0.BPLId between @BPLIdIni and @BPLIdFim)
		and @DOC = 'PEV'
),

ENT as
(
select	t0.DocEntry as 'U_DocEntry',
				t1.LineNum as 'U_Linha Doc'
				---------------------------------------								
--				t0.U_OKS_Vlr_Cot_Frete as 'Vlr_Cot_Frete_Header'
from ODLN as t0    
inner join DLN1 as t1 on t1.DocEntry = t0.DocEntry
where	(t0.DocDate between @DataIni and @DataFim) 
		and ( t0.BPLId is null or t0.BPLId between @BPLIdIni and @BPLIdFim)
		and @DOC = 'ENT'
),

ENTDEV as
(
select	t0.DocEntry as 'U_DocEntry',
				t1.LineNum as 'U_Linha Doc'
				---------------------------------------								
--				t0.U_OKS_Vlr_Cot_Frete as 'Vlr_Cot_Frete_Header'
from ORDN as t0    
inner join RDN1 as t1 on t1.DocEntry = t0.DocEntry
where	(t0.DocDate between @DataIni and @DataFim) 
		and ( t0.BPLId is null or t0.BPLId between @BPLIdIni and @BPLIdFim)
		and @DOC = 'ENTDEV'
),

NFS as
(
select	t0.DocEntry as 'U_DocEntry',
				t1.LineNum as 'U_Linha Doc'
				---------------------------------------								
--				t0.U_OKS_Vlr_Cot_Frete as 'Vlr_Cot_Frete_Header'
from OINV as t0    
inner join INV1 as t1 on t1.DocEntry = t0.DocEntry
where	(t0.DocDate between @DataIni and @DataFim) 
		and ( t0.BPLId is null or t0.BPLId between @BPLIdIni and @BPLIdFim)
		and @DOC = 'NFS'
),

NFSDEV as
(
select	t0.DocEntry as 'U_DocEntry',
				t1.LineNum as 'U_Linha Doc'
				---------------------------------------								
--				t0.U_OKS_Vlr_Cot_Frete as 'Vlr_Cot_Frete_Header'
from ORIN as t0    
inner join RIN1 as t1 on t1.DocEntry = t0.DocEntry
where	(t0.DocDate between @DataIni and @DataFim) 
		and ( t0.BPLId is null or t0.BPLId between @BPLIdIni and @BPLIdFim)
		and @DOC = 'NFSDEV'
),

----------------------------------------------------------------------------------------------------

COC as
(
select	t0.DocEntry as 'U_DocEntry',
				t1.LineNum as 'U_Linha Doc'
				---------------------------------------								
--				t0.U_OKS_Vlr_Cot_Frete as 'Vlr_Cot_Frete_Header'
from OPQT as t0    
inner join PQT1 as t1 on t1.DocEntry = t0.DocEntry
where	(t0.DocDate between @DataIni and @DataFim) 
		and ( t0.BPLId is null or t0.BPLId between @BPLIdIni and @BPLIdFim)
		and @DOC = 'COC'
),

PEC as
(
select	t0.DocEntry as 'U_DocEntry',
				t1.LineNum as 'U_Linha Doc'
				---------------------------------------								
--				t0.U_OKS_Vlr_Cot_Frete as 'Vlr_Cot_Frete_Header'
from OPOR as t0    
inner join POR1 as t1 on t1.DocEntry = t0.DocEntry
where	(t0.DocDate between @DataIni and @DataFim) 
		and ( t0.BPLId is null or t0.BPLId between @BPLIdIni and @BPLIdFim)
		and @DOC = 'PEC'
),

REC as
(
select	t0.DocEntry as 'U_DocEntry',
				t1.LineNum as 'U_Linha Doc'
				---------------------------------------								
--				t0.U_OKS_Vlr_Cot_Frete as 'Vlr_Cot_Frete_Header'
from OPDN as t0    
inner join PDN1 as t1 on t1.DocEntry = t0.DocEntry
where	(t0.DocDate between @DataIni and @DataFim) 
		and ( t0.BPLId is null or t0.BPLId between @BPLIdIni and @BPLIdFim)
		and @DOC = 'REC'
),

RECDEV as
(
select	t0.DocEntry as 'U_DocEntry',
				t1.LineNum as 'U_Linha Doc'
				---------------------------------------								
--				t0.U_OKS_Vlr_Cot_Frete as 'Vlr_Cot_Frete_Header'
from ORPD as t0    
inner join RPD1 as t1 on t1.DocEntry = t0.DocEntry
where	(t0.DocDate between @DataIni and @DataFim) 
		and ( t0.BPLId is null or t0.BPLId between @BPLIdIni and @BPLIdFim)
		and @DOC = 'RECDEV'
),

NFE as
(
select	t0.DocEntry as 'U_DocEntry',
				t1.LineNum as 'U_Linha Doc'
				---------------------------------------								
--				t0.U_OKS_Vlr_Cot_Frete as 'Vlr_Cot_Frete_Header'
from OPCH as t0    
inner join PCH1 as t1 on t1.DocEntry = t0.DocEntry
where	(t0.DocDate between @DataIni and @DataFim) 
		and ( t0.BPLId is null or t0.BPLId between @BPLIdIni and @BPLIdFim)
		and @DOC = 'NFE'
),

NFEDEV as
(
select	t0.DocEntry as 'U_DocEntry',
				t1.LineNum as 'U_Linha Doc'
				---------------------------------------								
--				t0.U_OKS_Vlr_Cot_Frete as 'Vlr_Cot_Frete_Header'
from ORPC as t0    
inner join RPC1 as t1 on t1.DocEntry = t0.DocEntry
where	(t0.DocDate between @DataIni and @DataFim) 
		and ( t0.BPLId is null or t0.BPLId between @BPLIdIni and @BPLIdFim)
		and @DOC = 'NFEDEV'
)

select * from COV as t0
union all
select * from PEV as t0
union all
select * from ENT as t0
union all
select * from ENTDEV as t0
union all
select * from NFS as t0
union all
select * from NFSDEV as t0
union all
select * from COC as t0
union all
select * from PEC as t0
union all
select * from REC as t0
union all
select * from RECDEV as t0
union all
select * from NFE as t0
union all
select * from NFEDEV as t0
