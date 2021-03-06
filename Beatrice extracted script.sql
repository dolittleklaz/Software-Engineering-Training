USE [Beatrice]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 11/23/2019 5:47:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] NOT NULL,
	[FirstName] [varchar](255) NOT NULL,
	[LastName] [varchar](255) NOT NULL,
	[Email] [varchar](255) NULL,
	[PhoneNumber] [int] NOT NULL,
	[CustomerAddress] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerOrder]    Script Date: 11/23/2019 5:47:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerOrder](
	[CustomerID] [int] NOT NULL,
	[OrderID] [int] NOT NULL,
	[OrderDate] [date] NOT NULL,
	[Quantity] [int] NOT NULL,
	[OrderDescription] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC,
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Distproduct]    Script Date: 11/23/2019 5:47:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Distproduct](
	[DistributorID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[DistProductID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DistributorID] ASC,
	[ProductID] ASC,
	[DistProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Distributor]    Script Date: 11/23/2019 5:47:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Distributor](
	[DistributorID] [int] NOT NULL,
	[DistributorName] [varchar](255) NOT NULL,
	[ManufacturerID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DistributorID] ASC,
	[ManufacturerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item]    Script Date: 11/23/2019 5:47:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
	[ProductID] [int] NOT NULL,
	[CustomerID] [int] NOT NULL,
	[OrderID] [int] NOT NULL,
	[OrderAmount] [int] NOT NULL,
	[TransactionDate] [date] NULL,
	[ShipDate] [date] NULL,
	[PayID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[CustomerID] ASC,
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 11/23/2019 5:47:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturer](
	[ManufacturerID] [int] NOT NULL,
	[ManufacturerName] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ManufacturerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 11/23/2019 5:47:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[PayID] [int] NOT NULL,
	[Paytype] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PayID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11/23/2019 5:47:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] NOT NULL,
	[ProductName] [varchar](255) NULL,
	[ProductDescription] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Email], [PhoneNumber], [CustomerAddress]) VALUES (1, N'Divine', N'Laari', N'Divine@yahoo.com', -1398, N'Fairfax City Rd')
