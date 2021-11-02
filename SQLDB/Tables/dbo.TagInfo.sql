-- Standard SET options
SET ANSI_PADDING,ANSI_WARNINGS,CONCAT_NULL_YIELDS_NULL,ARITHABORT,QUOTED_IDENTIFIER,ANSI_NULLS ON
GO
SET NUMERIC_ROUNDABORT OFF
GO

SET NOCOUNT ON
GO

/**************************************************************** 
Name of object: dbo.TagInfo
DateCreated:    2021-09-20
CreatedBy:      Artem Gorin
Description:    Table Script

Modifications:
Date        User      Description
2021-09-20  agorin    Initial version.
****************************************************************/ 

-- Table create
CREATE TABLE dbo.TagInfo
(
	SessionID    INT NOT NULL,
    IOChannelID  INT NOT NULL,
    SL           REAL NOT NULL,
    SH           REAL NOT NULL,
    EngUnit      VARCHAR(10) NOT NULL,
    DecimalPoint TINYINT NOT NULL,
    Description  VARCHAR(100) NULL,

	CONSTRAINT UC_SessionID_IOChannelID
		UNIQUE CLUSTERED (SessionID, IOChannelID)
)

-- Table descriptions
EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Tag infomation.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'TagInfo'

-- Сolumn descriptions
EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Session identifier.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'TagInfo',
    @level2type = 'COLUMN',
    @level2name = 'SessionID'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'I/O channel identifier.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'TagInfo',
    @level2type = 'COLUMN',
    @level2name = 'IOChannelID'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Low measurement limit.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'TagInfo',
    @level2type = 'COLUMN',
    @level2name = 'SL'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'High measurement limit.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'TagInfo',
    @level2type = 'COLUMN',
    @level2name = 'SH'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Engineering unit.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'TagInfo',
    @level2type = 'COLUMN',
    @level2name = 'EngUnit'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Number of digits after decimal point.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'TagInfo',
    @level2type = 'COLUMN',
    @level2name = 'DecimalPoint'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Tag comment.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'TagInfo',
    @level2type = 'COLUMN',
    @level2name = 'Description'
GO
