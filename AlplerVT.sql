USE [AlplerVT]
GO
/****** Object:  Table [dbo].[bom_entry]    Script Date: 5.07.2021 17:41:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bom_entry](
	[entry_id] [int] NOT NULL,
	[product] [text] NULL,
	[amount] [int] NOT NULL,
	[parent_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[entry_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 5.07.2021 17:41:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Carts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OperationClaims]    Script Date: 5.07.2021 17:41:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OperationClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_OperationClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Options]    Script Date: 5.07.2021 17:41:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Options](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[ParentID] [int] NULL,
	[GrandParentId] [int] NULL,
 CONSTRAINT [PK_options] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 5.07.2021 17:41:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](50) NULL,
	[CartId] [int] NULL,
	[UserId] [int] NULL,
	[CustomizationId] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductOptions]    Script Date: 5.07.2021 17:41:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductOptions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[OptionId] [int] NOT NULL,
 CONSTRAINT [PK_ProductDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 5.07.2021 17:41:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SerialNumber] [nvarchar](50) NULL,
	[StockCode] [nvarchar](50) NULL,
	[CartId] [int] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserCarts]    Script Date: 5.07.2021 17:41:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserCarts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CartId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[CustomizationId] [int] NOT NULL,
	[OptionId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_UserCarts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserOperationClaims]    Script Date: 5.07.2021 17:41:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserOperationClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[OperationClaimId] [int] NOT NULL,
 CONSTRAINT [PK_UserOperationClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 5.07.2021 17:41:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[PasswordSalt] [varbinary](500) NOT NULL,
	[PasswordHash] [varbinary](500) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[bom_entry] ([entry_id], [product], [amount], [parent_id]) VALUES (1, N'Box', 1, NULL)
INSERT [dbo].[bom_entry] ([entry_id], [product], [amount], [parent_id]) VALUES (2, N'Screw', 10, 1)
INSERT [dbo].[bom_entry] ([entry_id], [product], [amount], [parent_id]) VALUES (3, N'Nut', 2, 2)
INSERT [dbo].[bom_entry] ([entry_id], [product], [amount], [parent_id]) VALUES (4, N'Shim', 2, 2)
INSERT [dbo].[bom_entry] ([entry_id], [product], [amount], [parent_id]) VALUES (5, N'Lock', 2, 1)
INSERT [dbo].[bom_entry] ([entry_id], [product], [amount], [parent_id]) VALUES (6, N'Key', 2, 5)
GO
SET IDENTITY_INSERT [dbo].[Carts] ON 

INSERT [dbo].[Carts] ([Id], [UserId], [CreatedDate]) VALUES (36, 2, CAST(N'2021-05-24T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Carts] OFF
GO
SET IDENTITY_INSERT [dbo].[OperationClaims] ON 

INSERT [dbo].[OperationClaims] ([Id], [Name]) VALUES (1, N'admin')
SET IDENTITY_INSERT [dbo].[OperationClaims] OFF
GO
SET IDENTITY_INSERT [dbo].[Options] ON 

INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (1, N'STANDART PULLUK', 1, 0, 0)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (2, N'6 No', 1, 1, 0)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (4, N'7 No', 1, 1, 0)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (5, N'8 No', 1, 1, 0)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (6, N'9 No', 1, 1, 0)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (7, N'10 No', 1, 1, 0)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (8, N'11 No', 1, 1, 0)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (9, N'Tekli', 1, 2, 0)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (10, N'2''li', 1, 2, 0)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (11, N'3''lü', 1, 2, 0)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (12, N'4''lü', 1, 2, 0)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (13, N'5''li', 1, 2, 0)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (14, N'6''lı', 1, 2, 0)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (16, N'Kalın Malzeme', 1, 9, 1)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (17, N'İnce Malzeme', 1, 9, 1)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (19, N'Gövde Ara Uzun', 1, 9, 2)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (21, N'Gövde Ara Kısa', 1, 9, 2)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (22, N'Önü 8 cm Uzun', 1, 9, 3)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (23, N'Önü 16 cm Uzun', 1, 9, 3)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (26, N'22 cm Ara', 1, 9, 4)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (27, N'Kurağız Eks', 1, 9, 5)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (30, N'Yassı Eks', 1, 9, 5)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (32, N'Pimli Eks', 1, 9, 5)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (33, N'80X31 Ok', 1, 9, 6)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (35, N'80X31 Ok - Alçak', 1, 9, 6)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (36, N'Oliver(82) 14 No Kulak', 1, 9, 7)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (37, N'Oliver(86) 16 No Kulak', 1, 9, 7)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (39, N'Oliver(91) 16No Kulak', 1, 9, 7)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (40, N'Oliver(95) 18No Kulak', 1, 9, 7)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (41, N'Parmak Kulak', 1, 9, 7)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (42, N'Trakya(105) Kulak', 1, 9, 7)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (43, N'Trakya(95) Dar Kulak', 1, 9, 7)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (44, N'Trakya(95) Geniş Kulak', 1, 9, 7)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (46, N'X-108 Kulak', 1, 9, 7)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (47, N'X-118 Kulak', 1, 9, 7)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (49, N'X-98 Kulak', 1, 9, 7)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (50, N'X-90 (Alpler) Kulak', 1, 9, 7)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (52, N'10 No Bıçak', 1, 9, 8)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (53, N'12 No Bıçak', 1, 9, 8)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (55, N'14 No Bıçak', 1, 9, 8)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (56, N'16 No Bıçak', 1, 9, 8)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (57, N'18 No Bıçak', 1, 9, 8)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (58, N'10 No Oliver Bıçak', 1, 9, 8)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (59, N'12 No Oliver Bıçak', 1, 9, 8)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (60, N'14 No Oliver Bıçak', 1, 9, 8)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (61, N'X-Tipi Bıçak Kısa', 1, 9, 8)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (62, N'X-Tipi Bıçak Uzun', 1, 9, 8)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (64, N'Trakya Bıçak', 1, 9, 8)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (65, N'Yunan Ana', 1, 9, 9)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (66, N'Bütün', 1, 9, 10)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (67, N'APBK', 1, 9, 10)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (68, N'APB', 1, 9, 10)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (69, N'APK', 1, 9, 10)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (71, N'Yok ', 0, 9, 11)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (72, N'KÜD', 1, 9, 11)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (73, N'AKÜ', 1, 9, 11)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (74, N'Keski Yok ', 0, 9, 12)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (75, N'Yan Keskili', 1, 9, 12)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (76, N'Taban Keskili', 1, 9, 12)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (77, N'Torpilli', 1, 9, 12)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (78, N'Tekersiz', 0, 9, 12)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (79, N'8 No Teker', 1, 9, 13)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (80, N'8 No S Teker', 1, 9, 13)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (81, N'12 No Teker', 1, 9, 13)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (83, N'12 No S Teker', 1, 9, 13)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (84, N'16 No Teker', 1, 9, 13)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (85, N'16 No S Teker', 1, 9, 13)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (89, N'8 TON
', 1, 0, 0)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (90, N'6 cu
', 1, 89, 0)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (91, N'8,4 ton
', 1, 89, 0)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (92, N'Stainless
', 1, 90, 2)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (93, N'Mild Steel
', 1, 90, 2)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (95, N'Chain Spreader
', 1, 90, 3)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (96, N'Computer
', 3, 90, 4)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (97, N'Ground Wheel Drive
', 4, 90, 4)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (98, N'Single Chain
', 4, 95, 1)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (99, N'Twin Chain
', 1, 95, 1)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (100, N'Single Chain
', 1, 96, 1)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (101, N'36 cc
', 1, 89, 5)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (102, N'50 cc
', 5, 89, 5)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (103, N'80 cc T Series
', 5, 95, 6)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (104, N'100 cc T Series
', 6, 95, 6)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (105, N'80 cc S Series
', 6, 95, 6)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (106, N'100 cc S Series', 6, 95, 6)
INSERT [dbo].[Options] ([Id], [Name], [Quantity], [ParentID], [GrandParentId]) VALUES (107, N'2000 mm', 6, 89, 7)
SET IDENTITY_INSERT [dbo].[Options] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductOptions] ON 

INSERT [dbo].[ProductOptions] ([Id], [ProductId], [OptionId]) VALUES (2, 19, 1)
INSERT [dbo].[ProductOptions] ([Id], [ProductId], [OptionId]) VALUES (3, 19, 22)
INSERT [dbo].[ProductOptions] ([Id], [ProductId], [OptionId]) VALUES (4, 19, 30)
INSERT [dbo].[ProductOptions] ([Id], [ProductId], [OptionId]) VALUES (5, 19, 40)
INSERT [dbo].[ProductOptions] ([Id], [ProductId], [OptionId]) VALUES (70, 35, 1)
INSERT [dbo].[ProductOptions] ([Id], [ProductId], [OptionId]) VALUES (71, 35, 9)
INSERT [dbo].[ProductOptions] ([Id], [ProductId], [OptionId]) VALUES (72, 35, 19)
INSERT [dbo].[ProductOptions] ([Id], [ProductId], [OptionId]) VALUES (73, 35, 32)
INSERT [dbo].[ProductOptions] ([Id], [ProductId], [OptionId]) VALUES (74, 35, 39)
INSERT [dbo].[ProductOptions] ([Id], [ProductId], [OptionId]) VALUES (75, 35, 40)
INSERT [dbo].[ProductOptions] ([Id], [ProductId], [OptionId]) VALUES (76, 35, 42)
INSERT [dbo].[ProductOptions] ([Id], [ProductId], [OptionId]) VALUES (77, 35, 47)
INSERT [dbo].[ProductOptions] ([Id], [ProductId], [OptionId]) VALUES (78, 35, 52)
INSERT [dbo].[ProductOptions] ([Id], [ProductId], [OptionId]) VALUES (79, 35, 53)
INSERT [dbo].[ProductOptions] ([Id], [ProductId], [OptionId]) VALUES (80, 35, 56)
INSERT [dbo].[ProductOptions] ([Id], [ProductId], [OptionId]) VALUES (81, 36, 1)
INSERT [dbo].[ProductOptions] ([Id], [ProductId], [OptionId]) VALUES (82, 36, 9)
INSERT [dbo].[ProductOptions] ([Id], [ProductId], [OptionId]) VALUES (83, 36, 19)
INSERT [dbo].[ProductOptions] ([Id], [ProductId], [OptionId]) VALUES (84, 36, 32)
INSERT [dbo].[ProductOptions] ([Id], [ProductId], [OptionId]) VALUES (85, 36, 39)
INSERT [dbo].[ProductOptions] ([Id], [ProductId], [OptionId]) VALUES (86, 36, 40)
INSERT [dbo].[ProductOptions] ([Id], [ProductId], [OptionId]) VALUES (87, 36, 42)
INSERT [dbo].[ProductOptions] ([Id], [ProductId], [OptionId]) VALUES (88, 36, 47)
INSERT [dbo].[ProductOptions] ([Id], [ProductId], [OptionId]) VALUES (89, 36, 52)
INSERT [dbo].[ProductOptions] ([Id], [ProductId], [OptionId]) VALUES (90, 36, 53)
INSERT [dbo].[ProductOptions] ([Id], [ProductId], [OptionId]) VALUES (91, 36, 56)
SET IDENTITY_INSERT [dbo].[ProductOptions] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [SerialNumber], [StockCode], [CartId], [Quantity]) VALUES (19, N'490001', N'SP1500011 ', 36, 1)
INSERT [dbo].[Products] ([Id], [SerialNumber], [StockCode], [CartId], [Quantity]) VALUES (35, N'490002', N'SP1500012', 36, 1)
INSERT [dbo].[Products] ([Id], [SerialNumber], [StockCode], [CartId], [Quantity]) VALUES (36, N'490003', N'SP1500014', 36, 1)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[UserCarts] ON 

INSERT [dbo].[UserCarts] ([Id], [CartId], [UserId], [CustomizationId], [OptionId], [Quantity]) VALUES (1, 1, 1, 1, 1, 1)
INSERT [dbo].[UserCarts] ([Id], [CartId], [UserId], [CustomizationId], [OptionId], [Quantity]) VALUES (2, 1, 2, 1, 2, 3)
INSERT [dbo].[UserCarts] ([Id], [CartId], [UserId], [CustomizationId], [OptionId], [Quantity]) VALUES (3, 1, 2, 1, 13, 3)
INSERT [dbo].[UserCarts] ([Id], [CartId], [UserId], [CustomizationId], [OptionId], [Quantity]) VALUES (4, 1, 2, 1, 15, 3)
INSERT [dbo].[UserCarts] ([Id], [CartId], [UserId], [CustomizationId], [OptionId], [Quantity]) VALUES (5, 1, 2, 1, 17, 3)
INSERT [dbo].[UserCarts] ([Id], [CartId], [UserId], [CustomizationId], [OptionId], [Quantity]) VALUES (6, 1, 2, 1, 2, 3)
INSERT [dbo].[UserCarts] ([Id], [CartId], [UserId], [CustomizationId], [OptionId], [Quantity]) VALUES (7, 1, 2, 1, 2, 3)
INSERT [dbo].[UserCarts] ([Id], [CartId], [UserId], [CustomizationId], [OptionId], [Quantity]) VALUES (8, 1, 2, 1, 2, 3)
INSERT [dbo].[UserCarts] ([Id], [CartId], [UserId], [CustomizationId], [OptionId], [Quantity]) VALUES (9, 2, 2, 1, 2, 3)
INSERT [dbo].[UserCarts] ([Id], [CartId], [UserId], [CustomizationId], [OptionId], [Quantity]) VALUES (10, 2, 2, 1, 2, 3)
INSERT [dbo].[UserCarts] ([Id], [CartId], [UserId], [CustomizationId], [OptionId], [Quantity]) VALUES (11, 2, 2, 1, 2, 3)
INSERT [dbo].[UserCarts] ([Id], [CartId], [UserId], [CustomizationId], [OptionId], [Quantity]) VALUES (12, 2, 2, 1, 2, 3)
INSERT [dbo].[UserCarts] ([Id], [CartId], [UserId], [CustomizationId], [OptionId], [Quantity]) VALUES (13, 2, 2, 1, 2, 3)
INSERT [dbo].[UserCarts] ([Id], [CartId], [UserId], [CustomizationId], [OptionId], [Quantity]) VALUES (14, 2, 2, 1, 2, 3)
INSERT [dbo].[UserCarts] ([Id], [CartId], [UserId], [CustomizationId], [OptionId], [Quantity]) VALUES (15, 2, 2, 1, 2, 3)
INSERT [dbo].[UserCarts] ([Id], [CartId], [UserId], [CustomizationId], [OptionId], [Quantity]) VALUES (16, 2, 2, 1, 2, 3)
INSERT [dbo].[UserCarts] ([Id], [CartId], [UserId], [CustomizationId], [OptionId], [Quantity]) VALUES (17, 2, 2, 1, 2, 3)
INSERT [dbo].[UserCarts] ([Id], [CartId], [UserId], [CustomizationId], [OptionId], [Quantity]) VALUES (18, 2, 2, 1, 2, 3)
INSERT [dbo].[UserCarts] ([Id], [CartId], [UserId], [CustomizationId], [OptionId], [Quantity]) VALUES (19, 2, 2, 1, 2, 3)
INSERT [dbo].[UserCarts] ([Id], [CartId], [UserId], [CustomizationId], [OptionId], [Quantity]) VALUES (20, 2, 2, 1, 2, 3)
INSERT [dbo].[UserCarts] ([Id], [CartId], [UserId], [CustomizationId], [OptionId], [Quantity]) VALUES (21, 2, 2, 1, 2, 3)
INSERT [dbo].[UserCarts] ([Id], [CartId], [UserId], [CustomizationId], [OptionId], [Quantity]) VALUES (22, 3, 2, 1, 2, 3)
INSERT [dbo].[UserCarts] ([Id], [CartId], [UserId], [CustomizationId], [OptionId], [Quantity]) VALUES (23, 3, 2, 1, 2, 3)
INSERT [dbo].[UserCarts] ([Id], [CartId], [UserId], [CustomizationId], [OptionId], [Quantity]) VALUES (24, 3, 2, 1, 2, 3)
INSERT [dbo].[UserCarts] ([Id], [CartId], [UserId], [CustomizationId], [OptionId], [Quantity]) VALUES (25, 3, 2, 1, 2, 3)
INSERT [dbo].[UserCarts] ([Id], [CartId], [UserId], [CustomizationId], [OptionId], [Quantity]) VALUES (26, 3, 2, 1, 2, 3)
INSERT [dbo].[UserCarts] ([Id], [CartId], [UserId], [CustomizationId], [OptionId], [Quantity]) VALUES (27, 3, 3, 1, 2, 3)
INSERT [dbo].[UserCarts] ([Id], [CartId], [UserId], [CustomizationId], [OptionId], [Quantity]) VALUES (28, 3, 3, 1, 2, 3)
INSERT [dbo].[UserCarts] ([Id], [CartId], [UserId], [CustomizationId], [OptionId], [Quantity]) VALUES (29, 3, 3, 1, 2, 3)
INSERT [dbo].[UserCarts] ([Id], [CartId], [UserId], [CustomizationId], [OptionId], [Quantity]) VALUES (30, 3, 2, 1, 2, 3)
INSERT [dbo].[UserCarts] ([Id], [CartId], [UserId], [CustomizationId], [OptionId], [Quantity]) VALUES (31, 3, 2, 1, 2, 3)
INSERT [dbo].[UserCarts] ([Id], [CartId], [UserId], [CustomizationId], [OptionId], [Quantity]) VALUES (32, 1, 2, 1, 2, 1)
INSERT [dbo].[UserCarts] ([Id], [CartId], [UserId], [CustomizationId], [OptionId], [Quantity]) VALUES (33, 3, 2, 1, 2, 3)
INSERT [dbo].[UserCarts] ([Id], [CartId], [UserId], [CustomizationId], [OptionId], [Quantity]) VALUES (34, 3, 2, 1, 2, 3)
INSERT [dbo].[UserCarts] ([Id], [CartId], [UserId], [CustomizationId], [OptionId], [Quantity]) VALUES (35, 3, 2, 1, 2, 3)
INSERT [dbo].[UserCarts] ([Id], [CartId], [UserId], [CustomizationId], [OptionId], [Quantity]) VALUES (36, 3, 2, 1, 2, 3)
INSERT [dbo].[UserCarts] ([Id], [CartId], [UserId], [CustomizationId], [OptionId], [Quantity]) VALUES (37, 3, 2, 1, 2, 3)
INSERT [dbo].[UserCarts] ([Id], [CartId], [UserId], [CustomizationId], [OptionId], [Quantity]) VALUES (38, 3, 2, 1, 2, 3)
INSERT [dbo].[UserCarts] ([Id], [CartId], [UserId], [CustomizationId], [OptionId], [Quantity]) VALUES (39, 3, 2, 1, 9, 3)
INSERT [dbo].[UserCarts] ([Id], [CartId], [UserId], [CustomizationId], [OptionId], [Quantity]) VALUES (40, 3, 2, 1, 9, 3)
SET IDENTITY_INSERT [dbo].[UserCarts] OFF
GO
SET IDENTITY_INSERT [dbo].[UserOperationClaims] ON 

INSERT [dbo].[UserOperationClaims] ([Id], [UserId], [OperationClaimId]) VALUES (1, 2, 1)
SET IDENTITY_INSERT [dbo].[UserOperationClaims] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [PasswordSalt], [PasswordHash], [Status]) VALUES (2, N'Muhammed', N'AKIN', N'm.akin4990@gmail.com', 0xCD62216BF088226E9D0FEB4BCDF8A83B0BC30CE7E06D410463C9C4DCAD0944F05B25294238583B686D6E7C033000E3A8670EBD4CC52F1C11D47CC85CD5B8F5760C7C5A3846809022B3205FAA325D34E5282AE017493157DB46A0FCD8F88DDA9EBDD04D11EF655A670B0C519715E698C590E20F82C8011B46B11F1E02FAE0FD44, 0xFE56C74C6239C88B1E691D2DE02F3C67CF0FB3A3DD1668F85E6CDC083857EAED59B65910D3BA3606BD668F096056067E4946B7912C5D2188B6B87A32767C3FF3, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [PasswordSalt], [PasswordHash], [Status]) VALUES (3, N'Serhat', N'SERMET', N'serhatsermet@gmail.com', 0xE1E45A3B020D11B57EBA05144903619DC7461AAB0D9499C3FC60F8F554A26DF7441D714415F35543D868E6114CE84DC74E02DE2BB2514AFC72873C2C75F604E301C0CCA8F0B3AF2C4CB8DB2E55465AEE085DCA7D487C44E0C4295D1A65CE134195514C3C0A6DC5BF952E60FF6812B13EE2F9E09F21F5E532FAD852836049F148, 0x377828BA99C62AC7886F66295304728358810DCA08E1E7E1CFED10A5F690EE2DC72C14F4310CAC64DDF825D158FED2AE9D8B0338BFC3709018F2AC4C823ADB7B, 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[bom_entry]  WITH CHECK ADD FOREIGN KEY([parent_id])
REFERENCES [dbo].[bom_entry] ([entry_id])
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_Users]
GO
ALTER TABLE [dbo].[ProductOptions]  WITH CHECK ADD  CONSTRAINT [FK_ProductOptions_options] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Options] ([Id])
GO
ALTER TABLE [dbo].[ProductOptions] CHECK CONSTRAINT [FK_ProductOptions_options]
GO
ALTER TABLE [dbo].[ProductOptions]  WITH CHECK ADD  CONSTRAINT [FK_ProductOptions_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[ProductOptions] CHECK CONSTRAINT [FK_ProductOptions_Products]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Carts] FOREIGN KEY([CartId])
REFERENCES [dbo].[Carts] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Carts]
GO
ALTER TABLE [dbo].[UserOperationClaims]  WITH CHECK ADD  CONSTRAINT [FK_UserOperationClaims_OperationClaims] FOREIGN KEY([OperationClaimId])
REFERENCES [dbo].[OperationClaims] ([Id])
GO
ALTER TABLE [dbo].[UserOperationClaims] CHECK CONSTRAINT [FK_UserOperationClaims_OperationClaims]
GO
ALTER TABLE [dbo].[UserOperationClaims]  WITH CHECK ADD  CONSTRAINT [FK_UserOperationClaims_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserOperationClaims] CHECK CONSTRAINT [FK_UserOperationClaims_Users]
GO
