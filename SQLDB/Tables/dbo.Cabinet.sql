-- Standard SET options
SET ANSI_PADDING,ANSI_WARNINGS,CONCAT_NULL_YIELDS_NULL,ARITHABORT,QUOTED_IDENTIFIER,ANSI_NULLS ON
GO
SET NUMERIC_ROUNDABORT OFF
GO

SET NOCOUNT ON
GO

/**************************************************************** 
Name of object: dbo.Cabinet
DateCreated:    2021-09-20
CreatedBy:      Artem Gorin
Description:    Table Script

Modifications:
Date        User      Description
2021-09-20  agorin    Initial version.
****************************************************************/ 

-- Table create
CREATE TABLE dbo.Cabinet
(
    CabinetID           INT IDENTITY(1,1) NOT NULL,
    SiteID              INT NOT NULL,
    CabinetName         VARCHAR(10) NOT NULL,
    --Description         VARCHAR(100) NOT NULL,

    CONSTRAINT PK_Cabinet
        PRIMARY KEY CLUSTERED (CabinetID),

    CONSTRAINT UC_EquipmentID_SiteID_CabinetName
        UNIQUE NONCLUSTERED (SiteID, CabinetName)
)

-- Table descriptions
EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Cabinet table.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'Cabinet'

-- Сolumn descriptions
EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Unique cabinet identifier.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'Cabinet',
    @level2type = 'COLUMN',
    @level2name = 'CabinetID'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Unique site identifier.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'Cabinet',
    @level2type = 'COLUMN',
    @level2name = 'SiteID'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Cabinet name.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'Cabinet',
    @level2type = 'COLUMN',
    @level2name = 'CabinetName'

/*
EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Cabinet description.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'Cabinet',
    @level2type = 'COLUMN',
    @level2name = 'Description'
*/
GO
