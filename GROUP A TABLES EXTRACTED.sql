USE [Helen]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 11/10/2019 4:05:19 PM ******/
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
/****** Object:  Table [dbo].[CustomerOrder]    Script Date: 11/10/2019 4:05:19 PM ******/
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
/****** Object:  Table [dbo].[Item]    Script Date: 11/10/2019 4:05:19 PM ******/
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
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[CustomerID] ASC,
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11/10/2019 4:05:19 PM ******/
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
INSERT [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Email], [PhoneNumber], [CustomerAddress]) VALUES (1, N'HELEN', N'OLUWASEYI', N'helen@gmail.com', 663785323, N'Viginia')
INSERT [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Email], [PhoneNumber], [CustomerAddress]) VALUES (2, N'BEATRICE', N'LAARI', N'blaar@gmail.com', 787313729, N'Maryland')
INSERT [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Email], [PhoneNumber], [CustomerAddress]) VALUES (3, N'FAVOR', N'OLU', N'utas@yahoo.com', 373647828, N'WashingtonDC')
INSERT [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Email], [PhoneNumber], [CustomerAddress]) VALUES (4, N'IYANU', N'SEUN', N'hdsk@gmail.com', 289743799, N'NEW YORK')
INSERT [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Email], [PhoneNumber], [CustomerAddress]) VALUES (5, N'BUNMI', N'OLAYINKA', N'ksfdsas@gmail.com', 838345876, N'NEW JERSEY')
INSERT [dbo].[CustomerOrder] ([CustomerID], [OrderID], [OrderDate], [Quantity], [OrderDescription]) VALUES (1, 5656, CAST(N'2019-12-07' AS Date), 60, N'XS')
INSERT [dbo].[CustomerOrder] ([CustomerID], [OrderID], [OrderDate], [Quantity], [OrderDescription]) VALUES (2, 7689, CAST(N'2019-11-08' AS Date), 67, N'L')
INSERT [dbo].[CustomerOrder] ([CustomerID], [OrderID], [OrderDate], [Quantity], [OrderDescription]) VALUES (3, 876, CAST(N'2019-10-07' AS Date), 79, N'M')
INSERT [dbo].[CustomerOrder] ([CustomerID], [OrderID], [OrderDate], [Quantity], [OrderDescription]) VALUES (4, 9786, CAST(N'2019-02-09' AS Date), 56, N'XXL')
INSERT [dbo].[CustomerOrder] ([CustomerID], [OrderID], [OrderDate], [Quantity], [OrderDescription]) VALUES (5, 6876, CAST(N'2019-11-04' AS Date), 86, N'M')
INSERT [dbo].[Item] ([ProductID], [CustomerID], [OrderID], [OrderAmount], [TransactionDate], [ShipDate]) VALUES (254, 1, 5656, 60, CAST(N'2019-12-08' AS Date), CAST(N'2019-12-09' AS Date))
INSERT [dbo].[Item] ([ProductID], [CustomerID], [OrderID], [OrderAmount], [TransactionDate], [ShipDate]) VALUES (387, 2, 7689, 87, CAST(N'2019-11-09' AS Date), CAST(N'2019-11-10' AS Date))
INSERT [dbo].[Item] ([ProductID], [CustomerID], [OrderID], [OrderAmount], [TransactionDate], [ShipDate]) VALUES (545, 3, 876, 90, CAST(N'2019-10-08' AS Date), CAST(N'2019-10-09' AS Date))
INSERT [dbo].[Item] ([ProductID], [CustomerID], [OrderID], [OrderAmount], [TransactionDate], [ShipDate]) VALUES (787, 4, 9786, 77, CAST(N'2019-02-09' AS Date), CAST(N'2019-02-10' AS Date))
INSERT [dbo].[Item] ([ProductID], [CustomerID], [OrderID], [OrderAmount], [TransactionDate], [ShipDate]) VALUES (877, 5, 6876, 60, CAST(N'2019-11-04' AS Date), CAST(N'2019-11-05' AS Date))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductDescription]) VALUES (254, N'Shoe', N'Loafer')
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductDescription]) VALUES (387, N'books', N'higher education')
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductDescription]) VALUES (545, N'shirts', N'wool')
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductDescription]) VALUES (787, N'Wedding Gown', N'dress')
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductDescription]) VALUES (877, N'Jackets', N'fur')
ALTER TABLE [dbo].[CustomerOrder]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD FOREIGN KEY([CustomerID], [OrderID])
REFERENCES [dbo].[CustomerOrder] ([CustomerID], [OrderID])
GO
