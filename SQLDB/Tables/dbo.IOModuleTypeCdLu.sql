-- Standard SET options
SET ANSI_PADDING,ANSI_WARNINGS,CONCAT_NULL_YIELDS_NULL,ARITHABORT,QUOTED_IDENTIFIER,ANSI_NULLS ON
GO
SET NUMERIC_ROUNDABORT OFF
GO

SET NOCOUNT ON
GO

/**************************************************************** 
Name of object: dbo.IOModuleTypeCdLu
DateCreated:    2021-09-20
CreatedBy:      Artem Gorin
Description:    Table Script

Modifications:
Date        User      Description
2021-09-20  agorin    Initial version.
****************************************************************/ 

-- Table create
CREATE TABLE dbo.IOModuleTypeCdLu
(
    IOModuleTypeCd   INT IDENTITY(1,1) NOT NULL,
    IOModuleTypeName VARCHAR(10) NOT NULL,
	IOModuleME       REAL NOT NULL,
    --Description      VARCHAR(100) NOT NULL,

    CONSTRAINT PK_IOModuleTypeCdLu
        PRIMARY KEY CLUSTERED (IOModuleTypeCd)
)

-- Table descriptions
EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'I/O module type table.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'IOModuleTypeCdLu'

-- Сolumn descriptions
EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Unique I/O module type identifier.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'IOModuleTypeCdLu',
    @level2type = 'COLUMN',
    @level2name = 'IOModuleTypeCd'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'I/O module type name.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'IOModuleTypeCdLu',
    @level2type = 'COLUMN',
    @level2name = 'IOModuleTypeName'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'I/O module measurement error in percent.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'IOModuleTypeCdLu',
    @level2type = 'COLUMN',
    @level2name = 'IOModuleME'
/*
EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Description.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'IOModuleTypeCdLu',
    @level2type = 'COLUMN',
    @level2name = 'Description'
*/
GO

-- Inserting rows
SET IDENTITY_INSERT dbo.IOModuleTypeCdLu ON

INSERT INTO dbo.IOModuleTypeCdLu
(
    IOModuleTypeCd,
    IOModuleTypeName,
	IOModuleME --,
    --Description
)
SELECT 1, N'AAI141-H', 0.1 --, N'Модуль аналогового входа AAI141-H.'
UNION
SELECT 2, N'AAI143-H', 0.1 --, N'Модуль аналогового входа AAI143-H.'
UNION
SELECT 3, N'AAR145-S', 0.1 --, N'Модуль аналогового входа AAR145-S.'

SET IDENTITY_INSERT dbo.IOModuleTypeCdLu OFF
GO
