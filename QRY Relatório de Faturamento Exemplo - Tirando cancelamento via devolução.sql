SELECT T0.itemcode,
			T2.ItemName,
			T0.linetotal,
			T0.GrossBuyPr [CustoUnit],
			T0.GrossBuyPr*T0.quantity [CustoTotal],
			T1.taxsum [Imposto],
			T0.quantity [QtdeItem],
			(((T0.LineTotal)- (T1.taxsum)) - (T0.GrossBuyPr*T0.quantity )) [MargemLucro],
			T0.docdate,
			T0.CFOPCode,
			substring(CONVERT(varchar(10),T0.docdate,103),7,4) + substring(CONVERT(varchar(10),docdate,103),4,2) DocdateDOC
			from inv1 T0
			left join INV4 T1 on T0.DocEntry = T1.DocEntry and T0.LineNum = T1.LineNum and T1.statype = 2
			Inner Join OITM T2 on T0.ItemCode = T2.ItemCode
			LEFT JOIN OUSG T3 on T3.ID = T0.Usage
		WHERE
			(T0.CFOPCode like '6%' or T0.CFOPCode like '5%')
			And Isnull(T3.U_gaFCI,'S') = 'S'
			And ISNULL(T0.ItemCode,'') in (select T10.Father from #tabEST T10)
			And not exists (select 1 from RIN1 ndi inner join ORIN nd on nd.docentry = ndi.docentry
							where ndi.BaseEntry = T1.DocEntry and ndi.BaseType = T0.ObjType and nd.SeqCode = '1')