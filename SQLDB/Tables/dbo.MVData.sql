-- Standard SET options
SET ANSI_PADDING,ANSI_WARNINGS,CONCAT_NULL_YIELDS_NULL,ARITHABORT,QUOTED_IDENTIFIER,ANSI_NULLS ON
GO
SET NUMERIC_ROUNDABORT OFF
GO

SET NOCOUNT ON
GO

/**************************************************************** 
Name of object: dbo.MVData
DateCreated:    2021-09-20
CreatedBy:      Artem Gorin
Description:    Table Script

Modifications:
Date        User      Description
2021-09-20  agorin    Initial version.
****************************************************************/ 

-- Table create
CREATE TABLE dbo.MVData
(
    IOChannelID INT NOT NULL,
    SetpointID  INT NOT NULL,
    Value       REAL NOT NULL,

    CONSTRAINT UC_IOChannelID_SetpointID
        UNIQUE CLUSTERED (IOChannelID, SetpointID)
)

-- Table descriptions
EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Metrological verification data.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'MVData'

-- Сolumn descriptions
EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'I/O channel identifier.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'MVData',
    @level2type = 'COLUMN',
    @level2name = 'IOChannelID'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Setpoint identifier.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'MVData',
    @level2type = 'COLUMN',
    @level2name = 'SetpointID'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Metrology verification data value.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'MVData',
    @level2type = 'COLUMN',
    @level2name = 'Value'
GO
