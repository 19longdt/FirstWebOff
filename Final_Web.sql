USE [Final_Web]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 31/03/2021 22:53:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Username] [varchar](20) NOT NULL,
	[Password] [varchar](20) NULL,
	[Security code] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 31/03/2021 22:53:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cid] [int] NOT NULL,
	[cname] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 31/03/2021 22:53:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[fid] [int] IDENTITY(1,1) NOT NULL,
	[details] [nvarchar](max) NULL,
	[status] [int] NULL,
	[account] [nvarchar](20) NULL,
	[mail] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[fid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrder]    Script Date: 31/03/2021 22:53:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrder](
	[OrderID] [int] NOT NULL,
	[TotalMoney] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrderDetail]    Script Date: 31/03/2021 22:53:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrderDetail](
	[OrderID] [int] NOT NULL,
	[ProductName] [nvarchar](30) NULL,
	[Price] [int] NULL,
	[Amount] [int] NULL,
	[Into_Money] [int] NULL,
	[ProductID] [int] NULL,
	[status] [int] NULL,
	[date] [nvarchar](20) NULL,
	[account] [nvarchar](20) NULL,
	[Address] [nvarchar](50) NULL,
	[phone] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProduct]    Script Date: 31/03/2021 22:53:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProduct](
	[ProductId] [int] NOT NULL,
	[ProductName] [nvarchar](30) NULL,
	[Price] [int] NULL,
	[Amount] [int] NULL,
	[ImgUrl] [nvarchar](50) NULL,
	[cid] [int] NULL,
	[Description] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 31/03/2021 22:53:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUser](
	[Account] [nvarchar](20) NULL,
	[Pass] [nvarchar](20) NULL,
	[Name] [nvarchar](30) NULL,
	[DateOfBirth] [date] NULL,
	[Gender] [int] NULL,
	[Address] [nvarchar](50) NULL,
	[Question] [nvarchar](100) NULL,
	[Answer] [nvarchar](50) NULL,
	[Phone] [int] NULL,
	[Email] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Admin] ([Username], [Password], [Security code]) VALUES (N'Admin', N'123', N'321')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (1, N'iPhone')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (2, N'Mac')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (3, N'Watch')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (4, N'Music')
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([fid], [details], [status], [account], [mail]) VALUES (1, N'Good Jobs!!!', 1, N'Longdt 123', N'19longdt.fptu@gmail.com')
INSERT [dbo].[Feedback] ([fid], [details], [status], [account], [mail]) VALUES (6, N'Good!!!
:D', 1, N'Loind', N'nguyenducloi@gmail.com')
INSERT [dbo].[Feedback] ([fid], [details], [status], [account], [mail]) VALUES (7, N'ggggg', 1, N'Longdt', N'19longdt.fptu@gmail.com')
INSERT [dbo].[Feedback] ([fid], [details], [status], [account], [mail]) VALUES (8, N'anh long dz', 1, N'Loind', N'nguyenducloi@gmail.com')
INSERT [dbo].[Feedback] ([fid], [details], [status], [account], [mail]) VALUES (9, N'aaa', 1, N'Longdt', N'19longdt.fptu@gmail.com')
INSERT [dbo].[Feedback] ([fid], [details], [status], [account], [mail]) VALUES (10, N'OK Good!', 0, N'Longdt', N'19longdt.fptu@gmail.com')
SET IDENTITY_INSERT [dbo].[Feedback] OFF
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (2, 1550)
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (3, 190)
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (4, 2000)
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (5, 1250)
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (6, 500)
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (7, 11000)
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (8, 500)
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (9, 300)
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (10, 1000)
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (11, 120)
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (12, 400)
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (13, 200)
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (14, 200)
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (15, 400)
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (16, 900)
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (17, 3600)
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (18, 5400)
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (19, 2500)
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (20, 402)
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (21, 3900)
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (22, 300)
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (23, 101)
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (24, 300)
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (25, 300)
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (26, 101)
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (27, 101)
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (28, 101)
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (29, 202)
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (30, 202)
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (31, 301)
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (32, 300)
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (33, 250)
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (34, 101)
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (35, 250)
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (36, 101)
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (37, 101)
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (38, 1050)
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (39, 303)
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (40, 303)
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (41, 300)
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (42, 600)
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (43, 300)
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (44, 300)
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (45, 1300)
INSERT [dbo].[tblOrder] ([OrderID], [TotalMoney]) VALUES (46, 280)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (3, N'IPhone X ProMax 256GB', 150, 1, 150, 4, 1, N'02-02-2021', N'Longdt', NULL, NULL)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (4, N'Macbook Air 2018', 1000, 2, 2000, 18, 1, N'02-02-2021', N'Loind', NULL, NULL)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (17, N'Macbook Air 2019', 1200, 3, 3600, 19, 1, N'2021-03-24', N'Mitmit', N'ThÃ´n 8', 816198207)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (18, N'Macbook Pro 2019', 1800, 3, 5400, 22, 1, N'2021-03-24', N'Mitmit', N'ThÃ´n 8', 816198207)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (2, N'IPhone 11 64GB', 200, 4, 800, 5, 1, N'02-02-2021', N'Longdt', NULL, NULL)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (2, N'IPhone 12 Mini 64GB', 250, 3, 750, 8, 1, N'02-02-2021', N'Longdt', NULL, NULL)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (5, N'IPhone 12 Mini 64GB', 250, 5, 1250, 8, 1, N'02-02-2021', N'Longdt', NULL, NULL)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (6, N'IPhone 12 Mini 64GB', 250, 2, 500, 8, 1, N'02-02-2021', N'Loind', NULL, NULL)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (7, N'Macbook Air 2018', 1000, 6, 6000, 18, 1, N'02-02-2021', N'Loind', NULL, NULL)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (8, N'AirPods', 150, 2, 300, 25, 1, N'02-02-2021', N'Loind', NULL, NULL)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (8, N'IPhone 11 64GB', 200, 1, 200, 5, 1, N'02-02-2021', N'Loind', NULL, NULL)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (10, N'Macbook Air 2018', 1000, 1, 1000, 18, 1, N'2021-03-21', N'Longdt', N'thon 9', 123456789)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (20, N'Apple Watch Series 1', 201, 2, 402, 24, 1, N'2021-03-28', N'Mitmit', N'Ha Noi', 356963706)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (7, N'Macbook Pro 2020', 2000, 5, 10000, 23, 1, N'02-02-2021', N'Loind', NULL, NULL)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (21, N'IPhone 12 128GB', 300, 13, 3900, 10, 1, N'2021-03-28', N'kdhung', N'0816198207', 816198207)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (3, N'IPhone 11 64GB', 200, 7, 1400, 5, 1, N'02-02-2021', N'Longdt', NULL, NULL)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (7, N'Apple Watch Series 1', 200, 2, 400, 24, 1, N'02-02-2021', N'Loind', NULL, NULL)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (22, N'IPhone 12', 300, 1, 300, 10, 1, N'2021-03-29', N'Longdt', N'thon 9', 123456789)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (23, N'IPhone X 64GB', 101, 1, 101, 1, 0, N'2021-03-30', N'Longdt', N'thon 9', 123456789)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (29, N'IPhone X 64GB', 101, 2, 202, 1, 0, N'2021-03-30', N'Longdt', N'thon 9', 123456789)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (31, N'IPhone X 64GB', 101, 1, 101, 1, 1, N'2021-03-30', N'Longdt', N'thon 9', 123456789)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (31, N'IPhone 11 64GB', 200, 1, 200, 5, 1, N'2021-03-30', N'Longdt', N'thon 9', 123456789)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (37, N'IPhone X 64GB', 101, 1, 101, 1, 1, N'2021-03-30', N'Longdt', N'thon 9', 123456789)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (41, N'IPhone 12', 300, 1, 300, 10, 0, N'2021-03-30', N'Longdt', N'thon 9', 123456789)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (3, N'IPhone 12', 300, 1, 300, 10, 1, N'2021-03-31', N'Longdt', N'thon 9', 123456789)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (45, N'IPhone X Pro 128GB', 130, 10, 1300, 3, 2, N'2021-03-31', N'Longdt', N'thon 9', 123456789)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (12, N'Apple Watch Series 1', 200, 2, 400, 24, 1, N'2021-03-23', N'Longdt', N'thon 9', 123456789)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (39, N'IPhone X 64GB', 101, 3, 303, 1, 1, N'2021-03-30', N'Longdt', N'thon 9', 123456789)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (16, N'IPhone X 64GB', 100, 9, 900, 1, 1, N'2021-03-23', N'Longdt', N'thon 9', 123456789)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (19, N'Macbook Air 2018', 1000, 1, 1000, 18, 1, N'2021-03-24', N'Longdt', N'thon 9 Thach Hoa', 123456789)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (19, N'Macbook Air 2020', 1500, 1, 1500, 20, 1, N'2021-03-24', N'Longdt', N'thon 9 Thach Hoa', 123456789)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (36, N'IPhone X 64GB', 101, 1, 101, 1, 1, N'2021-03-30', N'Longdt', N'thon 9', 123456789)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (43, N'IPhone 12', 300, 1, 300, 10, 2, N'2021-03-31', N'Longdt', N'thon 9', 123456789)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (11, N'IPhone X 128GB', 120, 1, 120, 2, 1, N'2021-03-23', N'Longdt', N'thon 9', 123456789)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (40, N'IPhone X 64GB', 101, 3, 303, 1, 1, N'2021-03-30', N'Longdt', N'thon 9', 123456789)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (42, N'IPhone 12', 300, 2, 600, 10, 0, N'2021-03-31', N'Longdt', N'thon 9', 123456789)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (44, N'IPhone 12', 300, 1, 300, 10, 2, N'2021-03-31', N'Longdt', N'thon 9', 123456789)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (27, N'IPhone X 64GB', 101, 1, 101, 1, 1, N'2021-03-30', N'Longdt', NULL, 123)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (32, N'IPhone 12', 300, 1, 300, 10, 1, N'2021-03-30', N'Longdt', N'thon 9', 123456789)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (33, N'IPhone 12 Mini 64GB', 250, 1, 250, 8, 1, N'2021-03-30', N'Longdt', N'thon 9', 123456789)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (35, N'IPhone 12 Mini 64GB', 250, 1, 250, 8, 1, N'2021-03-30', N'Mitmit', N'Ha Noi', 356963706)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (38, N'AirPods', 150, 7, 1050, 25, 1, N'2021-03-30', N'Longdt', N'thon 9', 123456789)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (3, N'IPhone 12', 300, 1, 300, 10, 1, N'2021-03-31', N'Longdt', N'thon 9', 123456789)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (46, N'IPhone X Pro 128GB', 130, 1, 130, 3, 0, N'2021-03-31', N'Longdt', N'thon 9', 123456789)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (46, N'IPhone X ProMax 256GB', 150, 1, 150, 4, 0, N'2021-03-31', N'Longdt', N'thon 9', 123456789)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (28, N'IPhone X 64GB', 101, 1, 101, 1, 0, N'2021-03-30', N'Longdt', NULL, 123)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (30, N'IPhone X 64GB', 101, 2, 202, 1, 0, N'2021-03-30', N'Longdt', N'thon 9', 123456789)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductName], [Price], [Amount], [Into_Money], [ProductID], [status], [date], [account], [Address], [phone]) VALUES (34, N'IPhone X 64GB', 101, 1, 101, 1, 1, N'2021-03-30', N'Longdt', N'thon 9', 123456789)
INSERT [dbo].[tblProduct] ([ProductId], [ProductName], [Price], [Amount], [ImgUrl], [cid], [Description]) VALUES (1, N'IPhone X 64GB', 101, 0, N'ipX.PNG', 1, N'OLED, 5.8", Super Retina - iOS 11.1.1, upgradable to iOS 14.4 - 2 camera 12 MP - 7 MP - Apple A11 Bionic (10 nm) - 3 GB - 64 GB - LiIon 2716 mAh, nonremovable (10.35 Wh)')
INSERT [dbo].[tblProduct] ([ProductId], [ProductName], [Price], [Amount], [ImgUrl], [cid], [Description]) VALUES (2, N'IPhone X 128GB', 120, 0, N'ipX.PNG', 1, N'OLED, 5.8", Super Retina - iOS 11.1.1, upgradable to iOS 14.4 - 2 camera 12 MP - 7 MP - Apple A11 Bionic (10 nm) - 3 GB - 64 GB - LiIon 2716 mAh, nonremovable (10.35 Wh)')
INSERT [dbo].[tblProduct] ([ProductId], [ProductName], [Price], [Amount], [ImgUrl], [cid], [Description]) VALUES (3, N'IPhone X Pro 128GB', 130, 9, N'ipXPro.PNG', 1, N'OLED, 5.8", Super Retina - iOS 11.1.1, upgradable to iOS 14.4 - 2 camera 12 MP - 7 MP - Apple A11 Bionic (10 nm) - 3 GB - 64 GB - LiIon 2716 mAh, nonremovable (10.35 Wh)')
INSERT [dbo].[tblProduct] ([ProductId], [ProductName], [Price], [Amount], [ImgUrl], [cid], [Description]) VALUES (4, N'IPhone X ProMax 256GB', 150, 8, N'ipXProMax.PNG', 1, N'OLED, 5.8", Super Retina - iOS 11.1.1, upgradable to iOS 14.4 - 2 camera 12 MP - 7 MP - Apple A11 Bionic (10 nm) - 3 GB - 64 GB - LiIon 2716 mAh, nonremovable (10.35 Wh)')
INSERT [dbo].[tblProduct] ([ProductId], [ProductName], [Price], [Amount], [ImgUrl], [cid], [Description]) VALUES (5, N'IPhone 11 64GB', 200, 3, N'ip11.PNG', 1, N'OLED, 5.8", Super Retina - iOS 11.1.1, upgradable to iOS 14.4 - 2 camera 12 MP - 7 MP - Apple A11 Bionic (10 nm) - 3 GB - 64 GB - LiIon 2716 mAh, nonremovable (10.35 Wh)')
INSERT [dbo].[tblProduct] ([ProductId], [ProductName], [Price], [Amount], [ImgUrl], [cid], [Description]) VALUES (6, N'IPhone 11 256GB', 210, 19, N'ip11.PNG', 1, N'OLED, 5.8", Super Retina - iOS 11.1.1, upgradable to iOS 14.4 - 2 camera 12 MP - 7 MP - Apple A11 Bionic (10 nm) - 3 GB - 64 GB - LiIon 2716 mAh, nonremovable (10.35 Wh)')
INSERT [dbo].[tblProduct] ([ProductId], [ProductName], [Price], [Amount], [ImgUrl], [cid], [Description]) VALUES (7, N'IPhone 11 128GB', 220, 21, N'ip11.PNG', 1, N'OLED, 5.8", Super Retina - iOS 11.1.1, upgradable to iOS 14.4 - 2 camera 12 MP - 7 MP - Apple A11 Bionic (10 nm) - 3 GB - 64 GB - LiIon 2716 mAh, nonremovable (10.35 Wh)')
INSERT [dbo].[tblProduct] ([ProductId], [ProductName], [Price], [Amount], [ImgUrl], [cid], [Description]) VALUES (8, N'IPhone 12 Mini 64GB', 250, 18, N'ip12mini.PNG', 1, N'OLED, 5.8", Super Retina - iOS 11.1.1, upgradable to iOS 14.4 - 2 camera 12 MP - 7 MP - Apple A11 Bionic (10 nm) - 3 GB - 64 GB - LiIon 2716 mAh, nonremovable (10.35 Wh)')
INSERT [dbo].[tblProduct] ([ProductId], [ProductName], [Price], [Amount], [ImgUrl], [cid], [Description]) VALUES (9, N'IPhone 12 64GB', 280, 18, N'ip12.PNG', 1, N'OLED, 5.8", Super Retina - iOS 11.1.1, upgradable to iOS 14.4 - 2 camera 12 MP - 7 MP - Apple A11 Bionic (10 nm) - 3 GB - 64 GB - LiIon 2716 mAh, nonremovable (10.35 Wh)')
INSERT [dbo].[tblProduct] ([ProductId], [ProductName], [Price], [Amount], [ImgUrl], [cid], [Description]) VALUES (10, N'IPhone 12', 300, 6, N'ip12.PNG', 1, N'OLED, 5.8", Super Retina - iOS 11.1.1, upgradable to iOS 14.4 - 2 camera 12 MP - 7 MP - Apple A11 Bionic (10 nm) - 3 GB - 64 GB - LiIon 2716 mAh, nonremovable (10.35 Wh)')
INSERT [dbo].[tblProduct] ([ProductId], [ProductName], [Price], [Amount], [ImgUrl], [cid], [Description]) VALUES (11, N'IPhone 12 Pro 128GB', 330, 27, N'ip12Pro.PNG', 1, N'OLED, 5.8", Super Retina - iOS 11.1.1, upgradable to iOS 14.4 - 2 camera 12 MP - 7 MP - Apple A11 Bionic (10 nm) - 3 GB - 64 GB - LiIon 2716 mAh, nonremovable (10.35 Wh)')
INSERT [dbo].[tblProduct] ([ProductId], [ProductName], [Price], [Amount], [ImgUrl], [cid], [Description]) VALUES (12, N'IPhone 12 Pro Max 128GB', 350, 22, N'ip12ProMax.PNG', 1, N'OLED, 5.8", Super Retina - iOS 11.1.1, upgradable to iOS 14.4 - 2 camera 12 MP - 7 MP - Apple A11 Bionic (10 nm) - 3 GB - 64 GB - LiIon 2716 mAh, nonremovable (10.35 Wh)')
INSERT [dbo].[tblProduct] ([ProductId], [ProductName], [Price], [Amount], [ImgUrl], [cid], [Description]) VALUES (13, N'IPhone 12 256GB', 399, 4, N'ip12.PNG', 1, N'OLED, 5.8", Super Retina - iOS 11.1.1, upgradable to iOS 14.4 - 2 camera 12 MP - 7 MP - Apple A11 Bionic (10 nm) - 3 GB - 64 GB - LiIon 2716 mAh, nonremovable (10.35 Wh)')
INSERT [dbo].[tblProduct] ([ProductId], [ProductName], [Price], [Amount], [ImgUrl], [cid], [Description]) VALUES (14, N'IPhone 12 Pro 256GB', 400, 25, N'ip12Pro.PNG', 1, N'OLED, 5.8", Super Retina - iOS 11.1.1, upgradable to iOS 14.4 - 2 camera 12 MP - 7 MP - Apple A11 Bionic (10 nm) - 3 GB - 64 GB - LiIon 2716 mAh, nonremovable (10.35 Wh)')
INSERT [dbo].[tblProduct] ([ProductId], [ProductName], [Price], [Amount], [ImgUrl], [cid], [Description]) VALUES (15, N'IPhone 12 Pro Max 256GB', 410, 25, N'ip12ProMax.PNG', 1, N'OLED, 5.8", Super Retina - iOS 11.1.1, upgradable to iOS 14.4 - 2 camera 12 MP - 7 MP - Apple A11 Bionic (10 nm) - 3 GB - 64 GB - LiIon 2716 mAh, nonremovable (10.35 Wh)')
INSERT [dbo].[tblProduct] ([ProductId], [ProductName], [Price], [Amount], [ImgUrl], [cid], [Description]) VALUES (16, N'IPhone 12 Pro 512GB', 420, 20, N'ip12Pro.PNG', 1, N'OLED, 5.8", Super Retina - iOS 11.1.1, upgradable to iOS 14.4 - 2 camera 12 MP - 7 MP - Apple A11 Bionic (10 nm) - 3 GB - 64 GB - LiIon 2716 mAh, nonremovable (10.35 Wh)')
INSERT [dbo].[tblProduct] ([ProductId], [ProductName], [Price], [Amount], [ImgUrl], [cid], [Description]) VALUES (17, N'IPhone 12 Pro Max 512GB', 500, 25, N'ip12ProMax.PNG', 1, N'OLED, 5.8", Super Retina - iOS 11.1.1, upgradable to iOS 14.4 - 2 camera 12 MP - 7 MP - Apple A11 Bionic (10 nm) - 3 GB - 64 GB - LiIon 2716 mAh, nonremovable (10.35 Wh)')
INSERT [dbo].[tblProduct] ([ProductId], [ProductName], [Price], [Amount], [ImgUrl], [cid], [Description]) VALUES (18, N'Macbook Air 2018', 1000, 18, N'macair2018.jpg', 2, N'13.3 inch (diagonal) LED backlit display with IPS technology - macOS - 720p FaceTime HD camera - None - Apple M1 chip - 8GB, 16GB - 256GB, 512GB, 1TB or 2TB - Up to 17 hours wireless web, Up to 20 hours Apple TV app movie playback ')
INSERT [dbo].[tblProduct] ([ProductId], [ProductName], [Price], [Amount], [ImgUrl], [cid], [Description]) VALUES (19, N'Macbook Air 2019', 1200, 17, N'macair2019.png', 2, N'13.3 inch (diagonal) LED backlit display with IPS technology - macOS - 720p FaceTime HD camera - None - Apple M1 chip - 8GB, 16GB - 256GB, 512GB, 1TB or 2TB - Up to 17 hours wireless web, Up to 20 hours Apple TV app movie playback ')
INSERT [dbo].[tblProduct] ([ProductId], [ProductName], [Price], [Amount], [ImgUrl], [cid], [Description]) VALUES (20, N'Macbook Air 2020', 1500, 21, N'macair2020.jpg', 2, N'13.3 inch (diagonal) LED backlit display with IPS technology - macOS - 720p FaceTime HD camera - None - Apple M1 chip - 8GB, 16GB - 256GB, 512GB, 1TB or 2TB - Up to 17 hours wireless web, Up to 20 hours Apple TV app movie playback ')
INSERT [dbo].[tblProduct] ([ProductId], [ProductName], [Price], [Amount], [ImgUrl], [cid], [Description]) VALUES (21, N'Macbook Pro 2018', 1500, 22, N'macpro2018.jpg', 2, N'13.3 inch (diagonal) LED backlit display with IPS technology - macOS - 720p FaceTime HD camera - None - Apple M1 chip - 8GB, 16GB - 256GB, 512GB, 1TB or 2TB - Up to 17 hours wireless web, Up to 20 hours Apple TV app movie playback ')
INSERT [dbo].[tblProduct] ([ProductId], [ProductName], [Price], [Amount], [ImgUrl], [cid], [Description]) VALUES (22, N'Macbook Pro 2019', 1800, 7, N'macpro2019.jpg', 2, N'13.3 inch (diagonal) LED backlit display with IPS technology - macOS - 720p FaceTime HD camera - None - Apple M1 chip - 8GB, 16GB - 256GB, 512GB, 1TB or 2TB - Up to 17 hours wireless web, Up to 20 hours Apple TV app movie playback ')
INSERT [dbo].[tblProduct] ([ProductId], [ProductName], [Price], [Amount], [ImgUrl], [cid], [Description]) VALUES (23, N'Macbook Pro 2020', 2000, 10, N'macpro2020.jpg', 2, N'13.3 inch (diagonal) LED backlit display with IPS technology - macOS - 720p FaceTime HD camera - None - Apple M1 chip - 8GB, 16GB - 256GB, 512GB, 1TB or 2TB - Up to 17 hours wireless web, Up to 20 hours Apple TV app movie playback ')
INSERT [dbo].[tblProduct] ([ProductId], [ProductName], [Price], [Amount], [ImgUrl], [cid], [Description]) VALUES (24, N'Apple Watch Series 1', 201, 4, N'AppleWatch.PNG', 3, N'13.3 inch (diagonal) LED backlit display with IPS technology - macOS - 720p FaceTime HD camera - None - Apple M1 chip - 8GB, 16GB - 256GB, 512GB, 1TB or 2TB - Up to 17 hours wireless web, Up to 20 hours Apple TV app movie playback ')
INSERT [dbo].[tblProduct] ([ProductId], [ProductName], [Price], [Amount], [ImgUrl], [cid], [Description]) VALUES (25, N'AirPods', 150, 8, N'airpod.jpg', 4, N'13.3 inch (diagonal) LED backlit display with IPS technology - macOS - 720p FaceTime HD camera - None - Apple M1 chip - 8GB, 16GB - 256GB, 512GB, 1TB or 2TB - Up to 17 hours wireless web, Up to 20 hours Apple TV app movie playback ')
INSERT [dbo].[tblUser] ([Account], [Pass], [Name], [DateOfBirth], [Gender], [Address], [Question], [Answer], [Phone], [Email]) VALUES (N'Longdt', N'123', N'Do Tuan Long', CAST(N'2000-08-19' AS Date), 1, N'thon 9', N'What is your dream job?', N'Dev', 123456789, N'19longdt.fptu@gmail.com')
INSERT [dbo].[tblUser] ([Account], [Pass], [Name], [DateOfBirth], [Gender], [Address], [Question], [Answer], [Phone], [Email]) VALUES (N'Loind', N'123', N'Nguyen Duc Loi', CAST(N'2000-01-01' AS Date), 0, N'Tan Xa', N'What is your dream job?', N'Dev', 123456789, NULL)
INSERT [dbo].[tblUser] ([Account], [Pass], [Name], [DateOfBirth], [Gender], [Address], [Question], [Answer], [Phone], [Email]) VALUES (N'Mitmit', N'123', N'Dinh Nga', CAST(N'2000-06-05' AS Date), 1, N'Ha Noi', N'What is your dream job?', N'Dev', 356963706, N'dinhphuongnga06052002@gmail.com')
INSERT [dbo].[tblUser] ([Account], [Pass], [Name], [DateOfBirth], [Gender], [Address], [Question], [Answer], [Phone], [Email]) VALUES (N'kdhung', N'123', N'Khuat Dinh Hung', CAST(N'2021-01-03' AS Date), 1, N'0816198207', N'What is your dream job?', N'Dev', 816198207, NULL)
INSERT [dbo].[tblUser] ([Account], [Pass], [Name], [DateOfBirth], [Gender], [Address], [Question], [Answer], [Phone], [Email]) VALUES (N'test1', N'123', N'Äá» Long', CAST(N'2021-01-03' AS Date), 1, N'ThÃ´n 8', N'What is your dream job?', N'Dev', NULL, NULL)
INSERT [dbo].[tblUser] ([Account], [Pass], [Name], [DateOfBirth], [Gender], [Address], [Question], [Answer], [Phone], [Email]) VALUES (N'tess', N'123', N'123', CAST(N'2021-01-03' AS Date), 1, N'ThÃ´n 8', N'What is your dream job?', N'Dev', NULL, NULL)
ALTER TABLE [dbo].[tblOrderDetail]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[tblOrder] ([OrderID])
GO
ALTER TABLE [dbo].[tblOrderDetail]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[tblOrder] ([OrderID])
GO
ALTER TABLE [dbo].[tblProduct]  WITH CHECK ADD FOREIGN KEY([cid])
REFERENCES [dbo].[Category] ([cid])
GO
