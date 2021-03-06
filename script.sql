USE [iyanu]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 11/16/2019 3:37:41 PM ******/
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
/****** Object:  Table [dbo].[CustomerOrder]    Script Date: 11/16/2019 3:37:41 PM ******/
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
/****** Object:  Table [dbo].[Dist_prod]    Script Date: 11/16/2019 3:37:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dist_prod](
	[ProductID] [int] NOT NULL,
	[DistributorID] [int] NOT NULL,
	[Distributor_productID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[DistributorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Distributor]    Script Date: 11/16/2019 3:37:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Distributor](
	[DistributorID] [int] NOT NULL,
	[DistributorName] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DistributorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item]    Script Date: 11/16/2019 3:37:41 PM ******/
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
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 11/16/2019 3:37:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturer](
	[ManufacturerID] [int] NOT NULL,
	[ManufacturerName] [text] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ManufacturerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 11/16/2019 3:37:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[PayID] [int] NOT NULL,
	[PayType] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PayID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11/16/2019 3:37:41 PM ******/
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
INSERT [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Email], [PhoneNumber], [CustomerAddress]) VALUES (1, N'IYANU', N'OLAYINKA', N'iyanu.kay@gmail.com', 1234567788, N'Maryland')
INSERT [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Email], [PhoneNumber], [CustomerAddress]) VALUES (2, N'BUNMI', N'ABUBAKRE', N'bumsabubs@gmail.com', 766355739, N'Atlanta')
INSERT [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Email], [PhoneNumber], [CustomerAddress]) VALUES (3, N'ADEBOLA', N'OGUNWALE', N'adeboguns@yahoo.com', 556893292, N'California')
INSERT [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Email], [PhoneNumber], [CustomerAddress]) VALUES (4, N'TIMILEHIN', N'OLAYINKA', N'timbasea@yahoo.com', 623727390, N'Ohio')
INSERT [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Email], [PhoneNumber], [CustomerAddress]) VALUES (5, N'KAYODE', N'ABUBAKRE', N'kaybabu@gmail.com', 763279383, N'Chicago')
INSERT [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Email], [PhoneNumber], [CustomerAddress]) VALUES (6, N'BUKOLA', N'SALAMI', N'bukii@yahoo.com', 677874682, N'Nebraska')
INSERT [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Email], [PhoneNumber], [CustomerAddress]) VALUES (7, N'OYINDAMOLA', N'EKUNTUYI', N'oyinlee@gmail.com', 867354372, N'South Carolina')
INSERT [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Email], [PhoneNumber], [CustomerAddress]) VALUES (8, N'DANIEL', N'PABLO', N'danpab@gmail.com', 632706439, N'Alabama')
INSERT [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Email], [PhoneNumber], [CustomerAddress]) VALUES (9, N'ANITA', N'ADIOLE', N'aadiole@gmail.com', 983932893, N'Washington DC')
INSERT [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Email], [PhoneNumber], [CustomerAddress]) VALUES (10, N'DEMIAN', N'UDAKA', N'udude@yahoo.com', 742678998, N'New Jersey')
INSERT [dbo].[CustomerOrder] ([CustomerID], [OrderID], [OrderDate], [Quantity], [OrderDescription]) VALUES (1, 37865, CAST(N'2019-11-05' AS Date), 50, N'XS')
INSERT [dbo].[CustomerOrder] ([CustomerID], [OrderID], [OrderDate], [Quantity], [OrderDescription]) VALUES (2, 74352, CAST(N'2019-07-06' AS Date), 18, N'XXL')
INSERT [dbo].[CustomerOrder] ([CustomerID], [OrderID], [OrderDate], [Quantity], [OrderDescription]) VALUES (2, 83463, CAST(N'2019-11-01' AS Date), 10, N'L')
INSERT [dbo].[CustomerOrder] ([CustomerID], [OrderID], [OrderDate], [Quantity], [OrderDescription]) VALUES (2, 93719, CAST(N'2019-11-05' AS Date), 10, N'XS')
INSERT [dbo].[CustomerOrder] ([CustomerID], [OrderID], [OrderDate], [Quantity], [OrderDescription]) VALUES (3, 38743, CAST(N'2019-10-05' AS Date), 26, N'M')
INSERT [dbo].[CustomerOrder] ([CustomerID], [OrderID], [OrderDate], [Quantity], [OrderDescription]) VALUES (3, 83463, CAST(N'2019-10-05' AS Date), 76, N'M')
INSERT [dbo].[CustomerOrder] ([CustomerID], [OrderID], [OrderDate], [Quantity], [OrderDescription]) VALUES (4, 83463, CAST(N'2019-10-06' AS Date), 10, N'XS')
INSERT [dbo].[CustomerOrder] ([CustomerID], [OrderID], [OrderDate], [Quantity], [OrderDescription]) VALUES (5, 9737, CAST(N'2019-11-07' AS Date), 60, N'S')
INSERT [dbo].[CustomerOrder] ([CustomerID], [OrderID], [OrderDate], [Quantity], [OrderDescription]) VALUES (6, 37453, CAST(N'2019-11-05' AS Date), 70, N'M')
INSERT [dbo].[CustomerOrder] ([CustomerID], [OrderID], [OrderDate], [Quantity], [OrderDescription]) VALUES (7, 29380, CAST(N'2019-09-09' AS Date), 16, N'XXXL')
INSERT [dbo].[CustomerOrder] ([CustomerID], [OrderID], [OrderDate], [Quantity], [OrderDescription]) VALUES (7, 73434, CAST(N'2019-11-07' AS Date), 20, N'XXL')
INSERT [dbo].[CustomerOrder] ([CustomerID], [OrderID], [OrderDate], [Quantity], [OrderDescription]) VALUES (8, 67784, CAST(N'2019-11-02' AS Date), 95, N'L')
INSERT [dbo].[CustomerOrder] ([CustomerID], [OrderID], [OrderDate], [Quantity], [OrderDescription]) VALUES (9, 98324, CAST(N'2019-11-02' AS Date), 75, N'S')
INSERT [dbo].[CustomerOrder] ([CustomerID], [OrderID], [OrderDate], [Quantity], [OrderDescription]) VALUES (10, 58983, CAST(N'2019-12-05' AS Date), 50, N'L')
INSERT [dbo].[Dist_prod] ([ProductID], [DistributorID], [Distributor_productID]) VALUES (238, 1, 1)
INSERT [dbo].[Dist_prod] ([ProductID], [DistributorID], [Distributor_productID]) VALUES (238, 2, 3)
INSERT [dbo].[Dist_prod] ([ProductID], [DistributorID], [Distributor_productID]) VALUES (725, 1, 2)
INSERT [dbo].[Dist_prod] ([ProductID], [DistributorID], [Distributor_productID]) VALUES (786, 3, 4)
INSERT [dbo].[Dist_prod] ([ProductID], [DistributorID], [Distributor_productID]) VALUES (786, 6, 9)
INSERT [dbo].[Dist_prod] ([ProductID], [DistributorID], [Distributor_productID]) VALUES (872, 1, 5)
INSERT [dbo].[Dist_prod] ([ProductID], [DistributorID], [Distributor_productID]) VALUES (872, 3, 6)
INSERT [dbo].[Dist_prod] ([ProductID], [DistributorID], [Distributor_productID]) VALUES (872, 4, 7)
INSERT [dbo].[Dist_prod] ([ProductID], [DistributorID], [Distributor_productID]) VALUES (872, 5, 10)
INSERT [dbo].[Dist_prod] ([ProductID], [DistributorID], [Distributor_productID]) VALUES (986, 5, 8)
INSERT [dbo].[Distributor] ([DistributorID], [DistributorName]) VALUES (1, N'Amazon')
INSERT [dbo].[Distributor] ([DistributorID], [DistributorName]) VALUES (2, N'Ebay')
INSERT [dbo].[Distributor] ([DistributorID], [DistributorName]) VALUES (3, N'Aliexpress')
INSERT [dbo].[Distributor] ([DistributorID], [DistributorName]) VALUES (4, N'Asus')
INSERT [dbo].[Distributor] ([DistributorID], [DistributorName]) VALUES (5, N'DHgate')
INSERT [dbo].[Distributor] ([DistributorID], [DistributorName]) VALUES (6, N'Fashion Nova')
INSERT [dbo].[Item] ([ProductID], [CustomerID], [OrderID], [OrderAmount], [TransactionDate], [ShipDate], [PayID]) VALUES (238, 1, 37865, 100, CAST(N'2019-11-06' AS Date), CAST(N'2019-11-07' AS Date), 1)
INSERT [dbo].[Item] ([ProductID], [CustomerID], [OrderID], [OrderAmount], [TransactionDate], [ShipDate], [PayID]) VALUES (238, 2, 74352, 80, CAST(N'2019-07-08' AS Date), CAST(N'2019-07-10' AS Date), 2)
INSERT [dbo].[Item] ([ProductID], [CustomerID], [OrderID], [OrderAmount], [TransactionDate], [ShipDate], [PayID]) VALUES (238, 3, 38743, 7, CAST(N'2019-10-06' AS Date), CAST(N'2019-10-07' AS Date), 2)
INSERT [dbo].[Item] ([ProductID], [CustomerID], [OrderID], [OrderAmount], [TransactionDate], [ShipDate], [PayID]) VALUES (238, 7, 29380, 8, CAST(N'2019-10-10' AS Date), CAST(N'2019-10-11' AS Date), 5)
INSERT [dbo].[Item] ([ProductID], [CustomerID], [OrderID], [OrderAmount], [TransactionDate], [ShipDate], [PayID]) VALUES (725, 2, 83463, 90, CAST(N'2019-11-04' AS Date), CAST(N'2019-11-07' AS Date), 2)
INSERT [dbo].[Item] ([ProductID], [CustomerID], [OrderID], [OrderAmount], [TransactionDate], [ShipDate], [PayID]) VALUES (725, 5, 9737, 90, CAST(N'2019-11-08' AS Date), CAST(N'2019-11-10' AS Date), 3)
INSERT [dbo].[Item] ([ProductID], [CustomerID], [OrderID], [OrderAmount], [TransactionDate], [ShipDate], [PayID]) VALUES (725, 6, 37453, 50, CAST(N'2019-11-06' AS Date), CAST(N'2019-11-07' AS Date), 4)
INSERT [dbo].[Item] ([ProductID], [CustomerID], [OrderID], [OrderAmount], [TransactionDate], [ShipDate], [PayID]) VALUES (786, 3, 83463, 20, CAST(N'2019-10-08' AS Date), CAST(N'2019-10-09' AS Date), 2)
INSERT [dbo].[Item] ([ProductID], [CustomerID], [OrderID], [OrderAmount], [TransactionDate], [ShipDate], [PayID]) VALUES (786, 10, 58983, 2, CAST(N'2019-12-08' AS Date), CAST(N'2019-12-09' AS Date), 3)
INSERT [dbo].[Item] ([ProductID], [CustomerID], [OrderID], [OrderAmount], [TransactionDate], [ShipDate], [PayID]) VALUES (872, 2, 93719, 23, CAST(N'2019-11-06' AS Date), CAST(N'2019-11-08' AS Date), 2)
INSERT [dbo].[Item] ([ProductID], [CustomerID], [OrderID], [OrderAmount], [TransactionDate], [ShipDate], [PayID]) VALUES (872, 7, 73434, 12, CAST(N'2019-11-08' AS Date), CAST(N'2019-11-09' AS Date), 5)
INSERT [dbo].[Item] ([ProductID], [CustomerID], [OrderID], [OrderAmount], [TransactionDate], [ShipDate], [PayID]) VALUES (986, 4, 83463, 60, CAST(N'2019-10-07' AS Date), CAST(N'2019-10-09' AS Date), 3)
INSERT [dbo].[Item] ([ProductID], [CustomerID], [OrderID], [OrderAmount], [TransactionDate], [ShipDate], [PayID]) VALUES (986, 8, 67784, 265, CAST(N'2019-11-02' AS Date), CAST(N'2019-11-09' AS Date), 5)
INSERT [dbo].[Item] ([ProductID], [CustomerID], [OrderID], [OrderAmount], [TransactionDate], [ShipDate], [PayID]) VALUES (986, 9, 98324, 11, CAST(N'2019-11-05' AS Date), CAST(N'2019-11-08' AS Date), 4)
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (1, N'ADIDAS')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (2, N'NIKE')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (3, N'CALVIN KLEIN')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (4, N'REEBOK')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (5, N'PUMA')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (6, N'JUST FAB')
INSERT [dbo].[Payment] ([PayID], [PayType]) VALUES (1, N'Credit Card')
INSERT [dbo].[Payment] ([PayID], [PayType]) VALUES (2, N'Gift Card')
INSERT [dbo].[Payment] ([PayID], [PayType]) VALUES (3, N'PayPal')
INSERT [dbo].[Payment] ([PayID], [PayType]) VALUES (4, N'Alipay')
INSERT [dbo].[Payment] ([PayID], [PayType]) VALUES (5, N'Googlepay')
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductDescription]) VALUES (238, N'Sweat Pant', N'Cotton')
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductDescription]) VALUES (725, N'Winter Jacket', N'Fur')
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductDescription]) VALUES (786, N'Romper', N'Polyster')
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductDescription]) VALUES (872, N'Wedding Gown', N'Satin')
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductDescription]) VALUES (986, N'Cardigan', N'wool')
ALTER TABLE [dbo].[CustomerOrder]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Dist_prod]  WITH CHECK ADD FOREIGN KEY([DistributorID])
REFERENCES [dbo].[Distributor] ([DistributorID])
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD FOREIGN KEY([CustomerID], [OrderID])
REFERENCES [dbo].[CustomerOrder] ([CustomerID], [OrderID])
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD FOREIGN KEY([PayID])
REFERENCES [dbo].[Payment] ([PayID])
GO
