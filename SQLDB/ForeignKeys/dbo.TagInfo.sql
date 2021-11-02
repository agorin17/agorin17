-- Standard SET options for Metadata 
SET ANSI_PADDING,ANSI_WARNINGS,CONCAT_NULL_YIELDS_NULL,ARITHABORT,QUOTED_IDENTIFIER,ANSI_NULLS ON
GO
SET NUMERIC_ROUNDABORT OFF
GO

SET NOCOUNT ON
GO

/**************************************************************** 
Name of object: dbo.TagInfo
DateCreated:    2021-10-22
CreatedBy:      Artem Gorin
Description:    FK Script

Modifications:
Date        User      Description
2021-10-22  agorin    Creation
****************************************************************/ 

ALTER TABLE dbo.TagInfo
    ADD
        CONSTRAINT FK_TagInfo_SessionID_Session_SessionID
        FOREIGN KEY (SessionID)
        REFERENCES dbo.Session (SessionID)

ALTER TABLE dbo.TagInfo
    ADD
        CONSTRAINT FK_TagInfo_IOChannelID_Tag_IOChannelID
        FOREIGN KEY (IOChannelID)
        REFERENCES dbo.Tag (IOChannelID)
GO
