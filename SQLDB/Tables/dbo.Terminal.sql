-- Standard SET options
SET ANSI_PADDING,ANSI_WARNINGS,CONCAT_NULL_YIELDS_NULL,ARITHABORT,QUOTED_IDENTIFIER,ANSI_NULLS ON
GO
SET NUMERIC_ROUNDABORT OFF
GO

SET NOCOUNT ON
GO

/**************************************************************** 
Name of object: dbo.Terminal
DateCreated:    2021-09-20
CreatedBy:      Artem Gorin
Description:    Table Script

Modifications:
Date        User      Description
2021-09-20  agorin    Initial version.
****************************************************************/ 

-- Table create
CREATE TABLE dbo.Terminal
(
    IOChannelID     INT NOT NULL,
    TerminalPanelID INT NOT NULL,
    TerminalNumber  INT NOT NULL,

    CONSTRAINT PK_Terminal
        PRIMARY KEY CLUSTERED (IOChannelID),

    CONSTRAINT UC_TerminalPanelID_TerminalNumber
        UNIQUE NONCLUSTERED (TerminalPanelID, TerminalNumber)
)

-- Table descriptions
EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Terminal table.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'Terminal'

-- Сolumn descriptions
EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Unique I/O channel identifier.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'Terminal',
    @level2type = 'COLUMN',
    @level2name = 'IOChannelID'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'The terminal panel ID this terminal belongs to.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'Terminal',
    @level2type = 'COLUMN',
    @level2name = 'TerminalPanelID'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'The serial number of the terminal.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'Terminal',
    @level2type = 'COLUMN',
    @level2name = 'TerminalNumber'
GO
