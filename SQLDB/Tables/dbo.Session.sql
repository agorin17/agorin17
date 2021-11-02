-- Standard SET options
SET ANSI_PADDING,ANSI_WARNINGS,CONCAT_NULL_YIELDS_NULL,ARITHABORT,QUOTED_IDENTIFIER,ANSI_NULLS ON
GO
SET NUMERIC_ROUNDABORT OFF
GO

SET NOCOUNT ON
GO

/**************************************************************** 
Name of object: dbo.Session
DateCreated:    2021-09-20
CreatedBy:      Artem Gorin
Description:    Table Script

Modifications:
Date        User      Description
2021-09-20  agorin    Initial version.
****************************************************************/ 

-- Table create
CREATE TABLE dbo.Session
(
    SessionID      INT IDENTITY(1,1) NOT NULL,
    SiteID         INT NOT NULL,
    SessionName    VARCHAR(10) NOT NULL,
    Description    VARCHAR(100) NOT NULL,
	DateOfCreation DATETIME NOT NULL,

    CONSTRAINT PK_Session
        PRIMARY KEY CLUSTERED (SessionID)
)

-- Table descriptions
EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Session table.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'Session'

-- Сolumn descriptions
EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Unique session identifier.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'Session',
    @level2type = 'COLUMN',
    @level2name = 'SessionID'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'The site ID this session belongs to.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'Session',
    @level2type = 'COLUMN',
    @level2name = 'SiteID'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Session name.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'Session',
    @level2type = 'COLUMN',
    @level2name = 'SessionName'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Description.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'Session',
    @level2type = 'COLUMN',
    @level2name = 'Description'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Session creation date.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'Session',
    @level2type = 'COLUMN',
    @level2name = 'DateOfCreation'
GO
