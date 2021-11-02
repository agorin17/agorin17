-- Standard SET options for Metadata 
SET ANSI_PADDING,ANSI_WARNINGS,CONCAT_NULL_YIELDS_NULL,ARITHABORT,QUOTED_IDENTIFIER,ANSI_NULLS ON
GO
SET NUMERIC_ROUNDABORT OFF
GO

SET NOCOUNT ON
GO

/**************************************************************** 
Name of object: dbo.IOModule
DateCreated:    2021-10-22
CreatedBy:      Artem Gorin
Description:    FK Script

Modifications:
Date        User      Description
2021-10-22  agorin    Creation
****************************************************************/ 

ALTER TABLE dbo.IOModule
    ADD
        CONSTRAINT FK_IOModule_NodeID_Node_NodeID
        FOREIGN KEY (NodeID)
        REFERENCES dbo.Node (NodeID)

ALTER TABLE dbo.IOModule
    ADD
        CONSTRAINT FK_IOModule_IOModuleTypeCd_IOModuleTypeCdLu_IOModuleTypeCd
        FOREIGN KEY (IOModuleTypeCd)
        REFERENCES dbo.IOModuleTypeCdLu (IOModuleTypeCd)
GO
