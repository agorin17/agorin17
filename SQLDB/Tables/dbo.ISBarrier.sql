-- Standard SET options
SET ANSI_PADDING,ANSI_WARNINGS,CONCAT_NULL_YIELDS_NULL,ARITHABORT,QUOTED_IDENTIFIER,ANSI_NULLS ON
GO
SET NUMERIC_ROUNDABORT OFF
GO

SET NOCOUNT ON
GO

/**************************************************************** 
Name of object: dbo.ISBarrier
DateCreated:    2021-09-20
CreatedBy:      Artem Gorin
Description:    Table Script

Modifications:
Date        User      Description
2021-09-20  agorin    Initial version.
****************************************************************/ 

-- Table create
CREATE TABLE dbo.ISBarrier
(
    IOChannelID      INT NOT NULL,
    ISBarrierBoardID INT NOT NULL,
	ISBarrierNumber  INT NOT NULL,
    Channel          INT NOT NULL,
	ISBarrierTypeCd  INT NOT NULL,

    CONSTRAINT PK_ISBarrier
        PRIMARY KEY CLUSTERED (IOChannelID),

    CONSTRAINT UC_ISBarrierBoardID_ISBarrierNumber_Channel
        UNIQUE NONCLUSTERED (ISBarrierBoardID, ISBarrierNumber, Channel)
)

-- Table descriptions
EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Intrinsic safety barrier table.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'ISBarrier'

-- Сolumn descriptions
EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Unique I/O channel identifier.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'ISBarrier',
    @level2type = 'COLUMN',
    @level2name = 'IOChannelID'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'The board ID this intrinsic safety barrier belongs to.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'ISBarrier',
    @level2type = 'COLUMN',
    @level2name = 'ISBarrierBoardID'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'The serial number of the barrier.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'ISBarrier',
    @level2type = 'COLUMN',
    @level2name = 'ISBarrierNumber'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Channel of the barrier.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'ISBarrier',
    @level2type = 'COLUMN',
    @level2name = 'Channel'

EXEC sys.sp_addextendedproperty
    @name       = 'MS_Description',
    @value      = 'Intrinsic safety barrier type code.',
    @level0type = 'SCHEMA',
    @level0name = 'dbo',
    @level1type = 'TABLE',
    @level1name = 'ISBarrier',
    @level2type = 'COLUMN',
    @level2name = 'ISBarrierTypeCd'
GO
