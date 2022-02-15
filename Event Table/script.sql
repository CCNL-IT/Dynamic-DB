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
	[lat] [numeric](20, 16) NULL,
	[lng] [numeric](20, 16) NULL,
 CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED 
(
	[EventID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
