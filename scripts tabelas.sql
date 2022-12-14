USE [SalesWebMVC]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 29/09/2022 11:53:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesRecord]    Script Date: 29/09/2022 11:53:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NULL,
	[Amount] [decimal](12, 2) NULL,
	[Status] [int] NULL,
	[SellerId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seller]    Script Date: 29/09/2022 11:53:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seller](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NULL,
	[Email] [varchar](255) NULL,
	[BirthDate] [datetime] NULL,
	[BaseSalary] [decimal](12, 2) NULL,
	[DepartmentId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([Id], [Name]) VALUES (1, N'Computers')
INSERT [dbo].[Department] ([Id], [Name]) VALUES (2, N'Electronics')
INSERT [dbo].[Department] ([Id], [Name]) VALUES (3, N'Fashion')
INSERT [dbo].[Department] ([Id], [Name]) VALUES (4, N'Books')
SET IDENTITY_INSERT [dbo].[Department] OFF
GO
SET IDENTITY_INSERT [dbo].[SalesRecord] ON 

INSERT [dbo].[SalesRecord] ([Id], [Date], [Amount], [Status], [SellerId]) VALUES (0, CAST(N'2018-09-25T00:00:00.000' AS DateTime), CAST(11000.00 AS Decimal(12, 2)), 1, 1)
INSERT [dbo].[SalesRecord] ([Id], [Date], [Amount], [Status], [SellerId]) VALUES (1, CAST(N'2018-09-04T00:00:00.000' AS DateTime), CAST(7000.00 AS Decimal(12, 2)), 1, 5)
INSERT [dbo].[SalesRecord] ([Id], [Date], [Amount], [Status], [SellerId]) VALUES (2, CAST(N'2018-09-13T00:00:00.000' AS DateTime), CAST(4000.00 AS Decimal(12, 2)), 2, 4)
INSERT [dbo].[SalesRecord] ([Id], [Date], [Amount], [Status], [SellerId]) VALUES (3, CAST(N'2018-09-01T00:00:00.000' AS DateTime), CAST(8000.00 AS Decimal(12, 2)), 2, 4)
INSERT [dbo].[SalesRecord] ([Id], [Date], [Amount], [Status], [SellerId]) VALUES (4, CAST(N'2018-09-21T00:00:00.000' AS DateTime), CAST(3000.00 AS Decimal(12, 2)), 1, 3)
INSERT [dbo].[SalesRecord] ([Id], [Date], [Amount], [Status], [SellerId]) VALUES (5, CAST(N'2018-09-15T00:00:00.000' AS DateTime), CAST(2000.00 AS Decimal(12, 2)), 1, 1)
INSERT [dbo].[SalesRecord] ([Id], [Date], [Amount], [Status], [SellerId]) VALUES (6, CAST(N'2018-09-28T00:00:00.000' AS DateTime), CAST(13000.00 AS Decimal(12, 2)), 1, 2)
INSERT [dbo].[SalesRecord] ([Id], [Date], [Amount], [Status], [SellerId]) VALUES (7, CAST(N'2018-09-11T00:00:00.000' AS DateTime), CAST(4000.00 AS Decimal(12, 2)), 1, 4)
INSERT [dbo].[SalesRecord] ([Id], [Date], [Amount], [Status], [SellerId]) VALUES (8, CAST(N'2018-09-14T00:00:00.000' AS DateTime), CAST(11000.00 AS Decimal(12, 2)), 1, 6)
INSERT [dbo].[SalesRecord] ([Id], [Date], [Amount], [Status], [SellerId]) VALUES (9, CAST(N'2018-10-01T00:00:00.000' AS DateTime), CAST(12000.00 AS Decimal(12, 2)), 0, 2)
INSERT [dbo].[SalesRecord] ([Id], [Date], [Amount], [Status], [SellerId]) VALUES (10, CAST(N'2018-10-11T00:00:00.000' AS DateTime), CAST(5000.00 AS Decimal(12, 2)), 1, 1)
INSERT [dbo].[SalesRecord] ([Id], [Date], [Amount], [Status], [SellerId]) VALUES (11, CAST(N'2018-10-08T00:00:00.000' AS DateTime), CAST(9000.00 AS Decimal(12, 2)), 1, 4)
INSERT [dbo].[SalesRecord] ([Id], [Date], [Amount], [Status], [SellerId]) VALUES (12, CAST(N'2018-10-22T00:00:00.000' AS DateTime), CAST(3000.00 AS Decimal(12, 2)), 0, 5)
INSERT [dbo].[SalesRecord] ([Id], [Date], [Amount], [Status], [SellerId]) VALUES (13, CAST(N'2018-10-11T00:00:00.000' AS DateTime), CAST(11000.00 AS Decimal(12, 2)), 2, 5)
INSERT [dbo].[SalesRecord] ([Id], [Date], [Amount], [Status], [SellerId]) VALUES (14, CAST(N'2018-10-02T00:00:00.000' AS DateTime), CAST(10000.00 AS Decimal(12, 2)), 0, 2)
SET IDENTITY_INSERT [dbo].[SalesRecord] OFF
GO
SET IDENTITY_INSERT [dbo].[Seller] ON 

INSERT [dbo].[Seller] ([Id], [Name], [Email], [BirthDate], [BaseSalary], [DepartmentId]) VALUES (1, N'Bob Brown', N'bob@gmail.com', CAST(N'1998-04-21T00:00:00.000' AS DateTime), CAST(1000.00 AS Decimal(12, 2)), 1)
INSERT [dbo].[Seller] ([Id], [Name], [Email], [BirthDate], [BaseSalary], [DepartmentId]) VALUES (2, N'Maria Green', N'maria@gmail.com', CAST(N'1979-12-31T00:00:00.000' AS DateTime), CAST(3500.00 AS Decimal(12, 2)), 2)
INSERT [dbo].[Seller] ([Id], [Name], [Email], [BirthDate], [BaseSalary], [DepartmentId]) VALUES (3, N'Alex Grey', N'alex@gmail.com', CAST(N'1988-01-15T00:00:00.000' AS DateTime), CAST(2200.00 AS Decimal(12, 2)), 1)
INSERT [dbo].[Seller] ([Id], [Name], [Email], [BirthDate], [BaseSalary], [DepartmentId]) VALUES (4, N'Martha Red', N'martha@gmail.com', CAST(N'1993-11-30T00:00:00.000' AS DateTime), CAST(3000.00 AS Decimal(12, 2)), 4)
INSERT [dbo].[Seller] ([Id], [Name], [Email], [BirthDate], [BaseSalary], [DepartmentId]) VALUES (5, N'Donald Blue', N'donald@gmail.com', CAST(N'2000-01-09T00:00:00.000' AS DateTime), CAST(4000.00 AS Decimal(12, 2)), 3)
INSERT [dbo].[Seller] ([Id], [Name], [Email], [BirthDate], [BaseSalary], [DepartmentId]) VALUES (6, N'Alex Pink', N'bob@gmail.com', CAST(N'1997-03-04T00:00:00.000' AS DateTime), CAST(3000.00 AS Decimal(12, 2)), 1)
INSERT [dbo].[Seller] ([Id], [Name], [Email], [BirthDate], [BaseSalary], [DepartmentId]) VALUES (9, N'Bob Brown', N'bob@gmail.com', CAST(N'1998-04-21T00:00:00.000' AS DateTime), CAST(1000.00 AS Decimal(12, 2)), 1)
SET IDENTITY_INSERT [dbo].[Seller] OFF
GO
ALTER TABLE [dbo].[SalesRecord]  WITH CHECK ADD FOREIGN KEY([SellerId])
REFERENCES [dbo].[Seller] ([Id])
GO
ALTER TABLE [dbo].[Seller]  WITH CHECK ADD FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([Id])
GO
