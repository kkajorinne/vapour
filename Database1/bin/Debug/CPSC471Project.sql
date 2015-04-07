﻿/*
Deployment script for CPSC471Project

This code was generated by a tool.
Changes to this file may cause incorrect behavior and will be lost if
the code is regenerated.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "CPSC471Project"
:setvar DefaultFilePrefix "CPSC471Project"
:setvar DefaultDataPath "C:\Users\Kevin\AppData\Local\Microsoft\VisualStudio\SSDT\CPSC471Project\"
:setvar DefaultLogPath "C:\Users\Kevin\AppData\Local\Microsoft\VisualStudio\SSDT\CPSC471Project\"

GO
:on error exit
GO
/*
Detect SQLCMD mode and disable script execution if SQLCMD mode is not supported.
To re-enable the script after enabling SQLCMD mode, execute the following:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'SQLCMD mode must be enabled to successfully execute this script.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
PRINT N'Rename refactoring operation with key ee4ce9db-76cc-49ac-be23-0f923be227e4 is skipped, element [dbo].[DEV].[Id] (SqlSimpleColumn) will not be renamed to username';


GO
PRINT N'Creating [dbo].[DEV]...';


GO
CREATE TABLE [dbo].[DEV] (
    [username] NVARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([username] ASC)
);


GO
-- Refactoring step to update target server with deployed transaction logs
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'ee4ce9db-76cc-49ac-be23-0f923be227e4')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('ee4ce9db-76cc-49ac-be23-0f923be227e4')

GO

GO
PRINT N'Update complete.';


GO