-- Standard SET options
SET ANSI_PADDING,ANSI_WARNINGS,CONCAT_NULL_YIELDS_NULL,ARITHABORT,QUOTED_IDENTIFIER,ANSI_NULLS ON
GO
SET NUMERIC_ROUNDABORT OFF
GO

SET NOCOUNT ON
GO

/**************************************************************** 
Name of object: dbo.IOChannel
DateCreated:    2021-09-20
CreatedBy:      Artem Gorin
Description:    Table Script

Modifications:
Date        User      Description
2021-09-20  agorin    Initial version.
****************************************************************/ 

-- Table create
CREATE TABLE dbo.IOChannel
(
    IOChannelID     INT IDENTITY (1,1) NOT NULL,
    IOModuleID      INT NOT NULL,
    IOChannelNumber INT NOT NULL,

    CONSTRAINT PK_Equipment
        PRIMARY KEY CLUSTERED (IOChannelID),

    CONSTRAINT UC_IOModuleID_IOChannelNumber
        UNIQUE NONCLUSTERED (IOModuleID, IOChannelNumber)
)

-- Table descriptions
EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Measuring channel table.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'IOChannel'

-- Сolumn descriptions
EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Unique I/O channel identifier.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'IOChannel',
    @level2type = 'COLUMN',
    @level2name = 'IOChannelID'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'The I/O module ID this channel belongs to.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'IOChannel',
    @level2type = 'COLUMN',
    @level2name = 'IOModuleID'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'The serial number of the channel.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'IOChannel',
    @level2type = 'COLUMN',
    @level2name = 'IOChannelNumber'
GO
