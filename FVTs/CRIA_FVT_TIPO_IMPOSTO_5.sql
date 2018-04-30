-- CRIA_FVT_TIPO_IMPOSTO_5 --------------------------------------------------------------------
--
-- Relacionar o índice da tabela ONFT com o tipo de imposto -----------------------------------
--
------------------------------------------------------------------------------------------------


if OBJECT_ID ('FVT_TIPO_IMPOSTO_5') is not null
	drop function FVT_TIPO_IMPOSTO_5
go
create function FVT_TIPO_IMPOSTO_5
	() returns table as return
	
--------------------------------------- -------------------------------------------------------	
with 
TIPOS as
( 
select		t0.AbsId,
			t0.Code,
			(case when t0.Code like '%COFINS%' then 'COFINS'
			 when t0.Code like '%PIS%' then 'PIS'
			 when t0.Code like '%ISS%' then 'ISS'
			 when t0.Code like '%ICMS-ST%' then 'ICMS-ST'
			 when t0.Code like '%ICMS%' then 'ICMS'
			 when t0.Code like '%IPI%' then 'IPI'
			 when t0.Code like '%II%' then 'II'
			 when t0.Code like '%CSLL%' then 'CSLL'
			 when t0.Code like '%IRPJ%' then 'IRPJ'
			 else 'OUTROS' end) as 'Imposto'
from onft as t0
)

select * from TIPOS as t0


