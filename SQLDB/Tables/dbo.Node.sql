-- Standard SET options
SET ANSI_PADDING,ANSI_WARNINGS,CONCAT_NULL_YIELDS_NULL,ARITHABORT,QUOTED_IDENTIFIER,ANSI_NULLS ON
GO
SET NUMERIC_ROUNDABORT OFF
GO

SET NOCOUNT ON
GO

/**************************************************************** 
Name of object: dbo.Node
DateCreated:    2021-09-20
CreatedBy:      Artem Gorin
Description:    Table Script

Modifications:
Date        User      Description
2021-09-20  agorin    Initial version.
****************************************************************/ 

-- Table create
CREATE TABLE dbo.Node
(
    NodeID       INT IDENTITY(1,1) NOT NULL,
	ControllerID INT NOT NULL,
	NodeNumber   INT NOT NULL,
    NodeName     VARCHAR(10) NOT NULL,
    --Description  VARCHAR(100) NOT NULL,

    CONSTRAINT PK_Node
        PRIMARY KEY CLUSTERED (NodeID),

    CONSTRAINT UC_ControllerID_NodeNumber
        UNIQUE NONCLUSTERED (ControllerID, NodeNumber)
)

-- Table descriptions
EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Nodes table.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'Node'

-- Сolumn descriptions
EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Unique node identifier.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'Node',
    @level2type = 'COLUMN',
    @level2name = 'NodeID'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'The controller ID this node belongs to.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'Node',
    @level2type = 'COLUMN',
    @level2name = 'ControllerID'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'The serial number of the node in the controller.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'Node',
    @level2type = 'COLUMN',
    @level2name = 'NodeNumber'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Node name.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'Node',
    @level2type = 'COLUMN',
    @level2name = 'NodeName'
/*
EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Node description.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'Node',
    @level2type = 'COLUMN',
    @level2name = 'Description'
*/
GO
