-- Standard SET options
SET ANSI_PADDING,ANSI_WARNINGS,CONCAT_NULL_YIELDS_NULL,ARITHABORT,QUOTED_IDENTIFIER,ANSI_NULLS ON
GO
SET NUMERIC_ROUNDABORT OFF
GO

SET NOCOUNT ON
GO

/**************************************************************** 
Name of object: dbo.Setpoint
DateCreated:    2021-09-20
CreatedBy:      Artem Gorin
Description:    Table Script

Modifications:
Date        User      Description
2021-09-20  agorin    Initial version.
****************************************************************/ 

-- Table create
CREATE TABLE dbo.Setpoint
(
    SetpointID    INT IDENTITY(1,1) NOT NULL,
	SessionID     INT NOT NULL,
    SetpointValue REAL NOT NULL,

    CONSTRAINT PK_Setpoint
        PRIMARY KEY CLUSTERED (SetpointID),

    CONSTRAINT UC_SessionID_SetpointValue
        UNIQUE NONCLUSTERED (SessionID, SetpointValue)
)

-- Table descriptions
EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'List of sites.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'Setpoint'

-- Сolumn descriptions
EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Unique setpoint identifier.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'Setpoint',
    @level2type = 'COLUMN',
    @level2name = 'SetpointID'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Session identifier.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'Setpoint',
    @level2type = 'COLUMN',
    @level2name = 'SessionID'

EXEC sys.SP_AddExtendedProperty
    @name       = 'MS_Description',
    @value      = 'Setpoint value in percent.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'Setpoint',
    @level2type = 'COLUMN',
    @level2name = 'SetpointValue'
GO
