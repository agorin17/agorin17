-- Standard SET options for Metadata 
SET ANSI_PADDING,ANSI_WARNINGS,CONCAT_NULL_YIELDS_NULL,ARITHABORT,QUOTED_IDENTIFIER,ANSI_NULLS ON
GO
SET NUMERIC_ROUNDABORT OFF
GO

SET NOCOUNT ON
GO

/**************************************************************** 
Name of object: dbo.Terminal
DateCreated:    2021-10-22
CreatedBy:      Artem Gorin
Description:    FK Script

Modifications:
Date        User      Description
2021-10-22  agorin    Creation
****************************************************************/ 

ALTER TABLE dbo.Terminal
    ADD
        CONSTRAINT FK_Terminal_TerminalPanelID_TerminalPanel_TerminalPanelID
        FOREIGN KEY (TerminalPanelID)
        REFERENCES dbo.TerminalPanel (TerminalPanelID)
GO
