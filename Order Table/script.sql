USE [Dynamic]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 01/25/2022 09:30:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [uniqueidentifier] NOT NULL,
	[CompanyID] [int] NULL,
	[BookingNo] [nvarchar](50) NULL,
	[BOL] [nvarchar](50) NULL,
	[SCACCode] [nvarchar](50) NULL,
	[TradeLane] [nvarchar](50) NULL,
	[PortOfLoadingCode] [nvarchar](50) NOT NULL,
	[PortOfLoading] [nvarchar](200) NOT NULL,
	[PortOfDischargeCode] [nvarchar](50) NOT NULL,
	[PortOfDischarge] [nvarchar](200) NOT NULL,
	[FinalDestinationCode] [nvarchar](50) NOT NULL,
	[FinalDestination] [nvarchar](200) NOT NULL,
	[CarrierName] [nvarchar](200) NULL,
	[ETDDate] [datetime] NOT NULL,
	[DespatchedDate] [datetime] NULL,
	[GateInDate] [datetime] NULL,
	[OnBoardDate] [datetime] NULL,
	[SailingDate] [datetime] NULL,
	[ETADate] [datetime] NULL,
	[DischargedDate] [datetime] NULL,
	[GateOutDate] [datetime] NULL,
	[DestinationAgent] [nvarchar](200) NULL,
	[ServiceType] [nvarchar](50) NULL,
	[OrderStatus] [nvarchar](50) NULL,
	[DateCreated] [datetime] NOT NULL,
	[IsUpdate] [bit] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[IsCanceled] [bit] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF_Order_DateCreated]    Script Date: 01/25/2022 09:30:14 ******/
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_Order_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
/****** Object:  Default [DF_Order_IsUpdate]    Script Date: 01/25/2022 09:30:14 ******/
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_Order_IsUpdate]  DEFAULT ((1)) FOR [IsUpdate]
GO
/****** Object:  Default [DF_Order_UpdateDate]    Script Date: 01/25/2022 09:30:14 ******/
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_Order_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_Order_IsCanceled]    Script Date: 01/25/2022 09:30:14 ******/
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_Order_IsCanceled]  DEFAULT ((0)) FOR [IsCanceled]
GO
