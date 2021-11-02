-- Standard SET options
SET ANSI_PADDING,ANSI_WARNINGS,CONCAT_NULL_YIELDS_NULL,ARITHABORT,QUOTED_IDENTIFIER,ANSI_NULLS ON
GO
SET NUMERIC_ROUNDABORT OFF
GO

SET NOCOUNT ON
GO

/**************************************************************** 
Name of object: dbo.TerminalPanel
DateCreated:    2021-09-20
CreatedBy:      Artem Gorin
Description:    Table Script

Modifications:
Date        User      Description
2021-09-20  agorin    Initial version.
****************************************************************/ 

-- Table create
CREATE TABLE dbo.TerminalPanel
(
    TerminalPanelID     INT NOT NULL,
    CabinetID           INT NOT NULL,
    TerminalPanelName   VARCHAR(10) NOT NULL,

    CONSTRAINT PK_TerminalPanel
        PRIMARY KEY CLUSTERED (TerminalPanelID),

    CONSTRAINT UC_CabinetID_TerminalPanelName
        UNIQUE NONCLUSTERED (CabinetID, TerminalPanelName)
)

-- Table descriptions
EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Terminal panel table.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'TerminalPanel'

-- Сolumn descriptions
EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Unique terminal panel identifier.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'TerminalPanel',
    @level2type = 'COLUMN',
    @level2name = 'TerminalPanelID'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'The cabinet ID this terminal panel belongs to.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'TerminalPanel',
    @level2type = 'COLUMN',
    @level2name = 'CabinetID'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Terminal panel name.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'TerminalPanel',
    @level2type = 'COLUMN',
    @level2name = 'TerminalPanelName'
GO
