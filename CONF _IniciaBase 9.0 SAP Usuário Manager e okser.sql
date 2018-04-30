PRINT 'Excluindo Manager da Base Atual'
Delete From OUSR where USER_CODE = 'Manager'

PRINT 'Excluindo okser% da Base Atual'
Delete From OUSR where USER_CODE like 'okser%'
Delete From USR6 where USERCODE like 'okser%'

PRINT 'Definindo Manager com a senha que está na base SBODEMOBR'
Insert Into OUSR ([USERID] ,[PASSWORD] ,[PASSWORD1] ,[PASSWORD2] ,[INTERNAL_K] ,[USER_CODE] ,[U_NAME] ,[GROUPS] ,[PASSWORD4] ,[ALLOWENCES] ,[SUPERUSER] ,[DISCOUNT] ,[PASSWORD3] ,[Info1File] ,[Info1Field] ,[Info2File] ,[Info2Field] ,[Info3File] ,[Info3Field] ,[Info4File] ,[Info4Field] ,[dType] ,[E_Mail] ,[PortNum] ,[OutOfOffic] ,[SendEMail] ,[SendSMS] ,[DfltsGroup] ,[CashLimit] ,[MaxCashSum] ,[Fax] ,[SendFax] ,[Locked] ,[Department] ,[Branch] ,[UserPrefs] ,[Language] ,[Charset] ,[OpenCdt] ,[CdtPrvDays] ,[DsplyRates] ,[AuImpRates] ,[OpenDps] ,[RcrFlag] ,[CheckFiles] ,[OpenCredit] ,[CreditDay1] ,[CreditDay2] ,[WallPaper]
 ,[WllPprDsp] ,[AdvImagePr] ,[ContactLog] ,[LastWarned] ,[AlertPolFr] ,[ScreenLock] ,[ShowNewMsg] ,[Picture] ,[Position] ,[Address] ,[Country] ,[Tel1] ,[Tel2] ,[GENDER] ,[Birthday] ,[EnbMenuFlt] ,[objType] ,[logInstanc] ,[userSign] ,[createDate] ,[userSign2] ,[updateDate] ,[OneLogPwd] ,[lastLogin] ,[LastPwds] ,[LastPwds2]
 ,[LastPwdSet] ,[FailedLog] ,[PwdNeverEx] ,[SalesDisc] ,[PurchDisc] ,[LstLogoutD] ,[LstLoginT] ,[LstLogoutT] ,[LstPwdChT] ,[LstPwdChB] ,[RclFlag] ,[MobileUser] ,[MobileIMEI] ,[PrsWkCntEb]
 ,[SnapShotId] ,[STData] ,[SupportUsr] ,[NoSTPwdNum] ,[DomainUser] ,[CUSAgree] ,[EmailSig] ,[DigCrtPath] ,[ShowNewTsk] ,[IntgrtEb]
--Informar os campos de usuários necessários
--,[U_OKS_Deposito_OP]) 
)
Select [USERID] ,[PASSWORD] ,[PASSWORD1] ,[PASSWORD2] ,[INTERNAL_K] ,[USER_CODE] ,[U_NAME] ,[GROUPS] ,[PASSWORD4] ,[ALLOWENCES] ,[SUPERUSER] ,[DISCOUNT] ,[PASSWORD3] ,[Info1File] ,[Info1Field] ,[Info2File] ,[Info2Field] ,[Info3File] ,[Info3Field] ,[Info4File] ,[Info4Field] ,[dType] ,[E_Mail] ,[PortNum] ,[OutOfOffic] ,[SendEMail] ,[SendSMS] ,[DfltsGroup] ,[CashLimit] ,[MaxCashSum] ,[Fax] ,[SendFax] ,[Locked] ,[Department] ,[Branch] ,[UserPrefs] ,[Language] ,[Charset] ,[OpenCdt] ,[CdtPrvDays] ,[DsplyRates] ,[AuImpRates] ,[OpenDps] ,[RcrFlag] ,[CheckFiles] ,[OpenCredit] ,[CreditDay1] ,[CreditDay2] ,[WallPaper]
 ,[WllPprDsp] ,[AdvImagePr] ,[ContactLog] ,[LastWarned] ,[AlertPolFr] ,[ScreenLock] ,[ShowNewMsg] ,[Picture] ,[Position] ,[Address] ,[Country] ,[Tel1] ,[Tel2] ,[GENDER] ,[Birthday] ,[EnbMenuFlt] ,[objType] ,[logInstanc] ,[userSign] ,[createDate] ,[userSign2] ,[updateDate] ,[OneLogPwd] ,[lastLogin] ,[LastPwds] ,[LastPwds2]
 ,[LastPwdSet] ,[FailedLog] ,[PwdNeverEx] ,[SalesDisc] ,[PurchDisc] ,[LstLogoutD] ,[LstLoginT] ,[LstLogoutT] ,[LstPwdChT] ,[LstPwdChB] ,[RclFlag] ,[MobileUser] ,[MobileIMEI] ,[PrsWkCntEb]
 ,[SnapShotId] ,[STData] ,[SupportUsr] ,[NoSTPwdNum] ,[DomainUser] ,[CUSAgree] ,[EmailSig] ,[DigCrtPath] ,[ShowNewTsk] ,[IntgrtEb]
