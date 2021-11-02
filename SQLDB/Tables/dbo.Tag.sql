-- Standard SET options
SET ANSI_PADDING,ANSI_WARNINGS,CONCAT_NULL_YIELDS_NULL,ARITHABORT,QUOTED_IDENTIFIER,ANSI_NULLS ON
GO
SET NUMERIC_ROUNDABORT OFF
GO

SET NOCOUNT ON
GO

/**************************************************************** 
Name of object: dbo.Tag
DateCreated:    2021-09-20
CreatedBy:      Artem Gorin
Description:    Table Script

Modifications:
Date        User      Description
2021-09-20  agorin    Initial version.
****************************************************************/ 

-- Table create
CREATE TABLE dbo.Tag
(
    IOChannelID         INT NOT NULL,
    TagName             VARCHAR(100) NOT NULL,
    OPCPath             VARCHAR(100) NOT NULL,
	ControlSystemTypeCd INT NOT NULL,
	SignalTypeCd        INT NOT NULL,

    CONSTRAINT PK_Tag
        PRIMARY KEY CLUSTERED (IOChannelID)
)

-- Table descriptions
EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Tags table.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'Tag'

-- Сolumn descriptions
EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Unique I/O channel identifier.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'Tag',
    @level2type = 'COLUMN',
    @level2name = 'IOChannelID'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Tag name.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'Tag',
    @level2type = 'COLUMN',
    @level2name = 'TagName'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'OPC path.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'Tag',
    @level2type = 'COLUMN',
    @level2name = 'OPCPath'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Control system type code.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'Tag',
    @level2type = 'COLUMN',
    @level2name = 'ControlSystemTypeCd'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Signal type code.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'Tag',
    @level2type = 'COLUMN',
    @level2name = 'SignalTypeCd'
GO
