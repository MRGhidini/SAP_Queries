Declare @DataIni as DateTime = '20100101',
		@DataFim as DateTime = '20121231',

		@Code as varchar(100),
		@DocEntry as Int,
		@ChaveAcesso as Varchar(100),
		@Data as DateTime,
		@Status as Int,
		@XMLNFE as XML,
		@XMLProt as XML,
		
		@XML as XML,
		@NomeArquivo Varchar(255)

Declare xCur 
CURSOR FOR
	Select
		T0.Code,
		T0.U_DocEntry,
		T0.U_ChaveAcesso,
		T0.U_CreateDate,
		T0.U_inStatus,
		T1.U_DocXML,
		[ProtAutorizacao] = Cast(
			Replace(Replace(Replace(
				cast(T1.U_ProtAutXML.query('declare namespace ns="http://www.portalfiscal.inf.br/nfe";
				/ns:retConsReciNFe/ns:protNFe') as varchar(max))
			, '<ns:','<'), '</ns:', '</'), 'xmlns:="http://www.portalfiscal.inf.br/nfe"','')
		as XML)
	From
		[@SKL25NFE] T0
		Inner Join [@SKL25XMLNF] T1 On T0.Code = T1.Code
	Where
		T0.U_CreateDate Between @DataIni And @DataFim And
		T0.U_inStatus = 3 and T0.U_cdErro = 100
	Order By
		Cast(T0.Code as Int)

Open xCur
Fetch Next From xCur Into @Code, @DocEntry, @ChaveAcesso, @Data, @Status, @XMLNFE, @XMLProt
While @@FETCH_STATUS = 0
Begin
	SET @XML = '<nfeProc versao="3.10"></nfeProc>'
	Set @XML.modify('
		insert sql:variable("@XMLNFE")
		into (/nfeProc)[1]')
	
	Set @XML.modify('
		insert sql:variable("@XMLProt")
		into (/nfeProc)[1]')

	Set @XML = Replace(cast(@XML as varchar(max)), '<nfeProc', '<nfeProc xmlns="http://www.portalfiscal.inf.br/nfe"')
	Set @NomeArquivo = 'C:\XMLS\' + DB_NAME() + '-NFe'+ @ChaveAcesso + '.xml'
	--print cast (@XML as varchar(max))
	Exec PROC_OKS_CriarArquivoText @NomeArquivo, @XML
	Fetch Next From xCur Into @Code, @DocEntry, @ChaveAcesso, @Data, @Status, @XMLNFE, @XMLProt
End
Close xCur
DealLocate xCur