-- Standard SET options for Metadata 
SET ANSI_PADDING,ANSI_WARNINGS,CONCAT_NULL_YIELDS_NULL,ARITHABORT,QUOTED_IDENTIFIER,ANSI_NULLS ON
GO
SET NUMERIC_ROUNDABORT OFF
GO

SET NOCOUNT ON
GO

/**************************************************************** 
Name of object: dbo.Cabinet
DateCreated:    2021-10-22
CreatedBy:      Artem Gorin
Description:    FK Script

Modifications:
Date        User      Description
2021-10-22  agorin    Creation
****************************************************************/ 

ALTER TABLE dbo.Cabinet
    ADD
        CONSTRAINT FK_Cabinet_SiteID_Site_SiteID
        FOREIGN KEY (SiteID)
        REFERENCES dbo.Site (SiteID)
GO