--Informar os campos de usuários necessários
--, '' [U_OKS_Deposito_OP] 
From SBODemoBR..OUSR 
Where USER_CODE = 'Manager'

PRINT 'Criando Usuário: okser com a senha que está na base SBODEMOBR'
INSERT INTO [dbo].[OUSR]
           ([USERID],[PASSWORD],[PASSWORD1],[PASSWORD2],[INTERNAL_K],[USER_CODE],[U_NAME],[GROUPS],[PASSWORD4],[ALLOWENCES],[SUPERUSER],[DISCOUNT],[PASSWORD3],[Info1File],[Info1Field],[Info2File],[Info2Field],[Info3File],[Info3Field]
,[Info4File],[Info4Field],[dType],[E_Mail],[PortNum],[OutOfOffic],[SendEMail],[SendSMS],[DfltsGroup],[CashLimit],[MaxCashSum],[Fax],[SendFax],[Locked],[Department],[Branch],[UserPrefs],[Language],[Charset],[OpenCdt],[CdtPrvDays]
,[DsplyRates],[AuImpRates],[OpenDps],[RcrFlag],[CheckFiles],[OpenCredit],[CreditDay1],[CreditDay2],[WallPaper],[WllPprDsp],[AdvImagePr],[ContactLog],[LastWarned],[AlertPolFr],[ScreenLock],[ShowNewMsg],[Picture],[Position]
,[Address],[Country],[Tel1],[Tel2],[GENDER],[Birthday],[EnbMenuFlt],[objType],[logInstanc],[userSign],[createDate],[userSign2],[updateDate],[OneLogPwd],[lastLogin],[LastPwds],[LastPwds2],[LastPwdSet],[FailedLog],[PwdNeverEx]
,[SalesDisc],[PurchDisc],[LstLogoutD],[LstLoginT],[LstLogoutT],[LstPwdChT],[LstPwdChB],[RclFlag],[MobileUser],[MobileIMEI],[PrsWkCntEb],[SnapShotId],[STData],[SupportUsr],[NoSTPwdNum],[DomainUser],[CUSAgree],[EmailSig]
--,[TPLId],[DigCrtPath],[ShowNewTsk],[IntgrtEb],[AllBrnchF])
,[DigCrtPath],[ShowNewTsk],[IntgrtEb])

Select (Select Max([USERID])+1 From OUSR) as [USERID],[PASSWORD],[PASSWORD1],[PASSWORD2], (Select Max([USERID])+1 From OUSR) [INTERNAL_K],[USER_CODE],[U_NAME],[GROUPS],[PASSWORD4],[ALLOWENCES],[SUPERUSER],[DISCOUNT],[PASSWORD3],[Info1File],[Info1Field],[Info2File],[Info2Field],[Info3File],[Info3Field]
,[Info4File],[Info4Field],[dType],[E_Mail],[PortNum],[OutOfOffic],[SendEMail],[SendSMS],[DfltsGroup],[CashLimit],[MaxCashSum],[Fax],[SendFax],[Locked],[Department],[Branch],[UserPrefs],[Language],[Charset],[OpenCdt],[CdtPrvDays]
,[DsplyRates],[AuImpRates],[OpenDps],[RcrFlag],[CheckFiles],[OpenCredit],[CreditDay1],[CreditDay2],[WallPaper],[WllPprDsp],[AdvImagePr],[ContactLog],[LastWarned],[AlertPolFr],[ScreenLock],[ShowNewMsg],[Picture],[Position]
,[Address],[Country],[Tel1],[Tel2],[GENDER],[Birthday],[EnbMenuFlt],[objType],[logInstanc],[userSign],[createDate],[userSign2],[updateDate],[OneLogPwd],[lastLogin],[LastPwds],[LastPwds2],[LastPwdSet],[FailedLog],[PwdNeverEx]
,[SalesDisc],[PurchDisc],[LstLogoutD],[LstLoginT],[LstLogoutT],[LstPwdChT],[LstPwdChB],[RclFlag],[MobileUser],[MobileIMEI],[PrsWkCntEb],[SnapShotId],[STData],[SupportUsr],[NoSTPwdNum],[DomainUser],[CUSAgree],[EmailSig]
--,[TPLId],[DigCrtPath],[ShowNewTsk],[IntgrtEb],[AllBrnchF]
,[DigCrtPath],[ShowNewTsk],[IntgrtEb]
From SBODEMOBR..OUSR
Where USER_CODE = 'Okser' and USER_CODE not in(Select T10.USER_CODE FROM OUSR T10)

