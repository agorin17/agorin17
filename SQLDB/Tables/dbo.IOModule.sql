-- Standard SET options
SET ANSI_PADDING,ANSI_WARNINGS,CONCAT_NULL_YIELDS_NULL,ARITHABORT,QUOTED_IDENTIFIER,ANSI_NULLS ON
GO
SET NUMERIC_ROUNDABORT OFF
GO

SET NOCOUNT ON
GO

/**************************************************************** 
Name of object: dbo.IOModule
DateCreated:    2021-09-20
CreatedBy:      Artem Gorin
Description:    Table Script

Modifications:
Date        User      Description
2021-09-20  agorin    Initial version.
****************************************************************/ 

-- Table create
CREATE TABLE dbo.IOModule
(
    IOModuleID     INT IDENTITY(1,1) NOT NULL,
	NodeID         INT NOT NULL,
    IOModuleNumber INT NOT NULL,
	IOModuleTypeCd INT NOT NULL,

    CONSTRAINT PK_Module
        PRIMARY KEY CLUSTERED (IOModuleID),

    CONSTRAINT UC_NodeID_ModuleNumber
        UNIQUE NONCLUSTERED (NodeID, IOModuleNumber)
)

-- Table descriptions
EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Modules table.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'IOModule'

-- Сolumn descriptions
EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Unique module identifier.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'IOModule',
    @level2type = 'COLUMN',
    @level2name = 'IOModuleID'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'The node ID this module belongs to.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'IOModule',
    @level2type = 'COLUMN',
    @level2name = 'NodeID'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'The serial number of the I/O module in the node.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'IOModule',
    @level2type = 'COLUMN',
    @level2name = 'IOModuleNumber'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'I/O module type code.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'IOModule',
    @level2type = 'COLUMN',
    @level2name = 'IOModuleTypeCd'
GO
