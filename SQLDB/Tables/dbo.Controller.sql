-- Standard SET options
SET ANSI_PADDING,ANSI_WARNINGS,CONCAT_NULL_YIELDS_NULL,ARITHABORT,QUOTED_IDENTIFIER,ANSI_NULLS ON
GO
SET NUMERIC_ROUNDABORT OFF
GO

SET NOCOUNT ON
GO

/**************************************************************** 
Name of object: dbo.Controller
DateCreated:    2021-09-20
CreatedBy:      Artem Gorin
Description:    Table Script

Modifications:
Date        User      Description
2021-09-20  agorin    Initial version.
****************************************************************/ 

-- Table create
CREATE TABLE dbo.Controller
(
    ControllerID   INT IDENTITY(1,1) NOT NULL,
	CabinetID      INT NOT NULL,
    ControllerName VARCHAR(10) NOT NULL,
    --Description    VARCHAR(100) NOT NULL,

    CONSTRAINT PK_Controller
        PRIMARY KEY CLUSTERED (ControllerID)
)

-- Table descriptions
EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Controllers table.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'Controller'

-- Сolumn descriptions
EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Unique controller identifier.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'Controller',
    @level2type = 'COLUMN',
    @level2name = 'ControllerID'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Unique cabinet identifier.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'Controller',
    @level2type = 'COLUMN',
    @level2name = 'CabinetID'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Controller name.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'Controller',
    @level2type = 'COLUMN',
    @level2name = 'ControllerName'
/*
EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Controller description.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'Controller',
    @level2type = 'COLUMN',
    @level2name = 'Description'
*/
GO
