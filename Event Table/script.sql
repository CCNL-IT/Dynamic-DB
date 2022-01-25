USE [Dynamic]
GO
/****** Object:  Table [dbo].[Event]    Script Date: 01/25/2022 11:31:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[EventID] [uniqueidentifier] NOT NULL,
	[ContainerID] [uniqueidentifier] NOT NULL,
	[ContainerNo] [nvarchar](50) NULL,
	[EventDescription] [nvarchar](300) NOT NULL,
	[EventCode] [nvarchar](50) NOT NULL,
	[EventDate] [datetime] NOT NULL,
	[Actual] [bit] NOT NULL,
	[EventType] [nvarchar](50) NULL,
	[Vessel] [nvarchar](100) NULL,
	[Voyage] [nvarchar](100) NULL,
	[LocationPortCode] [nvarchar](50) NULL,
	[LocationPort] [nvarchar](200) NULL,
 CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED 
(
	[EventID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF_Event_EventID]    Script Date: 01/25/2022 11:31:48 ******/
ALTER TABLE [dbo].[Event] ADD  CONSTRAINT [DF_Event_EventID]  DEFAULT (newid()) FOR [EventID]
GO
/****** Object:  Default [DF_Event_Actual]    Script Date: 01/25/2022 11:31:48 ******/
ALTER TABLE [dbo].[Event] ADD  CONSTRAINT [DF_Event_Actual]  DEFAULT ((0)) FOR [Actual]
GO