INSERT [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Email], [PhoneNumber], [CustomerAddress]) VALUES (2, N'Daniella', N'Laari', N'Daniella@yahoo.com', -9363, N'Fair Oaks way')
INSERT [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Email], [PhoneNumber], [CustomerAddress]) VALUES (3, N'Dasia', N'Laari', N'Dasia@yahoo.com', -2437, N'Fair Lakes')
INSERT [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Email], [PhoneNumber], [CustomerAddress]) VALUES (4, N'James', N'Laari', N'James@yahoo.com', -1688, N'Falls Church')
INSERT [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Email], [PhoneNumber], [CustomerAddress]) VALUES (5, N'Darius', N'laari', N'Darius@yahoo.com', -5301, N'708 manassas circle')
INSERT [dbo].[CustomerOrder] ([CustomerID], [OrderID], [OrderDate], [Quantity], [OrderDescription]) VALUES (1, 20, CAST(N'2019-01-05' AS Date), 20, N'SHOES')
INSERT [dbo].[CustomerOrder] ([CustomerID], [OrderID], [OrderDate], [Quantity], [OrderDescription]) VALUES (2, 3, CAST(N'2019-02-10' AS Date), 5, N'DRESSES')
INSERT [dbo].[CustomerOrder] ([CustomerID], [OrderID], [OrderDate], [Quantity], [OrderDescription]) VALUES (3, 2, CAST(N'2019-03-15' AS Date), 1, N'WATCH')
INSERT [dbo].[CustomerOrder] ([CustomerID], [OrderID], [OrderDate], [Quantity], [OrderDescription]) VALUES (4, 1, CAST(N'2019-06-09' AS Date), 2, N'HAND BAGS')
INSERT [dbo].[CustomerOrder] ([CustomerID], [OrderID], [OrderDate], [Quantity], [OrderDescription]) VALUES (5, 6, CAST(N'2019-10-09' AS Date), 3, N'BLAZER')
INSERT [dbo].[Distproduct] ([DistributorID], [ProductID], [DistProductID]) VALUES (100, 101, 10)
INSERT [dbo].[Distproduct] ([DistributorID], [ProductID], [DistProductID]) VALUES (100, 101, 16)
INSERT [dbo].[Distproduct] ([DistributorID], [ProductID], [DistProductID]) VALUES (200, 204, 11)
INSERT [dbo].[Distproduct] ([DistributorID], [ProductID], [DistProductID]) VALUES (300, 507, 12)
INSERT [dbo].[Distproduct] ([DistributorID], [ProductID], [DistProductID]) VALUES (400, 308, 13)
INSERT [dbo].[Distproduct] ([DistributorID], [ProductID], [DistProductID]) VALUES (500, 493, 15)
INSERT [dbo].[Distributor] ([DistributorID], [DistributorName], [ManufacturerID]) VALUES (100, N'Automotive products', 4)
INSERT [dbo].[Distributor] ([DistributorID], [DistributorName], [ManufacturerID]) VALUES (200, N'Sysco', 3)
INSERT [dbo].[Distributor] ([DistributorID], [DistributorName], [ManufacturerID]) VALUES (300, N'Industrial supplies', 5)
INSERT [dbo].[Distributor] ([DistributorID], [DistributorName], [ManufacturerID]) VALUES (400, N'Electronic Items', 1)
INSERT [dbo].[Distributor] ([DistributorID], [DistributorName], [ManufacturerID]) VALUES (500, N'Sports Products', 2)
INSERT [dbo].[Item] ([ProductID], [CustomerID], [OrderID], [OrderAmount], [TransactionDate], [ShipDate], [PayID]) VALUES (101, 1, 20, 50, CAST(N'2019-11-09' AS Date), CAST(N'2019-11-10' AS Date), 2)
INSERT [dbo].[Item] ([ProductID], [CustomerID], [OrderID], [OrderAmount], [TransactionDate], [ShipDate], [PayID]) VALUES (204, 2, 3, 160, CAST(N'2019-01-10' AS Date), CAST(N'2019-01-02' AS Date), 5)
INSERT [dbo].[Item] ([ProductID], [CustomerID], [OrderID], [OrderAmount], [TransactionDate], [ShipDate], [PayID]) VALUES (308, 4, 1, 50, CAST(N'2019-07-28' AS Date), CAST(N'2019-07-29' AS Date), 3)
INSERT [dbo].[Item] ([ProductID], [CustomerID], [OrderID], [OrderAmount], [TransactionDate], [ShipDate], [PayID]) VALUES (493, 5, 6, 400, CAST(N'2019-01-10' AS Date), CAST(N'2019-01-02' AS Date), 1)
INSERT [dbo].[Item] ([ProductID], [CustomerID], [OrderID], [OrderAmount], [TransactionDate], [ShipDate], [PayID]) VALUES (507, 3, 2, 15, CAST(N'2019-03-15' AS Date), CAST(N'2019-03-16' AS Date), 4)
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (1, N' General Electric')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (2, N'microsoft')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (3, N'Boeing')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (4, N'General Motors Co')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (5, N'Philipps')
INSERT [dbo].[Payment] ([PayID], [Paytype]) VALUES (1, N' Credit card')
INSERT [dbo].[Payment] ([PayID], [Paytype]) VALUES (2, N'Check')
INSERT [dbo].[Payment] ([PayID], [Paytype]) VALUES (3, N'Paypal')
INSERT [dbo].[Payment] ([PayID], [Paytype]) VALUES (4, N'money order')
INSERT [dbo].[Payment] ([PayID], [Paytype]) VALUES (5, N'Cashiers check')
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductDescription]) VALUES (101, N' Shoes', N'heel')
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductDescription]) VALUES (204, N'Jacket', N'leather')
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductDescription]) VALUES (308, N'Blazer', N'fitted')
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductDescription]) VALUES (493, N'Watch', N'gold')
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductDescription]) VALUES (507, N'Candle', N'scented')
ALTER TABLE [dbo].[CustomerOrder]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Distproduct]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Distributor]  WITH CHECK ADD FOREIGN KEY([ManufacturerID])
REFERENCES [dbo].[Manufacturer] ([ManufacturerID])
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD FOREIGN KEY([CustomerID], [OrderID])
REFERENCES [dbo].[CustomerOrder] ([CustomerID], [OrderID])
GO