PRINT 'Atribuindo Usuário: okser As filiais'
INSERT INTO [dbo].[USR6]
           ([UserCode],[BPLId],[DigCrtPath])
Select 'okser' as [UserCode],a.[BPLId],a.[DigCrtPath] From USR6 as a inner join oadm as b on 1=1 where UserCode = 'manager' and b.MltpBrnchs = 'Y' and 'okser' Not In (Select t9.UserCode From USR6 as t9) and 'okser' = (Select t9.USER_CODE From OUSR as t9 where USER_CODE = 'okser')

PRINT 'Criando Usuário: okser1 com a senha que está na base SBODEMOBR'
INSERT INTO [dbo].[OUSR]
           ([USERID],[PASSWORD],[PASSWORD1],[PASSWORD2],[INTERNAL_K],[USER_CODE],[U_NAME],[GROUPS],[PASSWORD4],[ALLOWENCES],[SUPERUSER],[DISCOUNT],[PASSWORD3],[Info1File],[Info1Field],[Info2File],[Info2Field],[Info3File],[Info3Field]
,[Info4File],[Info4Field],[dType],[E_Mail],[PortNum],[OutOfOffic],[SendEMail],[SendSMS],[DfltsGroup],[CashLimit],[MaxCashSum],[Fax],[SendFax],[Locked],[Department],[Branch],[UserPrefs],[Language],[Charset],[OpenCdt],[CdtPrvDays]
,[DsplyRates],[AuImpRates],[OpenDps],[RcrFlag],[CheckFiles],[OpenCredit],[CreditDay1],[CreditDay2],[WallPaper],[WllPprDsp],[AdvImagePr],[ContactLog],[LastWarned],[AlertPolFr],[ScreenLock],[ShowNewMsg],[Picture],[Position]
,[Address],[Country],[Tel1],[Tel2],[GENDER],[Birthday],[EnbMenuFlt],[objType],[logInstanc],[userSign],[createDate],[userSign2],[updateDate],[OneLogPwd],[lastLogin],[LastPwds],[LastPwds2],[LastPwdSet],[FailedLog],[PwdNeverEx]
,[SalesDisc],[PurchDisc],[LstLogoutD],[LstLoginT],[LstLogoutT],[LstPwdChT],[LstPwdChB],[RclFlag],[MobileUser],[MobileIMEI],[PrsWkCntEb],[SnapShotId],[STData],[SupportUsr],[NoSTPwdNum],[DomainUser],[CUSAgree],[EmailSig]
--,[TPLId],[DigCrtPath],[ShowNewTsk],[IntgrtEb],[AllBrnchF])
,[DigCrtPath],[ShowNewTsk],[IntgrtEb])

