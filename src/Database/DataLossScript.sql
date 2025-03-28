
IF OBJECT_ID('dbo.Role', 'U') IS NOT NULL
BEGIN
    IF COL_LENGTH('dbo.Role', 'DirectoryPath') IS NOT NULL
    BEGIN
        ALTER TABLE [dbo].[Role] DROP COLUMN DirectoryPath;
    END
END

IF OBJECT_ID('dbo.Process', 'U') IS NOT NULL
BEGIN
    DROP TABLE dbo.Process
END
