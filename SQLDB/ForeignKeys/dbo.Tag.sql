-- Standard SET options for Metadata 
SET ANSI_PADDING,ANSI_WARNINGS,CONCAT_NULL_YIELDS_NULL,ARITHABORT,QUOTED_IDENTIFIER,ANSI_NULLS ON
GO
SET NUMERIC_ROUNDABORT OFF
GO

SET NOCOUNT ON
GO

/**************************************************************** 
Name of object: dbo.Tag
DateCreated:    2021-10-22
CreatedBy:      Artem Gorin
Description:    FK Script

Modifications:
Date        User      Description
2021-10-22  agorin    Creation
****************************************************************/

ALTER TABLE dbo.Tag
    ADD
        CONSTRAINT FK_Tag_IOChannelID_IOChannel_IOChannelID
        FOREIGN KEY (IOChannelID)
        REFERENCES dbo.IOChannel (IOChannelID)

ALTER TABLE dbo.Tag
    ADD
        CONSTRAINT FK_Tag_ControlSystemTypeCd_ControlSystemTypeCdLu_ControlSystemTypeCd
        FOREIGN KEY (ControlSystemTypeCd)
        REFERENCES dbo.ControlSystemTypeCdLu (ControlSystemTypeCd)

ALTER TABLE dbo.Tag
    ADD
        CONSTRAINT FK_Tag_SignalTypeCd_SignalTypeCdLu_SignalTypeCd
        FOREIGN KEY (SignalTypeCd)
        REFERENCES dbo.SignalTypeCdLu (SignalTypeCd)
GO
