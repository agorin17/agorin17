-- Standard SET options
SET ANSI_PADDING,ANSI_WARNINGS,CONCAT_NULL_YIELDS_NULL,ARITHABORT,QUOTED_IDENTIFIER,ANSI_NULLS ON
GO
SET NUMERIC_ROUNDABORT OFF
GO

SET NOCOUNT ON
GO

/**************************************************************** 
Name of object: dbo.ControlSystemTypeCdLu
DateCreated:    2021-09-20
CreatedBy:      Artem Gorin
Description:    Table Script

Modifications:
Date        User      Description
2021-09-20  agorin    Initial version.
****************************************************************/ 

-- Table create
CREATE TABLE dbo.ControlSystemTypeCdLu
(
    ControlSystemTypeCd   INT IDENTITY(1,1) NOT NULL,
    ControlSystemTypeName VARCHAR(10) NOT NULL,
    Description           VARCHAR(100) NOT NULL,

    CONSTRAINT PK_ControlSystemType
        PRIMARY KEY CLUSTERED (ControlSystemTypeCd)
)

-- Table descriptions
EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Control system type table.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'ControlSystemTypeCdLu'

-- Сolumn descriptions
EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Unique control system type identifier.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'ControlSystemTypeCdLu',
    @level2type = 'COLUMN',
    @level2name = 'ControlSystemTypeCd'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Control system type.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'ControlSystemTypeCdLu',
    @level2type = 'COLUMN',
    @level2name = 'ControlSystemTypeName'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Control system type description.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'ControlSystemTypeCdLu',
    @level2type = 'COLUMN',
    @level2name = 'Description'
GO

-- Inserting rows
SET IDENTITY_INSERT dbo.ControlSystemTypeCdLu ON

INSERT INTO dbo.ControlSystemTypeCdLu
(
    ControlSystemTypeCd,
    ControlSystemTypeName,
    Description
)
SELECT 1, N'DCS', N'Distributed Control System'
UNION
SELECT 2, N'ESD', N'Emergency Shutdown System'
UNION
SELECT 3, N'F&G', N'Fire & Gas'

SET IDENTITY_INSERT dbo.ControlSystemTypeCdLu OFF
GO
