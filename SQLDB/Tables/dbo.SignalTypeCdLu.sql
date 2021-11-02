-- Standard SET options
SET ANSI_PADDING,ANSI_WARNINGS,CONCAT_NULL_YIELDS_NULL,ARITHABORT,QUOTED_IDENTIFIER,ANSI_NULLS ON
GO
SET NUMERIC_ROUNDABORT OFF
GO

SET NOCOUNT ON
GO

/**************************************************************** 
Name of object: dbo.SignalTypeCdLu
DateCreated:    2021-09-20
CreatedBy:      Artem Gorin
Description:    Table Script

Modifications:
Date        User      Description
2021-09-20  agorin    Initial version.
****************************************************************/ 

-- Table create
CREATE TABLE dbo.SignalTypeCdLu
(
    SignalTypeCd   INT IDENTITY(1,1) NOT NULL,
    SignalTypeName VARCHAR(10) NOT NULL,
    SL             REAL NOT NULL,
    SH             REAL NOT NULL,
    EngUnit        VARCHAR(10) NOT NULL,
    Description    VARCHAR(100) NOT NULL,

    CONSTRAINT PK_SignalTypeCdLu
        PRIMARY KEY CLUSTERED (SignalTypeCd)
)

-- Table descriptions
EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Control system type table.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'SignalTypeCdLu'

-- Сolumn descriptions
EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Unique signal type identifier.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'SignalTypeCdLu',
    @level2type = 'COLUMN',
    @level2name = 'SignalTypeCd'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Signal type name.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'SignalTypeCdLu',
    @level2type = 'COLUMN',
    @level2name = 'SignalTypeName'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Low measurement limit.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'SignalTypeCdLu',
    @level2type = 'COLUMN',
    @level2name = 'SL'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'High measurement limit.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'SignalTypeCdLu',
    @level2type = 'COLUMN',
    @level2name = 'SH'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Engineering unit.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'SignalTypeCdLu',
    @level2type = 'COLUMN',
    @level2name = 'EngUnit'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Signal type description.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'SignalTypeCdLu',
    @level2type = 'COLUMN',
    @level2name = 'Description'
GO

-- Inserting rows
SET IDENTITY_INSERT dbo.SignalTypeCdLu ON

INSERT INTO dbo.SignalTypeCdLu
(
    SignalTypeCd,
    SignalTypeName,
    SL,
    SH,
    EngUnit,
    Description
)
SELECT 1, N'4-20mA', 4, 20, N'mA', N'Токовый сигнал 4-20 мА.'
UNION
SELECT 2, N'Pt100', -200, 850, N'°C', N'Термометр сопротивления платиновый.'
UNION
SELECT 3, N'L', -200, 800, N'°C', N'Термопара ТХК (Хромель - Копель).'
UNION
SELECT 4, N'K', 0, 1100, N'°C', N'Термопара ТХА (Хромель - Алюмель).'

SET IDENTITY_INSERT dbo.SignalTypeCdLu OFF
GO
