-- Standard SET options
SET ANSI_PADDING,ANSI_WARNINGS,CONCAT_NULL_YIELDS_NULL,ARITHABORT,QUOTED_IDENTIFIER,ANSI_NULLS ON
GO
SET NUMERIC_ROUNDABORT OFF
GO

SET NOCOUNT ON
GO

/**************************************************************** 
Name of object: dbo.ISBarrierTypeCdLu
DateCreated:    2021-09-20
CreatedBy:      Artem Gorin
Description:    Table Script

Modifications:
Date        User      Description
2021-09-20  agorin    Initial version.
****************************************************************/ 

-- Table create
CREATE TABLE dbo.ISBarrierTypeCdLu
(
    ISBarrierTypeCd           INT IDENTITY(1,1) NOT NULL,
    ISBarrierTypeName         VARCHAR(10) NOT NULL,
    ISBarrierME               REAL NOT NULL,
    ColdJunctionCompensatorME REAL NULL,
    Description               VARCHAR(100) NULL,

    CONSTRAINT PK_ISBarrierTypeCdLu
        PRIMARY KEY CLUSTERED (ISBarrierTypeCd)
)

-- Table descriptions
EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Intrinsic safety barrier type table.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'ISBarrierTypeCdLu'

-- Сolumn descriptions
EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Unique intrinsic safety barrier type identifier.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'ISBarrierTypeCdLu',
    @level2type = 'COLUMN',
    @level2name = 'ISBarrierTypeCd'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Intrinsic safety barrier type name.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'ISBarrierTypeCdLu',
    @level2type = 'COLUMN',
    @level2name = 'ISBarrierTypeName'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Barrier measurement error, %.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'ISBarrierTypeCdLu',
    @level2type = 'COLUMN',
    @level2name = 'BarrierME'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Cold junction compensator measurement error, ºС.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'ISBarrierTypeCdLu',
    @level2type = 'COLUMN',
    @level2name = 'ColdJunctionCompensatorME'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Description.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'ISBarrierTypeCdLu',
    @level2type = 'COLUMN',
    @level2name = 'Description'
GO

-- Inserting rows
SET IDENTITY_INSERT dbo.ISBarrierTypeCdLu ON

INSERT INTO dbo.ISBarrierTypeCdLu
(
    ISBarrierTypeCd,
    ISBarrierTypeName,
    BarrierME,
    ColdJunctionCompensatorME,
    Description
)
SELECT 1, N'MTL4565', 0.1, NULL, N'Модуль аналогового входа AAI-141.'
UNION
SELECT 2, N'MTL4575', 0.1, 1, N'Модуль аналогового входа AAI-143.'

SET IDENTITY_INSERT dbo.ISBarrierTypeCdLu OFF
GO
