declare @TableID nvarchar(20);
declare @AliasId nvarchar(18);
declare @EditSize smallint;
declare @SizeID smallint;
declare @RealSize int;
declare @statement nvarchar(max);
declare @params nvarchar(max);
declare alfa_udfs cursor for

select TableID, AliasID, EditSize, SizeID from cufd where TypeID = 'A';

open alfa_udfs;

FETCH NEXT FROM alfa_udfs

INTO @TableID, @AliasId, @EditSize, @SizeID;

WHILE @@FETCH_STATUS = 0

BEGIN

IF  EXISTS (SELECT * FROM sys.tables WHERE name = @TableId)

BEGIN

set @RealSize = 0

set @params = '@RealSizeOut int output';

set @statement = 'select @RealSizeOut = max(len(U_' + @AliasID + ')) from [' + @TableId + '] where U_' + @AliasID +' is not null';

EXECUTE sp_executesql @statement, @params, @RealSizeOut = @RealSize OUTPUT;

if @RealSize is not null

BEGIN

if @EditSize < @RealSize

BEGIN

        select @TableID As TableName, 'U_' + @AliasId As UDFName, @RealSize As RealSize, @EditSize As DefinedSize, @SizeID as DefinedSize2
END
                                    
else if @SizeID < @RealSize
                                    
BEGIN

        select @TableID As TableName, 'U_' + @AliasId As UDFName, @RealSize As RealSize, @EditSize As DefinedSize, @SizeID as DefinedSize2

END


                              END

                        END

                        FETCH NEXT FROM alfa_udfs

                        INTO @TableID, @AliasId, @EditSize, @SizeID;

                  END

                  CLOSE alfa_udfs;

                  DEALLOCATE alfa_udfs;