Select (Select Max([USERID])+1 From OUSR) as [USERID],[PASSWORD],[PASSWORD1],[PASSWORD2], (Select Max([USERID])+1 From OUSR) [INTERNAL_K],[USER_CODE],[U_NAME],[GROUPS],[PASSWORD4],[ALLOWENCES],[SUPERUSER],[DISCOUNT],[PASSWORD3],[Info1File],[Info1Field],[Info2File],[Info2Field],[Info3File],[Info3Field]
,[Info4File],[Info4Field],[dType],[E_Mail],[PortNum],[OutOfOffic],[SendEMail],[SendSMS],[DfltsGroup],[CashLimit],[MaxCashSum],[Fax],[SendFax],[Locked],[Department],[Branch],[UserPrefs],[Language],[Charset],[OpenCdt],[CdtPrvDays]
,[DsplyRates],[AuImpRates],[OpenDps],[RcrFlag],[CheckFiles],[OpenCredit],[CreditDay1],[CreditDay2],[WallPaper],[WllPprDsp],[AdvImagePr],[ContactLog],[LastWarned],[AlertPolFr],[ScreenLock],[ShowNewMsg],[Picture],[Position]
,[Address],[Country],[Tel1],[Tel2],[GENDER],[Birthday],[EnbMenuFlt],[objType],[logInstanc],[userSign],[createDate],[userSign2],[updateDate],[OneLogPwd],[lastLogin],[LastPwds],[LastPwds2],[LastPwdSet],[FailedLog],[PwdNeverEx]
,[SalesDisc],[PurchDisc],[LstLogoutD],[LstLoginT],[LstLogoutT],[LstPwdChT],[LstPwdChB],[RclFlag],[MobileUser],[MobileIMEI],[PrsWkCntEb],[SnapShotId],[STData],[SupportUsr],[NoSTPwdNum],[DomainUser],[CUSAgree],[EmailSig]
--,[TPLId],[DigCrtPath],[ShowNewTsk],[IntgrtEb],[AllBrnchF]
,[DigCrtPath],[ShowNewTsk],[IntgrtEb]
From SBODEMOBR..OUSR
Where USER_CODE = 'okser1' and USER_CODE not in(Select T10.USER_CODE FROM OUSR T10)


PRINT 'Atribuindo Usuário: okser1 As filiais'
INSERT INTO [dbo].[USR6]
           ([UserCode],[BPLId],[DigCrtPath])
Select 'okser1' as [UserCode],a.[BPLId],a.[DigCrtPath] From USR6 as a inner join oadm as b on 1=1 where UserCode = 'manager' and b.MltpBrnchs = 'Y' and 'okser1' Not In (Select t9.UserCode From USR6 as t9) and 'okser1' = (Select t9.USER_CODE From OUSR as t9 where USER_CODE = 'okser1')

PRINT 'Criando Usuário: okser2 com a senha que está na base SBODEMOBR'
INSERT INTO [dbo].[OUSR]
           ([USERID],[PASSWORD],[PASSWORD1],[PASSWORD2],[INTERNAL_K],[USER_CODE],[U_NAME],[GROUPS],[PASSWORD4],[ALLOWENCES],[SUPERUSER],[DISCOUNT],[PASSWORD3],[Info1File],[Info1Field],[Info2File],[Info2Field],[Info3File],[Info3Field]
,[Info4File],[Info4Field],[dType],[E_Mail],[PortNum],[OutOfOffic],[SendEMail],[SendSMS],[DfltsGroup],[CashLimit],[MaxCashSum],[Fax],[SendFax],[Locked],[Department],[Branch],[UserPrefs],[Language],[Charset],[OpenCdt],[CdtPrvDays]
,[DsplyRates],[AuImpRates],[OpenDps],[RcrFlag],[CheckFiles],[OpenCredit],[CreditDay1],[CreditDay2],[WallPaper],[WllPprDsp],[AdvImagePr],[ContactLog],[LastWarned],[AlertPolFr],[ScreenLock],[ShowNewMsg],[Picture],[Position]
,[Address],[Country],[Tel1],[Tel2],[GENDER],[Birthday],[EnbMenuFlt],[objType],[logInstanc],[userSign],[createDate],[userSign2],[updateDate],[OneLogPwd],[lastLogin],[LastPwds],[LastPwds2],[LastPwdSet],[FailedLog],[PwdNeverEx]
,[SalesDisc],[PurchDisc],[LstLogoutD],[LstLoginT],[LstLogoutT],[LstPwdChT],[LstPwdChB],[RclFlag],[MobileUser],[MobileIMEI],[PrsWkCntEb],[SnapShotId],[STData],[SupportUsr],[NoSTPwdNum],[DomainUser],[CUSAgree],[EmailSig]
--,[TPLId],[DigCrtPath],[ShowNewTsk],[IntgrtEb],[AllBrnchF])
,[DigCrtPath],[ShowNewTsk],[IntgrtEb])

