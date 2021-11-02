-- Standard SET options
SET ANSI_PADDING,ANSI_WARNINGS,CONCAT_NULL_YIELDS_NULL,ARITHABORT,QUOTED_IDENTIFIER,ANSI_NULLS ON
GO
SET NUMERIC_ROUNDABORT OFF
GO

SET NOCOUNT ON
GO

/**************************************************************** 
Name of object: dbo.ISBarrierBoard
DateCreated:    2021-09-20
CreatedBy:      Artem Gorin
Description:    Table Script

Modifications:
Date        User      Description
2021-09-20  agorin    Initial version.
****************************************************************/ 

-- Table create
CREATE TABLE dbo.ISBarrierBoard
(
    ISBarrierBoardID   INT NOT NULL,
    CabinetID          INT NOT NULL,
    ISBarrierBoardName VARCHAR(10) NOT NULL,
    --Description        VARCHAR(100) NOT NULL,

    CONSTRAINT PK_ISBarrierBoard
        PRIMARY KEY CLUSTERED (ISBarrierBoardID),

    CONSTRAINT UC_CabinetID_ISBarrierBoardName
        UNIQUE NONCLUSTERED (CabinetID, ISBarrierBoardName)
)

-- Table descriptions
EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Intrinsic safety barrier table.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'ISBarrierBoard'

-- Сolumn descriptions
EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Unique intrinsic safety barrier board identifier.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'ISBarrierBoard',
    @level2type = 'COLUMN',
    @level2name = 'ISBarrierBoardID'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'The cabinet ID this board belongs to.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'ISBarrierBoard',
    @level2type = 'COLUMN',
    @level2name = 'CabinetID'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Intrinsic safety barrier board name.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'ISBarrierBoard',
    @level2type = 'COLUMN',
    @level2name = 'ISBarrierBoardName'
/*
EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Description.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'ISBarrierBoard',
    @level2type = 'COLUMN',
    @level2name = 'Description'
*/
GO
