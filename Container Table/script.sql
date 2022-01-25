USE [Dynamic]
GO
/****** Object:  Table [dbo].[Container]    Script Date: 01/25/2022 11:27:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Container](
	[ContainerID] [uniqueidentifier] NOT NULL,
	[OrderID] [uniqueidentifier] NOT NULL,
	[BOL] [nvarchar](50) NULL,
	[CompanyID] [int] NULL,
	[ContainerNo] [nvarchar](50) NULL,
	[Seal] [nvarchar](50) NULL,
	[ContainerType] [nvarchar](50) NULL,
	[NoOfPackage] [int] NOT NULL,
	[UnitOfPackage] [nvarchar](100) NULL,
	[GrossWeight] [numeric](18, 6) NOT NULL,
	[Measurement] [numeric](18, 6) NOT NULL,
	[IsSoc] [bit] NULL,
	[ContainerStatus] [nvarchar](50) NULL,
	[DateCreated] [datetime] NOT NULL,
	[IsUpdate] [bit] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[IsCanceled] [bit] NOT NULL,
 CONSTRAINT [PK_Container] PRIMARY KEY CLUSTERED 
(
	[ContainerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF_Container_NoOfPackage]    Script Date: 01/25/2022 11:27:18 ******/
ALTER TABLE [dbo].[Container] ADD  CONSTRAINT [DF_Container_NoOfPackage]  DEFAULT ((0)) FOR [NoOfPackage]
GO
/****** Object:  Default [DF_Container_GrossWeight]    Script Date: 01/25/2022 11:27:18 ******/
ALTER TABLE [dbo].[Container] ADD  CONSTRAINT [DF_Container_GrossWeight]  DEFAULT ((0.00)) FOR [GrossWeight]
GO
/****** Object:  Default [DF_Container_Measurement]    Script Date: 01/25/2022 11:27:18 ******/
ALTER TABLE [dbo].[Container] ADD  CONSTRAINT [DF_Container_Measurement]  DEFAULT ((0.00)) FOR [Measurement]
GO
/****** Object:  Default [DF_Container_IsSoc]    Script Date: 01/25/2022 11:27:18 ******/
ALTER TABLE [dbo].[Container] ADD  CONSTRAINT [DF_Container_IsSoc]  DEFAULT ((0)) FOR [IsSoc]
GO
/****** Object:  Default [DF_Container_DateCreated]    Script Date: 01/25/2022 11:27:18 ******/
ALTER TABLE [dbo].[Container] ADD  CONSTRAINT [DF_Container_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
/****** Object:  Default [DF_Container_IsUpdate]    Script Date: 01/25/2022 11:27:18 ******/
ALTER TABLE [dbo].[Container] ADD  CONSTRAINT [DF_Container_IsUpdate]  DEFAULT ((1)) FOR [IsUpdate]
GO
/****** Object:  Default [DF_Container_UpdateDate]    Script Date: 01/25/2022 11:27:18 ******/
ALTER TABLE [dbo].[Container] ADD  CONSTRAINT [DF_Container_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_Container_IsCanceled]    Script Date: 01/25/2022 11:27:18 ******/
ALTER TABLE [dbo].[Container] ADD  CONSTRAINT [DF_Container_IsCanceled]  DEFAULT ((0)) FOR [IsCanceled]
GO