Select (Select Max([USERID])+1 From OUSR) as [USERID],[PASSWORD],[PASSWORD1],[PASSWORD2], (Select Max([USERID])+1 From OUSR) [INTERNAL_K],[USER_CODE],[U_NAME],[GROUPS],[PASSWORD4],[ALLOWENCES],[SUPERUSER],[DISCOUNT],[PASSWORD3],[Info1File],[Info1Field],[Info2File],[Info2Field],[Info3File],[Info3Field]
,[Info4File],[Info4Field],[dType],[E_Mail],[PortNum],[OutOfOffic],[SendEMail],[SendSMS],[DfltsGroup],[CashLimit],[MaxCashSum],[Fax],[SendFax],[Locked],[Department],[Branch],[UserPrefs],[Language],[Charset],[OpenCdt],[CdtPrvDays]
,[DsplyRates],[AuImpRates],[OpenDps],[RcrFlag],[CheckFiles],[OpenCredit],[CreditDay1],[CreditDay2],[WallPaper],[WllPprDsp],[AdvImagePr],[ContactLog],[LastWarned],[AlertPolFr],[ScreenLock],[ShowNewMsg],[Picture],[Position]
,[Address],[Country],[Tel1],[Tel2],[GENDER],[Birthday],[EnbMenuFlt],[objType],[logInstanc],[userSign],[createDate],[userSign2],[updateDate],[OneLogPwd],[lastLogin],[LastPwds],[LastPwds2],[LastPwdSet],[FailedLog],[PwdNeverEx]
,[SalesDisc],[PurchDisc],[LstLogoutD],[LstLoginT],[LstLogoutT],[LstPwdChT],[LstPwdChB],[RclFlag],[MobileUser],[MobileIMEI],[PrsWkCntEb],[SnapShotId],[STData],[SupportUsr],[NoSTPwdNum],[DomainUser],[CUSAgree],[EmailSig]
--,[TPLId],[DigCrtPath],[ShowNewTsk],[IntgrtEb],[AllBrnchF]
,[DigCrtPath],[ShowNewTsk],[IntgrtEb]
From SBODEMOBR..OUSR
Where USER_CODE = 'okser2' and USER_CODE not in(Select T10.USER_CODE FROM OUSR T10)

PRINT 'Atribuindo Usuário: okser2 As filiais'
INSERT INTO [dbo].[USR6]
           ([UserCode],[BPLId],[DigCrtPath])
Select 'okser2' as [UserCode],a.[BPLId],a.[DigCrtPath] From USR6 as a inner join oadm as b on 1=1 where UserCode = 'manager' and b.MltpBrnchs = 'Y' and 'okser2' Not In (Select t9.UserCode From USR6 as t9) and 'okser2' = (Select t9.USER_CODE From OUSR as t9 where USER_CODE = 'okser2')

PRINT 'Criando Usuário: okser3 com a senha que está na base SBODEMOBR'
INSERT INTO [dbo].[OUSR]
           ([USERID],[PASSWORD],[PASSWORD1],[PASSWORD2],[INTERNAL_K],[USER_CODE],[U_NAME],[GROUPS],[PASSWORD4],[ALLOWENCES],[SUPERUSER],[DISCOUNT],[PASSWORD3],[Info1File],[Info1Field],[Info2File],[Info2Field],[Info3File],[Info3Field]
,[Info4File],[Info4Field],[dType],[E_Mail],[PortNum],[OutOfOffic],[SendEMail],[SendSMS],[DfltsGroup],[CashLimit],[MaxCashSum],[Fax],[SendFax],[Locked],[Department],[Branch],[UserPrefs],[Language],[Charset],[OpenCdt],[CdtPrvDays]
,[DsplyRates],[AuImpRates],[OpenDps],[RcrFlag],[CheckFiles],[OpenCredit],[CreditDay1],[CreditDay2],[WallPaper],[WllPprDsp],[AdvImagePr],[ContactLog],[LastWarned],[AlertPolFr],[ScreenLock],[ShowNewMsg],[Picture],[Position]
,[Address],[Country],[Tel1],[Tel2],[GENDER],[Birthday],[EnbMenuFlt],[objType],[logInstanc],[userSign],[createDate],[userSign2],[updateDate],[OneLogPwd],[lastLogin],[LastPwds],[LastPwds2],[LastPwdSet],[FailedLog],[PwdNeverEx]
,[SalesDisc],[PurchDisc],[LstLogoutD],[LstLoginT],[LstLogoutT],[LstPwdChT],[LstPwdChB],[RclFlag],[MobileUser],[MobileIMEI],[PrsWkCntEb],[SnapShotId],[STData],[SupportUsr],[NoSTPwdNum],[DomainUser],[CUSAgree],[EmailSig]
--,[TPLId],[DigCrtPath],[ShowNewTsk],[IntgrtEb],[AllBrnchF])
,[DigCrtPath],[ShowNewTsk],[IntgrtEb])

