EXEC sp_configure 'show advanced options', 1

GO

-- To update the currently configured value for advanced options.

RECONFIGURE WITH OVERRIDE

GO

-- To enable the feature.

EXEC sp_configure 'xp_cmdshell', 1

GO

-- To update the currently configured value for this feature.

RECONFIGURE WITH OVERRIDE

GO