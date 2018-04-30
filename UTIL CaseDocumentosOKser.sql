Case a.[Tipo DOC]
			When 'NFS' Then '13'
			When 'NFSDEV' Then '14'
			When 'NFSDEVCAN' Then '14'
			When 'NFSCAN' Then '13'
			When 'ENT' Then '15'
			When 'ENTDEV' Then '16'
			When 'ENTDEVCAN' Then '16'
			When 'ENTCAN' Then '15'
			When 'PEV' Then '17'
			When 'NFE' Then '18'
			When 'NFEDEV' Then '19'
			When 'NFEDEVCAN' Then '19'
			When 'NFECAN' Then '18'
			When 'REC' Then '20'
			When 'RECDEV' Then '21'
			When 'RECCAN' Then '20'
			When 'RECDEVCAN' Then '21'
			When 'PEC' Then '22'
			else '' 
		end

'http://$b1$/link?table='+ (Select {Relatório.TipoDocto}
                                case 'NFS':'OINV'
                                case 'NFSDEV':'ORIN'
                                case 'NFSDEVCAN':'ORIN'
                                case 'NFSCAN':'OINV'
                                case 'ENT':'ODLN'
                                case 'ENTDEV':'ORDN'
                                case 'ENTDEVCAN':'ORDN'
                                case 'ENTCAN':'ODLN'
                                case 'PEV':'ORDR'
                                case 'COV':'OQUT'
                                case 'NFE':'OPCH'
                                case 'NFEDEV':'ORPC'
                                case 'NFEDEVCAN':'ORPC'
                                case 'NFECAN':'OPCH'
                                case 'REC':'OPDN'
                                case 'RECDEV':'ORPD'
                                case 'RECCAN':'OPDN'
                                case 'RECDEVCAN':'ORPD'
                                case 'COC':'OPQT')
+'&key='+CStr (totext ({Relatório.DocEntry}, 0, ''))


DE ORPC
DM ORPD
DT ORDN
EM ODLN
NE OPCH
NS OINV
RM OPDN
DN ORIN


 Case U_TipoDocumento When 'DE' Then 19 When 'DM' Then 21 When 'DT' Then 16 When 'EM' Then 15 
						When 'NE' Then 18 When 'NS' Then 13 When 'RM' Then 20 When 'DN' Then 14 End,