Select (Select Max([USERID])+1 From OUSR) as [USERID],[PASSWORD],[PASSWORD1],[PASSWORD2], (Select Max([USERID])+1 From OUSR) [INTERNAL_K],[USER_CODE],[U_NAME],[GROUPS],[PASSWORD4],[ALLOWENCES],[SUPERUSER],[DISCOUNT],[PASSWORD3],[Info1File],[Info1Field],[Info2File],[Info2Field],[Info3File],[Info3Field]
,[Info4File],[Info4Field],[dType],[E_Mail],[PortNum],[OutOfOffic],[SendEMail],[SendSMS],[DfltsGroup],[CashLimit],[MaxCashSum],[Fax],[SendFax],[Locked],[Department],[Branch],[UserPrefs],[Language],[Charset],[OpenCdt],[CdtPrvDays]
,[DsplyRates],[AuImpRates],[OpenDps],[RcrFlag],[CheckFiles],[OpenCredit],[CreditDay1],[CreditDay2],[WallPaper],[WllPprDsp],[AdvImagePr],[ContactLog],[LastWarned],[AlertPolFr],[ScreenLock],[ShowNewMsg],[Picture],[Position]
,[Address],[Country],[Tel1],[Tel2],[GENDER],[Birthday],[EnbMenuFlt],[objType],[logInstanc],[userSign],[createDate],[userSign2],[updateDate],[OneLogPwd],[lastLogin],[LastPwds],[LastPwds2],[LastPwdSet],[FailedLog],[PwdNeverEx]
,[SalesDisc],[PurchDisc],[LstLogoutD],[LstLoginT],[LstLogoutT],[LstPwdChT],[LstPwdChB],[RclFlag],[MobileUser],[MobileIMEI],[PrsWkCntEb],[SnapShotId],[STData],[SupportUsr],[NoSTPwdNum],[DomainUser],[CUSAgree],[EmailSig]
--,[TPLId],[DigCrtPath],[ShowNewTsk],[IntgrtEb],[AllBrnchF]
,[DigCrtPath],[ShowNewTsk],[IntgrtEb]
From SBODEMOBR..OUSR
Where USER_CODE = 'okser3' and USER_CODE not in(Select T10.USER_CODE FROM OUSR T10)

PRINT 'Atribuindo Usuário: okser3 As filiais'
INSERT INTO [dbo].[USR6]
           ([UserCode],[BPLId],[DigCrtPath])
Select 'okser3' as [UserCode],a.[BPLId],a.[DigCrtPath] From USR6 as a inner join oadm as b on 1=1 where UserCode = 'manager' and b.MltpBrnchs = 'Y' and 'okser3' Not In (Select t9.UserCode From USR6 as t9) and 'okser3' = (Select t9.USER_CODE From OUSR as t9 where USER_CODE = 'okser3')

PRINT 'Criando Usuário: okser4 com a senha que está na base SBODEMOBR'
INSERT INTO [dbo].[OUSR]
           ([USERID],[PASSWORD],[PASSWORD1],[PASSWORD2],[INTERNAL_K],[USER_CODE],[U_NAME],[GROUPS],[PASSWORD4],[ALLOWENCES],[SUPERUSER],[DISCOUNT],[PASSWORD3],[Info1File],[Info1Field],[Info2File],[Info2Field],[Info3File],[Info3Field]
,[Info4File],[Info4Field],[dType],[E_Mail],[PortNum],[OutOfOffic],[SendEMail],[SendSMS],[DfltsGroup],[CashLimit],[MaxCashSum],[Fax],[SendFax],[Locked],[Department],[Branch],[UserPrefs],[Language],[Charset],[OpenCdt],[CdtPrvDays]
,[DsplyRates],[AuImpRates],[OpenDps],[RcrFlag],[CheckFiles],[OpenCredit],[CreditDay1],[CreditDay2],[WallPaper],[WllPprDsp],[AdvImagePr],[ContactLog],[LastWarned],[AlertPolFr],[ScreenLock],[ShowNewMsg],[Picture],[Position]
,[Address],[Country],[Tel1],[Tel2],[GENDER],[Birthday],[EnbMenuFlt],[objType],[logInstanc],[userSign],[createDate],[userSign2],[updateDate],[OneLogPwd],[lastLogin],[LastPwds],[LastPwds2],[LastPwdSet],[FailedLog],[PwdNeverEx]
,[SalesDisc],[PurchDisc],[LstLogoutD],[LstLoginT],[LstLogoutT],[LstPwdChT],[LstPwdChB],[RclFlag],[MobileUser],[MobileIMEI],[PrsWkCntEb],[SnapShotId],[STData],[SupportUsr],[NoSTPwdNum],[DomainUser],[CUSAgree],[EmailSig]
--,[TPLId],[DigCrtPath],[ShowNewTsk],[IntgrtEb],[AllBrnchF])
,[DigCrtPath],[ShowNewTsk],[IntgrtEb])

