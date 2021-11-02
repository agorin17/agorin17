-- Standard SET options
SET ANSI_PADDING,ANSI_WARNINGS,CONCAT_NULL_YIELDS_NULL,ARITHABORT,QUOTED_IDENTIFIER,ANSI_NULLS ON
GO
SET NUMERIC_ROUNDABORT OFF
GO

SET NOCOUNT ON
GO

/**************************************************************** 
Name of object: dbo.CalibratorSourceFunction
DateCreated:    2021-09-20
CreatedBy:      Artem Gorin
Description:    Table Script

Modifications:
Date        User      Description
2021-09-20  agorin    Initial version.
****************************************************************/ 

-- Table create
CREATE TABLE dbo.CalibratorSourceFunction
(
    SourceFunctionID   INT NOT NULL,
    SourceFunctionName VARCHAR(8) NOT NULL,
	LowLimit           FLOAT NOT NULL,
	HighLimit          FLOAT NOT NULL,
    Description        VARCHAR(64) NOT NULL,

    CONSTRAINT PK_CalibratorSourceFunction
        PRIMARY KEY CLUSTERED (SourceFunctionID)
)

-- Table descriptions
EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Calibrator source function table.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'CalibratorSourceFunction'

-- Сolumn descriptions
EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Unique source function identifier.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'CalibratorSourceFunction',
    @level2type = 'COLUMN',
    @level2name = 'SourceFunctionID'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Calibrator source function name.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'CalibratorSourceFunction',
    @level2type = 'COLUMN',
    @level2name = 'SourceFunctionName'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Low limit.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'CalibratorSourceFunction',
    @level2type = 'COLUMN',
    @level2name = 'LowLimit'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'High limit.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'CalibratorSourceFunction',
    @level2type = 'COLUMN',
    @level2name = 'HighLimit'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Description.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'CalibratorSourceFunction',
    @level2type = 'COLUMN',
    @level2name = 'Description'
GO
