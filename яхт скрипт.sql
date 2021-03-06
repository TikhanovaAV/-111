USE [master]
GO
/****** Object:  Database [яхты]    Script Date: 03.12.2021 13:35:35 ******/
CREATE DATABASE [яхты]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'яхты', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\яхты.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'яхты_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\яхты_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [яхты] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [яхты].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [яхты] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [яхты] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [яхты] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [яхты] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [яхты] SET ARITHABORT OFF 
GO
ALTER DATABASE [яхты] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [яхты] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [яхты] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [яхты] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [яхты] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [яхты] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [яхты] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [яхты] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [яхты] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [яхты] SET  DISABLE_BROKER 
GO
ALTER DATABASE [яхты] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [яхты] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [яхты] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [яхты] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [яхты] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [яхты] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [яхты] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [яхты] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [яхты] SET  MULTI_USER 
GO
ALTER DATABASE [яхты] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [яхты] SET DB_CHAINING OFF 
GO
ALTER DATABASE [яхты] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [яхты] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [яхты] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [яхты] SET QUERY_STORE = OFF
GO
USE [яхты]
GO
/****** Object:  Table [dbo].[Accessory$]    Script Date: 03.12.2021 13:35:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessory$](
	[Accessory_ID] [float] NOT NULL,
	[AccName] [nvarchar](255) NULL,
	[DescriptionOfAccessory] [nvarchar](255) NULL,
	[Price] [money] NULL,
	[VAT] [float] NULL,
	[Inventory] [float] NULL,
	[OrderLevel] [float] NULL,
	[OrderBatch] [float] NULL,
	[Partner_ID] [float] NULL,
 CONSTRAINT [PK_Accessory$] PRIMARY KEY CLUSTERED 
(
	[Accessory_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Boat$]    Script Date: 03.12.2021 13:35:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Boat$](
	[boat_ID] [float] NOT NULL,
	[Model] [nvarchar](255) NULL,
	[BoatType] [nvarchar](255) NULL,
	[NumberOfRowers] [float] NULL,
	[Mast] [bit] NOT NULL,
	[Colour] [nvarchar](255) NULL,
	[Wood] [nvarchar](255) NULL,
	[BasePrice] [float] NULL,
	[VAT] [float] NULL,
	[F10] [nvarchar](255) NULL,
	[F11] [float] NULL,
 CONSTRAINT [PK_Boat$] PRIMARY KEY CLUSTERED 
(
	[boat_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contract$]    Script Date: 03.12.2021 13:35:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contract$](
	[Contract_ID] [float] NOT NULL,
	[Date] [datetime] NULL,
	[DepositPayed] [float] NULL,
	[Order_ID] [float] NULL,
	[ContractTotalPrice] [float] NULL,
	[ContracTotalPrice_inclVAT] [float] NULL,
	[ProductionProcess] [nvarchar](255) NULL,
	[F8] [nvarchar](255) NULL,
	[F9] [float] NULL,
 CONSTRAINT [PK_Contract$] PRIMARY KEY CLUSTERED 
(
	[Contract_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer$]    Script Date: 03.12.2021 13:35:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer$](
	[Customer_ID] [float] NOT NULL,
	[FistName] [nvarchar](255) NULL,
	[FamilyName] [nvarchar](255) NULL,
	[DateOfBirth] [datetime] NULL,
	[OrganisationName] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[Phone] [nvarchar](255) NULL,
	[IDNumber] [nvarchar](255) NULL,
	[IDDocumentName] [nvarchar](255) NULL,
 CONSTRAINT [PK_Customer$] PRIMARY KEY CLUSTERED 
(
	[Customer_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoice$]    Script Date: 03.12.2021 13:35:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice$](
	[Invoice_ID] [float] NOT NULL,
	[Contract_ID] [float] NULL,
	[Settled] [bit] NOT NULL,
	[Sum] [money] NULL,
	[Sum_inclVAT] [float] NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_Invoice$] PRIMARY KEY CLUSTERED 
(
	[Invoice_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order$]    Script Date: 03.12.2021 13:35:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order$](
	[Order_ID] [float] NOT NULL,
	[Date] [datetime] NULL,
	[Salesperson_ID] [float] NULL,
	[Customer_ID] [float] NULL,
	[Boat_ID] [float] NULL,
	[DeliveryAddress] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
 CONSTRAINT [PK_Order$] PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails$]    Script Date: 03.12.2021 13:35:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails$](
	[Detail_ID] [float] NOT NULL,
	[Accessory_ID] [float] NULL,
	[Order_ID] [float] NULL,
 CONSTRAINT [PK_OrderDetails$] PRIMARY KEY CLUSTERED 
(
	[Detail_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partner$]    Script Date: 03.12.2021 13:35:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partner$](
	[Partner_ID] [float] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
 CONSTRAINT [PK_Partner$] PRIMARY KEY CLUSTERED 
(
	[Partner_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesPerson$]    Script Date: 03.12.2021 13:35:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesPerson$](
	[SalesPerson_ID] [float] NOT NULL,
	[FirstName] [nvarchar](255) NULL,
	[FamilyName] [nvarchar](255) NULL,
 CONSTRAINT [PK_SalesPerson$] PRIMARY KEY CLUSTERED 
(
	[SalesPerson_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].['Аксессуары лодочные$']    Script Date: 03.12.2021 13:35:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].['Аксессуары лодочные$'](
	[Fit_ID] [float] NOT NULL,
	[Accessory_ID] [float] NULL,
	[Boat_ID] [float] NULL,
 CONSTRAINT [PK_'Аксессуары лодочные$'] PRIMARY KEY CLUSTERED 
(
	[Fit_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Accessory$] ([Accessory_ID], [AccName], [DescriptionOfAccessory], [Price], [VAT], [Inventory], [OrderLevel], [OrderBatch], [Partner_ID]) VALUES (1, N'Черпак', N'Деревянный черпак, красный', 2500.0000, 0.18, 10, 5, 5, 11)
INSERT [dbo].[Accessory$] ([Accessory_ID], [AccName], [DescriptionOfAccessory], [Price], [VAT], [Inventory], [OrderLevel], [OrderBatch], [Partner_ID]) VALUES (2, N'Весло малое', N'малое весло, дубовое', 3000.0000, 0.18, 15, 10, 10, 10)
INSERT [dbo].[Accessory$] ([Accessory_ID], [AccName], [DescriptionOfAccessory], [Price], [VAT], [Inventory], [OrderLevel], [OrderBatch], [Partner_ID]) VALUES (3, N'Весло среднее', N'Среднее весло, дубовое', 4000.0000, 0.18, 20, 10, 20, 11)
INSERT [dbo].[Accessory$] ([Accessory_ID], [AccName], [DescriptionOfAccessory], [Price], [VAT], [Inventory], [OrderLevel], [OrderBatch], [Partner_ID]) VALUES (4, N'Весло большое', N'Большое весло, дубовое', 6000.0000, 0.18, 18, 10, 20, 13)
INSERT [dbo].[Accessory$] ([Accessory_ID], [AccName], [DescriptionOfAccessory], [Price], [VAT], [Inventory], [OrderLevel], [OrderBatch], [Partner_ID]) VALUES (5, N'Зонтик', N'Большой красный зонтик', 4800.0000, 0.18, 25, 5, 15, 15)
INSERT [dbo].[Accessory$] ([Accessory_ID], [AccName], [DescriptionOfAccessory], [Price], [VAT], [Inventory], [OrderLevel], [OrderBatch], [Partner_ID]) VALUES (6, N'Тент', N'Синий тент', 3000.0000, 0.18, 20, 10, 20, 11)
INSERT [dbo].[Accessory$] ([Accessory_ID], [AccName], [DescriptionOfAccessory], [Price], [VAT], [Inventory], [OrderLevel], [OrderBatch], [Partner_ID]) VALUES (7, N'Холодильник', N'Холодильник на солнечной энергии', 30000.0000, 0.18, 3, 1, 5, 10)
INSERT [dbo].[Accessory$] ([Accessory_ID], [AccName], [DescriptionOfAccessory], [Price], [VAT], [Inventory], [OrderLevel], [OrderBatch], [Partner_ID]) VALUES (8, N'Спасжилет Ж', N'Спасательный жилет для женщин', 6000.0000, 0.18, 25, 20, 50, 12)
INSERT [dbo].[Accessory$] ([Accessory_ID], [AccName], [DescriptionOfAccessory], [Price], [VAT], [Inventory], [OrderLevel], [OrderBatch], [Partner_ID]) VALUES (9, N'Спасжилет М', N'Спасательный жилет для мужчин', 8000.0000, 0.18, 45, 20, 50, 12)
INSERT [dbo].[Accessory$] ([Accessory_ID], [AccName], [DescriptionOfAccessory], [Price], [VAT], [Inventory], [OrderLevel], [OrderBatch], [Partner_ID]) VALUES (10, N'Спасжилет Д', N'Спасательный жилет для детей', 4000.0000, 0.18, 15, 10, 25, 11)
INSERT [dbo].[Accessory$] ([Accessory_ID], [AccName], [DescriptionOfAccessory], [Price], [VAT], [Inventory], [OrderLevel], [OrderBatch], [Partner_ID]) VALUES (11, N'Стандартный вахтенный журнал', N'Вахтенный журнал, 100 стр', 3000.0000, 0.18, 25, 10, 25, 14)
INSERT [dbo].[Accessory$] ([Accessory_ID], [AccName], [DescriptionOfAccessory], [Price], [VAT], [Inventory], [OrderLevel], [OrderBatch], [Partner_ID]) VALUES (12, N'Вахтенный журнал Люкс', N'Вахтенный журнал, деревянная обложка', 4500.0000, 0.18, 15, 10, 25, 13)
INSERT [dbo].[Accessory$] ([Accessory_ID], [AccName], [DescriptionOfAccessory], [Price], [VAT], [Inventory], [OrderLevel], [OrderBatch], [Partner_ID]) VALUES (13, N'Парусный спорт для спортсменов', N'Учебник по парусному спорту', 1000.0000, 0.18, 12, 10, 20, 15)
INSERT [dbo].[Accessory$] ([Accessory_ID], [AccName], [DescriptionOfAccessory], [Price], [VAT], [Inventory], [OrderLevel], [OrderBatch], [Partner_ID]) VALUES (14, N'Кепка', N'Капитанская кепка, синяя', 1700.0000, 0.18, 24, 20, 20, 14)
GO
INSERT [dbo].[Boat$] ([boat_ID], [Model], [BoatType], [NumberOfRowers], [Mast], [Colour], [Wood], [BasePrice], [VAT], [F10], [F11]) VALUES (101, N'RB Стандарт', N'Шлюпка', 1, 0, N'Зеленый', N'Ель', 60000, 0.18, NULL, 3600000)
INSERT [dbo].[Boat$] ([boat_ID], [Model], [BoatType], [NumberOfRowers], [Mast], [Colour], [Wood], [BasePrice], [VAT], [F10], [F11]) VALUES (201, N'SB Стандарт', N'Парусная лодка', 0, 1, N'Белый', N'Ель', 280000, 0.18, NULL, 16800000)
INSERT [dbo].[Boat$] ([boat_ID], [Model], [BoatType], [NumberOfRowers], [Mast], [Colour], [Wood], [BasePrice], [VAT], [F10], [F11]) VALUES (202, N'SB Юниор', N'Парусная лодка', 0, 1, N'Красный', N'Сосна', 165000, 0.18, NULL, 9900000)
INSERT [dbo].[Boat$] ([boat_ID], [Model], [BoatType], [NumberOfRowers], [Mast], [Colour], [Wood], [BasePrice], [VAT], [F10], [F11]) VALUES (301, N'G Эконом', N'Галера', 6, 0, N'Черный', N'Сосна', 550000, 0.18, NULL, 33000000)
INSERT [dbo].[Boat$] ([boat_ID], [Model], [BoatType], [NumberOfRowers], [Mast], [Colour], [Wood], [BasePrice], [VAT], [F10], [F11]) VALUES (302, N'G Люкс', N'Галера', 8, 0, N'Синий', N'Дуб', 750000, 0.18, NULL, 45000000)
INSERT [dbo].[Boat$] ([boat_ID], [Model], [BoatType], [NumberOfRowers], [Mast], [Colour], [Wood], [BasePrice], [VAT], [F10], [F11]) VALUES (303, N'G Супер Люкс', N'Галера', 12, 1, N'Коричневый', N'Дуб', 1080000, 0.18, NULL, 64800000)
GO
INSERT [dbo].[Contract$] ([Contract_ID], [Date], [DepositPayed], [Order_ID], [ContractTotalPrice], [ContracTotalPrice_inclVAT], [ProductionProcess], [F8], [F9]) VALUES (10, CAST(N'2015-05-04T00:00:00.000' AS DateTime), 96500, 1, 289200, 358608, N'75% готовности', NULL, NULL)
INSERT [dbo].[Contract$] ([Contract_ID], [Date], [DepositPayed], [Order_ID], [ContractTotalPrice], [ContracTotalPrice_inclVAT], [ProductionProcess], [F8], [F9]) VALUES (11, CAST(N'2015-06-15T00:00:00.000' AS DateTime), 250000, 2, 744600, 922884, N'75% готовности', NULL, NULL)
INSERT [dbo].[Contract$] ([Contract_ID], [Date], [DepositPayed], [Order_ID], [ContractTotalPrice], [ContracTotalPrice_inclVAT], [ProductionProcess], [F8], [F9]) VALUES (12, CAST(N'2015-09-01T00:00:00.000' AS DateTime), 22000, 3, 66000, 81840, N'Отделка лодки', NULL, NULL)
INSERT [dbo].[Contract$] ([Contract_ID], [Date], [DepositPayed], [Order_ID], [ContractTotalPrice], [ContracTotalPrice_inclVAT], [ProductionProcess], [F8], [F9]) VALUES (13, CAST(N'2015-10-10T00:00:00.000' AS DateTime), 99000, 4, 294900, 365466, N'50% готовности', NULL, NULL)
INSERT [dbo].[Contract$] ([Contract_ID], [Date], [DepositPayed], [Order_ID], [ContractTotalPrice], [ContracTotalPrice_inclVAT], [ProductionProcess], [F8], [F9]) VALUES (14, CAST(N'2015-10-10T00:00:00.000' AS DateTime), 56000, 5, 171000, 211830, N'Отделка лодки', NULL, NULL)
INSERT [dbo].[Contract$] ([Contract_ID], [Date], [DepositPayed], [Order_ID], [ContractTotalPrice], [ContracTotalPrice_inclVAT], [ProductionProcess], [F8], [F9]) VALUES (15, CAST(N'2015-11-01T00:00:00.000' AS DateTime), 195000, 6, 577800, 716052, N'25% готовности', NULL, NULL)
INSERT [dbo].[Contract$] ([Contract_ID], [Date], [DepositPayed], [Order_ID], [ContractTotalPrice], [ContracTotalPrice_inclVAT], [ProductionProcess], [F8], [F9]) VALUES (16, CAST(N'2015-03-31T00:00:00.000' AS DateTime), 385000, 7, 1154400, 1430868, N'Начато производство', NULL, NULL)
INSERT [dbo].[Contract$] ([Contract_ID], [Date], [DepositPayed], [Order_ID], [ContractTotalPrice], [ContracTotalPrice_inclVAT], [ProductionProcess], [F8], [F9]) VALUES (17, CAST(N'2015-05-04T00:00:00.000' AS DateTime), 257000, 8, 768600, 952644, N'Работы не начаты', NULL, NULL)
GO
INSERT [dbo].[Customer$] ([Customer_ID], [FistName], [FamilyName], [DateOfBirth], [OrganisationName], [Address], [City], [email], [Phone], [IDNumber], [IDDocumentName]) VALUES (111, N'Александр', N'Порков', CAST(N'1986-05-31T00:00:00.000' AS DateTime), N'ООО "Венчур капитал"', N'Невский пр., дю43', N'Санкт-Петребург', N'c.bargue@kaarinacruises.fi', N'+7 (915) 142-67-10', N'PP6036589', N'Паспорт РФ')
INSERT [dbo].[Customer$] ([Customer_ID], [FistName], [FamilyName], [DateOfBirth], [OrganisationName], [Address], [City], [email], [Phone], [IDNumber], [IDDocumentName]) VALUES (112, N'Евгения', N'Сатова', CAST(N'1972-08-01T00:00:00.000' AS DateTime), N'ООО "Калипсо"', N'Судостроителей, д. 3', N'Санкт-петербург', N'hanna.hentonen@doublehh.com', N'+7 925 145-18-83', N'PK5533478', N'паспорт РФ')
INSERT [dbo].[Customer$] ([Customer_ID], [FistName], [FamilyName], [DateOfBirth], [OrganisationName], [Address], [City], [email], [Phone], [IDNumber], [IDDocumentName]) VALUES (113, N'Михаил', N'Буревой', CAST(N'1960-05-03T00:00:00.000' AS DateTime), N'', N'ул. Ленина, 15', N'Москва', N'bjorn.bengtson@amundsen.fi', N'+7 916 341-43-20', N'452639129', N'Загранпаспорт')
INSERT [dbo].[Customer$] ([Customer_ID], [FistName], [FamilyName], [DateOfBirth], [OrganisationName], [Address], [City], [email], [Phone], [IDNumber], [IDDocumentName]) VALUES (114, N'Наталья', N'Поздникова', CAST(N'1953-07-24T00:00:00.000' AS DateTime), N'', N'Вишневая улица, ', N'Ростов-на-дону', N'mattim11@hotmail.com', N'+7 926 284-49-80', N'PH5663289', N'Паспорт РФ')
INSERT [dbo].[Customer$] ([Customer_ID], [FistName], [FamilyName], [DateOfBirth], [OrganisationName], [Address], [City], [email], [Phone], [IDNumber], [IDDocumentName]) VALUES (115, N'Арсений', N'Витарсо', CAST(N'1982-03-01T00:00:00.000' AS DateTime), N'ООО "Вартовские пряжи"', N'Проспект Жукова, 1', N'Новосибирск', N'arton@hjauoy.fi', N'+7 915 254-37-86', N'562197341', N'Загранпаспорт')
GO
INSERT [dbo].[Invoice$] ([Invoice_ID], [Contract_ID], [Settled], [Sum], [Sum_inclVAT], [Date]) VALUES (11, 10, 1, 96400.0000, 17352, CAST(N'2014-05-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice$] ([Invoice_ID], [Contract_ID], [Settled], [Sum], [Sum_inclVAT], [Date]) VALUES (12, 10, 1, 120000.0000, 21600, CAST(N'2014-07-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice$] ([Invoice_ID], [Contract_ID], [Settled], [Sum], [Sum_inclVAT], [Date]) VALUES (13, 10, 1, 72799.8000, 13103.963999999998, CAST(N'2014-09-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice$] ([Invoice_ID], [Contract_ID], [Settled], [Sum], [Sum_inclVAT], [Date]) VALUES (14, 11, 1, 248200.2000, 44676.036, CAST(N'2014-06-17T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice$] ([Invoice_ID], [Contract_ID], [Settled], [Sum], [Sum_inclVAT], [Date]) VALUES (15, 11, 1, 496399.8000, 89351.963999999993, CAST(N'2014-09-18T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice$] ([Invoice_ID], [Contract_ID], [Settled], [Sum], [Sum_inclVAT], [Date]) VALUES (16, 12, 1, 22000.2000, 3960.036, CAST(N'2014-09-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice$] ([Invoice_ID], [Contract_ID], [Settled], [Sum], [Sum_inclVAT], [Date]) VALUES (17, 12, 1, 43999.8000, 7919.964, CAST(N'2014-11-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice$] ([Invoice_ID], [Contract_ID], [Settled], [Sum], [Sum_inclVAT], [Date]) VALUES (18, 13, 1, 98299.8000, 17693.963999999996, CAST(N'2014-10-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice$] ([Invoice_ID], [Contract_ID], [Settled], [Sum], [Sum_inclVAT], [Date]) VALUES (19, 13, 1, 196600.2000, 35388.036, CAST(N'2015-01-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice$] ([Invoice_ID], [Contract_ID], [Settled], [Sum], [Sum_inclVAT], [Date]) VALUES (20, 14, 1, 57000.0000, 10260, CAST(N'2014-10-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice$] ([Invoice_ID], [Contract_ID], [Settled], [Sum], [Sum_inclVAT], [Date]) VALUES (21, 14, 1, 57000.0000, 10260, CAST(N'2014-12-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice$] ([Invoice_ID], [Contract_ID], [Settled], [Sum], [Sum_inclVAT], [Date]) VALUES (22, 14, 1, 57000.0000, 10260, CAST(N'2015-02-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice$] ([Invoice_ID], [Contract_ID], [Settled], [Sum], [Sum_inclVAT], [Date]) VALUES (23, 15, 1, 192600.0000, 34668, CAST(N'2015-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice$] ([Invoice_ID], [Contract_ID], [Settled], [Sum], [Sum_inclVAT], [Date]) VALUES (24, 15, 1, 128400.0000, 23112, CAST(N'2015-01-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice$] ([Invoice_ID], [Contract_ID], [Settled], [Sum], [Sum_inclVAT], [Date]) VALUES (25, 15, 1, 128400.0000, 23112, CAST(N'2015-03-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice$] ([Invoice_ID], [Contract_ID], [Settled], [Sum], [Sum_inclVAT], [Date]) VALUES (26, 15, 0, 128400.0000, 23112, CAST(N'2015-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice$] ([Invoice_ID], [Contract_ID], [Settled], [Sum], [Sum_inclVAT], [Date]) VALUES (27, 16, 1, 384799.8000, 69263.963999999993, CAST(N'2015-04-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice$] ([Invoice_ID], [Contract_ID], [Settled], [Sum], [Sum_inclVAT], [Date]) VALUES (28, 16, 0, 384799.8000, 69263.963999999993, CAST(N'2015-05-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice$] ([Invoice_ID], [Contract_ID], [Settled], [Sum], [Sum_inclVAT], [Date]) VALUES (29, 16, 0, 384800.4000, 69264.072, CAST(N'2015-06-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice$] ([Invoice_ID], [Contract_ID], [Settled], [Sum], [Sum_inclVAT], [Date]) VALUES (30, 17, 1, 256200.0000, 46116, CAST(N'2015-05-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice$] ([Invoice_ID], [Contract_ID], [Settled], [Sum], [Sum_inclVAT], [Date]) VALUES (31, 17, 0, 128100.0000, 23058, CAST(N'2015-06-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice$] ([Invoice_ID], [Contract_ID], [Settled], [Sum], [Sum_inclVAT], [Date]) VALUES (32, 17, 0, 128100.0000, 23058, CAST(N'2015-07-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice$] ([Invoice_ID], [Contract_ID], [Settled], [Sum], [Sum_inclVAT], [Date]) VALUES (33, 17, 0, 128100.0000, 23058, CAST(N'2015-08-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice$] ([Invoice_ID], [Contract_ID], [Settled], [Sum], [Sum_inclVAT], [Date]) VALUES (34, 17, 0, 128100.0000, 23058, CAST(N'2015-09-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Order$] ([Order_ID], [Date], [Salesperson_ID], [Customer_ID], [Boat_ID], [DeliveryAddress], [City]) VALUES (1, CAST(N'2015-05-04T00:00:00.000' AS DateTime), 100, 111, 201, N'  Санкт-Петербург, порт', N'Санкт-Петербург')
INSERT [dbo].[Order$] ([Order_ID], [Date], [Salesperson_ID], [Customer_ID], [Boat_ID], [DeliveryAddress], [City]) VALUES (2, CAST(N'2015-06-06T00:00:00.000' AS DateTime), 100, 112, 302, N'Кронштадт', N'Кронштадт')
INSERT [dbo].[Order$] ([Order_ID], [Date], [Salesperson_ID], [Customer_ID], [Boat_ID], [DeliveryAddress], [City]) VALUES (3, CAST(N'2015-08-12T00:00:00.000' AS DateTime), 102, 113, 101, N'Москва, Северный порт', N'Москва')
INSERT [dbo].[Order$] ([Order_ID], [Date], [Salesperson_ID], [Customer_ID], [Boat_ID], [DeliveryAddress], [City]) VALUES (4, CAST(N'2015-09-23T00:00:00.000' AS DateTime), 101, 115, 201, N'Санкт-Петербург, порт', N'Санкт-Петербург')
INSERT [dbo].[Order$] ([Order_ID], [Date], [Salesperson_ID], [Customer_ID], [Boat_ID], [DeliveryAddress], [City]) VALUES (5, CAST(N'2015-10-04T00:00:00.000' AS DateTime), 103, 114, 202, N'Казань', N'Казнь')
INSERT [dbo].[Order$] ([Order_ID], [Date], [Salesperson_ID], [Customer_ID], [Boat_ID], [DeliveryAddress], [City]) VALUES (6, CAST(N'2015-10-20T00:00:00.000' AS DateTime), 100, 115, 301, N'Ростов-на-Дону', N'Ростов-на-Дону')
INSERT [dbo].[Order$] ([Order_ID], [Date], [Salesperson_ID], [Customer_ID], [Boat_ID], [DeliveryAddress], [City]) VALUES (7, CAST(N'2015-01-02T00:00:00.000' AS DateTime), 102, 111, 303, N'Калининград', N'калининград')
INSERT [dbo].[Order$] ([Order_ID], [Date], [Salesperson_ID], [Customer_ID], [Boat_ID], [DeliveryAddress], [City]) VALUES (8, CAST(N'2015-02-15T00:00:00.000' AS DateTime), 102, 112, 302, N'Санкт-Петербург', N'Санкт-Петербург')
GO
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (1, 14, 1)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (2, 3, 1)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (3, 9, 1)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (4, 8, 1)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (5, 1, 2)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (6, 4, 2)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (7, 4, 2)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (8, 5, 2)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (9, 12, 2)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (10, 14, 2)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (11, 1, 3)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (12, 3, 3)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (13, 8, 3)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (14, 3, 4)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (15, 8, 4)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (16, 9, 4)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (17, 10, 4)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (18, 13, 4)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (19, 14, 4)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (20, 1, 5)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (21, 10, 5)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (22, 13, 5)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (23, 1, 6)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (24, 4, 6)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (25, 6, 6)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (26, 9, 6)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (27, 9, 6)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (28, 9, 6)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (29, 12, 6)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (30, 14, 6)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (31, 1, 7)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (32, 4, 7)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (33, 4, 7)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (34, 5, 7)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (35, 7, 7)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (36, 9, 7)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (37, 9, 7)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (38, 9, 7)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (39, 11, 7)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (40, 11, 7)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (41, 14, 7)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (42, 1, 8)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (43, 4, 8)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (44, 4, 8)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (45, 6, 8)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (46, 8, 8)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (47, 8, 8)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (48, 9, 8)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (49, 9, 8)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (50, 12, 8)
INSERT [dbo].[OrderDetails$] ([Detail_ID], [Accessory_ID], [Order_ID]) VALUES (51, 14, 8)
GO
INSERT [dbo].[Partner$] ([Partner_ID], [Name], [Address], [City]) VALUES (10, N'ООО"Мемфис"', N'испания, Барселона', N'Барселона')
INSERT [dbo].[Partner$] ([Partner_ID], [Name], [Address], [City]) VALUES (11, N'ООО "Рога и копыта"', N'Сакт-петербург, Невский проспект, 41', N'Санкт-Петербург')
INSERT [dbo].[Partner$] ([Partner_ID], [Name], [Address], [City]) VALUES (12, N'ЗАО "Онский сталелитейный завод', N'Онск, ул. Ленина, д 12', N'Онск')
INSERT [dbo].[Partner$] ([Partner_ID], [Name], [Address], [City]) VALUES (13, N'ООО "Верфь"', N'Санкт-Петербург, Северная верфь', N'Санкт-Петербург')
INSERT [dbo].[Partner$] ([Partner_ID], [Name], [Address], [City]) VALUES (14, N'ООО "Призманти"', N'Саратов, ул. Советская, д. 87', N'Саратов')
INSERT [dbo].[Partner$] ([Partner_ID], [Name], [Address], [City]) VALUES (15, N'ООО "Кабель интрудшекн"', N'г. Москва, Войковская ул., д. 13А', N'Москва')
INSERT [dbo].[Partner$] ([Partner_ID], [Name], [Address], [City]) VALUES (16, N'ООО "Картова елице"', N'г. Владивосток, ул. Карелии, д.2', N'Владивосток')
GO
INSERT [dbo].[SalesPerson$] ([SalesPerson_ID], [FirstName], [FamilyName]) VALUES (100, N'Игорь', N'Авторасков')
INSERT [dbo].[SalesPerson$] ([SalesPerson_ID], [FirstName], [FamilyName]) VALUES (101, N'Екатерина', N'Иванова')
INSERT [dbo].[SalesPerson$] ([SalesPerson_ID], [FirstName], [FamilyName]) VALUES (102, N'Яна', N'Свиридова')
INSERT [dbo].[SalesPerson$] ([SalesPerson_ID], [FirstName], [FamilyName]) VALUES (103, N'Нина', N'Пацкирова')
GO
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (1, 1, 101)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (2, 1, 201)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (3, 1, 202)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (4, 1, 301)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (5, 1, 302)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (6, 1, 303)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (7, 2, 101)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (8, 2, 201)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (9, 2, 202)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (10, 3, 101)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (11, 3, 201)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (12, 3, 202)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (13, 3, 301)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (14, 3, 302)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (15, 3, 303)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (16, 4, 303)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (17, 5, 303)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (18, 6, 101)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (19, 6, 301)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (20, 6, 302)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (21, 6, 303)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (22, 7, 303)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (23, 8, 101)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (24, 8, 201)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (25, 8, 202)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (26, 8, 301)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (27, 8, 302)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (28, 8, 303)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (29, 9, 101)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (30, 9, 201)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (31, 9, 202)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (32, 9, 301)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (33, 9, 302)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (34, 9, 303)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (35, 10, 101)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (36, 10, 202)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (37, 10, 202)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (38, 10, 301)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (39, 10, 302)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (40, 10, 303)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (41, 11, 201)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (42, 11, 202)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (43, 11, 301)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (44, 11, 302)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (45, 11, 303)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (46, 12, 201)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (47, 12, 202)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (48, 12, 301)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (49, 12, 302)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (50, 12, 303)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (51, 13, 201)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (52, 13, 202)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (53, 14, 101)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (54, 14, 202)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (55, 14, 202)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (56, 14, 301)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (57, 14, 302)
INSERT [dbo].['Аксессуары лодочные$'] ([Fit_ID], [Accessory_ID], [Boat_ID]) VALUES (58, 14, 303)
GO
ALTER TABLE [dbo].[Accessory$]  WITH CHECK ADD  CONSTRAINT [FK_Accessory$_Partner$] FOREIGN KEY([Partner_ID])
REFERENCES [dbo].[Partner$] ([Partner_ID])
GO
ALTER TABLE [dbo].[Accessory$] CHECK CONSTRAINT [FK_Accessory$_Partner$]
GO
ALTER TABLE [dbo].[Invoice$]  WITH CHECK ADD  CONSTRAINT [FK_Invoice$_Contract$] FOREIGN KEY([Contract_ID])
REFERENCES [dbo].[Contract$] ([Contract_ID])
GO
ALTER TABLE [dbo].[Invoice$] CHECK CONSTRAINT [FK_Invoice$_Contract$]
GO
ALTER TABLE [dbo].[Order$]  WITH CHECK ADD  CONSTRAINT [FK_Order$_Boat$] FOREIGN KEY([Boat_ID])
REFERENCES [dbo].[Boat$] ([boat_ID])
GO
ALTER TABLE [dbo].[Order$] CHECK CONSTRAINT [FK_Order$_Boat$]
GO
ALTER TABLE [dbo].[Order$]  WITH CHECK ADD  CONSTRAINT [FK_Order$_Customer$] FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Customer$] ([Customer_ID])
GO
ALTER TABLE [dbo].[Order$] CHECK CONSTRAINT [FK_Order$_Customer$]
GO
ALTER TABLE [dbo].[Order$]  WITH CHECK ADD  CONSTRAINT [FK_Order$_SalesPerson$] FOREIGN KEY([Salesperson_ID])
REFERENCES [dbo].[SalesPerson$] ([SalesPerson_ID])
GO
ALTER TABLE [dbo].[Order$] CHECK CONSTRAINT [FK_Order$_SalesPerson$]
GO
ALTER TABLE [dbo].[OrderDetails$]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails$_Accessory$] FOREIGN KEY([Accessory_ID])
REFERENCES [dbo].[Accessory$] ([Accessory_ID])
GO
ALTER TABLE [dbo].[OrderDetails$] CHECK CONSTRAINT [FK_OrderDetails$_Accessory$]
GO
ALTER TABLE [dbo].[OrderDetails$]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails$_Order$] FOREIGN KEY([Order_ID])
REFERENCES [dbo].[Order$] ([Order_ID])
GO
ALTER TABLE [dbo].[OrderDetails$] CHECK CONSTRAINT [FK_OrderDetails$_Order$]
GO
ALTER TABLE [dbo].['Аксессуары лодочные$']  WITH CHECK ADD  CONSTRAINT [FK_'Аксессуары лодочные$'_Accessory$] FOREIGN KEY([Accessory_ID])
REFERENCES [dbo].[Accessory$] ([Accessory_ID])
GO
ALTER TABLE [dbo].['Аксессуары лодочные$'] CHECK CONSTRAINT [FK_'Аксессуары лодочные$'_Accessory$]
GO
ALTER TABLE [dbo].['Аксессуары лодочные$']  WITH CHECK ADD  CONSTRAINT [FK_'Аксессуары лодочные$'_Boat$] FOREIGN KEY([Boat_ID])
REFERENCES [dbo].[Boat$] ([boat_ID])
GO
ALTER TABLE [dbo].['Аксессуары лодочные$'] CHECK CONSTRAINT [FK_'Аксессуары лодочные$'_Boat$]
GO
USE [master]
GO
ALTER DATABASE [яхты] SET  READ_WRITE 
GO