Select (Select Max([USERID])+1 From OUSR) as [USERID],[PASSWORD],[PASSWORD1],[PASSWORD2], (Select Max([USERID])+1 From OUSR) [INTERNAL_K],[USER_CODE],[U_NAME],[GROUPS],[PASSWORD4],[ALLOWENCES],[SUPERUSER],[DISCOUNT],[PASSWORD3],[Info1File],[Info1Field],[Info2File],[Info2Field],[Info3File],[Info3Field]
,[Info4File],[Info4Field],[dType],[E_Mail],[PortNum],[OutOfOffic],[SendEMail],[SendSMS],[DfltsGroup],[CashLimit],[MaxCashSum],[Fax],[SendFax],[Locked],[Department],[Branch],[UserPrefs],[Language],[Charset],[OpenCdt],[CdtPrvDays]
,[DsplyRates],[AuImpRates],[OpenDps],[RcrFlag],[CheckFiles],[OpenCredit],[CreditDay1],[CreditDay2],[WallPaper],[WllPprDsp],[AdvImagePr],[ContactLog],[LastWarned],[AlertPolFr],[ScreenLock],[ShowNewMsg],[Picture],[Position]
,[Address],[Country],[Tel1],[Tel2],[GENDER],[Birthday],[EnbMenuFlt],[objType],[logInstanc],[userSign],[createDate],[userSign2],[updateDate],[OneLogPwd],[lastLogin],[LastPwds],[LastPwds2],[LastPwdSet],[FailedLog],[PwdNeverEx]
,[SalesDisc],[PurchDisc],[LstLogoutD],[LstLoginT],[LstLogoutT],[LstPwdChT],[LstPwdChB],[RclFlag],[MobileUser],[MobileIMEI],[PrsWkCntEb],[SnapShotId],[STData],[SupportUsr],[NoSTPwdNum],[DomainUser],[CUSAgree],[EmailSig]
--,[TPLId],[DigCrtPath],[ShowNewTsk],[IntgrtEb],[AllBrnchF]
,[DigCrtPath],[ShowNewTsk],[IntgrtEb]
From SBODEMOBR..OUSR
Where USER_CODE = 'okser4' and USER_CODE not in(Select T10.USER_CODE FROM OUSR T10)

PRINT 'Atribuindo Usuário: okser4 As filiais'
INSERT INTO [dbo].[USR6]
           ([UserCode],[BPLId],[DigCrtPath])
Select 'okser4' as [UserCode],a.[BPLId],a.[DigCrtPath] From USR6 as a inner join oadm as b on 1=1 where UserCode = 'manager' and b.MltpBrnchs = 'Y' and 'okser4' Not In (Select t9.UserCode From USR6 as t9) and 'okser4' = (Select t9.USER_CODE From OUSR as t9 where USER_CODE = 'okser4')

