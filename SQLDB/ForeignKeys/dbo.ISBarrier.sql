-- Standard SET options for Metadata 
SET ANSI_PADDING,ANSI_WARNINGS,CONCAT_NULL_YIELDS_NULL,ARITHABORT,QUOTED_IDENTIFIER,ANSI_NULLS ON
GO
SET NUMERIC_ROUNDABORT OFF
GO

SET NOCOUNT ON
GO

/**************************************************************** 
Name of object: dbo.ISBarrier
DateCreated:    2021-10-22
CreatedBy:      Artem Gorin
Description:    FK Script

Modifications:
Date        User      Description
2021-10-22  agorin    Creation
****************************************************************/ 

ALTER TABLE dbo.ISBarrier
    ADD
        CONSTRAINT FK_ISBarrier_ISBarrierBoardID_ISBarrierBoard_ISBarrierBoardID
        FOREIGN KEY (ISBarrierBoardID)
        REFERENCES dbo.ISBarrierBoard (ISBarrierBoardID)

ALTER TABLE dbo.ISBarrier
    ADD
        CONSTRAINT FK_ISBarrier_ISBarrierTypeCd_ISBarrierTypeCdLu_ISBarrierTypeCd
        FOREIGN KEY (ISBarrierTypeCd)
        REFERENCES dbo.ISBarrierTypeCdLu (ISBarrierTypeCd)
GO
