SELECT 
	[Processo] = T0.spid,
	[Computador] = T0.hostname,
	[Usuario] = T0.loginame,
	[Status] = T0.status ,
	[BloqueadoPor] = T0.blocked ,
	[TipoComando] = T0.cmd ,
	[Aplicativo] = T0.program_name 
FROM 
	master..sysprocesses T0
WHERE 
	status in ('runnable', 'suspended') 
	and spid <> @@SPID
ORDER BY 
	blocked desc, 
	status, 
	spid