PRINT 'Criando Usuário: okser5 com a senha que está na base SBODEMOBR'
INSERT INTO [dbo].[OUSR]
           ([USERID],[PASSWORD],[PASSWORD1],[PASSWORD2],[INTERNAL_K],[USER_CODE],[U_NAME],[GROUPS],[PASSWORD4],[ALLOWENCES],[SUPERUSER],[DISCOUNT],[PASSWORD3],[Info1File],[Info1Field],[Info2File],[Info2Field],[Info3File],[Info3Field]
,[Info4File],[Info4Field],[dType],[E_Mail],[PortNum],[OutOfOffic],[SendEMail],[SendSMS],[DfltsGroup],[CashLimit],[MaxCashSum],[Fax],[SendFax],[Locked],[Department],[Branch],[UserPrefs],[Language],[Charset],[OpenCdt],[CdtPrvDays]
,[DsplyRates],[AuImpRates],[OpenDps],[RcrFlag],[CheckFiles],[OpenCredit],[CreditDay1],[CreditDay2],[WallPaper],[WllPprDsp],[AdvImagePr],[ContactLog],[LastWarned],[AlertPolFr],[ScreenLock],[ShowNewMsg],[Picture],[Position]
,[Address],[Country],[Tel1],[Tel2],[GENDER],[Birthday],[EnbMenuFlt],[objType],[logInstanc],[userSign],[createDate],[userSign2],[updateDate],[OneLogPwd],[lastLogin],[LastPwds],[LastPwds2],[LastPwdSet],[FailedLog],[PwdNeverEx]
,[SalesDisc],[PurchDisc],[LstLogoutD],[LstLoginT],[LstLogoutT],[LstPwdChT],[LstPwdChB],[RclFlag],[MobileUser],[MobileIMEI],[PrsWkCntEb],[SnapShotId],[STData],[SupportUsr],[NoSTPwdNum],[DomainUser],[CUSAgree],[EmailSig]
--,[TPLId],[DigCrtPath],[ShowNewTsk],[IntgrtEb],[AllBrnchF])
,[DigCrtPath],[ShowNewTsk],[IntgrtEb])

Select (Select Max([USERID])+1 From OUSR) as [USERID],[PASSWORD],[PASSWORD1],[PASSWORD2], (Select Max([USERID])+1 From OUSR) [INTERNAL_K],[USER_CODE],[U_NAME],[GROUPS],[PASSWORD4],[ALLOWENCES],[SUPERUSER],[DISCOUNT],[PASSWORD3],[Info1File],[Info1Field],[Info2File],[Info2Field],[Info3File],[Info3Field]
,[Info4File],[Info4Field],[dType],[E_Mail],[PortNum],[OutOfOffic],[SendEMail],[SendSMS],[DfltsGroup],[CashLimit],[MaxCashSum],[Fax],[SendFax],[Locked],[Department],[Branch],[UserPrefs],[Language],[Charset],[OpenCdt],[CdtPrvDays]
,[DsplyRates],[AuImpRates],[OpenDps],[RcrFlag],[CheckFiles],[OpenCredit],[CreditDay1],[CreditDay2],[WallPaper],[WllPprDsp],[AdvImagePr],[ContactLog],[LastWarned],[AlertPolFr],[ScreenLock],[ShowNewMsg],[Picture],[Position]
,[Address],[Country],[Tel1],[Tel2],[GENDER],[Birthday],[EnbMenuFlt],[objType],[logInstanc],[userSign],[createDate],[userSign2],[updateDate],[OneLogPwd],[lastLogin],[LastPwds],[LastPwds2],[LastPwdSet],[FailedLog],[PwdNeverEx]
,[SalesDisc],[PurchDisc],[LstLogoutD],[LstLoginT],[LstLogoutT],[LstPwdChT],[LstPwdChB],[RclFlag],[MobileUser],[MobileIMEI],[PrsWkCntEb],[SnapShotId],[STData],[SupportUsr],[NoSTPwdNum],[DomainUser],[CUSAgree],[EmailSig]
--,[TPLId],[DigCrtPath],[ShowNewTsk],[IntgrtEb],[AllBrnchF]
,[DigCrtPath],[ShowNewTsk],[IntgrtEb]
From SBODEMOBR..OUSR
Where USER_CODE = 'okser5' and USER_CODE not in(Select T10.USER_CODE FROM OUSR T10)

PRINT 'Atribuindo Usuário: okser5 As filiais'
INSERT INTO [dbo].[USR6]
           ([UserCode],[BPLId],[DigCrtPath])
Select 'okser5' as [UserCode],a.[BPLId],a.[DigCrtPath] From USR6 as a inner join oadm as b on 1=1 where UserCode = 'manager' and b.MltpBrnchs = 'Y' and 'okser5' Not In (Select t9.UserCode From USR6 as t9) and 'okser5' = (Select t9.USER_CODE From OUSR as t9 where USER_CODE = 'okser5')
