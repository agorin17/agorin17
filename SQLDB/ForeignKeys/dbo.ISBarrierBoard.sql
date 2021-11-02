-- Standard SET options for Metadata 
SET ANSI_PADDING,ANSI_WARNINGS,CONCAT_NULL_YIELDS_NULL,ARITHABORT,QUOTED_IDENTIFIER,ANSI_NULLS ON
GO
SET NUMERIC_ROUNDABORT OFF
GO

SET NOCOUNT ON
GO

/**************************************************************** 
Name of object: dbo.ISBarrierBoard
DateCreated:    2021-10-22
CreatedBy:      Artem Gorin
Description:    FK Script

Modifications:
Date        User      Description
2021-10-22  agorin    Creation
****************************************************************/ 

ALTER TABLE dbo.ISBarrierBoard
    ADD
        CONSTRAINT FK_ISBarrierBoard_CabinetID_Cabinet_CabinetID
        FOREIGN KEY (CabinetID)
        REFERENCES dbo.Cabinet (CabinetID)
GO
