USE [master]
GO
/****** Object:  Database [PRN211]    Script Date: 7/24/2022 2:00:21 AM ******/
CREATE DATABASE [ThanhToan247]
GO
USE [ThanhToan247]
GO
CREATE TABLE [dbo].[CardCode](
	[CardCodeID] [int] IDENTITY(1,1) NOT NULL,
	[SeriCode] [varchar](50) NULL,
	[PinCode] [varchar](50) NULL,
	[CardPriceID] [int] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_CardCode] PRIMARY KEY CLUSTERED 
(
	[CardCodeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CardPrice]    Script Date: 7/24/2022 2:00:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CardPrice](
	[CardPriceID] [int] IDENTITY(1,1) NOT NULL,
	[Price] [float] NULL,
	[SupplierID] [int] NULL,
	[Discount] [float] NULL,
 CONSTRAINT [PK_CardPrice] PRIMARY KEY CLUSTERED 
(
	[CardPriceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contact]    Script Date: 7/24/2022 2:00:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](10) NULL,
	[Phone] [nchar](10) NULL,
	[Email] [nchar](10) NULL,
	[Subject] [nchar](10) NULL,
	[Message] [nchar](10) NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HistoryRecharge]    Script Date: 7/24/2022 2:00:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistoryRecharge](
	[RechargeID] [int] IDENTITY(1,1) NOT NULL,
	[TransactionID] [nvarchar](50) NULL,
	[Money] [float] NULL,
	[Time] [datetime2](0) NULL,
	[UserID] [int] NULL,
 CONSTRAINT [PK_HistoryRecharge] PRIMARY KEY CLUSTERED 
(
	[RechargeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order]    Script Date: 7/24/2022 2:00:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderCode] [nvarchar](9) NULL,
	[Quantity] [int] NULL,
	[PriceOrder] [float] NULL,
	[Time] [datetime] NULL,
	[UserID] [int] NOT NULL,
	[CardCodeID] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 7/24/2022 2:00:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[SupplierID] [int] IDENTITY(1,1) NOT NULL,
	[SupplierName] [nvarchar](50) NULL,
	[CardTypeName] [nvarchar](50) NULL,
	[Image] [nvarchar](550) NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 7/24/2022 2:00:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](20) NOT NULL,
	[Password] [varchar](20) NOT NULL,
	[Email] [varchar](320) NOT NULL,
	[RemainingMoney] [float] NOT NULL,
	[TotalMoneyLoaded] [float] NOT NULL,
	[Discount] [float] NULL,
	[Avatar] [varchar](300) NULL,
	[Role] [bit] NULL,
	[Status] [bit] NOT NULL,
	[TimeCreated] [date] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CardCode] ON 

INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (13, N'31482402042', N'456341946353', 1, 0)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (14, N'74929492842', N'365173748562', 1, 0)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (15, N'74929420824', N'264583625475', 2, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (16, N'21939482420', N'374541438495', 2, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (17, N'09492842942', N'275153840384', 2, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (18, N'89042949294', N'736749198366', 3, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (19, N'74628492402', N'276392764625', 3, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (20, N'23929492040', N'172545253749', 3, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (21, N'273846374748', N'484739463726', 3, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (23, N'927837485623', N'485747463764', 5, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (24, N'283940562415', N'293754738364', 5, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (25, N'293546782918', N'283774836622', 6, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (26, N'374895735263', N'738464736252', 7, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (27, N'374895735263', N'893046573821', 8, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (28, N'784563029362', N'902365879201', 9, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (29, N'846352736251', N'384957389201', 10, 0)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (30, N'36517374', N'1328492056294840', 11, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (31, N'26458362', N'1635663419564782', 12, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (32, N'37454143', N'0982738148592893', 13, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (33, N'27515384', N'4828592053819405', 14, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (34, N'16467848', N'8937174849274724', 15, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (35, N'44458485', N'1428592950259295', 16, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (36, N'52344123', N'7124899204183841', 17, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (37, N'11258864', N'8625183917239301', 18, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (38, N'90236587', N'0624892948940204', 19, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (39, N'17254525', N'8728492048402941', 20, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (40, N'99303721655', N'5579172283651', 5, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (41, N'31538751211', N'4236399788324', 66, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (42, N'60777300466', N'8496944388773', 104, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (43, N'51457799541', N'6265989585318', 21, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (44, N'61682041883', N'9714153949140', 109, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (45, N'58566250704', N'3824651178465', 59, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (46, N'83028387819', N'3559665329797', 117, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (47, N'14942943103', N'4039948938283', 156, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (48, N'29258655297', N'2338972417174', 33, 0)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (49, N'45483488956', N'7696816344880', 153, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (50, N'62020108534', N'3955506331992', 12, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (51, N'31782304267', N'2475319763195', 52, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (52, N'29984809926', N'4778366646788', 72, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (53, N'69607949675', N'8684419537132', 127, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (54, N'48392263297', N'9948393026941', 78, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (55, N'95711403752', N'9407113953183', 23, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (56, N'84195964047', N'9722097642247', 61, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (57, N'86224437553', N'6620460019839', 40, 0)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (58, N'94965553633', N'8288323977478', 85, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (59, N'54324865244', N'6939689299857', 61, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (60, N'29295192165', N'3450437221965', 39, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (61, N'43630300504', N'5840635142104', 4, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (62, N'95965093217', N'4827295874653', 108, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (63, N'99696451678', N'6746619386978', 116, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (65, N'91364985977', N'8509033281099', 23, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (66, N'47652462060', N'8337969378264', 85, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (67, N'13423805097', N'7121023804623', 4, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (68, N'10036239372', N'1780219249653', 53, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (69, N'92269308113', N'1203204478168', 144, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (70, N'80696321926', N'6818458159393', 148, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (71, N'21252976426', N'4953677101500', 124, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (72, N'53070637227', N'3728974440102', 75, 0)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (73, N'90238910684', N'7282591643152', 123, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (74, N'50283024075', N'8869114327596', 14, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (75, N'22509218876', N'5335574018799', 91, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (76, N'34404178290', N'4992513590560', 151, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (77, N'79856100277', N'7430835484287', 119, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (78, N'56557237315', N'8115931156151', 87, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (80, N'68428389863', N'5494451736191', 134, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (81, N'29216354373', N'3143352802360', 144, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (82, N'36480388437', N'8771975000306', 112, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (83, N'38587184267', N'2548840530822', 146, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (84, N'62056232616', N'6204542488091', 19, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (85, N'67694997509', N'6200302083725', 149, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (86, N'92725416530', N'3017838751017', 134, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (87, N'41993163491', N'2151445915976', 109, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (88, N'35850906240', N'3958034910023', 38, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (89, N'54489883989', N'4706748644250', 125, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (91, N'80542787044', N'9457822795724', 25, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (92, N'25315687946', N'4244788491291', 101, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (93, N'79903252861', N'4854358119641', 121, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (94, N'46781699113', N'4917085500542', 56, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (96, N'74571071600', N'7135023274637', 125, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (97, N'91408916208', N'2994734288002', 130, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (99, N'43651573207', N'2757562761263', 145, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (100, N'25995991395', N'3421857009791', 31, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (101, N'79997233635', N'6663499743792', 115, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (102, N'20947626127', N'6246285871631', 32, 0)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (103, N'65955777792', N'3704711607627', 57, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (104, N'54147228845', N'2701215969966', 84, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (105, N'75162404760', N'5922877317876', 43, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (106, N'16117299507', N'5734414668635', 99, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (107, N'73129485576', N'8373312674701', 72, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (108, N'90954889850', N'7411886305283', 57, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (109, N'90628451271', N'3243175312789', 28, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (110, N'81216577318', N'2825816209529', 108, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (111, N'17559512607', N'8881333661896', 35, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (112, N'96013870083', N'2311888728233', 7, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (113, N'81492472825', N'6893819247505', 19, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (115, N'62111403174', N'8912281442840', 116, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (116, N'24776640119', N'7802025221882', 149, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (117, N'33542200706', N'7028404526214', 89, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (118, N'70326005183', N'9297068682047', 15, 1)
GO
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (120, N'56001303733', N'3111455667713', 83, 0)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (122, N'82718094750', N'9715152233586', 141, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (123, N'47864282898', N'8589814680333', 64, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (124, N'15994154968', N'1058970390664', 45, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (125, N'83273697425', N'9042719498711', 124, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (126, N'15607605858', N'2026226169355', 46, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (127, N'88256290565', N'8384583633123', 28, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (128, N'92715919862', N'1482467930382', 138, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (129, N'11373598070', N'7949568244130', 36, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (130, N'85449675973', N'2440188747429', 129, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (131, N'48156973438', N'1646103714172', 5, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (132, N'15250917928', N'7902783921313', 158, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (133, N'18723749146', N'2978502600805', 149, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (134, N'44899040286', N'7131914615986', 107, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (135, N'83791284533', N'9820997782433', 121, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (136, N'47969272911', N'8051622597932', 23, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (137, N'87334279732', N'9671820251708', 101, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (138, N'20472097699', N'1097844966277', 60, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (139, N'55178950499', N'9564534892766', 12, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (140, N'53663337947', N'7860897562227', 120, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (141, N'91587406389', N'8114133764425', 100, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (143, N'43670613747', N'6035391660798', 21, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (144, N'51753820638', N'6715700857943', 139, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (145, N'24992456344', N'7330407398033', 149, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (146, N'95414821082', N'4849642693819', 89, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (147, N'66695557639', N'2351499247628', 2, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (148, N'62727717642', N'7364615469470', 61, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (149, N'71572802237', N'2588516642282', 83, 0)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (150, N'56366085020', N'5906326411246', 110, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (151, N'65024045718', N'3966623729842', 29, 0)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (152, N'61701522272', N'7922567283006', 3, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (153, N'77174781762', N'6598349887415', 3, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (154, N'68302576844', N'3036580675989', 80, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (155, N'83413259239', N'5750029800953', 7, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (156, N'14008911029', N'9771699889622', 117, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (157, N'54484863521', N'4501672313277', 139, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (158, N'30792590640', N'6055910397312', 67, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (160, N'89133440925', N'4147150689147', 159, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (161, N'32296299367', N'8274091292746', 146, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (162, N'53387117263', N'6793810012459', 126, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (163, N'46165895552', N'9891673154694', 138, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (164, N'77890573753', N'9039829127912', 133, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (165, N'24942273523', N'2857491834963', 101, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (166, N'42978965881', N'9794202623610', 137, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (167, N'13560626201', N'9872653388841', 78, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (168, N'36240033560', N'8736979030975', 124, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (169, N'94257962679', N'8218446407945', 127, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (170, N'86984022081', N'7946725935673', 143, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (171, N'16794442128', N'6610917120201', 156, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (173, N'49588243210', N'5758994907064', 25, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (174, N'60678044606', N'2565398797259', 137, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (176, N'97069457513', N'8513737122125', 9, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (177, N'18054979495', N'7724707048038', 62, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (178, N'28894742470', N'9048921139718', 99, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (179, N'68655671156', N'8787925873296', 71, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (180, N'84287559286', N'4786581907141', 27, 0)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (181, N'66837212317', N'8648182446877', 118, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (182, N'64009442697', N'6040827257918', 56, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (183, N'46497491801', N'1322209225171', 27, 0)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (184, N'82229898668', N'7420765991762', 80, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (185, N'18160582859', N'6799756065430', 9, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (186, N'16143829530', N'2704762528932', 88, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (187, N'85885510108', N'5361137684281', 133, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (188, N'63344917982', N'4332861938557', 144, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (189, N'57561547981', N'1604257658795', 37, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (190, N'81243054564', N'7635471032955', 109, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (191, N'18977705958', N'4633408326419', 76, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (192, N'89366655542', N'9511012447141', 105, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (193, N'32456546405', N'1223311691787', 3, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (194, N'33254843327', N'9380491990256', 98, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (195, N'83023867864', N'1120271087094', 141, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (196, N'80315662832', N'1044060650325', 147, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (197, N'62076007826', N'2028072734651', 61, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (198, N'60238374605', N'8726049175444', 75, 0)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (199, N'23585881037', N'6494291191428', 128, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (200, N'38305788288', N'9544672028343', 146, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (201, N'31747261870', N'3819152889607', 46, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (202, N'37350362763', N'4760893226765', 21, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (203, N'87141354919', N'9757823702357', 91, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (204, N'63901864818', N'4751410218850', 10, 0)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (205, N'67962102482', N'8471116261733', 76, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (206, N'30844568382', N'6084168216634', 71, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (207, N'15109524861', N'5210410607938', 63, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (208, N'11262788461', N'8983448090892', 42, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (209, N'86423752702', N'7753658579660', 99, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (210, N'63403955169', N'5167087490382', 44, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (211, N'52762017811', N'4517851923743', 125, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (212, N'16883385987', N'7672892345597', 64, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (213, N'65080735023', N'3795250089580', 85, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (214, N'93550270292', N'1214831357721', 112, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (215, N'17270835577', N'1486559259409', 23, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (216, N'53284723445', N'1149408336434', 85, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (217, N'47208881641', N'6975953729112', 131, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (218, N'62646463236', N'4974704864182', 113, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (219, N'42701448926', N'9789861373915', 39, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (220, N'79622795122', N'5292399203453', 1, 0)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (222, N'92516842118', N'3857856377450', 111, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (223, N'66906097848', N'1558981630427', 39, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (224, N'88896862705', N'4950158367009', 40, 0)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (225, N'52655917253', N'9738009762878', 129, 1)
GO
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (226, N'28222177172', N'6330431625176', 16, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (227, N'28801263243', N'2352961437207', 22, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (228, N'77480323036', N'4786797014365', 113, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (229, N'84997545133', N'7052058220588', 91, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (231, N'69979320963', N'2736590405635', 126, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (232, N'82621982137', N'2226862840536', 25, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (233, N'94653643447', N'8344688618822', 147, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (234, N'45040829747', N'7905800493765', 11, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (235, N'98952899066', N'4266119095399', 45, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (236, N'16933632414', N'6542858567829', 46, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (237, N'57542105510', N'2712032880509', 17, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (238, N'32362216467', N'6568111732594', 143, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (239, N'91358810138', N'1260385340267', 22, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (240, N'91675401076', N'7399381569736', 144, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (241, N'72205880682', N'7347814606982', 72, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (243, N'12687554197', N'5755143110559', 13, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (244, N'63323030548', N'5650886614383', 75, 0)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (245, N'79110262879', N'9762621138184', 141, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (246, N'56736080045', N'5240420529452', 132, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (247, N'16651945448', N'8738994127971', 136, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (248, N'66274578206', N'6052424902332', 4, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (249, N'22791194892', N'9205309627230', 64, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (250, N'14925601884', N'7966638105470', 133, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (251, N'64988152683', N'5157815190572', 8, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (252, N'12117021167', N'7694428157990', 147, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (253, N'68611889838', N'3200953611426', 5, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (254, N'74196888829', N'2813746632572', 141, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (255, N'90359109597', N'9894033773835', 125, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (256, N'48975300021', N'6340835063745', 63, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (257, N'49034568267', N'8844679720340', 90, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (258, N'49176981784', N'7842064413061', 17, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (259, N'54059750829', N'8970000299765', 73, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (260, N'52598850271', N'5356951228834', 30, 0)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (261, N'58951001059', N'2028161159660', 69, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (262, N'68600529603', N'7568756928373', 130, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (263, N'52595990355', N'9827717805318', 17, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (264, N'61651180873', N'6150546433830', 74, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (265, N'48202728566', N'4846223932006', 146, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (266, N'74387534589', N'8253344788043', 105, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (267, N'99091956266', N'9925400155780', 105, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (268, N'40559165488', N'9668941883740', 86, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (269, N'34363653581', N'6820159717160', 31, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (270, N'81164484655', N'7479646894977', 129, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (271, N'86700977689', N'5222476930971', 59, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (272, N'95107113171', N'7033885937012', 113, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (273, N'43663475951', N'3710934499220', 27, 0)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (274, N'59723955464', N'9427767422635', 74, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (275, N'97852447018', N'8825859915789', 134, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (276, N'64372001400', N'4543408751233', 60, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (277, N'82596646751', N'1634258855919', 128, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (278, N'19582265560', N'6821637081760', 149, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (279, N'42681837894', N'5523316816305', 46, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (280, N'13391887479', N'1499977621225', 137, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (281, N'14943586245', N'9037914183588', 89, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (282, N'97715015794', N'5774570451723', 114, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (283, N'46076461928', N'2963981864272', 73, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (284, N'12578172337', N'8471101769159', 102, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (285, N'85237996944', N'6818780239635', 96, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (286, N'57659541677', N'1577679359712', 82, 0)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (287, N'28999357581', N'5849616789528', 97, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (288, N'24397219761', N'8807635521697', 64, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (289, N'31355557263', N'8104531805416', 138, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (290, N'32153948805', N'1427762581777', 133, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (291, N'86093434313', N'1663714803886', 12, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (292, N'84299155588', N'7080364587310', 40, 0)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (293, N'52399026775', N'4773831464641', 32, 0)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (294, N'42363208928', N'9748681629367', 70, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (295, N'87042181517', N'4601875715788', 128, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (296, N'87859033532', N'9438869192948', 117, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (297, N'45542846627', N'4391648648843', 14, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (298, N'94183768036', N'5701372016836', 21, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (299, N'63085289246', N'4226076343955', 64, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (300, N'11826810872', N'1460919803413', 30, 0)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (301, N'23691305815', N'9257687935002', 58, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (302, N'98732773972', N'3471112681588', 54, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (303, N'37624785418', N'4362649218828', 37, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (304, N'47265015094', N'3333477282418', 119, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (305, N'82757932169', N'3310464815871', 38, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (306, N'67690841486', N'5634498609149', 29, 0)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (307, N'10140189613', N'9758364296880', 125, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (308, N'37774356721', N'7942741073147', 112, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (309, N'95553701129', N'8560138911446', 40, 0)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (310, N'89361010997', N'7935302355927', 140, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (313, N'28002654932', N'6286570673387', 107, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (314, N'15353059545', N'3268980282517', 38, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (315, N'12892235259', N'2179814373032', 123, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (316, N'95493662442', N'4503866882786', 12, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (317, N'88443475326', N'7332036180946', 121, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (318, N'11761213808', N'6454668826369', 110, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (319, N'14088701458', N'8788340475139', 130, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (320, N'42027174018', N'3939835565519', 41, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (321, N'14635075668', N'3412699281402', 1, 0)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (322, N'42445801269', N'8434487390192', 111, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (323, N'58970633904', N'3034079177704', 127, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (324, N'56150831289', N'5972993331907', 7, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (325, N'90388240529', N'8693206363597', 90, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (326, N'35154393002', N'8863576367641', 69, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (327, N'87123373056', N'4768551726460', 153, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (328, N'49234381125', N'7022053955962', 81, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (329, N'16735738743', N'4677432494248', 72, 1)
GO
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (330, N'69768231829', N'8937269376635', 24, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (331, N'84612177687', N'7672871547542', 98, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (332, N'39162212862', N'1653206351729', 1, 0)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (333, N'72355417796', N'8931291875951', 144, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (334, N'41101124555', N'2767903599402', 70, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (335, N'80316303179', N'6559886879588', 157, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (336, N'17250310958', N'3472546502593', 147, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (337, N'92929380840', N'3197607041624', 126, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (338, N'14156739458', N'8814713588450', 93, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (339, N'15058049429', N'1378156766052', 87, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (340, N'69128118650', N'7849433680789', 41, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (341, N'30729829802', N'1349112201203', 22, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (342, N'17981280073', N'4438103126952', 103, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (343, N'67221988760', N'6415836636668', 79, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (344, N'41118508831', N'2845214410217', 140, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (345, N'96321744261', N'5107781448901', 8, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (346, N'12640086757', N'4036798333404', 40, 0)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (347, N'90649980067', N'1920431777915', 75, 0)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (348, N'69898971476', N'6809668128938', 8, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (349, N'36371411577', N'2423937159020', 122, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (350, N'82385443159', N'1294644201778', 103, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (351, N'27349734454', N'4506111248942', 88, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (352, N'36962596044', N'4902651752743', 127, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (353, N'63584222768', N'1428444854542', 149, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (354, N'23745711167', N'5718615245260', 94, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (355, N'34311583748', N'1970690010074', 153, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (356, N'21202874403', N'3349673398642', 25, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (357, N'92454321177', N'3717530657322', 41, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (358, N'49407654308', N'4511561113762', 2, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (359, N'94960687093', N'5516643997706', 67, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (360, N'25208619935', N'7747017620356', 137, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (361, N'20407163567', N'2619021927302', 19, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (362, N'42137561689', N'5435430361686', 131, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (363, N'97433844378', N'9229361815308', 28, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (364, N'69783894980', N'1760358217591', 54, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (365, N'22972819889', N'4406802047670', 96, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (366, N'97758690549', N'3510331620489', 99, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (367, N'50424813393', N'5565441770047', 125, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (368, N'16682577136', N'1859262301399', 11, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (369, N'51881156602', N'3817709477310', 35, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (370, N'36282077584', N'7785277548989', 98, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (371, N'38257800491', N'6204855627132', 103, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (372, N'23093798614', N'7054341191872', 45, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (373, N'23760985497', N'2344424563615', 99, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (374, N'21237400335', N'4389208705740', 16, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (376, N'85031517143', N'5502560740492', 131, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (377, N'57278831782', N'3825280006423', 133, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (378, N'76548575081', N'5597416858183', 58, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (379, N'69243550604', N'8502162442266', 84, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (380, N'92884235097', N'3403249606730', 81, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (381, N'60971881717', N'1951653215685', 31, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (382, N'91019053656', N'3507175543635', 16, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (383, N'21565588932', N'8940390482010', 80, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (384, N'71112307247', N'7394527813158', 5, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (385, N'11374696483', N'6133321083356', 148, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (386, N'31493243433', N'8578748406475', 122, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (387, N'82337682915', N'2497307500974', 84, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (388, N'86616122507', N'3902408820865', 96, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (389, N'51345186437', N'7441161585468', 144, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (391, N'10882234324', N'2676464301951', 70, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (392, N'54546001173', N'9060297554070', 41, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (393, N'49353571088', N'6704754859800', 53, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (394, N'99692098066', N'8364228562759', 146, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (395, N'53716161075', N'6141397330371', 80, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (396, N'14573825421', N'6371181475095', 72, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (397, N'72568800925', N'8076706253397', 11, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (398, N'58517181428', N'3515135065617', 98, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (399, N'35832909057', N'3598155871133', 16, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (400, N'25795685650', N'2317204816914', 108, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (401, N'27614434063', N'4662903313058', 77, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (402, N'71957681290', N'5918078839983', 11, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (403, N'46602549843', N'9407856108003', 140, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (404, N'60121453446', N'8610735143355', 146, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (405, N'22211918329', N'2607294141739', 94, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (406, N'41869185192', N'3674230390039', 7, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (407, N'63969224349', N'7343922466671', 2, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (408, N'89311813476', N'8566490840045', 114, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (409, N'69101226132', N'2371441517109', 28, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (410, N'15155733118', N'8535992424371', 34, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (411, N'60195451621', N'4739748573103', 107, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (412, N'57307156300', N'8612675661289', 37, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (413, N'97424609715', N'1738707712844', 147, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (414, N'92292388132', N'8950242634605', 37, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (415, N'16286086071', N'5128851122059', 136, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (416, N'34887978130', N'4806294051684', 38, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (417, N'91818742420', N'2957365249058', 93, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (418, N'26635127693', N'3835965978138', 152, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (419, N'70750576297', N'7895661053054', 119, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (420, N'44118395155', N'4163959332795', 93, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (421, N'92460368743', N'9653879428580', 157, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (422, N'91963395608', N'4405233335406', 99, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (423, N'87734598425', N'9684740050544', 4, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (424, N'72962360683', N'1844725210555', 82, 0)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (425, N'70806422518', N'9095892690719', 118, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (426, N'40337228970', N'4489592776238', 125, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (427, N'89786442616', N'3990537548508', 148, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (428, N'71544327874', N'9898600715124', 33, 0)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (429, N'40499182396', N'5705039446607', 119, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (430, N'94327485243', N'2841647039158', 109, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (431, N'45907464205', N'1499148991486', 64, 1)
GO
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (432, N'94823023069', N'1637765851801', 134, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (433, N'79646376926', N'9855699395630', 38, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (434, N'76737880608', N'7985168653788', 128, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (435, N'55352194255', N'4535986740692', 8, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (436, N'75518055752', N'3221012040029', 9, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (437, N'66922945889', N'6853956050551', 84, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (438, N'15428533086', N'2774602150503', 39, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (439, N'21435685254', N'1444319339821', 118, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (440, N'39782322711', N'4564673166044', 153, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (441, N'60489897745', N'8810355468391', 145, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (442, N'62473979136', N'3508804656646', 116, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (443, N'25695887554', N'6912627240360', 94, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (444, N'35049347652', N'5502422964978', 44, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (445, N'67962446591', N'2867901278412', 68, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (446, N'35257429106', N'1376357540653', 111, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (447, N'57614148060', N'4671772603191', 89, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (448, N'99490998377', N'2302580237049', 57, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (449, N'82229802973', N'3506868148678', 138, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (450, N'98587863544', N'2914693315220', 123, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (451, N'40846911890', N'8614063396979', 46, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (452, N'26826100835', N'3878893890956', 100, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (453, N'86710607939', N'1100199942075', 122, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (454, N'42313759714', N'2200237851426', 27, 0)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (455, N'31733866531', N'3695111016100', 121, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (456, N'52014991907', N'7723463158112', 15, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (457, N'29399020555', N'5714768846413', 98, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (458, N'32437051371', N'7391071638987', 115, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (459, N'56135968862', N'3231457732228', 138, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (460, N'56203459573', N'5581096615727', 13, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (461, N'50009760229', N'8844863245778', 16, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (462, N'86021172652', N'5055251941267', 8, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (463, N'16123107182', N'5898317928677', 55, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (464, N'98610748878', N'4314906491739', 139, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (465, N'40996606369', N'1905568572422', 17, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (466, N'17295152861', N'2199177282742', 118, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (467, N'43753911036', N'4858699741627', 101, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (468, N'87107407780', N'1046661700018', 27, 0)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (469, N'12346071847', N'3533152267401', 78, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (470, N'85188900323', N'6165226273763', 136, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (471, N'76495883243', N'2972707990814', 99, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (472, N'51193726194', N'4185178501634', 154, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (473, N'29792958156', N'3494378968111', 34, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (474, N'13762379432', N'7201154775930', 129, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (475, N'93491816554', N'2489497285102', 100, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (476, N'11020194841', N'3950720875684', 42, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (477, N'83656802980', N'2072754402871', 53, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (479, N'19067198738', N'1762080636270', 46, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (480, N'85543950515', N'4565794305021', 156, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (481, N'77234268794', N'1227783343589', 97, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (482, N'88025019641', N'2348588543611', 138, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (483, N'98710196528', N'1202596935877', 44, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (484, N'68978685107', N'5518837185496', 149, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (485, N'79216257595', N'1607228104064', 17, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (486, N'72006797384', N'7644624640521', 147, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (487, N'23907740817', N'6772832809523', 68, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (488, N'28657451247', N'2285053126713', 63, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (489, N'49029063340', N'7651639439324', 34, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (490, N'70439356398', N'2401185338286', 5, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (491, N'29147110241', N'9842648622712', 154, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (492, N'89734851065', N'6999463452550', 4, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (493, N'54871276920', N'3217825575260', 95, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (494, N'96348752308', N'6209493613842', 146, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (495, N'55130535830', N'2192176352240', 41, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (496, N'84905148060', N'1229827388809', 147, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (497, N'59567353890', N'9702555458115', 34, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (498, N'40130250397', N'3418747513520', 57, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (499, N'78352258037', N'1704163868065', 21, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (500, N'10423140113', N'3638226860203', 42, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (501, N'21934272074', N'2175197276124', 19, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (502, N'93174084296', N'1469137651172', 22, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (504, N'98685077231', N'8599410687002', 121, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (505, N'60794923386', N'1994729798137', 76, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (506, N'17813252163', N'3424015004146', 64, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (507, N'32897236231', N'8481733130827', 153, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (508, N'77642354364', N'5700617382396', 158, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (509, N'93406496569', N'5184055657660', 96, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (510, N'72292564919', N'1517384091611', 93, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (511, N'13583285672', N'3385388509525', 64, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (512, N'53662720184', N'8459734602263', 139, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (513, N'62014455710', N'3110083872340', 2, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (514, N'43819701288', N'7079376079131', 114, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (515, N'59414108059', N'7633580864591', 114, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (516, N'21878918814', N'3374612702471', 80, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (517, N'86721184074', N'7077531789738', 132, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (518, N'92296402193', N'7103978473884', 83, 0)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (519, N'10825018675', N'2074368537819', 124, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (520, N'71068430179', N'5234463982864', 105, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (521, N'29356184056', N'1283906937486', 145, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (522, N'50578989642', N'9801217151760', 96, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (523, N'45400293637', N'3178415213494', 153, 1)
INSERT [dbo].[CardCode] ([CardCodeID], [SeriCode], [PinCode], [CardPriceID], [Status]) VALUES (524, N'63098398208', N'1585762449269', 104, 1)
SET IDENTITY_INSERT [dbo].[CardCode] OFF
SET IDENTITY_INSERT [dbo].[CardPrice] ON 

INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (1, 10000, 1, 1)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (2, 20000, 1, 2)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (3, 30000, 1, 2)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (4, 50000, 1, 3)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (5, 100000, 1, 5)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (6, 200000, 1, 5)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (7, 300000, 1, 5)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (8, 500000, 1, 5)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (9, 1000000, 1, 5)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (10, 10000, 2, 1)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (11, 20000, 2, 2)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (12, 30000, 2, 3)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (13, 50000, 2, 5)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (14, 100000, 2, 5)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (15, 200000, 2, 5)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (16, 300000, 2, 5)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (17, 500000, 2, 5)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (18, 10000, 3, 1)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (19, 20000, 3, 2)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (20, 30000, 3, 3)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (21, 50000, 3, 5)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (22, 100000, 3, 5)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (23, 200000, 3, 5)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (24, 300000, 3, 5)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (25, 500000, 3, 5)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (26, 10000, 4, 1)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (27, 20000, 4, 2)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (28, 50000, 4, 5)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (29, 100000, 4, 5)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (30, 200000, 4, 5)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (31, 500000, 4, 5)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (32, 10000, 5, 1)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (33, 20000, 5, 2)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (34, 30000, 5, 3)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (35, 50000, 5, 5)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (36, 100000, 5, 5)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (37, 200000, 5, 5)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (38, 300000, 5, 5)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (39, 500000, 5, 5)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (40, 10000, 6, 1)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (41, 20000, 6, 2)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (42, 50000, 6, 5)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (43, 100000, 6, 5)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (44, 200000, 6, 5)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (45, 500000, 6, 5)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (46, 1000000, 6, 5)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (47, 2000000, 6, 5)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (48, 5000000, 6, 5)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (49, 50000, 7, 5)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (50, 100000, 7, 5)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (51, 200000, 7, 5)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (52, 500000, 7, 5)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (53, 1000000, 7, 5)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (54, 10000, 8, 1)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (55, 20000, 8, 2)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (56, 50000, 8, 5)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (57, 100000, 8, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (58, 200000, 8, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (59, 500000, 8, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (60, 1000000, 8, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (61, 10000, 9, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (62, 20000, 9, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (63, 50000, 9, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (64, 100000, 9, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (65, 200000, 9, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (66, 300000, 9, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (67, 500000, 9, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (68, 1000000, 9, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (69, 2000000, 9, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (70, 10000, 10, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (71, 20000, 10, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (72, 50000, 10, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (73, 100000, 10, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (74, 200000, 10, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (75, 500000, 10, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (76, 1000000, 10, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (77, 20000, 11, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (78, 50000, 11, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (79, 100000, 11, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (80, 200000, 11, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (81, 500000, 11, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (82, 10000, 12, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (83, 20000, 12, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (84, 50000, 12, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (85, 100000, 12, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (86, 200000, 12, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (87, 500000, 12, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (88, 1000000, 12, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (89, 200000, 12, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (90, 600000, 12, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (91, 50000, 13, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (92, 100000, 13, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (93, 200000, 13, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (94, 1000000, 13, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (95, 2000000, 13, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (96, 3000000, 13, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (97, 5000000, 13, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (98, 10000, 14, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (99, 20000, 14, NULL)
GO
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (100, 50000, 14, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (101, 100000, 14, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (102, 200000, 14, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (103, 500000, 14, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (104, 1000000, 14, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (105, 2000000, 14, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (106, 10000, 15, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (107, 20000, 15, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (108, 50000, 15, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (109, 100000, 15, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (110, 200000, 15, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (111, 500000, 15, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (112, 1000000, 15, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (113, 10000, 16, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (114, 20000, 16, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (115, 50000, 16, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (116, 100000, 16, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (117, 200000, 16, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (118, 500000, 16, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (119, 1000000, 16, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (120, 2000000, 16, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (121, 5000000, 16, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (122, 20000, 17, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (123, 50000, 17, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (124, 60000, 17, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (125, 100000, 17, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (126, 200000, 17, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (127, 300000, 17, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (128, 500000, 17, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (129, 10000, 18, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (130, 20000, 18, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (131, 50000, 18, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (132, 100000, 18, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (133, 200000, 18, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (134, 500000, 18, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (135, 1000000, 18, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (136, 2000000, 18, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (137, 10000, 19, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (138, 20000, 19, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (139, 30000, 19, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (140, 50000, 19, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (141, 100000, 19, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (142, 200000, 19, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (143, 300000, 19, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (144, 500000, 19, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (145, 1000000, 19, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (146, 10000, 20, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (147, 20000, 20, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (148, 50000, 20, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (149, 100000, 20, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (150, 200000, 20, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (151, 500000, 20, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (152, 20000, 21, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (153, 50000, 21, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (154, 100000, 21, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (155, 200000, 21, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (156, 500000, 21, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (157, 1000000, 21, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (158, 2000000, 21, NULL)
INSERT [dbo].[CardPrice] ([CardPriceID], [Price], [SupplierID], [Discount]) VALUES (159, 5000000, 21, NULL)
SET IDENTITY_INSERT [dbo].[CardPrice] OFF
SET IDENTITY_INSERT [dbo].[Supplier] ON 

INSERT [dbo].[Supplier] ([SupplierID], [SupplierName], [CardTypeName], [Image]) VALUES (1, N'VIETTEL', N'Thẻ điện thoại', N'https://hqpay.vn/storage/images/wD3OAX53sQ_1625037689.png')
INSERT [dbo].[Supplier] ([SupplierID], [SupplierName], [CardTypeName], [Image]) VALUES (2, N'VINAPHONE', N'Thẻ điện thoại', N'https://hqpay.vn/storage/images/5oBfqagH5V_1619539822.png')
INSERT [dbo].[Supplier] ([SupplierID], [SupplierName], [CardTypeName], [Image]) VALUES (3, N'MOBIFONE', N'Thẻ điện thoại', N'https://hqpay.vn/storage/images/iFMbkulr4w_1619540012.png')
INSERT [dbo].[Supplier] ([SupplierID], [SupplierName], [CardTypeName], [Image]) VALUES (4, N'GMOBILE', N'Thẻ điện thoại', N'https://hqpay.vn/storage/images/EJf2KN04b6_1626426501.png')
INSERT [dbo].[Supplier] ([SupplierID], [SupplierName], [CardTypeName], [Image]) VALUES (5, N'VIETNAMOBILE', N'Thẻ điện thoại', N'https://hqpay.vn/storage/images/KWPSKsgxdG_1626426621.png')
INSERT [dbo].[Supplier] ([SupplierID], [SupplierName], [CardTypeName], [Image]) VALUES (6, N'SOHACOIN', N'Thẻ Game', N'https://hqpay.vn/storage/images/uK1M2D5bSv_1619539885.png')
INSERT [dbo].[Supplier] ([SupplierID], [SupplierName], [CardTypeName], [Image]) VALUES (7, N'CARROT', N'Thẻ Game', N'https://hqpay.vn/storage/images/9UOc6zPMGz_1619539912.png')
INSERT [dbo].[Supplier] ([SupplierID], [SupplierName], [CardTypeName], [Image]) VALUES (8, N'ZING', N'Thẻ Game', N'https://hqpay.vn/storage/images/sgK6t0HyRw_1619539788.png')
INSERT [dbo].[Supplier] ([SupplierID], [SupplierName], [CardTypeName], [Image]) VALUES (9, N'VCOIN', N'Thẻ Game', N'https://hqpay.vn/storage/images/HS3qP8bwN9_1625038017.png')
INSERT [dbo].[Supplier] ([SupplierID], [SupplierName], [CardTypeName], [Image]) VALUES (10, N'GATE', N'Thẻ Game', N'https://hqpay.vn/storage/images/IYno8G2l6t_1625038053.png')
INSERT [dbo].[Supplier] ([SupplierID], [SupplierName], [CardTypeName], [Image]) VALUES (11, N'GARENA', N'Thẻ Game', N'https://hqpay.vn/storage/images/mepJKk53Xy_1619539541.png')
INSERT [dbo].[Supplier] ([SupplierID], [SupplierName], [CardTypeName], [Image]) VALUES (12, N'SCOIN', N'Thẻ Game', N'https://hqpay.vn/storage/images/7YPCZMmAde_1619539870.png')
INSERT [dbo].[Supplier] ([SupplierID], [SupplierName], [CardTypeName], [Image]) VALUES (13, N'APPOTA', N'Thẻ Game', N'https://hqpay.vn/storage/images/m0oI1BgUle_1619539974.png')
INSERT [dbo].[Supplier] ([SupplierID], [SupplierName], [CardTypeName], [Image]) VALUES (14, N'FUNCARD', N'Thẻ Game', N'https://hqpay.vn/storage/images/vN4hG60byz_1619539768.png')
INSERT [dbo].[Supplier] ([SupplierID], [SupplierName], [CardTypeName], [Image]) VALUES (15, N'GOSU', N'Thẻ Game', N'https://hqpay.vn/storage/images/xJpX9GoS2j_1625037827.png')
INSERT [dbo].[Supplier] ([SupplierID], [SupplierName], [CardTypeName], [Image]) VALUES (16, N'BIT', N'Thẻ Game', N'https://hqpay.vn/storage/images/itSNyVmlea_1626426791.png')
INSERT [dbo].[Supplier] ([SupplierID], [SupplierName], [CardTypeName], [Image]) VALUES (17, N'ONCASH', N'Thẻ Game', N'https://hqpay.vn/storage/images/uz1wCZCiUV_1626426871.png')
INSERT [dbo].[Supplier] ([SupplierID], [SupplierName], [CardTypeName], [Image]) VALUES (18, N'KUL', N'Thẻ Game', N'https://hqpay.vn/storage/images/cWaSY1lhw2_1626427012.png')
INSERT [dbo].[Supplier] ([SupplierID], [SupplierName], [CardTypeName], [Image]) VALUES (19, N'HPCODE', N'Thẻ Game', N'https://hqpay.vn/storage/images/CQ32HPZqhv_1626427216.png')
INSERT [dbo].[Supplier] ([SupplierID], [SupplierName], [CardTypeName], [Image]) VALUES (20, N'VEGAXU', N'Thẻ Game', N'https://hqpay.vn/storage/images/pWayViIYOm_1625037989.png')
INSERT [dbo].[Supplier] ([SupplierID], [SupplierName], [CardTypeName], [Image]) VALUES (21, N'ISEC', N'Thẻ Game', N'https://hqpay.vn/storage/images/bCcSz3kWJw_1624871623.png')
SET IDENTITY_INSERT [dbo].[Supplier] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [Username], [Password], [Email], [RemainingMoney], [TotalMoneyLoaded], [Discount], [Avatar], [Role], [Status], [TimeCreated]) VALUES (37, N'admin', N'admin', N'hungnthe153039@fpt.edu.vn', 13942021, 15000000, 3, N'https://s3.ap-northeast-1.amazonaws.com/h.files/images/1642777165863_idBGvXsiOb.jpg', 1, 1, CAST(N'2022-01-01' AS Date))
INSERT [dbo].[User] ([UserID], [Username], [Password], [Email], [RemainingMoney], [TotalMoneyLoaded], [Discount], [Avatar], [Role], [Status], [TimeCreated]) VALUES (40, N'user', N'123123', N'hung3s5z@gmail.com', 10, 2500000, 3, N'https://cdn.icon-icons.com/icons2/2438/PNG/512/boy_avatar_icon_148455.png', 0, 1, CAST(N'2022-01-02' AS Date))
INSERT [dbo].[User] ([UserID], [Username], [Password], [Email], [RemainingMoney], [TotalMoneyLoaded], [Discount], [Avatar], [Role], [Status], [TimeCreated]) VALUES (41, N'user1', N'123123', N'hung11@gmail.com', 997000, 900000, 1, N'https://cdn.icon-icons.com/icons2/2438/PNG/512/boy_avatar_icon_148455.png', 0, 1, CAST(N'2022-01-05' AS Date))
INSERT [dbo].[User] ([UserID], [Username], [Password], [Email], [RemainingMoney], [TotalMoneyLoaded], [Discount], [Avatar], [Role], [Status], [TimeCreated]) VALUES (42, N'test', N'test123', N'hungnthe150339@fpt.edu.vn', 5506726, 8000000, 5, N'https://cdn.icon-icons.com/icons2/2438/PNG/512/boy_avatar_icon_148455.png', 0, 1, CAST(N'2022-01-10' AS Date))
SET IDENTITY_INSERT [dbo].[User] OFF
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_Order_Time_1]  DEFAULT (getdate()) FOR [Time]
GO
ALTER TABLE [dbo].[CardCode]  WITH CHECK ADD  CONSTRAINT [FK_CardCode_CardPrice] FOREIGN KEY([CardPriceID])
REFERENCES [dbo].[CardPrice] ([CardPriceID])
GO
ALTER TABLE [dbo].[CardCode] CHECK CONSTRAINT [FK_CardCode_CardPrice]
GO
ALTER TABLE [dbo].[CardPrice]  WITH CHECK ADD  CONSTRAINT [FK_CardPrice_Supplier] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Supplier] ([SupplierID])
GO
ALTER TABLE [dbo].[CardPrice] CHECK CONSTRAINT [FK_CardPrice_Supplier]
GO
ALTER TABLE [dbo].[HistoryRecharge]  WITH CHECK ADD  CONSTRAINT [FK_HistoryRecharge_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[HistoryRecharge] CHECK CONSTRAINT [FK_HistoryRecharge_User]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_CardCode] FOREIGN KEY([CardCodeID])
REFERENCES [dbo].[CardCode] ([CardCodeID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_CardCode]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
USE [master]
GO
ALTER DATABASE [PRN211] SET  READ_WRITE 
GO
