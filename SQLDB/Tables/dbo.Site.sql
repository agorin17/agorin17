-- Standard SET options
SET ANSI_PADDING,ANSI_WARNINGS,CONCAT_NULL_YIELDS_NULL,ARITHABORT,QUOTED_IDENTIFIER,ANSI_NULLS ON
GO
SET NUMERIC_ROUNDABORT OFF
GO

SET NOCOUNT ON
GO

/**************************************************************** 
Name of object: dbo.Site
DateCreated:    2021-09-20
CreatedBy:      Artem Gorin
Description:    Table Script

Modifications:
Date        User      Description
2021-09-20  agorin    Initial version.
****************************************************************/ 

-- Table create
CREATE TABLE dbo.Site
(
    SiteID      INT IDENTITY(1,1) NOT NULL,
    SiteName    VARCHAR(10) NOT NULL,
    Description VARCHAR(100) NOT NULL,

    CONSTRAINT PK_Site
        PRIMARY KEY CLUSTERED (SiteID)
)

-- Table descriptions
EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'List of sites.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'Site'

-- Сolumn descriptions
EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Unique site identifier.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'Site',
    @level2type = 'COLUMN',
    @level2name = 'SiteID'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Site name.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'Site',
    @level2type = 'COLUMN',
    @level2name = 'SiteName'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Site description.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'Site',
    @level2type = 'COLUMN',
    @level2name = 'Description'
GO
