USE [RPOS_DB]
GO
/****** Object:  StoredProcedure [dbo].[SpInsertUpdateGrandTotalTemp]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP PROCEDURE [dbo].[SpInsertUpdateGrandTotalTemp]
GO
/****** Object:  StoredProcedure [dbo].[SpInsertUpdateGrandTotal]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP PROCEDURE [dbo].[SpInsertUpdateGrandTotal]
GO
/****** Object:  StoredProcedure [dbo].[InsertDailyCustomer]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP PROCEDURE [dbo].[InsertDailyCustomer]
GO
/****** Object:  StoredProcedure [dbo].[insertandupdateOrderedProductKOTTemp]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP PROCEDURE [dbo].[insertandupdateOrderedProductKOTTemp]
GO
/****** Object:  StoredProcedure [dbo].[insertandupdateOrderedProductKOT]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP PROCEDURE [dbo].[insertandupdateOrderedProductKOT]
GO
ALTER TABLE [dbo].[WorkPeriodEnd] DROP CONSTRAINT [FK_WorkPeriodEnd_WorkPeriodStart]
GO
ALTER TABLE [dbo].[Warehouse] DROP CONSTRAINT [FK_Warehouse_WarehouseType]
GO
ALTER TABLE [dbo].[Voucher_OtherDetails] DROP CONSTRAINT [FK_Voucher_OtherDetails_Voucher]
GO
ALTER TABLE [dbo].[Voucher_OtherDetails] DROP CONSTRAINT [FK_Voucher_OtherDetails_Expense]
GO
ALTER TABLE [dbo].[TempRestaurantPOS_OrderInfoKOT] DROP CONSTRAINT [FK_TempRestaurantPOS_OrderInfoKOT_TempRestaurantPOS_OrderInfoKOT]
GO
ALTER TABLE [dbo].[TempRestaurantPOS_OrderInfoKOT] DROP CONSTRAINT [FK_TempRestaurantPOS_OrderInfoKOT_Registration]
GO
ALTER TABLE [dbo].[TempRestaurantPOS_OrderInfoKOT] DROP CONSTRAINT [FK_TempRestaurantPOS_OrderInfoKOT_R_Table]
GO
ALTER TABLE [dbo].[TempRestaurantPOS_OrderedProductKOT] DROP CONSTRAINT [FK_TempRestaurantPOS_OrderedProductKOT_Dish]
GO
ALTER TABLE [dbo].[Temp_Stock_Store] DROP CONSTRAINT [FK_TempStock_Store_Dish]
GO
ALTER TABLE [dbo].[Temp_Stock_RM] DROP CONSTRAINT [FK_Temp_Stock_RM_Product]
GO
ALTER TABLE [dbo].[Temp_Stock] DROP CONSTRAINT [FK_Temp_Stock_Warehouse]
GO
ALTER TABLE [dbo].[Temp_Stock] DROP CONSTRAINT [FK_Temp_Stock_Product]
GO
ALTER TABLE [dbo].[StockTransfer_Join] DROP CONSTRAINT [FK_StockTransfer_Warehouse]
GO
ALTER TABLE [dbo].[StockTransfer_Join] DROP CONSTRAINT [FK_StockTransfer_Product]
GO
ALTER TABLE [dbo].[StockTransfer_Join] DROP CONSTRAINT [FK_StockTransfer_Join_StockTransfer]
GO
ALTER TABLE [dbo].[StockTransfer] DROP CONSTRAINT [FK_StockTransfer_Kitchen]
GO
ALTER TABLE [dbo].[Stock_Store_Join] DROP CONSTRAINT [FK_Stock_Store_Join_Stock_Store]
GO
ALTER TABLE [dbo].[Stock_Store_Join] DROP CONSTRAINT [FK_Stock_Store_Join_Dish]
GO
ALTER TABLE [dbo].[RestaurantPOS_OrderInfoKOT] DROP CONSTRAINT [FK_RestaurantPOS_OrderInfoKOT_Registration]
GO
ALTER TABLE [dbo].[RestaurantPOS_OrderInfoKOT] DROP CONSTRAINT [FK_RestaurantPOS_OrderInfoKOT_R_Table]
GO
ALTER TABLE [dbo].[RestaurantPOS_OrderedProductKOT] DROP CONSTRAINT [FK_RestaurantPOS_OrderedProductKOT_Dish]
GO
ALTER TABLE [dbo].[RestaurantPOS_OrderedProductBillTA] DROP CONSTRAINT [FK_RestaurantPOS_OrderedProductBillTA_RestaurantPOS_BillingInfoTA]
GO
ALTER TABLE [dbo].[RestaurantPOS_OrderedProductBillTA] DROP CONSTRAINT [FK_RestaurantPOS_OrderedProductBillTA_Dish]
GO
ALTER TABLE [dbo].[RestaurantPOS_OrderedProductBillKOT] DROP CONSTRAINT [FK_RestaurantPOS_OrderedProductBillKOT_TempRestaurantPOS_OrderInfoKOT]
GO
ALTER TABLE [dbo].[RestaurantPOS_OrderedProductBillKOT] DROP CONSTRAINT [FK_RestaurantPOS_OrderedProductBillKOT_R_Table]
GO
ALTER TABLE [dbo].[RestaurantPOS_OrderedProductBillKOT] DROP CONSTRAINT [FK_RestaurantPOS_OrderedProductBillKOT_Dish]
GO
ALTER TABLE [dbo].[RestaurantPOS_OrderedProductBillHD] DROP CONSTRAINT [FK_RestaurantPOS_OrderedProductBillHD_RestaurantPOS_BillingInfoHD]
GO
ALTER TABLE [dbo].[RestaurantPOS_OrderedProductBillHD] DROP CONSTRAINT [FK_RestaurantPOS_OrderedProductBillHD_Dish]
GO
ALTER TABLE [dbo].[RestaurantPOS_OrderedProductBillEB] DROP CONSTRAINT [FK_RestaurantPOS_OrderedProductBillEB_RestaurantPOS_BillingInfoEB]
GO
ALTER TABLE [dbo].[RestaurantPOS_OrderedProductBillEB] DROP CONSTRAINT [FK_RestaurantPOS_OrderedProductBillEB_Dish]
GO
ALTER TABLE [dbo].[RestaurantPOS_BillingInfoTA] DROP CONSTRAINT [FK_RestaurantPOS_BillingInfoTA_Registration]
GO
ALTER TABLE [dbo].[RestaurantPOS_BillingInfoKOT] DROP CONSTRAINT [FK_RestaurantPOS_BillingInfoKOT_Registration]
GO
ALTER TABLE [dbo].[RestaurantPOS_BillingInfoHD] DROP CONSTRAINT [FK_RestaurantPOS_BillingInfoHD_Registration]
GO
ALTER TABLE [dbo].[RestaurantPOS_BillingInfoHD] DROP CONSTRAINT [FK_RestaurantPOS_BillingInfoHD_EmployeeRegistration]
GO
ALTER TABLE [dbo].[RestaurantPOS_BillingInfoEB] DROP CONSTRAINT [FK_RestaurantPOS_BillingInfoEB_Registration]
GO
ALTER TABLE [dbo].[Recipe_Join] DROP CONSTRAINT [FK_Recipe_Join_Recipe]
GO
ALTER TABLE [dbo].[Recipe_Join] DROP CONSTRAINT [FK_Recipe_Join_Product]
GO
ALTER TABLE [dbo].[Recipe] DROP CONSTRAINT [FK_Recipe_Dish]
GO
ALTER TABLE [dbo].[Purchase_Join] DROP CONSTRAINT [FK_Purchase_Join_Warehouse]
GO
ALTER TABLE [dbo].[Purchase_Join] DROP CONSTRAINT [FK_Purchase_Join_Purchase]
GO
ALTER TABLE [dbo].[Purchase_Join] DROP CONSTRAINT [FK_Purchase_Join_Product]
GO
ALTER TABLE [dbo].[Purchase] DROP CONSTRAINT [FK_Purchase_Supplier]
GO
ALTER TABLE [dbo].[Product_OpeningStock] DROP CONSTRAINT [FK_Product_OpeningStock_Warehouse]
GO
ALTER TABLE [dbo].[Product_OpeningStock] DROP CONSTRAINT [FK_Product_OpeningStock_Product1]
GO
ALTER TABLE [dbo].[Payment] DROP CONSTRAINT [FK_Payment_Supplier]
GO
ALTER TABLE [dbo].[MemberLedger] DROP CONSTRAINT [FK_MemberLedger_Member]
GO
ALTER TABLE [dbo].[Logs] DROP CONSTRAINT [FK_Logs_Registration]
GO
ALTER TABLE [dbo].[Expense] DROP CONSTRAINT [FK_Expense_ExpenseType]
GO
ALTER TABLE [dbo].[Dish] DROP CONSTRAINT [FK_Dish_Kitchen]
GO
ALTER TABLE [dbo].[Dish] DROP CONSTRAINT [FK_Dish_Category]
GO
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [FK_Customer_Customer]
GO
ALTER TABLE [dbo].[Temp_Stock_RM] DROP CONSTRAINT [DF_Temp_Stock_RM_Qty]
GO
/****** Object:  Table [dbo].[WorkPeriodStart]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[WorkPeriodStart]
GO
/****** Object:  Table [dbo].[WorkPeriodEnd]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[WorkPeriodEnd]
GO
/****** Object:  Table [dbo].[WarehouseType]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[WarehouseType]
GO
/****** Object:  Table [dbo].[Warehouse]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[Warehouse]
GO
/****** Object:  Table [dbo].[Wallet]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[Wallet]
GO
/****** Object:  Table [dbo].[Voucher_OtherDetails]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[Voucher_OtherDetails]
GO
/****** Object:  Table [dbo].[Voucher]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[Voucher]
GO
/****** Object:  Table [dbo].[TempRestaurantPOS_OrderInfoKOT]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[TempRestaurantPOS_OrderInfoKOT]
GO
/****** Object:  Table [dbo].[TempRestaurantPOS_OrderedProductKOT]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[TempRestaurantPOS_OrderedProductKOT]
GO
/****** Object:  Table [dbo].[Temp_Stock_Store]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[Temp_Stock_Store]
GO
/****** Object:  Table [dbo].[Temp_Stock_RM]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[Temp_Stock_RM]
GO
/****** Object:  Table [dbo].[Temp_Stock]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[Temp_Stock]
GO
/****** Object:  Table [dbo].[SupplierLedgerBook]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[SupplierLedgerBook]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[Supplier]
GO
/****** Object:  Table [dbo].[StockTransfer_Join]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[StockTransfer_Join]
GO
/****** Object:  Table [dbo].[StockTransfer]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[StockTransfer]
GO
/****** Object:  Table [dbo].[Stock_Store_Join]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[Stock_Store_Join]
GO
/****** Object:  Table [dbo].[Stock_Store]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[Stock_Store]
GO
/****** Object:  Table [dbo].[SMSSetting]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[SMSSetting]
GO
/****** Object:  Table [dbo].[RestaurantPOS_OrderInfoKOT]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[RestaurantPOS_OrderInfoKOT]
GO
/****** Object:  Table [dbo].[RestaurantPOS_OrderedProductKOT]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[RestaurantPOS_OrderedProductKOT]
GO
/****** Object:  Table [dbo].[RestaurantPOS_OrderedProductBillTA]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[RestaurantPOS_OrderedProductBillTA]
GO
/****** Object:  Table [dbo].[RestaurantPOS_OrderedProductBillKOT]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[RestaurantPOS_OrderedProductBillKOT]
GO
/****** Object:  Table [dbo].[RestaurantPOS_OrderedProductBillHD]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[RestaurantPOS_OrderedProductBillHD]
GO
/****** Object:  Table [dbo].[RestaurantPOS_OrderedProductBillEB]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[RestaurantPOS_OrderedProductBillEB]
GO
/****** Object:  Table [dbo].[RestaurantPOS_BillingInfoTA]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[RestaurantPOS_BillingInfoTA]
GO
/****** Object:  Table [dbo].[RestaurantPOS_BillingInfoKOT]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[RestaurantPOS_BillingInfoKOT]
GO
/****** Object:  Table [dbo].[RestaurantPOS_BillingInfoHD]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[RestaurantPOS_BillingInfoHD]
GO
/****** Object:  Table [dbo].[RestaurantPOS_BillingInfoEB]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[RestaurantPOS_BillingInfoEB]
GO
/****** Object:  Table [dbo].[Registration]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[Registration]
GO
/****** Object:  Table [dbo].[Recipe_Join]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[Recipe_Join]
GO
/****** Object:  Table [dbo].[Recipe]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[Recipe]
GO
/****** Object:  Table [dbo].[R_Table]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[R_Table]
GO
/****** Object:  Table [dbo].[Purchase_Join]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[Purchase_Join]
GO
/****** Object:  Table [dbo].[Purchase]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[Purchase]
GO
/****** Object:  Table [dbo].[Product_OpeningStock]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[Product_OpeningStock]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[Product]
GO
/****** Object:  Table [dbo].[PosPrinterSetting]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[PosPrinterSetting]
GO
/****** Object:  Table [dbo].[PosGrouping1]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[PosGrouping1]
GO
/****** Object:  Table [dbo].[PosGrouping]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[PosGrouping]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[Payment]
GO
/****** Object:  Table [dbo].[OtherSetting]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[OtherSetting]
GO
/****** Object:  Table [dbo].[NotesMaster]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[NotesMaster]
GO
/****** Object:  Table [dbo].[MemberLedger]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[MemberLedger]
GO
/****** Object:  Table [dbo].[Member]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[Member]
GO
/****** Object:  Table [dbo].[Logs]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[Logs]
GO
/****** Object:  Table [dbo].[LedgerBook]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[LedgerBook]
GO
/****** Object:  Table [dbo].[Kitchen]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[Kitchen]
GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[Hotel]
GO
/****** Object:  Table [dbo].[GridGrouping]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[GridGrouping]
GO
/****** Object:  Table [dbo].[ExpenseType]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[ExpenseType]
GO
/****** Object:  Table [dbo].[Expense]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[Expense]
GO
/****** Object:  Table [dbo].[EmployeeRegistration]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[EmployeeRegistration]
GO
/****** Object:  Table [dbo].[EmailSetting]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[EmailSetting]
GO
/****** Object:  Table [dbo].[Dish]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[Dish]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[Customer]
GO
/****** Object:  Table [dbo].[Currency]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[Currency]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[Category]
GO
/****** Object:  Table [dbo].[Activation]    Script Date: 5/16/2017 8:00:19 PM ******/
DROP TABLE [dbo].[Activation]
GO
/****** Object:  Table [dbo].[Activation]    Script Date: 5/16/2017 8:00:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Activation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HardwareID] [nchar](100) NOT NULL,
	[ActivationID] [nchar](150) NOT NULL,
 CONSTRAINT [PK_Activation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryName] [nvarchar](250) NOT NULL,
	[VAT] [decimal](18, 2) NOT NULL CONSTRAINT [DF_Category_VAT]  DEFAULT ((0.00)),
	[ST] [decimal](18, 2) NOT NULL CONSTRAINT [DF_Category_ST]  DEFAULT ((0.00)),
	[SC] [decimal](18, 2) NOT NULL CONSTRAINT [DF_Category_SC]  DEFAULT ((0.00)),
	[BackColor] [int] NOT NULL,
	[Cat_ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Currency]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Currency](
	[CurrencyCode] [nchar](10) NOT NULL,
	[Currencyname] [nchar](200) NOT NULL,
	[Rate] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_CurrencyRate] PRIMARY KEY CLUSTERED 
(
	[CurrencyCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customer]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [varchar](50) NULL,
	[CustomerDOB] [date] NULL,
	[Contact] [nchar](15) NULL,
	[TicketId] [int] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dish]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dish](
	[DishName] [nvarchar](250) NOT NULL,
	[Category] [nvarchar](250) NOT NULL,
	[Rate] [decimal](18, 2) NOT NULL,
	[Discount] [decimal](18, 2) NOT NULL,
	[BackColor] [int] NULL,
	[Kitchen] [nchar](200) NOT NULL,
 CONSTRAINT [PK_Dish] PRIMARY KEY CLUSTERED 
(
	[DishName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmailSetting]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailSetting](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ServerName] [nchar](150) NOT NULL,
	[SMTPAddress] [nvarchar](250) NOT NULL,
	[Username] [nchar](200) NOT NULL,
	[Password] [nchar](100) NOT NULL,
	[Port] [int] NOT NULL,
	[TLS_SSL_Required] [nchar](10) NOT NULL,
	[IsDefault] [nchar](10) NOT NULL,
	[IsActive] [nchar](10) NOT NULL,
 CONSTRAINT [PK_EmailSetting] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmployeeRegistration]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeRegistration](
	[EmpId] [int] NOT NULL,
	[EmployeeID] [nchar](15) NOT NULL,
	[EmployeeName] [nchar](150) NOT NULL,
	[Address] [nvarchar](250) NOT NULL,
	[City] [nchar](150) NOT NULL,
	[ContactNo] [nchar](30) NOT NULL,
	[Email] [nchar](150) NOT NULL,
	[DateOfJoining] [datetime] NOT NULL,
	[Photo] [image] NOT NULL,
	[Active] [nchar](20) NULL,
 CONSTRAINT [PK_EmployeeRegistration] PRIMARY KEY CLUSTERED 
(
	[EmpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Expense]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Expense](
	[ExpenseName] [nvarchar](250) NOT NULL,
	[ExpenseType] [nchar](200) NOT NULL,
 CONSTRAINT [PK_Expense_1] PRIMARY KEY CLUSTERED 
(
	[ExpenseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ExpenseType]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExpenseType](
	[Type] [nchar](200) NOT NULL,
 CONSTRAINT [PK_ExpenseType] PRIMARY KEY CLUSTERED 
(
	[Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GridGrouping]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GridGrouping](
	[Id] [int] NOT NULL,
	[Col1] [nvarchar](250) NOT NULL,
	[Col2] [int] NOT NULL,
 CONSTRAINT [PK_GridGrouping] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HotelName] [nchar](150) NULL,
	[AddressLine1] [nvarchar](250) NULL,
	[AddressLine2] [nvarchar](250) NULL,
	[AddressLine3] [nvarchar](250) NULL,
	[ContactNo] [nchar](100) NULL,
	[EmailID] [nchar](150) NULL,
	[TIN] [nchar](30) NULL,
	[STNo] [nchar](30) NULL,
	[CIN] [nchar](30) NULL,
	[Logo] [image] NULL,
	[BaseCurrency] [nchar](200) NULL,
	[CurrencyCode] [nchar](10) NULL,
	[TicketFooterMessage] [nvarchar](250) NULL,
 CONSTRAINT [PK_Hotel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Kitchen]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kitchen](
	[Kitchenname] [nchar](200) NOT NULL,
	[Printer] [nvarchar](250) NOT NULL,
	[IsEnabled] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Kitchen] PRIMARY KEY CLUSTERED 
(
	[Kitchenname] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LedgerBook]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LedgerBook](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Name] [nchar](200) NOT NULL,
	[LedgerNo] [nchar](200) NOT NULL,
	[Label] [nchar](200) NOT NULL,
	[Debit] [decimal](18, 2) NOT NULL,
	[Credit] [decimal](18, 2) NOT NULL,
	[PartyID] [nchar](50) NULL,
 CONSTRAINT [PK_LedgerBook] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Logs]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [nchar](100) NOT NULL,
	[Operation] [nvarchar](250) NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_Logs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Member]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member](
	[MemberID] [int] NOT NULL,
	[Name] [nchar](200) NULL,
	[ContactNo] [nchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[RegistrationDate] [datetime] NULL,
	[Active] [nchar](10) NULL,
 CONSTRAINT [PK_Member] PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MemberLedger]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberLedger](
	[Id] [int] NOT NULL,
	[Date] [datetime] NULL,
	[LedgerNo] [nchar](50) NULL,
	[Label] [nchar](200) NULL,
	[Debit] [decimal](18, 2) NULL,
	[Credit] [decimal](18, 2) NULL,
	[MemberID] [int] NULL,
 CONSTRAINT [PK_MemberLedger] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NotesMaster]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotesMaster](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Notes] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_NotesMaster] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OtherSetting]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OtherSetting](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ParcelCharges] [decimal](18, 2) NOT NULL CONSTRAINT [DF_OtherSetting_ParcelCharges]  DEFAULT ((0.00)),
	[HomeDeliveryCharges] [decimal](18, 2) NOT NULL CONSTRAINT [DF_OtherSetting_HomeDeliveryCharges]  DEFAULT ((0.00)),
	[CashDrawer] [nchar](20) NOT NULL,
	[VAT] [decimal](18, 2) NOT NULL CONSTRAINT [DF_OtherSetting_VAT]  DEFAULT ((0.00)),
	[ServiceTax] [decimal](18, 2) NOT NULL CONSTRAINT [DF_OtherSetting_ServiceTax]  DEFAULT ((0.00)),
	[ServiceCharges] [decimal](18, 2) NOT NULL CONSTRAINT [DF_OtherSetting_ServiceCharge]  DEFAULT ((0.00)),
	[TA] [nchar](10) NOT NULL,
	[HD] [nchar](10) NOT NULL,
	[EB] [nchar](10) NOT NULL,
	[KG] [nchar](10) NOT NULL,
 CONSTRAINT [PK_OtherCharges] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Payment]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[T_ID] [int] NOT NULL,
	[TransactionID] [nchar](20) NULL,
	[Date] [datetime] NOT NULL,
	[PaymentMode] [nchar](30) NULL,
	[SupplierID] [int] NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[Remarks] [nvarchar](250) NULL,
	[PaymentModeDetails] [nvarchar](250) NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[T_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PosGrouping]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PosGrouping](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Col1] [nvarchar](250) NULL,
	[Col2] [decimal](18, 2) NULL,
	[Col3] [int] NULL,
	[Col4] [decimal](18, 2) NULL,
	[Col5] [decimal](18, 2) NULL,
	[Col6] [decimal](18, 2) NULL,
	[Col7] [decimal](18, 2) NULL,
	[Col8] [decimal](18, 2) NULL,
	[Col9] [decimal](18, 2) NULL,
	[Col10] [decimal](18, 2) NULL,
	[Col11] [decimal](18, 2) NULL,
	[Col12] [decimal](18, 2) NULL,
	[Col13] [decimal](18, 2) NULL,
	[Col14] [nvarchar](max) NULL,
 CONSTRAINT [PK_PosGroupingTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PosGrouping1]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PosGrouping1](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Col1] [nvarchar](250) NULL,
	[Col2] [decimal](18, 2) NULL,
	[Col3] [int] NULL,
	[Col4] [decimal](18, 2) NULL,
	[Col5] [decimal](18, 2) NULL,
	[Col6] [decimal](18, 2) NULL,
	[Col7] [decimal](18, 2) NULL,
	[Col8] [decimal](18, 2) NULL,
	[Col9] [decimal](18, 2) NULL,
	[Col10] [decimal](18, 2) NULL,
	[Col11] [decimal](18, 2) NULL,
	[Col12] [decimal](18, 2) NULL,
	[Col13] [decimal](18, 2) NULL,
	[Col14] [nvarchar](max) NULL,
	[Col15] [int] NULL,
 CONSTRAINT [PK_PosGrouping1Table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PosPrinterSetting]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PosPrinterSetting](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PrinterName] [nvarchar](250) NOT NULL,
	[PrinterType] [nchar](100) NOT NULL,
	[IsEnabled] [nchar](20) NOT NULL,
 CONSTRAINT [PK_PosPrinterSetting] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[PID] [int] NOT NULL,
	[ProductCode] [nchar](30) NOT NULL,
	[ProductName] [nchar](200) NOT NULL,
	[Category] [nvarchar](250) NULL,
	[Description] [nvarchar](max) NULL,
	[Unit] [nchar](50) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[ReorderPoint] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[PID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product_OpeningStock]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_OpeningStock](
	[PS_ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[Warehouse] [nchar](250) NOT NULL,
	[Qty] [decimal](18, 2) NOT NULL,
	[HasExpiryDate] [nchar](10) NULL,
	[ExpiryDate] [nchar](50) NULL,
 CONSTRAINT [PK_Product_OpeningStock] PRIMARY KEY CLUSTERED 
(
	[PS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Purchase]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Purchase](
	[ST_ID] [int] NOT NULL,
	[InvoiceNo] [nchar](30) NOT NULL,
	[Date] [datetime] NOT NULL,
	[PurchaseType] [nchar](20) NOT NULL,
	[Supplier_ID] [int] NOT NULL,
	[SubTotal] [decimal](18, 2) NOT NULL,
	[DiscountPer] [decimal](18, 2) NOT NULL,
	[Discount] [decimal](18, 2) NOT NULL,
	[PreviousDue] [decimal](18, 2) NOT NULL,
	[FreightCharges] [decimal](18, 2) NOT NULL,
	[OtherCharges] [decimal](18, 2) NOT NULL,
	[Total] [decimal](18, 2) NOT NULL,
	[RoundOff] [decimal](18, 2) NOT NULL,
	[GrandTotal] [decimal](18, 2) NOT NULL,
	[TotalPayment] [decimal](18, 2) NOT NULL,
	[PaymentDue] [decimal](18, 2) NOT NULL,
	[Remarks] [nvarchar](max) NULL,
 CONSTRAINT [PK_Purchase] PRIMARY KEY CLUSTERED 
(
	[ST_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Purchase_Join]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Purchase_Join](
	[SP_ID] [int] IDENTITY(1,1) NOT NULL,
	[PurchaseID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Qty] [decimal](18, 2) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[Warehouse] [nchar](250) NOT NULL,
	[HasExpirydate] [nchar](10) NULL,
	[ExpiryDate] [nchar](50) NULL,
 CONSTRAINT [PK_Purchase_Join] PRIMARY KEY CLUSTERED 
(
	[SP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[R_Table]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[R_Table](
	[TableNo] [nchar](30) NOT NULL,
	[Status] [nchar](30) NOT NULL,
	[BkColor] [int] NOT NULL,
 CONSTRAINT [PK_Table] PRIMARY KEY CLUSTERED 
(
	[TableNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Recipe]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recipe](
	[R_ID] [int] NOT NULL,
	[RecipeName] [nchar](200) NOT NULL,
	[Dish] [nvarchar](250) NOT NULL,
	[FixedCost] [decimal](18, 2) NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Recipe] PRIMARY KEY CLUSTERED 
(
	[R_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Recipe_Join]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recipe_Join](
	[RJ_ID] [int] IDENTITY(1,1) NOT NULL,
	[RecipeID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [decimal](18, 2) NOT NULL,
	[Unit] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Recipe_Join] PRIMARY KEY CLUSTERED 
(
	[RJ_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Registration]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registration](
	[UserID] [nchar](100) NOT NULL,
	[UserType] [nchar](30) NOT NULL,
	[Password] [nchar](50) NOT NULL,
	[Name] [nchar](150) NOT NULL,
	[ContactNo] [nchar](50) NULL,
	[EmailID] [nchar](150) NULL,
	[JoiningDate] [datetime] NOT NULL,
	[Active] [nchar](10) NULL,
 CONSTRAINT [PK_Registration] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RestaurantPOS_BillingInfoEB]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RestaurantPOS_BillingInfoEB](
	[Id] [int] NOT NULL,
	[BillNo] [nchar](15) NOT NULL,
	[BillDate] [datetime] NOT NULL,
	[EBDiscountPer] [decimal](18, 2) NOT NULL CONSTRAINT [DF_RestaurantPOS_BillingInfoEB_EBDiscountPer]  DEFAULT ((0.00)),
	[GrandTotal] [decimal](18, 2) NOT NULL CONSTRAINT [DF_RestaurantPOS_BillingInfoEB_GrandTotal]  DEFAULT ((0.00)),
	[Cash] [decimal](18, 2) NOT NULL CONSTRAINT [DF_RestaurantPOS_BillingInfoEB_Cash]  DEFAULT ((0.00)),
	[Change] [decimal](18, 2) NOT NULL CONSTRAINT [DF_RestaurantPOS_BillingInfoEB_Change]  DEFAULT ((0.00)),
	[Operator] [nchar](100) NOT NULL,
	[PaymentMode] [nchar](50) NULL,
	[BillNote] [nvarchar](max) NULL,
	[ExchangeRate] [decimal](18, 2) NOT NULL CONSTRAINT [DF_RestaurantPOS_BillingInfoEB_ExchangeRate]  DEFAULT ((0.0000)),
	[CurrencyCode] [nchar](10) NULL,
	[EB_Status] [nchar](20) NULL,
	[DiscountReason] [nchar](200) NULL,
	[Member_ID] [nchar](10) NULL,
 CONSTRAINT [PK_RestaurantPOS_BillingInfoEB] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RestaurantPOS_BillingInfoHD]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RestaurantPOS_BillingInfoHD](
	[Id] [int] NOT NULL,
	[BillNo] [nchar](15) NOT NULL,
	[BillDate] [datetime] NOT NULL,
	[Operator] [nchar](100) NOT NULL,
	[SubTotal] [decimal](18, 2) NOT NULL,
	[HDDiscountPer] [decimal](18, 2) NOT NULL CONSTRAINT [DF_RestaurantPOS_BillingInfoHD_HDDiscountPer]  DEFAULT ((0.00)),
	[HomeDeliveryCharges] [decimal](18, 2) NOT NULL,
	[GrandTotal] [decimal](18, 2) NOT NULL,
	[CustomerName] [nchar](200) NULL,
	[Address] [nvarchar](250) NULL,
	[ContactNo] [nchar](50) NULL,
	[Employee_ID] [int] NOT NULL,
	[PaymentMode] [nchar](50) NOT NULL,
	[BillNote] [nvarchar](max) NULL,
	[DiscountReason] [nchar](200) NULL,
	[Member_ID] [nchar](10) NULL,
 CONSTRAINT [PK_RestaurantPOS_BillingInfoHD] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RestaurantPOS_BillingInfoKOT]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RestaurantPOS_BillingInfoKOT](
	[Id] [int] NOT NULL,
	[BillNo] [nchar](15) NOT NULL,
	[BillDate] [datetime] NOT NULL,
	[KOTDiscountPer] [decimal](18, 2) NOT NULL CONSTRAINT [DF_RestaurantPOS_BillingInfoKOT_KOTDiscountPer]  DEFAULT ((0.00)),
	[GrandTotal] [decimal](18, 2) NOT NULL,
	[Cash] [decimal](18, 2) NOT NULL,
	[Change] [decimal](18, 2) NOT NULL,
	[Operator] [nchar](100) NOT NULL,
	[PaymentMode] [nchar](100) NOT NULL,
	[ExchangeRate] [decimal](18, 2) NOT NULL CONSTRAINT [DF_RestaurantPOS_BillingInfoKOT_ExchangeRate]  DEFAULT ((0.0000)),
	[CurrencyCode] [nchar](10) NULL,
	[DiscountReason] [nchar](200) NULL,
	[Member_ID] [nchar](10) NULL,
 CONSTRAINT [PK_RestaurantPOS_BillingInfoKOT] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RestaurantPOS_BillingInfoTA]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RestaurantPOS_BillingInfoTA](
	[Id] [int] NOT NULL,
	[BillNo] [nchar](15) NOT NULL,
	[BillDate] [datetime] NOT NULL,
	[SubTotal] [decimal](18, 2) NOT NULL,
	[TADiscountPer] [decimal](18, 2) NOT NULL CONSTRAINT [DF_RestaurantPOS_BillingInfoTA_TADiscountPer]  DEFAULT ((0.00)),
	[ParcelCharges] [decimal](18, 2) NOT NULL CONSTRAINT [DF_RestaurantPOS_BillingInfoTA_ParcelCharges]  DEFAULT ((0.00)),
	[GrandTotal] [decimal](18, 2) NOT NULL,
	[Cash] [decimal](18, 2) NOT NULL,
	[Change] [decimal](18, 2) NOT NULL,
	[Operator] [nchar](100) NOT NULL,
	[PaymentMode] [nchar](50) NOT NULL,
	[BillNote] [nvarchar](max) NULL,
	[ExchangeRate] [decimal](18, 2) NOT NULL CONSTRAINT [DF_RestaurantPOS_BillingInfoTA_ExchangeRate]  DEFAULT ((0.0000)),
	[CurrencyCode] [nchar](10) NULL,
	[DiscountReason] [nchar](200) NULL,
	[Member_ID] [nchar](10) NULL,
 CONSTRAINT [PK_RestaurantPOS_BillingInfoTA] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RestaurantPOS_OrderedProductBillEB]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RestaurantPOS_OrderedProductBillEB](
	[OP_ID] [int] IDENTITY(1,1) NOT NULL,
	[BillID] [int] NOT NULL,
	[Dish] [nvarchar](250) NOT NULL,
	[Rate] [decimal](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[VATPer] [decimal](18, 2) NOT NULL,
	[VATAmount] [decimal](18, 2) NOT NULL,
	[STPer] [decimal](18, 2) NOT NULL,
	[STAmount] [decimal](18, 2) NOT NULL,
	[SCPer] [decimal](18, 2) NOT NULL,
	[SCAmount] [decimal](18, 2) NOT NULL,
	[DiscountPer] [decimal](18, 2) NOT NULL,
	[DiscountAmount] [decimal](18, 2) NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[Notes] [nvarchar](max) NULL,
 CONSTRAINT [PK_RestaurantPOS_OrderedProductBillEB] PRIMARY KEY CLUSTERED 
(
	[OP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RestaurantPOS_OrderedProductBillHD]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RestaurantPOS_OrderedProductBillHD](
	[OP_ID] [int] IDENTITY(1,1) NOT NULL,
	[BillID] [int] NOT NULL,
	[Dish] [nvarchar](250) NOT NULL,
	[Rate] [decimal](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[VATPer] [decimal](18, 2) NOT NULL,
	[VATAmount] [decimal](18, 2) NOT NULL,
	[STPer] [decimal](18, 2) NOT NULL,
	[STAmount] [decimal](18, 2) NOT NULL,
	[SCPer] [decimal](18, 2) NOT NULL,
	[SCAmount] [decimal](18, 2) NOT NULL,
	[DiscountPer] [decimal](18, 2) NOT NULL,
	[DiscountAmount] [decimal](18, 2) NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[Notes] [nvarchar](max) NULL,
 CONSTRAINT [PK_RestaurantPOS_OrderedProductBillHD] PRIMARY KEY CLUSTERED 
(
	[OP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RestaurantPOS_OrderedProductBillKOT]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RestaurantPOS_OrderedProductBillKOT](
	[OP_ID] [int] IDENTITY(1,1) NOT NULL,
	[BillID] [int] NOT NULL,
	[Dish] [nvarchar](250) NOT NULL,
	[Rate] [decimal](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[VATPer] [decimal](18, 2) NOT NULL,
	[VATAmount] [decimal](18, 2) NOT NULL,
	[STPer] [decimal](18, 2) NOT NULL,
	[STAmount] [decimal](18, 2) NOT NULL,
	[SCPer] [decimal](18, 2) NOT NULL,
	[SCAmount] [decimal](18, 2) NOT NULL,
	[DiscountPer] [decimal](18, 2) NOT NULL,
	[DiscountAmount] [decimal](18, 2) NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[TableNo] [nchar](30) NOT NULL,
 CONSTRAINT [PK_RestaurantPOS_OrderedProductBillKOT] PRIMARY KEY CLUSTERED 
(
	[OP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RestaurantPOS_OrderedProductBillTA]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RestaurantPOS_OrderedProductBillTA](
	[OP_ID] [int] IDENTITY(1,1) NOT NULL,
	[BillID] [int] NOT NULL,
	[Dish] [nvarchar](250) NOT NULL,
	[Rate] [decimal](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[VATPer] [decimal](18, 2) NOT NULL,
	[VATAmount] [decimal](18, 2) NOT NULL,
	[STPer] [decimal](18, 2) NOT NULL,
	[STAmount] [decimal](18, 2) NOT NULL,
	[SCPer] [decimal](18, 2) NOT NULL,
	[SCAmount] [decimal](18, 2) NOT NULL,
	[DiscountPer] [decimal](18, 2) NOT NULL,
	[DiscountAmount] [decimal](18, 2) NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[Notes] [nvarchar](max) NULL,
 CONSTRAINT [PK_RestaurantPOS_OrderedProductBillTA] PRIMARY KEY CLUSTERED 
(
	[OP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RestaurantPOS_OrderedProductKOT]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RestaurantPOS_OrderedProductKOT](
	[OP_ID] [int] IDENTITY(1,1) NOT NULL,
	[TicketID] [int] NOT NULL,
	[Dish] [nvarchar](250) NOT NULL,
	[Rate] [decimal](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[VATPer] [decimal](18, 2) NOT NULL,
	[VATAmount] [decimal](18, 2) NOT NULL,
	[STPer] [decimal](18, 2) NOT NULL,
	[STAmount] [decimal](18, 2) NOT NULL,
	[SCPer] [decimal](18, 2) NOT NULL,
	[SCAmount] [decimal](18, 2) NOT NULL,
	[DiscountPer] [decimal](18, 2) NOT NULL,
	[DiscountAmount] [decimal](18, 2) NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[Notes] [nvarchar](max) NULL,
 CONSTRAINT [PK_RestaurantPOS_OrderedProductKOT] PRIMARY KEY CLUSTERED 
(
	[OP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RestaurantPOS_OrderInfoKOT]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RestaurantPOS_OrderInfoKOT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TicketNo] [nchar](15) NOT NULL,
	[BillDate] [datetime] NOT NULL,
	[GrandTotal] [decimal](18, 2) NOT NULL,
	[TableNo] [nchar](30) NOT NULL,
	[Operator] [nchar](100) NOT NULL,
	[GroupName] [nchar](200) NULL,
	[TicketNote] [nvarchar](max) NULL,
 CONSTRAINT [PK_RestaurantPOS_OrderInfoKOT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SMSSetting]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SMSSetting](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[APIURL] [nvarchar](max) NOT NULL,
	[IsDefault] [nchar](10) NOT NULL,
	[IsEnabled] [nchar](10) NOT NULL,
 CONSTRAINT [PK_SMSSetting] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Stock_Store]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stock_Store](
	[St_ID] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Remarks] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Stock_Store] PRIMARY KEY CLUSTERED 
(
	[St_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Stock_Store_Join]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stock_Store_Join](
	[SSJ_ID] [int] IDENTITY(1,1) NOT NULL,
	[StockID] [int] NOT NULL,
	[Dish] [nvarchar](250) NOT NULL,
	[Qty] [int] NOT NULL,
 CONSTRAINT [PK_Stock_Store_Join] PRIMARY KEY CLUSTERED 
(
	[SSJ_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StockTransfer]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockTransfer](
	[ST_ID] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Kitchen] [nchar](200) NOT NULL,
 CONSTRAINT [PK_StockTransfer_1] PRIMARY KEY CLUSTERED 
(
	[ST_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StockTransfer_Join]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockTransfer_Join](
	[STJ_ID] [int] IDENTITY(1,1) NOT NULL,
	[StockTransferID] [int] NOT NULL,
	[Warehouse] [nchar](250) NOT NULL,
	[ProductID] [int] NOT NULL,
	[ExpiryDate] [nchar](50) NULL,
	[Qty] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_StockTransfer] PRIMARY KEY CLUSTERED 
(
	[STJ_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[ID] [int] NOT NULL,
	[SupplierID] [nchar](30) NOT NULL,
	[Name] [nchar](200) NULL,
	[Address] [nvarchar](250) NULL,
	[City] [nchar](200) NULL,
	[State] [nchar](150) NULL,
	[ZipCode] [nchar](15) NULL,
	[ContactNo] [nchar](150) NULL,
	[EmailID] [nchar](200) NULL,
	[Remarks] [nvarchar](max) NULL,
	[TIN] [nchar](100) NULL,
	[STNo] [nchar](100) NULL,
	[CST] [nchar](100) NULL,
	[PAN] [nchar](100) NULL,
	[AccountName] [nchar](150) NULL,
	[AccountNumber] [nchar](100) NULL,
	[Bank] [nchar](150) NULL,
	[Branch] [nchar](150) NULL,
	[IFSCCode] [nchar](50) NULL,
	[OpeningBalance] [decimal](18, 2) NULL,
	[OpeningBalanceType] [nchar](30) NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SupplierLedgerBook]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupplierLedgerBook](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Name] [nchar](200) NOT NULL,
	[LedgerNo] [nchar](50) NOT NULL,
	[Label] [nchar](200) NOT NULL,
	[Debit] [decimal](18, 2) NOT NULL,
	[Credit] [decimal](18, 2) NOT NULL,
	[PartyID] [nchar](20) NULL,
 CONSTRAINT [PK_SupplierLedgerBook] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Temp_Stock]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Temp_Stock](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[Warehouse] [nchar](250) NOT NULL,
	[Qty] [decimal](18, 2) NOT NULL,
	[HasExpiryDate] [nchar](10) NULL,
	[ExpiryDate] [nchar](50) NULL,
 CONSTRAINT [PK_Temp_Stock] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Temp_Stock_RM]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Temp_Stock_RM](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[Qty] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Temp_Stock_RM] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Temp_Stock_Store]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Temp_Stock_Store](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Dish] [nvarchar](250) NOT NULL,
	[Qty] [int] NOT NULL,
 CONSTRAINT [PK_TempStock_Store] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TempRestaurantPOS_OrderedProductKOT]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TempRestaurantPOS_OrderedProductKOT](
	[OP_ID] [int] IDENTITY(1,1) NOT NULL,
	[TicketID] [int] NOT NULL,
	[Dish] [nvarchar](250) NOT NULL,
	[Rate] [decimal](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[VATPer] [decimal](18, 2) NOT NULL,
	[VATAmount] [decimal](18, 2) NOT NULL,
	[STPer] [decimal](18, 2) NOT NULL,
	[STAmount] [decimal](18, 2) NOT NULL,
	[SCPer] [decimal](18, 2) NOT NULL,
	[SCAmount] [decimal](18, 2) NOT NULL,
	[DiscountPer] [decimal](18, 2) NOT NULL,
	[DiscountAmount] [decimal](18, 2) NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[T_Number] [nchar](30) NULL,
 CONSTRAINT [PK_TempRestaurantPOS_OrderedProductKOT] PRIMARY KEY CLUSTERED 
(
	[OP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TempRestaurantPOS_OrderInfoKOT]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TempRestaurantPOS_OrderInfoKOT](
	[Id] [int] NOT NULL,
	[TicketNo] [nchar](15) NOT NULL,
	[BillDate] [datetime] NOT NULL,
	[GrandTotal] [decimal](18, 2) NOT NULL,
	[TableNo] [nchar](30) NOT NULL,
	[GroupName] [nchar](200) NULL,
	[Operator] [nchar](100) NOT NULL,
	[TicketNote] [nvarchar](max) NULL,
 CONSTRAINT [PK_TempRestaurantPOS_OrderInfoKOT] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Voucher]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voucher](
	[ID] [int] NOT NULL,
	[VoucherNo] [nchar](30) NOT NULL,
	[Name] [nchar](150) NULL,
	[Date] [datetime] NOT NULL,
	[Details] [nvarchar](max) NULL,
	[PaymentMode] [nchar](150) NOT NULL,
	[GrandTotal] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Voucher] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Voucher_OtherDetails]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voucher_OtherDetails](
	[VD_ID] [int] IDENTITY(1,1) NOT NULL,
	[VoucherID] [int] NOT NULL,
	[Particulars] [nvarchar](250) NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_Voucher_OtherDetails] PRIMARY KEY CLUSTERED 
(
	[VD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Wallet]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wallet](
	[WalletType] [nchar](200) NOT NULL,
 CONSTRAINT [PK_Wallet] PRIMARY KEY CLUSTERED 
(
	[WalletType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Warehouse]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Warehouse](
	[WarehouseName] [nchar](250) NOT NULL,
	[Address] [nvarchar](250) NOT NULL,
	[WarehouseType] [nchar](200) NOT NULL,
	[City] [nchar](200) NOT NULL,
 CONSTRAINT [PK_Warehouse] PRIMARY KEY CLUSTERED 
(
	[WarehouseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WarehouseType]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WarehouseType](
	[Type] [nchar](200) NOT NULL,
 CONSTRAINT [PK_WarehouseType] PRIMARY KEY CLUSTERED 
(
	[Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WorkPeriodEnd]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkPeriodEnd](
	[Id] [int] NOT NULL,
	[WPEnd] [datetime] NOT NULL,
 CONSTRAINT [PK_WorkPeriodEnd] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WorkPeriodStart]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkPeriodStart](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[WPStart] [datetime] NOT NULL,
	[Status] [nchar](20) NOT NULL,
 CONSTRAINT [PK_WorkPeriodStart] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Activation] ON 

GO
INSERT [dbo].[Activation] ([Id], [HardwareID], [ActivationID]) VALUES (1, N'QkZFQkZCRkYwMDAxMDY3QQ==                                                                            ', N'UlJSTk4xTjU1NVJRTTI2NQ==                                                                                                                              ')
GO
SET IDENTITY_INSERT [dbo].[Activation] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

GO
INSERT [dbo].[Category] ([CategoryName], [VAT], [ST], [SC], [BackColor], [Cat_ID]) VALUES (N'Andhra Spl Non-Veg Curry', CAST(14.50 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, 10)
GO
INSERT [dbo].[Category] ([CategoryName], [VAT], [ST], [SC], [BackColor], [Cat_ID]) VALUES (N'Bevrages', CAST(14.50 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, 9)
GO
INSERT [dbo].[Category] ([CategoryName], [VAT], [ST], [SC], [BackColor], [Cat_ID]) VALUES (N'Crocin', CAST(14.50 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, 11)
GO
INSERT [dbo].[Category] ([CategoryName], [VAT], [ST], [SC], [BackColor], [Cat_ID]) VALUES (N'Indian Curry', CAST(14.50 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, 2)
GO
INSERT [dbo].[Category] ([CategoryName], [VAT], [ST], [SC], [BackColor], [Cat_ID]) VALUES (N'Non Veg', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, 1)
GO
INSERT [dbo].[Category] ([CategoryName], [VAT], [ST], [SC], [BackColor], [Cat_ID]) VALUES (N'Non-Veg Starters', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, 7)
GO
INSERT [dbo].[Category] ([CategoryName], [VAT], [ST], [SC], [BackColor], [Cat_ID]) VALUES (N'Non-Veg Tandoori', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, 4)
GO
INSERT [dbo].[Category] ([CategoryName], [VAT], [ST], [SC], [BackColor], [Cat_ID]) VALUES (N'Soups', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, 5)
GO
INSERT [dbo].[Category] ([CategoryName], [VAT], [ST], [SC], [BackColor], [Cat_ID]) VALUES (N'Tandoori', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, 3)
GO
INSERT [dbo].[Category] ([CategoryName], [VAT], [ST], [SC], [BackColor], [Cat_ID]) VALUES (N'Thaili', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, 8)
GO
INSERT [dbo].[Category] ([CategoryName], [VAT], [ST], [SC], [BackColor], [Cat_ID]) VALUES (N'Veg Starters', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, 6)
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
INSERT [dbo].[Currency] ([CurrencyCode], [Currencyname], [Rate]) VALUES (N'INR       ', N'Rupees                                                                                                                                                                                                  ', CAST(30.00 AS Decimal(18, 2)))
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

GO
INSERT [dbo].[Customer] ([CustomerId], [CustomerName], [CustomerDOB], [Contact], [TicketId]) VALUES (1, N'Test Customer', CAST(N'2017-05-16' AS Date), N'8090451265     ', 1)
GO
INSERT [dbo].[Customer] ([CustomerId], [CustomerName], [CustomerDOB], [Contact], [TicketId]) VALUES (2, N'Test Cust', CAST(N'2017-05-01' AS Date), N'2365866948     ', 2)
GO
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Aloo Parata', N'Tandoori', CAST(55.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Baby Corn 65', N'Veg Starters', CAST(180.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Baby Corn Cashew ', N'Indian Curry', CAST(200.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Baby Corn Curry', N'Indian Curry', CAST(200.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Baby Corn Manchuria', N'Veg Starters', CAST(180.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Baby Thaili', N'Thaili', CAST(60.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Bommidalu pulusu', N'Andhra Spl Non-Veg Curry', CAST(260.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Butter Chicken Curry', N'Non Veg', CAST(240.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Butter Noon', N'Tandoori', CAST(35.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Butter Pulka', N'Tandoori', CAST(20.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Butter Roti', N'Tandoori', CAST(35.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Capcicum Masala', N'Indian Curry', CAST(140.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Cashew Chicken Curry ', N'Non Veg', CAST(250.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Cashew Chicken Fry', N'Non-Veg Starters', CAST(220.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Cashew Masala', N'Indian Curry', CAST(220.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Cashew Panner ', N'Indian Curry', CAST(230.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Chicken Aalf Tandoori Masala Curry', N'Non Veg', CAST(250.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Chicken Corn Soup', N'Soups', CAST(80.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Chicken Curry (with Bones)', N'Andhra Spl Non-Veg Curry', CAST(240.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Chicken Curry B/E', N'Non Veg', CAST(240.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Chicken Dragon Soup', N'Soups', CAST(80.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Chicken Drum-Stciks', N'Non-Veg Starters', CAST(210.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Chicken Fry (With Bones)', N'Andhra Spl Non-Veg Curry', CAST(230.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Chicken Gongura', N'Andhra Spl Non-Veg Curry', CAST(240.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Chicken Hot & Sow Soup', N'Soups', CAST(80.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Chicken Koshapuri', N'Non Veg', CAST(240.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Chicken Lolypop', N'Non-Veg Starters', CAST(210.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Chicken Manchuria', N'Non-Veg Starters', CAST(190.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Chicken Maveltic', N'Non-Veg Starters', CAST(220.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Chicken Paleods', N'Non-Veg Starters', CAST(190.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Chicken Seekh kabab', N'Non-Veg Tandoori', CAST(180.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Chicken SSS', N'Non-Veg Starters', CAST(210.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Chicken Tailmetri Soup', N'Soups', CAST(80.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Chicken Tikka ', N'Non-Veg Tandoori', CAST(180.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Chicken Tikka Masala', N'Non Veg', CAST(250.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'chicken Veshmi Kabab', N'Non-Veg Tandoori', CAST(180.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Chiliy Fish', N'Non-Veg Starters', CAST(220.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Chilli Baby Corn', N'Veg Starters', CAST(180.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Chilli Chicken', N'Non-Veg Starters', CAST(190.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Chilli Gobi', N'Veg Starters', CAST(160.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Chilli Mushroom', N'Veg Starters', CAST(180.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Chilli Panner ', N'Veg Starters', CAST(185.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Chilli Prawn', N'Non-Veg Starters', CAST(240.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'chilli Starter spl', N'Veg Starters', CAST(250.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Chilli Veg', N'Veg Starters', CAST(150.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Country Chicken Curry', N'Andhra Spl Non-Veg Curry', CAST(240.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Crispy Vegatables', N'Veg Starters', CAST(170.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Curd', N'Bevrages', CAST(25.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Dal Fry', N'Indian Curry', CAST(100.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Fish 65', N'Non-Veg Starters', CAST(220.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Fish Apollo', N'Non-Veg Starters', CAST(230.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Fish Manchuria', N'Non-Veg Starters', CAST(220.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Fish Pulusu', N'Andhra Spl Non-Veg Curry', CAST(250.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'French Fries', N'Veg Starters', CAST(150.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Fruit Salad', N'Bevrages', CAST(80.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Fruit Salad With Ice-Cream', N'Bevrages', CAST(120.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Gabs Curry', N'Andhra Spl Non-Veg Curry', CAST(260.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Ginger Chicken ', N'Non-Veg Starters', CAST(200.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Ginger Prawns', N'Non-Veg Starters', CAST(250.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Gobi Manchuria', N'Veg Starters', CAST(160.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Gobi-65', N'Veg Starters', CAST(150.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Gongura Mutton ', N'Andhra Spl Non-Veg Curry', CAST(250.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Gongura Prwans', N'Andhra Spl Non-Veg Curry', CAST(250.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Ice-Cream', N'Bevrages', CAST(120.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Kadai Chicken', N'Non Veg', CAST(240.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Kadai Mutton', N'Non Veg', CAST(250.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'kadai Prawn', N'Non Veg', CAST(250.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'kasmir kabab', N'Non-Veg Tandoori', CAST(190.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Kulcha', N'Tandoori', CAST(50.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Lemon Chicken', N'Non-Veg Starters', CAST(190.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Loose Prawns', N'Non-Veg Starters', CAST(250.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Malai Kolta', N'Indian Curry', CAST(220.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Masala Kulcha', N'Tandoori', CAST(55.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Memthi Masala', N'Indian Curry', CAST(180.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Mineral Water', N'Bevrages', CAST(20.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Mixed Veg Curry ', N'Indian Curry', CAST(180.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Mushroom Masala', N'Indian Curry', CAST(200.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Mutton Curry B/E', N'Non Veg', CAST(250.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Mutton Curry Bk', N'Andhra Spl Non-Veg Curry', CAST(250.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Mutton Fry Bk', N'Andhra Spl Non-Veg Curry', CAST(250.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Non-Veg Thaili', N'Thaili', CAST(180.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Panner 65', N'Veg Starters', CAST(185.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Panner Butter Masala', N'Indian Curry', CAST(220.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Peppar Chicken', N'Non-Veg Starters', CAST(200.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Plain Noon', N'Tandoori', CAST(30.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Plain Parata', N'Tandoori', CAST(35.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'potato Leak Soup', N'Soups', CAST(80.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Potato Soup Tomato', N'Soups', CAST(60.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Prwan Manchuria', N'Non-Veg Starters', CAST(250.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Prwan-65', N'Non-Veg Starters', CAST(250.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Pulka ', N'Tandoori', CAST(15.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Pwran Curry', N'Andhra Spl Non-Veg Curry', CAST(250.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Romaili Roti', N'Tandoori', CAST(30.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Roti', N'Tandoori', CAST(30.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Schezwan Chicken', N'Non-Veg Starters', CAST(210.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Soft Drinks', N'Bevrages', CAST(20.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Tadra Dal', N'Indian Curry', CAST(110.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Tandoori Chicken Full', N'Non-Veg Tandoori', CAST(250.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Tandoori Chicken half', N'Non-Veg Tandoori', CAST(160.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Tangidi kabab', N'Non-Veg Tandoori', CAST(190.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Tomato Cashew ', N'Indian Curry', CAST(220.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Tomato Dal', N'Indian Curry', CAST(120.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Veg Corn Soup', N'Soups', CAST(70.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Veg Dragon Soup', N'Soups', CAST(70.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Veg Hot & Sow Soup', N'Soups', CAST(70.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Veg Manchuria', N'Veg Starters', CAST(125.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'veg Seekh Kabab', N'Non-Veg Tandoori', CAST(160.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Veg Tailmetri Soup', N'Soups', CAST(70.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Veg Thaili', N'Thaili', CAST(90.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[Dish] ([DishName], [Category], [Rate], [Discount], [BackColor], [Kitchen]) VALUES (N'Vegetable Bean Soup', N'Soups', CAST(80.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -2302756, N'shubham                                                                                                                                                                                                 ')
GO
INSERT [dbo].[EmployeeRegistration] ([EmpId], [EmployeeID], [EmployeeName], [Address], [City], [ContactNo], [Email], [DateOfJoining], [Photo], [Active]) VALUES (1, N'EMP-1          ', N'guy                                                                                                                                                   ', N'2125235', N'hyd                                                                                                                                                   ', N'8886664011                    ', N'info@caramelit.com                                                                                                                                    ', CAST(N'2017-04-20 00:00:00.000' AS DateTime), 0xFFD8FFE000104A46494600010101006000600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232FFC000110800E000E003012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00EFE8A28AEC320A28A2800A28A2800A28A2800A28A2800A28A2800A2968A6025153456F34BFEAE2693E809ABB16857B2FCCCAB1FF00BC7FA0A972482C66515BABE1B93F8AE57F004D55D474C8AC955BED3BA43FC38C1C7AD2534F443B1994514550828A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2814085C53E1B796E1F6C31B3B7B7F5AD3D374592E3F7D71B923ECBDDBFC057470C11C09E5C6AAAA3B0ACE5512D8A5130ADBC38CDF35C49B7FD95E4FE75AB6FA55A5BFDD8159BD5BE63FAD5DA5AC5C9BDCBB0816968A2A4631F76C6DBF7B1C571375E6FDA1BED1BBCECF3BBAFF00FAABB9AAB79630DEA6D917E6ECC3A8AA84B944D5CE268AB97DA74D64FB5BE68CF461D0FB1F4354EBA934F6330A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28016B6746D2D65FF00499977203F203DC8EE7DAB2EDE16B8B88A15FE3207F89AEDA28D62458D78551803DAB2A92B6838A1E052D1456068145145001451450014514500452C31DC46D1C8BB94F506B92D4F4F6D3E5FEF44FF0071BFA1AEC8557BBB64BBB7685BB8E0FA1EC6AA12E5626AE70E68A74B1B453346DF7909069B5D4661451450014514500145145001451450014514500145145001451450068E883FE26917D09FD0D75D5C96843FE26717FBA7F9575B5CF5372E22D145159941451450014514500145145001494B49401C76AE3FE2693FD47F21546B435AFF00909CBFF01FE42B3EBAE3B2326145145300A28A2800A28A2800A28A2800A28A2800A28A2800A28A280353411FF1345FF74FF2AEB2B94F0FFF00C84FFE007FA57575CD57E22E3B05145150505145140051451400514514005252D2500721AD7FC84E5FF80FF2159F5A1AD7FC84E5FF0080FF002159F5D71D919BDC28A28A620A28A2800A28A2800A28A2800A28A2800A28A2800A28A280357C3FFF00211FF801FE95D50AC5D1F4B6B731DCB4BBB747F771EB83D6B6EB9A6EECB8EC1451454141451450014514500145145001494B486901C86B5FF21497FE03FC8567D6DEB7612F9D2DE7CBE5F031DFA62B12BAE9BBA337B8514515420A28A2800A28A2800A28A2800A28A2800A28A2800A0514500767A63EFD32D9BFD81FA71577B566E86FBF4B8FFD92C3F535A5DAB91EE68828A28A430A28A2800A28A2800A28A2800A28A2803335E6DBA637BB28FD6B93AE97C46FB6D235F57CFE42B9AAE8A4B43396E2514515A0828A28A0028A28A0028A28A0028A28A0028A28A0028A28A00DDF0FDDAA33DBB7F19DC9F5E8457442B838DFCA99645FBC841FC8D7751BABA2B0EE01FCEB9EA2B3B97163E8A28ACCA0A28A2800A28A2800A28A2800A42696ABDE4BF67B4964FEEA93F8D0073DAFDCACB76B0AFDD8873F53FE7F5AC9A09FFEBFD692BAE2ACAC64C28A28A6014514500145145001451450014514500145145001451450028AEC74B984DA740DE8BB4FD4715C6D6D6837A2295ADDFEEB9CA7D7D2B3A8AE86B73A6A29052D739A05145140051451400514514001AC6F10DC6CB2587FE7A1FD0735B04D721ABDDFDAEF9B6FFAB8FE51EFEA6AE0AEC96EC67D141A2BA880A28A290051451400514514005145140051451400514514005145140052A9D9F32FDE1D0D2528A0475FA4DD3DDD8AC927DE04AE7D71DEAFD67688BB34C8BDF27F5AD1AE47B9AA168A28A430A28A2800A434B450066EB53BDBE9CCD1B6D662173EC7AD7235D57883FE41DFF6D17FAD72B5BD2D8890514515A92145145001451450014514500145145001451450014514500145145300A0518AE8748D2A096D04D711EF2FD01E807D2A6525104AE6A69A9B34E817FD9156E9AAAA8AAABC28E00A75721A85145140051451400514514018FE21FF009072FF00D741FC8D72F5DDCD6F0DC26D9515D7D0F35C86A966B657CD1AFF00AB2030F615BD27D08914E8A28AD890A28A29005145140051451400514514005145140051451400514539159DF6AAB337A0E4D000AACEFB57EF1E315DB59C3F67B48A1FEE2807EBDEB0F4AD2674B88E6B85DAA9C807AE7B715D18AC2A4AECA8A168A28AC8B0A28A2800A28A2800A28A2800ED5CF788ADCFEEEE3F87EE1FE62BA1AAD796FF006AB4921FEF8E3D8FAD38BB31357388A2ADDCE9D7769FEB236DBFDE5E4555AEB4D333128A28A0028A28A0028A28A0028A28A041452E2ADDAE977377F32C7B63FEF3703F0F5A1BB0CA953DBD9CF74FB618D9BDFB7E75D0DAE856D16D69BF7ADEFC0FCAB51515136AA8551D8702B1757B14A2615AF8757EF5D49BBFD95E3F5AD982D20B74DB0C4A9F41536296B2726F72920C514514861451450014514500145145001451450014514500262A8DD6936977F3347B5BFBCBC1ABF4517B01CB5D6813C5F342CB2AFA743FFD7ACB78E489F6C8ACAC3B11835DE62A29ADA1B84DB346AE3DC66B5555F52394E168AE86EBC3CBF7AD64DBFECB723F3AC6B9B29ED1FF007D1B2FBF507E86B5534C9B58AF4514558055FB3D26E6EFE655F2E3FEF37F4F5ADBB1D120B7F9A6FDECBD79E83E82B540AC2557B14A3DCCDB4D1ADAD7E665F364F56FE82B4B14B4564DB7B96145145200A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280129AE8AE9B597729EC4669F450063DDE8304BF342DE537E63F2AC2BAD3AE6D3FD62FCBFDE1C8AED334D2BB873DEAD4DA25C4FFFD9, N'Yes                 ')
GO
INSERT [dbo].[Expense] ([ExpenseName], [ExpenseType]) VALUES (N'100 ', N'cabs                                                                                                                                                                                                    ')
GO
INSERT [dbo].[Expense] ([ExpenseName], [ExpenseType]) VALUES (N'10000', N'Salary                                                                                                                                                                                                  ')
GO
INSERT [dbo].[Expense] ([ExpenseName], [ExpenseType]) VALUES (N'20', N'cabs                                                                                                                                                                                                    ')
GO
INSERT [dbo].[ExpenseType] ([Type]) VALUES (N'cabs                                                                                                                                                                                                    ')
GO
INSERT [dbo].[ExpenseType] ([Type]) VALUES (N'Incentives                                                                                                                                                                                              ')
GO
INSERT [dbo].[ExpenseType] ([Type]) VALUES (N'Salary                                                                                                                                                                                                  ')
GO
INSERT [dbo].[ExpenseType] ([Type]) VALUES (N'xyz                                                                                                                                                                                                     ')
GO
SET IDENTITY_INSERT [dbo].[Hotel] ON 

GO
INSERT [dbo].[Hotel] ([Id], [HotelName], [AddressLine1], [AddressLine2], [AddressLine3], [ContactNo], [EmailID], [TIN], [STNo], [CIN], [Logo], [BaseCurrency], [CurrencyCode], [TicketFooterMessage]) VALUES (1, N'Hotel Shubham                                                                                                                                         ', N'Near Madhapur PS', N'Hanuman Temple Opposite lan', N'Madhapur', N'9000487888                                                                                          ', N'nagpavan.plus4@gmail.com                                                                                                                              ', N'                              ', N'                              ', N'                              ', 0xFFD8FFE000104A46494600010101006000600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232FFC00011080143015003012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F242DCD1BB8A8C352E6A881E1B9A76ECD420F34A5A98126E39CD1BAA3CD2834EC2B9287C0A707A8738A3753B2249839CD28739E0D420D394D1642B936EA556C5459A5079AA5625B689F793839A7172477FCEA2078A766AEC8CDC98EDC71E9F8F34AAE40E3F3FF26994AB54926439324DC4F53F8FF934E0C47423EA7FFD54CA5157CABB09CDA2412B8FE2E7D8FF00F5A9C2E261D2571F426A2029474A7C888F68CB02F2E40C8B9981F673FE3522EA97E83E5BDB803D3CD3FE35528A3D9AEC2F6B2EE68AEB9AB0036EA37407A09DBFC6A45F11EB4BC2EA7783DC5C37F8D6560D1CFAD2F668A5565DCDA5F15EBE9F7758BECFAF9C6A55F1AF8917A6B7799F792B068C8FC697B28F62D557DCE917C7BE294FF98DDE63D049520F88BE2A51F2EB3719FF006B07F5C572C4F181F9D3726A1D38AE85AA8DF53B04F897E2C500FF006BCA4FFB887FA548BF14BC5ABCFF006993F5893FC2B8C0D485B8A87045F3B3B8FF0085B5E2B519FB7464FBC2BFE142FC61F162F5B9B723DE015C231C8A8C9C1A9E5435519E88BF197C4E3AB5A1FAC153A7C67F1201931D9B0FFAE647E80D79A6690C9818A5C88A5367A80F8D7AF679B5B13F546FF1A907C6ED697AD85937D0B0FD335E540E0D3C9C8A87045A9B3D597E396A5D5F4AB427BFCCD532FC73BCFE2D1ADB1EA246AF21CD049E2972A1F333D8D7E394DD1B458B1ED31A947C7052006D13F29FFF00AD5E301B9A76EC74A5C887CCCF691F1BED4F5D1E503DA61FD454C9F1BB4FC00DA55C7E120AF10CD286EB4B9107333368A4CD28AB245145028A6170A075A4340A621C7AD28E9494A299371C29452528A043E81D68CD28AB4431C29F4C0453B39E2AD6A66D8E14E1D29BD3A528E2B489931E281D690D28AB4431FD29C053475A70E95643760DB9EF4BB4E0734A08A5F4A7627984231C77A6E0FA5484027DE9A460D2B05C8C839A610D9E2A6238A68068B151911E4814B4AD4DA892368C85A4EE690939A01FCEB192344EE211C54678353521507EB50D16888F4A61A94A1C75A8C820F352580A78EF4C00FA53AA645A1077A290F5A2A6C30279A703C5368A43B8ECD381E2982968199D4A3A5251400ECE29739A6629C3A5310B483AD06945310B4E1D29A29475A648EA51D69BDE9E2810A3AD397A9A6AD3875AB44498F03269C060E29A01CD3D54FAD688CD8EA075A5DBF8D2818E2AD19C98A29474A314E543D7B568919360064D48146314810E6A454F7AB4AE652958684C9EB4F0BDA9CAB82453B6FB5558CB9C8F68349B79A942E3349B69D839C8CAF15195C77A9CAE3AD3196A5A2E3221618E07351907D2A7208EC69A578A966B19109A69383C548C314C23BD65246F1771A18E7914E0D4D2690B735933543C72291941EB4D0E694483A1A868B4C02E381D29307278A78208E2909C74A868D1111EB4952B283F5A615DA2A6E50DC639A5CE40A4CF1EF482801C69474A6D2D228A145252D0028E94B480E052D310528A4A28B88776A514D04F4A755123874A70A60E94E140872F1522E053169E2AD19C878EBD29E29A3A53C1E2B446521569E00269AA3BD3C0E6B446321C14139A9157E534D0BC0A982E40E6B446327615541C548ABE98A6AAE3AD48382056B14734A4D8E031D853B19E48A074A51D2B4B195C4DBEC2908239C0A7D0003DE8B05C89C31C702A361EA39A9DAA262054B45C5B212063A546DC54C79E94C6C60564CE884995D866A322AC311E950B56523AA0C888E29856A5351B74AC59BA6274A69EB41A43D2A59A200C41E29E1B1D4D47486A19689F703DC7E74A4022AB138A55908A9B164DB334C2B834E0E08EB4122900CA283450514074A281452014528E94945021D9A4EF494A3A5301C294D03A528A64B014F0467A53474A78E94C8B8ECFA53D698B4F15488912291E94F0467A53169E2AD33363C114F5DBDF39A62919E952A2163900FE55AA91849761EA13D4D4AA476E94C502A542A393D2B55B5CE79A689171C7AD59B6B792E5D9214DC4296638E83D69B6D04979711DB5BC5E649236117DFD6BACD5C5AF87FC3A9A65B306BDBD1BEE67032420EC3F1E2AF9ECEC8CE349C936F6391C0ED4A00C5340E385C67B5380ADAE730100AF539CF6AB773A74B0D9C175F7ADE7C8465E70C3B13EBFE355429CD761E0B92DEF92EFC3F7E9BE0BB5F3223FC4922F75F7C64FBE2B3A93708F31AD1A7ED27CA71A7040C1EC29A57238C568EADA5CDA5DFC96D2FCC5790E070EA7A30F6359AEA0E4E481EB4292946E86E0E1271974237523B540F8048AB0623EAC7D2A0751938F5A866B04C8589A89B9A95BF4F5A8C75358C99D50236EB4C623D69EC299B41AC99BA1A7A534F4A79A43D2A59A2194D3D69D4D6EB505AD469A075A28A468283834EDD9A6519A901FBB3D68CE6983AD2D051505145148029452528A02C14A05253874A62169CBD6929475A6431D4E1D29A3AD3D7A9A640E5E829C3A522F4A514EE4B245A7AD305396A9321EA74BE14F0FFF006E5E3B4CE12CAD82BCE475209FBA3D49C1AF4ACC0C05B2D8DAB5AFDD4B7688302A38193D4F6AF3EF036B434FBE934F9A392482F9917F767055C1C29F7FBCD5EC5A71B58224923855CAC6CC263E98DC84FEA2BC8C72AEEA2E5D10D41B4799F8CB49B08F4DB5D46DEDA3B794CC6268E2E15D719E076C74AE41010BB805C0E79AEDFE214B16A135BDD69D3A5C58C2A431898110B1638CE3A71815CE6876D099E6BDBB1FE87640CD367F888FBABF9D7B1838548D3519EE7354A4DCAC6D6916E2C1ADED0B05BEBD569656C736F6C39661E84F005646A578DA86A134F82173B5148FBA83A015359DECEFA3EA3AD5C1DB71AACC208971F762519207A0C607E159CA72A31D31C7D2BBF939598E2DF2A5088A3079C75A40B9C60538700E7A7AD2A86FEE9C7D2AD3D0F3C0AF3566C2E64B1BE82E6324344E1C11EA3B7E59AAC4F7A09241041E9D8544ED24D334A52709A91E89E28D3935AD39A5B74DD3429F69B7007DE8DBEF2FBE3B579B18F3903A923AF41CD7A4787EEDE7F0F5A4A0E65B491E06CFF129F9973FF8F0FC2B91F12E9BF60D6E45801FB3CDFBC838FE13DBF0248AF230959C2A4E949FA1EF63B0EAA5386220B47BFA9D3DBE81A46991C71369E9733F96B23BCAC4F2403C0FC4554D77C396DAAD8BCB61671C37D17CDE5C236099476C1EE3AD765A4D9AC5636B6D7B1798CD6D1AC9237DEE06E3FCC0FC2B2F5ABAD2FC3D7A92197690AAF142A3323F5EFDB9C8AF2956C4BC4FB92BAB994E84A114DA3C6665E4F5EBDC63F4A81860D686A25DAEDE5740A67632ED0385DC738FD71540D7D0B936B5324ACC8DAA33521EB4D3D6A59AA1869AD4E3D69A47359B65A1B484034E3D2986A4D10DA434B8A43D695CD028A28A45585A292945005414525148070A290528A0029452502810FA51499A72F5A77258E1D69E3AD3075A78EB54431E29474A68EB4E1D68218F5A9145305483A534883A1F045BFDABC65A4C44654DCA311EC393FCABA9F1C3EADA3786A7D1925636897AF89A33F3188E4A82474C3122B07E1DB88BC6961230FB86471F821FF1AE8F5BD752CB587B7D476BE99A8AB249E626E58E646D8C48EE080B91E98239AD68454AA2935748E882F72E703E1779DB5E4455678E40E278D8E57CBC1EA3EA3AD687896E469DA459E8D1B7CF205B9B923A9CE7621FC304D6ED9D8B59EA62D0D9C36D64C1A592E203B84B12F276BFE02B8C7BA975FF001509E4187B9BA50413F754B05007D066BD585AA4DC92D91292B9D2EA49F65B5D374E451B6D6D919C7FD347F98FE86A90527B633DB15775993CFD7AF5D4FCA2528BF45E07F2A86D2DDEEEE62B646FDEC92041F8D723A8AEDB3C6ADEF5464BA7E9B75A8CC62B584B38192C3A01FED1AD55F0C45B7E7D4EC524FEEEECF3F5038AD4731C6F0E9368CB1DB2481257071E6377663E9D4524D6B62D75259413CB0DDA9C2A5C0DA24F753DB3D79AF3A78CA926D53E842A6BECAB9927C2FA979A161B75995864488C197F3AC89ADDADE678A5B768E442772B7047E15D4DA5ACFF006A7B491DEDD33FBEE7015472491583AD6A6754D49E509989542443A1DA3804FBF19AD70D88954F8905A3D4DEF07C81ACF54B72080112503D086C7F26ADE1616F7E609E65DCF62C640A47DE523807E86B98F0612DA8DE28FBAF6B2023E857FC2BABB0959673B0A83229404FA9E47E15E1663374F1778BDD1F6D94C635703EF2BA4C62DCCEB289039327D7E9D2B0FC41A61B89F5BF106A6DBADE240B691E71BDC8FE4327F1ADEB07980FB4EA360B6C474889C973EB8EDD2B03C71A8BDC5BD9E9E0FCD752095941FE1C85518153805385669BBB2F3154E749492B2391F15DA8B3D42CA103FE5C2DC9FAED15CEB0E320D763F10D71E275404623B58538F6007F4AE38F4E7AE6BE813D0F99946D2688F9C73D6A3279A91A986A59711B9A6B1A5A6B541A24358F029A727BD2D34F5A45A4009029A7939A53487A522C28A414A282829452528A00A740EB46681D6A6E03A9452528A2E02528A2814C43969E3AD3475A753131EB4F14C5A9074A2E66C503269EA3934D5A78EB544D872AD48053569E3B53B99BD0E8BC16C53C536401C172EA3F1522B6BC4F68751B5D42151FBE0A9AA5BFB829B655FCC13F81AE5349BB6B2D4ED2E54FFAA991F8F407A5777AB3BDACA2EE0C3C9A5DD32942387B794EE19F51C95FC6B5A52E49291D7462E545B5D0F36B7D7F52B4D36E2C20BB952CEE10A3C4FF003020F5E7A8A93C3243F89B4CCF46B88F1EC37023F98A7F8974A4D3352FF46F9AC6E17CEB471DD0FF000FBE391F8551D2AE05A6AD65700F10CEAE49F4047FF5ABE83DC745B819F4BA3ADBD50FA8DD129C999FBFFB46AE684F1DA6BB633C806C5941393EFF00FD7FD2A3D621F275DBD8C1E3CF72BF42723F4229B676B2DE5CC70429BA466C633FAFE15E1CDAE5773C69AF78D9BA864B7BA9619090C8E46EF53EBF8F5AB03522D0086F228EEA1070048B865F60C391F8D695DA599B08DA5692E9210239AE21E248C8FEF2FF001A7BD679D33CE51258DC47791E327CB38751FEE9E4D78B284E327286C67384E0EF1D8B57D2CBAA6906D34E94798701E294112C8839DA1FA301EFCD70EC1C31E9EFC63F4ED5D146D24332B2128E8C31818E73C7F5CD53F1142916B77011428936C854762CA09FD49AEDC1D66EF12A2F9D5D97FC188CB7B7B29E8B6AD8FA9C0AE857E46E091C6411EB597E138BCAD1EFAE587334A9127D17E63FD056A63E50003BB38C7BE2BE77369296211FA06434DC30ABCC91434D3132C870AA5DD89E8A3FFD46B8BB2BA3AFF8D16F9BFE3DE27322AB0C058D07CA3FF41AD6F176A9F60B15D36093FD2AE5733107EEA7603EBD6A97876CD6D2CD2595763DE36E23FBB047CB1FC4D7A79661DC29F3CBE2670E3EBBAF5BD9C3E18981E329DE7F115C1272511233F50A33FAE6B9D6EF57F50B96BCBFB9B96CE65959B9FAD52723D2BD53C29B52936889BA67B5447AD4CC78C54478A9B8D21A6987A539A987A522D0869B9C53A9A7AD2B9690D272690D29A435269610519A43D69C3A53001D29C2929450328E29CB40E940EB5003A96928A040694502940A7710AA29EB4DA72D3131E3AD48B518EB522D0431E29E2983AD3C74A77258F5A917A9A628CD4AAB5466C9100208390083923AD77D6D7E971A6D8EA13C7E6C324474FBE8C7F1F1807EBB7047BAD7071815D1F86AEA349A7D3EE5B6DB5EAAA1627EE483EE38F4C1247E357192BEA7460EAA8544A5B32D5D6906E639FC39772A34C18CBA7DD13856661F773FDD7007D0D79FCD0CB6D3BC32A324EA4AB29182ADDF8FC857A62C22E1068D7E562BCB662B6B2B9E037FCF363FDD3D41F5FAD67EB3A2C9AF24A0C4535EB51B248CFCBF6A03F9480639EE2BD2C2623D9BE49ECCDABD074A7AECF662DCCA97F61A76AA3EF5C5AAC7211DA58F0AD9F7E01FC456D6891AA68F737967FBDBB2C6275C7CD029FE203BE7A572BE1298CF1DCE8330DB23389AD43F1B665182B83D32B9E3D40ABD6F2CD6732CB13BC72C7DC75FCAB8F1B4DA938AD99E3D7A7677EE6BDA5CCB6720922201E8CA4EE0C3B83ED539B6D36E25FB443712E9B306C950BE6283EAA4723E9508D6EDAE0E6FEC03BF792DDB6313EE0F14E3A96911F4B4BB94F65770A07D7D6BCA851AD0D99CB0A738ECCBF27957FA89BB24ADA428BE74CE02EFDA3DB8C9AE66FEE4EA5AA4B3A9DC66702318E40E8A08FA01536A1AB4F7C8B02A25BDB2F2228C6067DCF735AFE16D2F6336A972A19222442AC31B9FA7E42B4E6587A6E72DCEDC261A55AAA8477EA6D8B75B0B4B6B05C7EE50798477909C9FF0A8AF6FA1D1ECDAF6701A46E2DE227058FB8F414EBBBB834FB53797A771DC7CB8B3F34ADF4F4F7AE22E5F50F136AA5B1BA43C05CFC9127BFA63D6BCBC2E12589ABEDA7B1F5789C52A146387A3ACB623B2B5975ED56492EA5CA13E6CF213D17DBD338C5696A97EB1E9771723F762EB16D6AA78D908FBCDF8E314F8E18993FB274F9316AB97BCB923FD61F507B01CD72FAF6A2BA95E968414B58804853FD903AFE3D7F1AFA149455CF3271787A5CB2F8DFE466B90470DC638E6A13EE69CC31C5466B2E63CD8C46B73519A731C5465A95CB486D21A09A6927345CB4829A7AD0690F4A9344843D690D2D21A0A1A7AD3874A6D28E9400B4A292945032A0E94A28A2A40514A290528A0070E94503A503AD02B0E038A7014DA70E94EE48F03269E0629ABD2A45FD28B92D5C728A902F34D047A54AB4C86391781532AD3501C0E2A641938347310C7C699C5598E33C8C16183C0E323D33FAD323C0C0AB319538E48345CCEC7436A7FB7ACA3B67217548136C2C7E5FB420FE1627F8C7AF7A922D422BA58EDB55F323B884858AED47CE84740C3B8CF6EA2B122631B2BA48CAC0E720F23DC1ADE17169AD284BB65B5BFC6C4BA03E4907A38EDDB9AE8A7562D72C8F670B8BA7561EC711AF60D5FC3ADA8B4576192DF52520C57887315C91DCB0FBADC0193D79EF4C9E37D42192EE480C37D110B7F6E78D8E7FE5A2FAAB7073D39A854EABA048D182D1A31C804EF8A5FC3A1ADBB5F185ACA6337FA7059635212681B2403D5483D54FF0074D6F38CA51B2D4D2BE5729C6F49DD1CD98501C329CFA67FCE69AD1271943D7D6B7A75D0AE25DF65A83DBA3748A688E13DB2292D6C7494BA4377AE5BF903AF96AC491F535CCE13BEC78CF2BC4295B948743F0F9D566323295B58FEFB7A8F41EE7A5743AB6B169A508E24459258D4086DD7EE47FEF91D4D3350F12E942DC5A595DCD15BAAE156DE11BDBEACC702B9BFEDAB7B6256C74E4491BACB70C246CFAF3D2B07849D597BFB1EBE1705569C2D1567DC25B1BAD55DB51D4E430444E3CC90F6F445FD29AB37DAB1A668D0BC50B1F9A4CE1DFDD8F614DFB25EEA87ED7A8CED15BAF59A66C607FB0BDEABDEEAB0456CD65A62B4501FF5AEDF7E6FA9EC3DABAF969D28D96E8D251A3844E727CD321D5EF61B4B57D2AC1B746581B8994FFAD7FEE83D9474F7C5736FC123156A4EF559D7249AE794DCB5678F3AD3AD3E79EE577EA6A26A9DC609A85B03A74A914510B03519EB531A8D877A572D2233D690D2D21A65D86B537B539A9940C4A5CD34F5A28181EB4A3BD2528E940C074A70A4A5140152945340A7548C514A281D28C5021C3A53874A681C528E9400A3AD3852014E5A0561EBD6A45A8C75A781408956A54EB512D4C8A4F6A2E43572556C1A9D08CF5A8D101238AB2918EB8A44B8924601C1C8AB51A8F515147103D2AC4698200EBE949BB13CA89502F1C8AB0B8C70148EE09C542AA41C6054E8B938EF52D8B92ECD2B4D5EE6DE3309759603F7A0980743F9F4FC2A52BA25E03E645358C87BC0E1D3FEF93C8AA091823EF607D2A658B2036EFD2AE35E50D62CEAA389AF47E19129D0ED241FBAD66D47B4A1D7F983FCE90E80BB0E756D3B1FECCA7F96DA4F2FDB3EF8A698CF384E3E95AFD76A1D8B34AE87FF006669B0E0DC6ABE67AAC08589FC48A71BFD36C581B3B20D201C4D73F315FA28E9558A1C6367E9513C679CA8CD4CB1339EECC6B63EBD4EB621BDBD9EF1CBCF3348C7A02703F21D2A83EC038C7E757644F947039E955641818DA2B3E6BBD4F3DA727765291979AACEDD71D2ACCED81D05569338271543B32062076E6A270326A43C824546D4EE5244678A8DA9EC47AD46FD291691193CD21341E94DCE29DC62534F5A71EB4D345CAB0D3D68A28A2E30A28A28B80E1D2969A2969815474A5A45E94A3A540EC28E94F1D2A31D6A41D280B0669475A41D69C0734AE03C74A51483A528A2E21CB52AD31466A545A2E2B0F5238E2ACA544899356638C93D38A4091A5A2E8B7FAE5C3DB69F6E679550B9180368CFA9AD9BEF066BDA5D935DDE69EF1C3181B998AE3FCF6AF42F837A38834BBCD51D46E9D8471923F8475FD6BABF16C911B6D3ACEE24548EE2ED1642E700AAFCC739FA0A572B911E1BA1E83A86BB72D6F610995A31B9813B42D74B7DF0EF56D3B4EFB44E626667545855F2CC58E07B5773E058219B5BF10EA50A2AC725C08A30838DA3A62B7BC423747A7C7FDEBD8BF439A43E447854B672DA5CBDB5C214962628E08E847D2ADDB5B3CF22C50C4F2484FCAABDEB4B5581AF3C55791C6ACD2C974CA800CE5B35EA5E1BF0CDB68766A4A2B5D38CC92119C1F6ACF56EC3E448E22CBC07AB4C81DA38E1C8E0339CFE555F52F096A9A644D2CB0AC91AF57439C0F7F4AF5E072339CD35955D4AB282A47CC08CEE14DC0394F062005CF4FAD35639256DB1233B7A28C9FD2BD0B59F0F5B29BBB68E250F1A7DA6DDBD17F890FAF73478134D8966B9BD0995FF00569B874EF59ADEC3E4563835D1F549D418ACAE981E988CE3F95491F8535F9795D327C1EED81FCEBDC1411C60F1C74140E4F427A66B5489E447CFDABE8B7FA3BA2DEC2226906570C09C7BE2B352C2E6E49F22D64918F4DAA4FF002AF52F14BC77167A9DCBC6AF25C482CEDB77F0EDC1247E66BB3D2ACA2B0D2EDEDA345531C6A0E179CE284F50F668F0883C07E22BDC18B4E7443FC52FCA3FC6AA6BDE08D53414B713849649C33F97012ECAABD49F6AFA1A7D42CED866E2EE18F0392D201FCEB81F12EAF1C9A7EB9AAC52ABC6214B1B77C646E6E5883FA55DC4E9A4790E87A25DF88B558B4FB4DBE73A9605CF0001DCD5FD6BC03E21D0ED1EEEEAD01B78C7CF223E42FD7D2BB3F83FA6EFD4EFB51651B228FCB43EEC79AEFBC5A3ED16965A77DEFB65E471B2B74DA3E66A2E1C87CC4C01E86A26E2B73C4AD6D27897526B48963B7FB4388D1460019C7158AEBD6AAE2B101A637415291C5464714C56199A339A08E293B531887AD21A53DA83D680129475A4A5A003F8E9DD69B4A3A55015453A998A70E95050A2A41D2983A53874A5701C3A53853075A78EB482C387DEA78EB4C1D6A45A02C3D6A54EB4C5526A68D7A50D8AC4A9DABBBF86FE19B3F12EAF710EA0B2182187780AD8C9CE2B8745F9ABD4BE0DDF25BEB57967E4BB49731A90EA78455EB9A94EE5289EC3A569969A3E9B0D95947E5C11FDD52727D68BED2AC354F2C5EDB477023259038CE09AB808001E9E9ED5CBEA5E334D3E5BACE997535BDABF9724C806C0DC719FC453761A37ECAC2CF4FB730D9DBC70464F2B1AED19ACFD749377A3A63EF5EAFE809AD5B797CFB78E5DA577A86DAC3047D6B275920EAFA2A9FF009F973F946D53D0A48E3BC1B622FBC63A95E4ABB92095D97FDE2C6BD16E2716D6F34CFF007514B1FC05717F0F195A4D5E4FE2371CFD326BB2BD83ED5673404E37A14CFB9E2947607B9C95DDF4E90A5E5CEAEF6F73321960B655F940ED9AEB6CE63736504CC30D246AC47B919AE28F85F54D435285AF7CB8E1851632EAD9DC17D07D00AEE515624544FBA00007B54C6EDEA376B191AB2AFF0069DA376304EAFEEBB6B94D1B50D46D748985B4F6912C4EC36C8B97909F41DFD2BA1D66ED56E6F25C8DB696AC9D7F89EB8AF0F5BFDBB5DB78C83B4C9E63F3D87B567395A762E11F76E7A9C06436F11936F9985DDB46066B91BF91D9AF2EEEF59BAB4B64B930C6910C83815D9646E03DC579BF89243FD80BCF325FC8DF50091FD2B493E557222AEEC56964B5D6359D1B4CB0795EDA2937B3483059B3924D7A64C71133038F94918FA1AF34F005B99BC40D2B0CAC31923D89E2BD26794DBDBC9288DA4645CEC4E4B7B0A20EEAE39C795D8F30BDB91A0E971DE5EF86D249DE420CB72DBB7127230339E98AE37C45E2EBBF105B476B2456F05AC6FBD62B75DA09C719F5AF4FD4A7D6B57BE82583409562891D40B970016618CE0F3C578DDE69F7505EB5B4A9FBD1218C953905BA707BF5AB21A3D93E18E9C6CFC1EB33E7CCBA91A524F751C0FE553F89AF047ACA4A48D9A7584F76DFEF9F945743A359AE9DA3D8D928E22855091EB8E7F5CD719E29D13C43A95FEAAB636D035BDDDBA42B33CDB4A2AE0B71EE4D082C782CF23492C8EDCB331663EF55989ADFF10F85B53F0F5D490DE207312AB3BC5F32A64F463DBF1AC06C64E0F19AB21A226A61E94F6A8CD3B8AC34F4A6D38D348A61610F5A434B48698585A4EB4528A02C21E80F7A7669B8CD28C914EE0571D29453474A70A8B9428A777A68E94E1D2900E03269E0734C1522D00382F3522AFBD316A45A96EC3B122A9F5AB11AF4A852A7438350D8D2278C73CF4AF67F837A47976B7BAABA8CBB086324761C9FE62BC613AF23835EBFE00D5B5B5F0E2C364DA488229182C77121591B9CE48FC714932AC7AD3B88D199BA28279F402BCA759796E74AD1EC83B6ED52FA49E5DBFC4A5B8FE42BA8B8BFF135C5ACF07D8F4DFDEA950F15D1E33C7435C77886F4E9BE32D1E08A3591F4E8224552C021623AFEB54E48123D82350A8AA3A28C561EB27FE279A48EE0CCDF925674BA96BA5419AF747B318C9CC9B88FCEA83EA76CB70B77A87886D6E1E28DD638E14039618EC69732B14A2CC3F02EB1158EBD2DBCEE162BB24024F01B3C66BD5D791CF515F3FA2A6E043C830D9CA9C671FCABD3F46D57546B189AD1E1D4A2DA3876D92C7EA0FAD442A2BD8B9D3D2E763D791D2A8EA5A8A58C2028DF3C9C4510E4B9FA566CDA96B722106C6DECC7FCF59E6040F7C0AE6EFF005A834F32886EDAF6FE4186B861F2C63FD914E7512221072645E24BC582D574DF337CCCDE6DD383D5BB2FE1C558F00DAABDE5D5DB0FF568101F73D6B92918BB16679189392C4F5ADAF0E5D2C06556D5A5B13B81505772B7D6B914EF52E753A76858F5176C8DDD87F406BCB7C4CE8740D28124191E67FF00C78D75515F6A7246C906A7A7DE06040E42B73F8D729E3087ECD0E956B2E03C5012C01FE226BA6A493898538B5236FE1C59AC7637774093E6481149F4C5770C738E2B83F09EA1A843A1243616113A23B132CB36D079F4FD2AEDC6ABAA8526E358D22CC772A77B0FCE9D36921548B723A2D56ED6CB4BBABAE7F771311F5E9FD6BCD6FACBED9E2DF0E6880126D93CFB8206096277127F3AB975ADE98CE3FB4BC533DE44082D0DBC1B55BD8E3E95CCE9FAFCF73E3E9F52B59ED2D7CF665596E87C8898E3E956E485CACF70272393F9D30B055627A0EA7DBA9FE55E7F36BF78B812F8CF478B8191143D3F5ACFBCF105A490B25D78F4B29072B05A8E47D40CF7AA4C868C4F1EEA647869C96066D5EF1A7248E44487000FCB35E52EBC9E73EF5D6F8EF58B4D5B578934F95A4B2B4B758216231B88EAD823EB5C9BF53E9557208597DE99B6A46EA6987AD310C23069B4E6A6F6A7701A7AD21A5A434C403BD03A51466980B4A2901E28F7A0562AD3874A6E29474A82878A77614C14F0391EFD2801EA09ED4F1D6961824B8711C71B3C84E02A8ABF268DA841790DABDABACB28F9133F7EA1CE29DAE4CA714ED7292D4AB43C52452BC72232BA1C3061C834E55E94AF7D8D3A6848953A11C71496F6D34B931C32380704AA93CD4ED6D342A1A586445CF565207EB59F32BD84A51BDAFA8E5504E79AB5080036D6233D48151DBDACD70FB6185A423AED19C5691D1EEE085A6921088BD7279359CAA25A16EA422F95B1914B20C6D9241F89FF001AB0AC59833B9DC7A96E6AB6C789F63AB2B0EA1860D4F18C91EA4D439686F1B5B98B2926E6CB6493D7FC935690AB000E45565428407520FB8AB31E07761FF01A8724FA9AC2D3F859623C60601C7D2ADC4ED1E4A178DBD5588CD568F07A063F854EA7D01AC9CADB3345696CCB4D712CA00796423BE58D27CA071D298A09EC7F2A7ED73D071EF53CDDC52A94E9FC4D0842FA9A6103D4E29CCAC7922A2656F5A49AB9A4251A8AF1771C0ED390E41F5048A8E67693059D988E14B3670290820609E698519C7009FA5573049C22AF27622795D63D8B2B140724072BFA553970F962D96F524D5A9A368D32C30B9C67155D6DFCE27CB5DDEA735519194AA53E5E7BE8519549CF3CFD6A9C9C679CFD0D6BDC584D1445CA2E72001BAB2AE10C52323AED61D47A56F09DCC23569D4F8195246E31DBD09CD56931CD589304E075A1B4FBA23FE3DE6FFBE0FF00856AA696E6751C61F132838E335030E2AECD65731A177825541D4B21005536E01FAE3F1AD6324F632528CB62022A36E2A535191938FCAAEF611193DBBD36B5E1D12491B4F333048AED99031E307B66B36E617B6B89209061E362A41A14E2F6338D48C9D9101EA4F6A4ED9ED53DA5ACB7B751C10A932390A30381CF53572EB477B4B4BA9DD81F22710903D4F7A7CF14EC0E7152E5665FF1D06823048A2B4285A514DA55F4ED40100E940EB40E94A2A0628AD4D1B499F57BC16F00E0E0BB11C28FAD6601C57A5780AD238B4437007EF2698EF27A851C60573E26A38434397175BD8D2BF536B4BD1ACF4980A429F3E30EFB7E627F1A4D5F4D4BEB4E1D629E23E6432838DAC3B935A1D87D2B0F5194DCEAE2CE4DDE4436ED3B46A7065C76AF1A1294E773E7E9CA752A5EE73FA8DB0D6AC1B528A302F601B2E5507120E9B87AD738BCF23A01C0AD6BEF10DD5E0F26DD7ECD6F820471F523DEAC695E189F51B786EF7C62276CE1BAE01E7F957A5193847DE3E829D4F634AF57E4757E1DB2169A3408C3E67CB93F5E949A9431DE5F595A48329F34920C7603BD6AAAAAA2AA0014000003A0ACFBDD2BEDB7693FDA6588AA151B4F6AF3FDA5E5CCD9E2C2BFEFB9A4F433FC331461AEE65185329551E82B4B5624E9D2E79C91FCEA5D3EC22D3EDFC98CB302C58B375CFBD47AA0FF004341EB2A0FD694A6E5209D4F695EE9E8616B047F6C4D8E9B47F2156B45B4F35CCCE0796A3033DCD54D5177EAF703B96000AE96D605B6B64880E7033F5AE89CF96363D9C6E21D2C34547762CCE8B1316404AF452BD4D5158825C46AC065B92076AB72307B94561F2A2EF6FA5416C0CB70D29E80F1F4AC20DA4658494E9D094DBE85D21114E1462A3758C2AB00726A56C156C8E3148C80AA8F402A13D4D72B9CA5794982E06314A78A4EFC538F5A1B773CF728D6AB3739590D273C53244C2E714F23BD32424A000F5EB426CF4328751CDD9E840E3A1C5488BB147AD2042549269EC738AA72B959CE36138FB28BD510CDF34B12B636025883EB8A82C57E595F1804D597895DB249E3B508823428BD0D1CDA58F31E2A2B0FC91657BE04C483D5D3F9D737AA36ED42E0E79DE6BA3BB27300F5945733A87CD7B3B76F30F3F8D7450DCF43294EC1A5DA9BBD463523E45F99BDC0AEB8138EC3BE31D2B2742B6F2ED9E723E67385FA55FB9BA5B6F2F38CBB84A8AF3E69591C19955752BF2C3A097F0FDA2C6E223821E323A743FE715C56AB651C30594D6E30B2C5F386ECDDEBBDC8C90471D08AE4F55B727479A3FE2B5B9233FEC9E7FAD69879B52B32B01564A7CAD9CBB0CFE552D8D99BDBE86DD7ABB053EC3A9A63574FE11B2E65BD65CE3E44C8E87B9FE95DD566A306CF57155153A4DF536751B05B8D2DA08400D1286888EC474C5721AF406EE3B4D4E25C3CC3CA9571FF002D475FE55DF8E39ED9271591168891EA52DC96DD0643A427A07F5AE0A35ADAB3C3A388E5D5907877461A75B09A54FF0049939E47DD159DAC45FE89ADC401C234328AEB718E3D2B9DD5632D77AA47FF003D6C4381EBB4D5D29B954BB2A95573AB76706DF78D2507D7D79A2BD75AA3DC5AA0A51D2814A298CAC3A53969A29C3AD41561E3AE3BD755E13F132693BED2E949B676C875E4A1F615CBC6A6474452433305181935DCC5E0127616BD3E59019976F39AE6C44A0A3691C78C9D2E4E5A876C9224A8B223064600AB03D4565EB7692BA477F6A07DAAD3E751FF003D17F894FAF15A50C490411C499D91A85048EC296575447672368539CFA60E6BC58BB4FDD3E761351A9EE9E6FAF5B431DCC17B6A3105E2798A07F09EE2BB8F0FA2C7A259A29E7CB191EFD7FAD71DAC1C78734C46E32F2BA82318524E2BAAF0CDB35B68916F6626525F9EC3B63F0C575D66DD3D4F4F1B273C3ABF735F206327AF4A4F313FBEBF9D473C820B6965CED0B19249FF003C572D716F0A416116C66BAB9DB233163D09E98AE58C398E2C3E1D54D59D7E0FA553D4B2618971D664FE75714041803000E2A9DF1FF8F41EB709FD6A63B8B0F6F6863ED13F889C11C79A7F4AE889CF35CEDB48175F39EF23735D1631D6B5AF7D0EDCD2EA504F6B229DC0749A4611338922DBC76E6A6B6844316DE848E79A9B23D68C6413D877A8E6D2C73BC54E54D524BFE081E7E4F5A53F78D20230589FA5203919A5B1ECE1E0E8616537D17E600738A718CAF7A6FF0010A7B3823007E34AE79141526A4E7B8CCF6A464EA73C503AD2B1011B247238A699DF9455A9193EC4638E3B518C51D87D28738473FECD07162E319E2A497718644071B973E99A5E9F4AAF2B6658A20A338C93DEACF04E3B0F5A76162F0F1A314A2CA975CDC5A2FAC87F9572F244F717AD1AE72F2151F9D74F39FF004DB61D86E6FD2B2F48844B7CD39E91927EA6B7A72E589E8E0E7ECA8B9366D451082248D470A003F5AAD7FA78BD30932B2796D9000EF5749E0B1E9D49AAEF796A99DD3C60F7CB8ACB56EE8F1D39CA4E689B1C0EE7182715897D6FBEEAFADC9F967B70EA3FDA5FFEB0ADA8D96440C843291C106A86A188AF2CAE08E37989BE8C315A537691A61E4D54BB38054F32458D41DCC703EA6BD134FB55B2B08EDD472ABF31F56EF5CE693A6675E995D7E4B6763C8EA7FCF35D696083248C8193835B6227CD648EBCC2B73F2C10DDC1871F88F7A4E82B0F47BD925D4A75933B2E4178B3FECF1C7E5536B17F2A412416633288C991BB20FE9587B377B1C4E8494AC6B5636A099D6231FF003DAD258FEBC66B4ECC93636E4927312F27BF154F50C26A7A6487FE7AB444FF00BCB554BDD90E8E952C79A118623D0D36A6BA4F2EEE64C636C8C067EB5157B90D628FA287C2805281CD37BD3C11EB5432A8E94E14940EB59966DF85EC7EDDE21B5423E446F31B8EC2BD7091B89E993902BC534D655D4602F70F6E9BBE6950F205776970E0110F8B60318E85C0CE2BCEC5D273678D98509549A68EBC90A324E171F313583797C75466B0B16DB6E07FA45C9E8ABD4806B16E2EB4C0376A3AE4F7F8FF00965082066B2753F103DD41F64B4856D6CFB469D5BEA45614F0CEE634301272B92EA7749AB6AF0DBDBE16D222B0C793FC20F26BD163F2A38D638D94A280AB83D85790C580CBBB2067E6DA7B57471DDF878819B3BB53819224CF3F9D6D5E8DE291D98BC1B945451D66B92634A9514FCF2308C01EF8ACAF967F17C30E404B7555E4F4C0AA705F6851C91B85BDC23060A4F191545AE927D51AE260E639252CD8383B7D2B2852690F0B84714E1E4778F730A805A68C70382C2A8DCDCDB4F77651C52AB309D490AD9C0AC55BDD2949F2B4E24827064735347ACAA1C456704673C123A7E3597B169DC9A196CD4AEA2CAB2B325F4AE3EF2C8483F8D74F69769751AF3B64C720D72E584859B8049CF15A36B340CA23B884B63EEBAB608ABA91BA3D3C6607DBD28C5AD51BC5D549DE401EE699BCCA76A70A3A9ED5455AD060A09188FEF1AB0246930028451D00AC394E4C2654F9EEC733EF385FBA3A54D181B793CD3635638240CD4EB164E4D0D1ED62B0B19E1DD244783E94A14E2A7F273D283185EA6A2C7810C9EEEF664046054520CE0761561D7278A8F691E98A363DCC360634E3B59F423DC0771F9D35C86500107271C7A548DFEE8A899B1CF96323BE6A92B9E7ACA6519F358AECE16F37311B55700E69CF790A8E0B13E8066A177DAC494E7D2A37BD900C46157D06DCD69CB735C4E5BED5A6D741C66FB45C0608CAA91B0DCC3154B4EB896DADDB16B23216E5939FD2927BBBA7520C8C14F60302A9A4D3C247952CAA73D339CD6D1A6D2B0A397BF64E363527BE86F21FB3C0F8964609B5C722B32EAF6CA0925822B38DC8250C84F7C60FEB9A906AEE18F9B6E8D20042B63041AC57CBB3372C49249C77CD553A5A9961F02A1A491D0D86AB6F169D147B59E550418E353C7345D3DFDEC614DBC76D06E0C5E57C3647D6B020BEB8B30EB6F2942FF7B23F953120D43559447125CDC3B1000405893E98156A86A652CB973DCE945EC914F3496B686EA2908679216E77018E9D0F4A86F35D8E4B19A158E78AE5C6D5578F183FE4D61CD63AD68D6EB3496F776D133ED0E548527D391D6A4B6D6B5795D5123FB564642F95B8919EA3039EA2ABEAF2B98D4C0BBDED723D52F5F4FD5AD6181C29B440BF89EB9FCE99AB6A71416FF61B37F31E4C35C5C673B8F5C0F6ED5957DE7497B33CE863999896560411F81E94C8F4FBCB98DA486DA69514E199232C01F7205742A4ADA9D11C347767656BADC92D9C42C6C279F0A17793B173F5EF4DB97BC79A09B50B9B3B48E19048155B2723EBF5AE39350BC8AD45B25CC8908390A0E055790BB9258B139E496E73EF52B0DADCC3EA5EF5C9B5478A5D52E9E170F1348CCAC3A106A9F5A760E79E4F1495DB156563B631E55610F414E0326929569815C74A075A5A075ACCB1C0734F071DCFE1483A528A4D263B2EA48319EB4F5A628E6A555A8D8B8AB6C3D6AC46338A85073835651454C99A46E4C8055845E950A015663C74C564CDA289578353A0C9A8D319E953A81C11593368AB92C6B5663EB8A89066AD46A0107158B3544F1839ABB106E2ABC4D8C70315695F0738AC99A58B299A9D4B5555979E953ACD59C8A44D97F5A093DFAD47E68F43479BE80D40EC8792DD8530EFC74A43213D01FCA98D291C5000FBF1D0556937739A95E5245577978E95510B104A09CF06B5FC29A536A77739F2E0716E03E262DD73D80AC692527231C54697D7368ECD6F34B1165C1D921008F7AE8869B99544DAB44F4AD47468EF510DFD844D2C5769181012AA6320723F3A86DBC36DA4EA53CBA643607CC67487CF0CE58019DB9CE077AF369758D4DB39BFB93CEE03CD3C1AA6FA9EA0597FD3670C1B702663C1EF5D519A391D29F73B1F1368F6EDE2CD0D3ECE825BC8D0DC42D21C139E471D2BA08BC3BA1CBA9DC59DC68F6B1A26FDCDE5C832B8F970D8C1C5791CF757334CB24B3C9238E85A4E47D09E94C9753BE6E1AF6E4EE1CE64EDE95A291128BEE778DE0F8F42D0AF245B38752BE17119880562046D8EA339E2BADB1D234AD1D2E26B1B46591A58B7C501FBA768C8E4FCA324F35E18F7B758602E650A4007E73CD5692EE62EC7CF93E6F998EE3927DF9AD1332923D37C4C2E97E1DEA70EA4584906A59B6F31C64271D0E7915A76D35E582F84FF00B2ADE07B692D512F6E020255491904F6EF5E312DC4B2A80F3395F466247E550B4CF8C6F703B00E7FC6A923367B1F88F47D11ECEF9AFEDA052DAAA456F3A381298CE39DC7A8FAD6CD95A2E9DA8A69F1DC5A8D0FE749A32C8199B670DC05E3DF35F3EC8ECDC6F7233D0F23EBC9EB51B3B7237B63EA7FC6B4B107BD699A5F8696CAC9EF2D34C1A8ADBCF91F206639210119E4E00ACE8E0D2EEAC6FE61A6E9D652F9B6E608E4316EDC301D801D01C135E225B804E783807B8FD29A5BBE4923A7145893ADF890BA6A78E2F7FB296DD6D76A605BE366EC64E31F526B90008033D703341273D28C9F4AD16C2169569A29EA7934015A94520E94E1D2B32C70E94F5A60A7AD2289053C13EB4C15228CD4B292254ED5623278A8235AB283159499A244E9CD59897E6CE6A08C5598C818E2B366F144CAA7D6ACC6A702A043CD59404818359499B4513462ACA29E0F6AAF1A9AB481B8159334489933C73565090066ABA2918AB0BC62B291A13A1C8F7A9578EA6ABAB91C0C53F793FF00D6ACD9458DD4A1AA0078A5C93D0D401392715131A6EC63C926919481D681871CE6A07231D2A43C544E463AD5A02B4A482700FE554E666C743F955C9187AD5499BAD6D0339152473559DB24D4F20273C55671CD7445184889C9C9E6A16F7A95FBD44D5AA31910BF39150380054EF9C9E2A07E6B4462C81FB546DD69D20351383EB5AA3190D634CA71E0536ACCC423229B8A71E94D3DA992215A36D3A8AA01BB680BCD3BDE94738A60521DAA41D68A2B32C70EB4F5A28A45120A917AD145432D1612AD463A514565236896A3038E2AC20181C514566CD624F1A8F4AB31814515948DA25A88722ADA28CF4A28AC59A22C201E9528033D28A2B36592855F4A78519E9451505122A8C0E2A5545C7414515248D20542E38A28A008980F4A86451CF14515480A93018E954A5E94515B4089155BBD567E94515D1131910B74A81CF14515A232911B7DDAAED4515A231642FD4D577A28ADA263218D4D1451566621E9494514C910D03A5145500B4A28A2981FFFD9000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, N'Rupees                                                                                                                                                                                                  ', N'INR       ', N'Thank You Vist Again..!')
GO
SET IDENTITY_INSERT [dbo].[Hotel] OFF
GO
INSERT [dbo].[Kitchen] ([Kitchenname], [Printer], [IsEnabled]) VALUES (N'shubham                                                                                                                                                                                                 ', N'VENDOR THERMAL PRINTER', N'No        ')
GO
SET IDENTITY_INSERT [dbo].[LedgerBook] ON 

GO
INSERT [dbo].[LedgerBook] ([Id], [Date], [Name], [LedgerNo], [Label], [Debit], [Credit], [PartyID]) VALUES (1, CAST(N'2017-04-21 00:00:00.000' AS DateTime), N'Cash Account                                                                                                                                                                                            ', N'#1                                                                                                                                                                                                      ', N'Restaurant POS(Takeaway)                                                                                                                                                                                ', CAST(0.00 AS Decimal(18, 2)), CAST(490.00 AS Decimal(18, 2)), N'                                                  ')
GO
INSERT [dbo].[LedgerBook] ([Id], [Date], [Name], [LedgerNo], [Label], [Debit], [Credit], [PartyID]) VALUES (2, CAST(N'2017-04-21 00:00:00.000' AS DateTime), N'Cash Account                                                                                                                                                                                            ', N'#1                                                                                                                                                                                                      ', N'Restaurant POS(Express Billing)                                                                                                                                                                         ', CAST(0.00 AS Decimal(18, 2)), CAST(970.00 AS Decimal(18, 2)), N'                                                  ')
GO
INSERT [dbo].[LedgerBook] ([Id], [Date], [Name], [LedgerNo], [Label], [Debit], [Credit], [PartyID]) VALUES (6, CAST(N'2017-04-29 15:39:13.000' AS DateTime), N'yatesh                                                                                                                                                                                                  ', N'1                                                                                                                                                                                                       ', N'Added the fund in Member''s Account                                                                                                                                                                      ', CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), N'100002                                            ')
GO
INSERT [dbo].[LedgerBook] ([Id], [Date], [Name], [LedgerNo], [Label], [Debit], [Credit], [PartyID]) VALUES (12, CAST(N'2017-05-05 00:00:00.000' AS DateTime), N'Cash Account                                                                                                                                                                                            ', N'#2                                                                                                                                                                                                      ', N'Restaurant POS(Express Billing)                                                                                                                                                                         ', CAST(0.00 AS Decimal(18, 2)), CAST(144.60 AS Decimal(18, 2)), N'                                                  ')
GO
INSERT [dbo].[LedgerBook] ([Id], [Date], [Name], [LedgerNo], [Label], [Debit], [Credit], [PartyID]) VALUES (1013, CAST(N'2017-05-05 00:00:00.000' AS DateTime), N'Bank Account                                                                                                                                                                                            ', N'#10                                                                                                                                                                                                     ', N'Restaurant POS                                                                                                                                                                                          ', CAST(0.00 AS Decimal(18, 2)), CAST(1114.62 AS Decimal(18, 2)), N'                                                  ')
GO
INSERT [dbo].[LedgerBook] ([Id], [Date], [Name], [LedgerNo], [Label], [Debit], [Credit], [PartyID]) VALUES (1015, CAST(N'2017-05-09 00:00:00.000' AS DateTime), N'Bank Account                                                                                                                                                                                            ', N'#11                                                                                                                                                                                                     ', N'Restaurant POS                                                                                                                                                                                          ', CAST(0.00 AS Decimal(18, 2)), CAST(313.30 AS Decimal(18, 2)), N'                                                  ')
GO
INSERT [dbo].[LedgerBook] ([Id], [Date], [Name], [LedgerNo], [Label], [Debit], [Credit], [PartyID]) VALUES (1016, CAST(N'2017-05-09 00:00:00.000' AS DateTime), N'Bank Account                                                                                                                                                                                            ', N'#2                                                                                                                                                                                                      ', N'Restaurant POS(Takeaway)                                                                                                                                                                                ', CAST(0.00 AS Decimal(18, 2)), CAST(277.15 AS Decimal(18, 2)), N'                                                  ')
GO
INSERT [dbo].[LedgerBook] ([Id], [Date], [Name], [LedgerNo], [Label], [Debit], [Credit], [PartyID]) VALUES (1017, CAST(N'2017-05-11 00:00:00.000' AS DateTime), N'Bank Account                                                                                                                                                                                            ', N'#12                                                                                                                                                                                                     ', N'Restaurant POS                                                                                                                                                                                          ', CAST(0.00 AS Decimal(18, 2)), CAST(204.85 AS Decimal(18, 2)), N'                                                  ')
GO
INSERT [dbo].[LedgerBook] ([Id], [Date], [Name], [LedgerNo], [Label], [Debit], [Credit], [PartyID]) VALUES (1018, CAST(N'2017-05-11 00:00:00.000' AS DateTime), N'Bank Account                                                                                                                                                                                            ', N'#13                                                                                                                                                                                                     ', N'Restaurant POS                                                                                                                                                                                          ', CAST(0.00 AS Decimal(18, 2)), CAST(5786.22 AS Decimal(18, 2)), N'                                                  ')
GO
INSERT [dbo].[LedgerBook] ([Id], [Date], [Name], [LedgerNo], [Label], [Debit], [Credit], [PartyID]) VALUES (1019, CAST(N'2017-05-11 00:00:00.000' AS DateTime), N'Bank Account                                                                                                                                                                                            ', N'#14                                                                                                                                                                                                     ', N'Restaurant POS                                                                                                                                                                                          ', CAST(0.00 AS Decimal(18, 2)), CAST(1156.80 AS Decimal(18, 2)), N'                                                  ')
GO
INSERT [dbo].[LedgerBook] ([Id], [Date], [Name], [LedgerNo], [Label], [Debit], [Credit], [PartyID]) VALUES (1020, CAST(N'2017-05-11 00:00:00.000' AS DateTime), N'Bank Account                                                                                                                                                                                            ', N'#15                                                                                                                                                                                                     ', N'Restaurant POS                                                                                                                                                                                          ', CAST(0.00 AS Decimal(18, 2)), CAST(1452.02 AS Decimal(18, 2)), N'                                                  ')
GO
INSERT [dbo].[LedgerBook] ([Id], [Date], [Name], [LedgerNo], [Label], [Debit], [Credit], [PartyID]) VALUES (2019, CAST(N'2017-05-13 00:00:00.000' AS DateTime), N'Cash Account                                                                                                                                                                                            ', N'#1                                                                                                                                                                                                      ', N'Restaurant POS(Home Delivery)                                                                                                                                                                           ', CAST(0.00 AS Decimal(18, 2)), CAST(210.00 AS Decimal(18, 2)), N'                                                  ')
GO
INSERT [dbo].[LedgerBook] ([Id], [Date], [Name], [LedgerNo], [Label], [Debit], [Credit], [PartyID]) VALUES (2020, CAST(N'2017-05-13 00:00:00.000' AS DateTime), N'Cash Account                                                                                                                                                                                            ', N'#17                                                                                                                                                                                                     ', N'Restaurant POS                                                                                                                                                                                          ', CAST(0.00 AS Decimal(18, 2)), CAST(7629.60 AS Decimal(18, 2)), N'                                                  ')
GO
INSERT [dbo].[LedgerBook] ([Id], [Date], [Name], [LedgerNo], [Label], [Debit], [Credit], [PartyID]) VALUES (2021, CAST(N'2017-05-13 00:00:00.000' AS DateTime), N'Cash Account                                                                                                                                                                                            ', N'#18                                                                                                                                                                                                     ', N'Restaurant POS                                                                                                                                                                                          ', CAST(0.00 AS Decimal(18, 2)), CAST(602.50 AS Decimal(18, 2)), N'                                                  ')
GO
INSERT [dbo].[LedgerBook] ([Id], [Date], [Name], [LedgerNo], [Label], [Debit], [Credit], [PartyID]) VALUES (2022, CAST(N'2017-05-13 00:00:00.000' AS DateTime), N'Bank Account                                                                                                                                                                                            ', N'#19                                                                                                                                                                                                     ', N'Restaurant POS                                                                                                                                                                                          ', CAST(0.00 AS Decimal(18, 2)), CAST(482.00 AS Decimal(18, 2)), N'                                                  ')
GO
INSERT [dbo].[LedgerBook] ([Id], [Date], [Name], [LedgerNo], [Label], [Debit], [Credit], [PartyID]) VALUES (2023, CAST(N'2017-05-13 00:00:00.000' AS DateTime), N'Bank Account                                                                                                                                                                                            ', N'#20                                                                                                                                                                                                     ', N'Restaurant POS                                                                                                                                                                                          ', CAST(0.00 AS Decimal(18, 2)), CAST(58161.20 AS Decimal(18, 2)), N'                                                  ')
GO
INSERT [dbo].[LedgerBook] ([Id], [Date], [Name], [LedgerNo], [Label], [Debit], [Credit], [PartyID]) VALUES (2024, CAST(N'2017-05-13 00:00:00.000' AS DateTime), N'Bank Account                                                                                                                                                                                            ', N'#21                                                                                                                                                                                                     ', N'Restaurant POS                                                                                                                                                                                          ', CAST(0.00 AS Decimal(18, 2)), CAST(14972.05 AS Decimal(18, 2)), N'                                                  ')
GO
INSERT [dbo].[LedgerBook] ([Id], [Date], [Name], [LedgerNo], [Label], [Debit], [Credit], [PartyID]) VALUES (2025, CAST(N'2017-05-13 00:00:00.000' AS DateTime), N'Bank Account                                                                                                                                                                                            ', N'#22                                                                                                                                                                                                     ', N'Restaurant POS                                                                                                                                                                                          ', CAST(0.00 AS Decimal(18, 2)), CAST(90.38 AS Decimal(18, 2)), N'                                                  ')
GO
INSERT [dbo].[LedgerBook] ([Id], [Date], [Name], [LedgerNo], [Label], [Debit], [Credit], [PartyID]) VALUES (2026, CAST(N'2017-05-13 00:00:00.000' AS DateTime), N'Bank Account                                                                                                                                                                                            ', N'#23                                                                                                                                                                                                     ', N'Restaurant POS                                                                                                                                                                                          ', CAST(0.00 AS Decimal(18, 2)), CAST(578.40 AS Decimal(18, 2)), N'                                                  ')
GO
INSERT [dbo].[LedgerBook] ([Id], [Date], [Name], [LedgerNo], [Label], [Debit], [Credit], [PartyID]) VALUES (2027, CAST(N'2017-05-13 00:00:00.000' AS DateTime), N'Bank Account                                                                                                                                                                                            ', N'#24                                                                                                                                                                                                     ', N'Restaurant POS                                                                                                                                                                                          ', CAST(0.00 AS Decimal(18, 2)), CAST(994.12 AS Decimal(18, 2)), N'                                                  ')
GO
INSERT [dbo].[LedgerBook] ([Id], [Date], [Name], [LedgerNo], [Label], [Debit], [Credit], [PartyID]) VALUES (2028, CAST(N'2017-05-14 00:00:00.000' AS DateTime), N'Bank Account                                                                                                                                                                                            ', N'#25                                                                                                                                                                                                     ', N'Restaurant POS                                                                                                                                                                                          ', CAST(0.00 AS Decimal(18, 2)), CAST(879.65 AS Decimal(18, 2)), N'                                                  ')
GO
INSERT [dbo].[LedgerBook] ([Id], [Date], [Name], [LedgerNo], [Label], [Debit], [Credit], [PartyID]) VALUES (2029, CAST(N'2017-05-14 00:00:00.000' AS DateTime), N'Bank Account                                                                                                                                                                                            ', N'#26                                                                                                                                                                                                     ', N'Restaurant POS                                                                                                                                                                                          ', CAST(0.00 AS Decimal(18, 2)), CAST(2096.70 AS Decimal(18, 2)), N'                                                  ')
GO
INSERT [dbo].[LedgerBook] ([Id], [Date], [Name], [LedgerNo], [Label], [Debit], [Credit], [PartyID]) VALUES (2030, CAST(N'2017-05-15 00:00:00.000' AS DateTime), N'Bank Account                                                                                                                                                                                            ', N'#27                                                                                                                                                                                                     ', N'Restaurant POS                                                                                                                                                                                          ', CAST(0.00 AS Decimal(18, 2)), CAST(30927.30 AS Decimal(18, 2)), N'                                                  ')
GO
INSERT [dbo].[LedgerBook] ([Id], [Date], [Name], [LedgerNo], [Label], [Debit], [Credit], [PartyID]) VALUES (2031, CAST(N'2017-05-16 00:00:00.000' AS DateTime), N'Bank Account                                                                                                                                                                                            ', N'#28                                                                                                                                                                                                     ', N'Restaurant POS                                                                                                                                                                                          ', CAST(0.00 AS Decimal(18, 2)), CAST(590.45 AS Decimal(18, 2)), N'                                                  ')
GO
INSERT [dbo].[LedgerBook] ([Id], [Date], [Name], [LedgerNo], [Label], [Debit], [Credit], [PartyID]) VALUES (2032, CAST(N'2017-05-16 00:00:00.000' AS DateTime), N'Bank Account                                                                                                                                                                                            ', N'#29                                                                                                                                                                                                     ', N'Restaurant POS                                                                                                                                                                                          ', CAST(0.00 AS Decimal(18, 2)), CAST(590.45 AS Decimal(18, 2)), N'                                                  ')
GO
INSERT [dbo].[LedgerBook] ([Id], [Date], [Name], [LedgerNo], [Label], [Debit], [Credit], [PartyID]) VALUES (2033, CAST(N'2017-05-16 00:00:00.000' AS DateTime), N'Bank Account                                                                                                                                                                                            ', N'#30                                                                                                                                                                                                     ', N'Restaurant POS                                                                                                                                                                                          ', CAST(0.00 AS Decimal(18, 2)), CAST(915.80 AS Decimal(18, 2)), N'                                                  ')
GO
INSERT [dbo].[LedgerBook] ([Id], [Date], [Name], [LedgerNo], [Label], [Debit], [Credit], [PartyID]) VALUES (2034, CAST(N'2017-05-16 00:00:00.000' AS DateTime), N'Bank Account                                                                                                                                                                                            ', N'#31                                                                                                                                                                                                     ', N'Restaurant POS                                                                                                                                                                                          ', CAST(0.00 AS Decimal(18, 2)), CAST(879.65 AS Decimal(18, 2)), N'                                                  ')
GO
INSERT [dbo].[LedgerBook] ([Id], [Date], [Name], [LedgerNo], [Label], [Debit], [Credit], [PartyID]) VALUES (2035, CAST(N'2017-05-16 00:00:00.000' AS DateTime), N'Bank Account                                                                                                                                                                                            ', N'#29                                                                                                                                                                                                     ', N'Restaurant POS                                                                                                                                                                                          ', CAST(0.00 AS Decimal(18, 2)), CAST(2602.80 AS Decimal(18, 2)), N'                                                  ')
GO
INSERT [dbo].[LedgerBook] ([Id], [Date], [Name], [LedgerNo], [Label], [Debit], [Credit], [PartyID]) VALUES (3035, CAST(N'2017-05-16 00:00:00.000' AS DateTime), N'Bank Account                                                                                                                                                                                            ', N'#30                                                                                                                                                                                                     ', N'Restaurant POS                                                                                                                                                                                          ', CAST(0.00 AS Decimal(18, 2)), CAST(1205.00 AS Decimal(18, 2)), N'                                                  ')
GO
SET IDENTITY_INSERT [dbo].[LedgerBook] OFF
GO
SET IDENTITY_INSERT [dbo].[Logs] ON 

GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-04-19 15:08:51.647' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-04-19 15:09:09.547' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-04-19 15:10:40.460' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (4, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-04-19 15:11:12.450' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-04-20 11:41:54.760' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-04-20 11:43:06.863' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (7, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-04-20 11:43:10.063' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (8, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-04-20 11:43:26.193' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (9, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-04-20 11:49:55.913' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (10, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-04-20 11:53:51.097' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (11, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-04-20 14:37:41.333' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (12, N'sa                                                                                                  ', N'added the new expense type ''Salary''', CAST(N'2017-04-20 14:43:24.843' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (13, N'sa                                                                                                  ', N'added the new expense type ''Incentives''', CAST(N'2017-04-20 14:43:33.167' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (14, N'sa                                                                                                  ', N'added the new expense type ''cabs''', CAST(N'2017-04-20 14:44:51.570' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (15, N'sa                                                                                                  ', N'added the new category ''Non Veg''', CAST(N'2017-04-20 14:46:10.153' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (16, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-04-20 14:51:37.630' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (17, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-04-20 18:10:22.623' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (18, N'sa                                                                                                  ', N'added the restaurant ''Shubham'' info', CAST(N'2017-04-20 18:14:38.263' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (19, N'sa                                                                                                  ', N'added the currency ''Rupees'' has currency code ''INR''', CAST(N'2017-04-20 18:16:30.020' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (20, N'sa                                                                                                  ', N'updated the category ''Non Veg'' details', CAST(N'2017-04-20 18:17:05.700' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (21, N'sa                                                                                                  ', N'updated the category ''Non Veg'' details', CAST(N'2017-04-20 18:17:55.213' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (22, N'sa                                                                                                  ', N'added the new Kitchen/section ''shubham''', CAST(N'2017-04-20 18:18:47.597' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (23, N'sa                                                                                                  ', N'added the new item ''Idly''', CAST(N'2017-04-20 18:19:33.023' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (24, N'sa                                                                                                  ', N'added the new Item Stock having Stock ID ''0001''', CAST(N'2017-04-20 18:21:59.540' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (25, N'sa                                                                                                  ', N'added the new table ''1''', CAST(N'2017-04-20 18:22:21.210' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (26, N'sa                                                                                                  ', N'added the new Notes ''seat nu1''', CAST(N'2017-04-20 18:22:49.430' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (27, N'sa                                                                                                  ', N'added the new Wallet Type ''paytam''', CAST(N'2017-04-20 18:24:36.507' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (28, N'sa                                                                                                  ', N'added the new Member ''100001'' having Member ID ''100001''', CAST(N'2017-04-20 18:25:28.893' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (29, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-04-20 18:27:26.937' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (30, N'sa                                                                                                  ', N'added the new supplier having supplier id ''S-0001''', CAST(N'2017-04-20 18:33:54.193' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (31, N'sa                                                                                                  ', N'added the new delivery person ''guy'' having ID=''EMP-1''', CAST(N'2017-04-20 18:37:19.427' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (32, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-04-20 19:29:55.000' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (33, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-04-21 11:32:02.750' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (34, N'sa                                                                                                  ', N'updated the restaurant ''Hotel Shubham'' info', CAST(N'2017-04-21 11:34:28.610' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (35, N'sa                                                                                                  ', N'added the new category ''Indian Curry''', CAST(N'2017-04-21 11:35:37.183' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (36, N'sa                                                                                                  ', N'added the new category ''Tandoori''', CAST(N'2017-04-21 11:35:54.407' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (37, N'sa                                                                                                  ', N'added the new category ''Non-Veg Tandoori''', CAST(N'2017-04-21 11:36:09.450' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (38, N'sa                                                                                                  ', N'added the new category ''Soups''', CAST(N'2017-04-21 11:36:20.807' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (39, N'sa                                                                                                  ', N'added the new category ''Veg Starters''', CAST(N'2017-04-21 11:36:47.190' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (40, N'sa                                                                                                  ', N'added the new category ''Non-Veg Starters''', CAST(N'2017-04-21 11:37:03.570' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (41, N'sa                                                                                                  ', N'added the new category ''Thaili''', CAST(N'2017-04-21 11:37:26.917' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (42, N'sa                                                                                                  ', N'added the new category ''Bevrages''', CAST(N'2017-04-21 11:37:37.387' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (43, N'sa                                                                                                  ', N'added the new category ''Andhra Spl Non-Veg Curry''', CAST(N'2017-04-21 11:37:59.883' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (44, N'sa                                                                                                  ', N'deleted the item stock record having Stock ID ''1''', CAST(N'2017-04-21 11:39:20.423' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (45, N'sa                                                                                                  ', N'deleted the item ''Idly''', CAST(N'2017-04-21 11:39:28.660' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (46, N'sa                                                                                                  ', N'deleted the table ''1''', CAST(N'2017-04-21 11:39:43.017' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (47, N'sa                                                                                                  ', N'added the new item ''Mineral Water''', CAST(N'2017-04-21 11:40:29.260' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (48, N'sa                                                                                                  ', N'added the new item ''Soft Drinks''', CAST(N'2017-04-21 11:40:51.477' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (49, N'sa                                                                                                  ', N'added the new item ''Curd''', CAST(N'2017-04-21 11:41:09.530' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (50, N'sa                                                                                                  ', N'added the new item ''Fruit Salad''', CAST(N'2017-04-21 11:41:28.343' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (51, N'sa                                                                                                  ', N'added the new item ''Fruit Salad With Ice-Cream''', CAST(N'2017-04-21 11:41:55.353' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (52, N'sa                                                                                                  ', N'added the new item ''Ice-Cream''', CAST(N'2017-04-21 11:42:09.037' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (53, N'sa                                                                                                  ', N'added the new item ''Veg Thaili''', CAST(N'2017-04-21 11:43:25.703' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (54, N'sa                                                                                                  ', N'added the new item ''Non-Veg Thaili''', CAST(N'2017-04-21 11:43:44.613' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (55, N'sa                                                                                                  ', N'added the new item ''Baby Thaili''', CAST(N'2017-04-21 11:43:58.590' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (56, N'sa                                                                                                  ', N'added the new item ''Chicken Curry (with Bones)''', CAST(N'2017-04-21 11:44:54.337' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (57, N'sa                                                                                                  ', N'added the new item ''Chicken Fry (With Bones)''', CAST(N'2017-04-21 11:45:39.507' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (58, N'sa                                                                                                  ', N'added the new item ''Country Chicken Curry''', CAST(N'2017-04-21 11:46:41.587' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (59, N'sa                                                                                                  ', N'added the new item ''Chicken Gongura''', CAST(N'2017-04-21 11:47:02.413' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (60, N'sa                                                                                                  ', N'added the new item ''Mutton Curry Bk''', CAST(N'2017-04-21 11:47:21.920' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (61, N'sa                                                                                                  ', N'added the new item ''Mutton Fry Bk''', CAST(N'2017-04-21 11:47:50.867' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (62, N'sa                                                                                                  ', N'added the new item ''Gongura Mutton ''', CAST(N'2017-04-21 11:48:19.897' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (63, N'sa                                                                                                  ', N'added the new item ''Pwran Curry''', CAST(N'2017-04-21 11:48:34.513' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (64, N'sa                                                                                                  ', N'added the new item ''Gongura Prwans''', CAST(N'2017-04-21 11:49:04.843' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (65, N'sa                                                                                                  ', N'added the new item ''Fish Pulusu''', CAST(N'2017-04-21 11:50:40.560' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (66, N'sa                                                                                                  ', N'added the new item ''Bommidalu pulusu''', CAST(N'2017-04-21 11:51:16.210' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (67, N'sa                                                                                                  ', N'added the new item ''Gabs Curry''', CAST(N'2017-04-21 11:51:32.890' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (68, N'sa                                                                                                  ', N'added the new item ''Chilli Chicken''', CAST(N'2017-04-21 11:52:06.510' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (69, N'sa                                                                                                  ', N'added the new item ''Chicken Manchuria''', CAST(N'2017-04-21 11:52:36.107' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (70, N'sa                                                                                                  ', N'added the new item ''Cashew Chicken Fry''', CAST(N'2017-04-21 11:53:08.650' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (71, N'sa                                                                                                  ', N'added the new item ''Chicken Paleods''', CAST(N'2017-04-21 11:54:02.710' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (72, N'sa                                                                                                  ', N'added the new item ''Chicken SSS''', CAST(N'2017-04-21 11:54:24.363' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (73, N'sa                                                                                                  ', N'added the new item ''Chicken Lolypop''', CAST(N'2017-04-21 11:54:50.853' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (74, N'sa                                                                                                  ', N'added the new item ''Chicken Maveltic''', CAST(N'2017-04-21 11:59:10.943' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (75, N'sa                                                                                                  ', N'added the new item ''Chicken Drum-Stciks''', CAST(N'2017-04-21 11:59:33.127' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (76, N'sa                                                                                                  ', N'added the new item ''Peppar Chicken''', CAST(N'2017-04-21 11:59:54.160' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (77, N'sa                                                                                                  ', N'added the new item ''Lemon Chicken''', CAST(N'2017-04-21 12:00:22.760' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (78, N'sa                                                                                                  ', N'added the new item ''Ginger Chicken ''', CAST(N'2017-04-21 12:00:44.743' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (79, N'sa                                                                                                  ', N'added the new item ''Schezwan Chicken''', CAST(N'2017-04-21 12:01:43.480' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (80, N'sa                                                                                                  ', N'added the new item ''Fish 65''', CAST(N'2017-04-21 12:02:00.947' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (81, N'sa                                                                                                  ', N'added the new item ''Fish Manchuria''', CAST(N'2017-04-21 12:02:22.447' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (82, N'sa                                                                                                  ', N'added the new item ''Chiliy Fish''', CAST(N'2017-04-21 12:02:46.083' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (83, N'sa                                                                                                  ', N'added the new item ''Fish Apollo''', CAST(N'2017-04-21 12:03:07.800' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (84, N'sa                                                                                                  ', N'added the new item ''Chilli Prawn''', CAST(N'2017-04-21 12:03:30.953' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (85, N'sa                                                                                                  ', N'added the new item ''Prwan-65''', CAST(N'2017-04-21 12:03:52.437' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (86, N'sa                                                                                                  ', N'added the new item ''Prwan Manchuria''', CAST(N'2017-04-21 12:04:20.537' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (87, N'sa                                                                                                  ', N'added the new item ''Ginger Prawns''', CAST(N'2017-04-21 12:04:29.197' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (88, N'sa                                                                                                  ', N'added the new item ''Loose Prawns''', CAST(N'2017-04-21 12:04:41.070' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (89, N'sa                                                                                                  ', N'added the new item ''Veg Manchuria''', CAST(N'2017-04-21 12:05:23.927' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (90, N'sa                                                                                                  ', N'added the new item ''Chilli Veg''', CAST(N'2017-04-21 12:05:45.190' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (91, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-04-21 12:05:54.913' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (92, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-04-21 12:05:59.157' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (93, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-04-21 12:06:24.453' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (94, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-04-21 12:07:03.623' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (95, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-04-21 12:07:54.720' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (96, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-04-21 12:07:57.887' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (97, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-04-21 12:08:58.093' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (98, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-04-21 12:09:00.623' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (99, N'sa                                                                                                  ', N'updated the item ''Chilli Veg'' details', CAST(N'2017-04-21 12:10:28.113' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (100, N'sa                                                                                                  ', N'added the new item ''Gobi-65''', CAST(N'2017-04-21 12:11:02.840' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (101, N'sa                                                                                                  ', N'added the new item ''Panner 65''', CAST(N'2017-04-21 12:11:32.003' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (102, N'sa                                                                                                  ', N'added the new item ''Chilli Panner ''', CAST(N'2017-04-21 12:11:53.000' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (103, N'sa                                                                                                  ', N'added the new item ''Chilli Gobi''', CAST(N'2017-04-21 12:12:16.747' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (104, N'sa                                                                                                  ', N'added the new item ''Gobi Manchuria''', CAST(N'2017-04-21 12:12:58.453' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (105, N'sa                                                                                                  ', N'added the new item ''Chilli Mushroom''', CAST(N'2017-04-21 12:13:27.627' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (106, N'sa                                                                                                  ', N'added the new item ''Baby Corn Manchuria''', CAST(N'2017-04-21 12:14:12.903' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (107, N'sa                                                                                                  ', N'added the new item ''Baby Corn 65''', CAST(N'2017-04-21 12:15:05.947' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (108, N'sa                                                                                                  ', N'added the new item ''Chilli Baby Corn''', CAST(N'2017-04-21 12:15:30.160' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (109, N'sa                                                                                                  ', N'added the new item ''Crispy Vegatables''', CAST(N'2017-04-21 12:16:31.633' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (110, N'sa                                                                                                  ', N'added the new item ''French Fries''', CAST(N'2017-04-21 12:17:15.663' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (111, N'sa                                                                                                  ', N'added the new item ''chilli Starter spl''', CAST(N'2017-04-21 12:17:41.857' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (112, N'sa                                                                                                  ', N'added the new item ''Tandoori Chicken Full''', CAST(N'2017-04-21 12:18:47.870' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (113, N'sa                                                                                                  ', N'added the new item ''Tandoori Chicken half''', CAST(N'2017-04-21 12:19:07.077' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (114, N'sa                                                                                                  ', N'added the new item ''Chicken Tikka ''', CAST(N'2017-04-21 12:19:28.233' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (115, N'sa                                                                                                  ', N'added the new item ''Tangidi kabab''', CAST(N'2017-04-21 12:20:00.497' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (116, N'sa                                                                                                  ', N'added the new item ''kasmir kabab''', CAST(N'2017-04-21 12:20:27.503' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (117, N'sa                                                                                                  ', N'added the new item ''Chicken Seekh kabab''', CAST(N'2017-04-21 12:20:55.243' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (118, N'sa                                                                                                  ', N'added the new item ''chicken Veshmi Kabab''', CAST(N'2017-04-21 12:21:26.173' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (119, N'sa                                                                                                  ', N'added the new item ''veg Seekh Kabab''', CAST(N'2017-04-21 12:21:50.403' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (120, N'sa                                                                                                  ', N'added the new item ''Pulka ''', CAST(N'2017-04-21 12:22:24.550' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (121, N'sa                                                                                                  ', N'added the new item ''Butter Pulka''', CAST(N'2017-04-21 12:22:44.053' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (122, N'sa                                                                                                  ', N'added the new item ''Plain Noon''', CAST(N'2017-04-21 12:23:14.973' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (123, N'sa                                                                                                  ', N'added the new item ''Butter Noon''', CAST(N'2017-04-21 12:23:27.643' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (124, N'sa                                                                                                  ', N'added the new item ''Romaili Roti''', CAST(N'2017-04-21 12:23:52.573' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (125, N'sa                                                                                                  ', N'added the new item ''Roti''', CAST(N'2017-04-21 12:24:31.743' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (126, N'sa                                                                                                  ', N'added the new item ''Butter Roti''', CAST(N'2017-04-21 12:24:53.057' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (127, N'sa                                                                                                  ', N'added the new item ''Kulcha''', CAST(N'2017-04-21 12:25:14.087' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (128, N'sa                                                                                                  ', N'added the new item ''Masala Kulcha''', CAST(N'2017-04-21 12:25:33.760' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (129, N'sa                                                                                                  ', N'added the new item ''Aloo Parata''', CAST(N'2017-04-21 12:25:49.580' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (130, N'sa                                                                                                  ', N'added the new item ''Plain Parata''', CAST(N'2017-04-21 12:26:08.990' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (131, N'sa                                                                                                  ', N'added the new item ''Chicken Curry B/E''', CAST(N'2017-04-21 12:27:49.273' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (132, N'sa                                                                                                  ', N'added the new item ''Butter Chicken Curry''', CAST(N'2017-04-21 12:28:05.090' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (133, N'sa                                                                                                  ', N'added the new item ''Cashew Chicken Curry ''', CAST(N'2017-04-21 12:28:30.440' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (134, N'sa                                                                                                  ', N'added the new item ''Chicken Tikka Masala''', CAST(N'2017-04-21 12:28:49.290' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (135, N'sa                                                                                                  ', N'added the new item ''Kadai Chicken''', CAST(N'2017-04-21 12:29:12.630' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (136, N'sa                                                                                                  ', N'added the new item ''Chicken Aalf Tandoori Masala Curry''', CAST(N'2017-04-21 12:29:52.433' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (137, N'sa                                                                                                  ', N'added the new item ''Mutton Curry B/E''', CAST(N'2017-04-21 12:30:54.783' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (138, N'sa                                                                                                  ', N'added the new item ''Kadai Mutton''', CAST(N'2017-04-21 12:31:15.703' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (139, N'sa                                                                                                  ', N'added the new item ''Chicken Koshapuri''', CAST(N'2017-04-21 12:31:49.790' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (140, N'sa                                                                                                  ', N'added the new item ''kadai Prawn''', CAST(N'2017-04-21 12:32:15.310' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (141, N'sa                                                                                                  ', N'added the new item ''Mixed Veg Curry ''', CAST(N'2017-04-21 12:32:48.523' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (142, N'sa                                                                                                  ', N'added the new item ''Tomato Cashew ''', CAST(N'2017-04-21 12:33:24.840' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (143, N'sa                                                                                                  ', N'added the new item ''Cashew Panner ''', CAST(N'2017-04-21 12:33:50.017' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (144, N'sa                                                                                                  ', N'added the new item ''Panner Butter Masala''', CAST(N'2017-04-21 12:34:17.130' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (145, N'sa                                                                                                  ', N'added the new item ''Malai Kolta''', CAST(N'2017-04-21 12:34:49.687' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (146, N'sa                                                                                                  ', N'added the new item ''Mushroom Masala''', CAST(N'2017-04-21 12:35:15.990' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (147, N'sa                                                                                                  ', N'added the new item ''Baby Corn Cashew ''', CAST(N'2017-04-21 12:35:40.013' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (148, N'sa                                                                                                  ', N'added the new item ''Baby Corn Curry''', CAST(N'2017-04-21 12:35:56.050' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (149, N'sa                                                                                                  ', N'added the new item ''Cashew Masala''', CAST(N'2017-04-21 12:36:19.327' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (150, N'sa                                                                                                  ', N'added the new item ''Dal Fry''', CAST(N'2017-04-21 12:36:37.360' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (151, N'sa                                                                                                  ', N'added the new item ''Tadra Dal''', CAST(N'2017-04-21 12:37:08.607' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (152, N'sa                                                                                                  ', N'added the new item ''Tomato Dal''', CAST(N'2017-04-21 12:37:37.123' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (153, N'sa                                                                                                  ', N'added the new item ''Capcicum Masala''', CAST(N'2017-04-21 12:38:10.273' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (154, N'sa                                                                                                  ', N'added the new item ''Memthi Masala''', CAST(N'2017-04-21 12:38:31.193' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (155, N'sa                                                                                                  ', N'added the new item ''Vegetable Bean Soup''', CAST(N'2017-04-21 12:39:24.297' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (156, N'sa                                                                                                  ', N'added the new item ''potato Leak Soup''', CAST(N'2017-04-21 12:39:43.920' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (157, N'sa                                                                                                  ', N'added the new item ''Potato Soup Tomato''', CAST(N'2017-04-21 12:40:07.587' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (158, N'sa                                                                                                  ', N'added the new item ''Veg Corn Soup''', CAST(N'2017-04-21 12:41:03.200' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (159, N'sa                                                                                                  ', N'added the new item ''Chicken Corn Soup''', CAST(N'2017-04-21 12:41:14.477' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (160, N'sa                                                                                                  ', N'added the new item ''Veg Hot & Sow Soup''', CAST(N'2017-04-21 12:41:49.937' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (161, N'sa                                                                                                  ', N'added the new item ''Chicken Hot & Sow Soup''', CAST(N'2017-04-21 12:42:02.947' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (162, N'sa                                                                                                  ', N'added the new item ''Veg Dragon Soup''', CAST(N'2017-04-21 12:42:24.570' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (163, N'sa                                                                                                  ', N'added the new item ''Chicken Dragon Soup''', CAST(N'2017-04-21 12:42:35.083' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (164, N'sa                                                                                                  ', N'added the new item ''Veg Tailmetri Soup''', CAST(N'2017-04-21 12:43:05.923' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (165, N'sa                                                                                                  ', N'added the new item ''Chicken Tailmetri Soup''', CAST(N'2017-04-21 12:43:17.827' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (166, N'sa                                                                                                  ', N'deleted the Notes ''seat nu1''', CAST(N'2017-04-21 12:43:37.577' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (167, N'sa                                                                                                  ', N'deleted the Wallet Type ''paytam''', CAST(N'2017-04-21 12:44:13.613' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (168, N'sa                                                                                                  ', N'deleted the supplier record having supplier id ''S-0001''', CAST(N'2017-04-21 12:44:41.490' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (169, N'sa                                                                                                  ', N'updated the restaurant ''Hotel Shubham'' info', CAST(N'2017-04-21 12:55:50.233' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (170, N'sa                                                                                                  ', N'updated the restaurant ''Hotel Shubham'' info', CAST(N'2017-04-21 12:57:55.843' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (171, N'sa                                                                                                  ', N'updated the category ''Non Veg'' details', CAST(N'2017-04-21 12:58:08.603' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (172, N'sa                                                                                                  ', N'updated the category ''Non Veg'' details', CAST(N'2017-04-21 12:59:10.350' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (173, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-04-21 13:22:26.983' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (174, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-04-21 13:22:47.640' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (175, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-04-21 13:22:50.617' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (176, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-04-21 13:28:21.073' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (177, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-04-21 13:28:24.927' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (178, N'sa                                                                                                  ', N'added the new restaurant pos(Takeaway) record having bill no. ''#1''', CAST(N'2017-04-21 13:29:40.993' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (179, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-04-21 13:31:12.643' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (180, N'sa                                                                                                  ', N'added the new table ''1''', CAST(N'2017-04-21 13:32:22.360' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (181, N'sa                                                                                                  ', N'Updated the Kitchen/section ''shubham''', CAST(N'2017-04-21 13:33:45.117' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (182, N'sa                                                                                                  ', N'added the new table ''2''', CAST(N'2017-04-21 13:34:31.730' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (183, N'sa                                                                                                  ', N'added the new table ''3''', CAST(N'2017-04-21 13:34:40.840' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (184, N'sa                                                                                                  ', N'added the new table ''4''', CAST(N'2017-04-21 13:34:48.157' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (185, N'sa                                                                                                  ', N'added the new table ''5''', CAST(N'2017-04-21 13:35:23.320' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (186, N'sa                                                                                                  ', N'added the new table ''6''', CAST(N'2017-04-21 13:35:38.640' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (187, N'sa                                                                                                  ', N'added the new table ''7''', CAST(N'2017-04-21 13:35:49.073' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (188, N'sa                                                                                                  ', N'added the new table ''8''', CAST(N'2017-04-21 13:35:56.250' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (189, N'sa                                                                                                  ', N'added the new table ''9''', CAST(N'2017-04-21 13:36:02.477' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (190, N'sa                                                                                                  ', N'added the new table ''10''', CAST(N'2017-04-21 13:36:09.947' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (191, N'sa                                                                                                  ', N'deleted the table ''10''', CAST(N'2017-04-21 13:36:23.550' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (192, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-04-21 14:02:32.010' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (193, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-04-21 14:02:34.020' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (194, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-1''', CAST(N'2017-04-21 14:02:56.487' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (195, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-04-21 14:05:35.873' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (196, N'sa                                                                                                  ', N'added the new restaurant pos(express billing) record having bill no. ''#1''', CAST(N'2017-04-21 14:06:30.300' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (197, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-04-21 14:09:28.110' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (198, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-04-21 14:11:58.387' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (199, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-04-21 14:12:01.177' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (200, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-04-21 14:13:18.320' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (201, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-04-21 14:13:21.050' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (202, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-04-21 14:14:37.973' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (203, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-04-21 14:14:41.797' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (204, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-04-21 14:17:32.553' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (205, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-04-21 14:17:35.317' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (206, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-2''', CAST(N'2017-04-21 14:18:00.353' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (207, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-04-21 14:19:20.973' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (208, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-3''', CAST(N'2017-04-21 14:19:56.947' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (209, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-04-21 14:21:24.527' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (210, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-4''', CAST(N'2017-04-21 14:21:56.710' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (211, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-04-21 14:22:38.610' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (212, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-5''', CAST(N'2017-04-21 14:23:00.030' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (213, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-04-21 14:31:15.867' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (214, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-6''', CAST(N'2017-04-21 14:32:23.917' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (215, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-04-21 14:35:44.627' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (216, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-04-21 14:35:56.917' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (217, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-04-21 14:42:21.630' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (218, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-04-21 14:45:15.540' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (219, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-04-21 16:24:59.877' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (220, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-04-21 16:25:10.967' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (221, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-04-21 16:25:13.247' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (222, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-04-21 16:25:57.597' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (223, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-04-21 16:26:01.590' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (224, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-04-21 16:29:28.697' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (225, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-04-21 16:29:31.113' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (226, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-04-21 16:30:06.073' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (227, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-04-21 16:30:08.833' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (228, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-04-21 16:33:01.807' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (229, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-04-25 09:51:02.707' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (230, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-04-25 09:51:07.243' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (231, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-04-25 09:51:09.773' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (232, N'sa                                                                                                  ', N'added the new restaurant pos record having bill no. ''#1''', CAST(N'2017-04-25 09:52:09.130' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (233, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-7''', CAST(N'2017-04-25 09:53:49.907' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (234, N'sa                                                                                                  ', N'added the new restaurant pos record having bill no. ''#2''', CAST(N'2017-04-25 09:54:13.010' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (235, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-04-25 09:55:29.137' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (236, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-04-25 09:55:38.920' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (237, N'sa                                                                                                  ', N'added the new expense type ''xyz''', CAST(N'2017-04-25 09:59:07.960' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (238, N'sa                                                                                                  ', N'added the new Expense ''100 ''', CAST(N'2017-04-25 09:59:21.063' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (239, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-04-25 10:02:01.777' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (240, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-04-25 10:03:09.167' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (241, N'Cashier                                                                                             ', N'updated the user ''Cashier'' details', CAST(N'2017-04-25 10:03:33.567' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (242, N'Cashier                                                                                             ', N'Successfully logged out', CAST(N'2017-04-25 10:03:40.913' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (243, N'Cashier                                                                                             ', N'Successfully logged in', CAST(N'2017-04-25 10:03:43.223' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (244, N'Cashier                                                                                             ', N'Successfully logged out', CAST(N'2017-04-25 10:03:54.157' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (245, N'Cashier                                                                                             ', N'Successfully logged in', CAST(N'2017-04-25 10:03:57.370' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (246, N'Cashier                                                                                             ', N'Successfully logged out', CAST(N'2017-04-25 10:04:09.337' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (247, N'Cashier                                                                                             ', N'Successfully logged in', CAST(N'2017-04-25 10:06:33.357' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1247, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-04-29 15:05:09.063' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1248, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-8''', CAST(N'2017-04-29 15:05:55.083' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1249, N'sa                                                                                                  ', N'added the new restaurant pos record having bill no. ''#3''', CAST(N'2017-04-29 15:07:47.590' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1250, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-04-29 15:07:56.327' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1251, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-04-29 15:07:59.213' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1252, N'sa                                                                                                  ', N'added the new user ''new user''', CAST(N'2017-04-29 15:12:37.073' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1253, N'sa                                                                                                  ', N'deleted the user ''new user''', CAST(N'2017-04-29 15:12:54.717' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1254, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-04-29 15:17:02.070' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1255, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-04-29 15:17:04.317' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1256, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-9''', CAST(N'2017-04-29 15:17:30.617' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1257, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-04-29 15:19:26.790' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1258, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-04-29 15:19:29.177' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1259, N'Cashier                                                                                             ', N'updated the user ''Cashier'' details', CAST(N'2017-04-29 15:20:13.623' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1260, N'Cashier                                                                                             ', N'Successfully logged out', CAST(N'2017-04-29 15:20:20.080' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1261, N'Cashier                                                                                             ', N'Successfully logged in', CAST(N'2017-04-29 15:20:23.030' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1262, N'Cashier                                                                                             ', N'Successfully logged out', CAST(N'2017-04-29 15:20:37.693' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1263, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-04-29 15:20:42.200' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1264, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-04-29 15:21:03.230' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1265, N'Cashier                                                                                             ', N'Successfully logged in', CAST(N'2017-04-29 15:21:07.193' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1266, N'Cashier                                                                                             ', N'Successfully logged out', CAST(N'2017-04-29 15:21:50.263' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1267, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-04-29 15:21:52.933' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1268, N'sa                                                                                                  ', N'added the new Warehouse Type ''Store''', CAST(N'2017-04-29 15:25:15.997' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1269, N'sa                                                                                                  ', N'added the new Warehouse ''shubga''', CAST(N'2017-04-29 15:27:39.347' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1270, N'sa                                                                                                  ', N'updated the Warehouse ''shu'' details', CAST(N'2017-04-29 15:29:57.530' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1271, N'sa                                                                                                  ', N'added the new Member ''100002'' having Member ID ''100002''', CAST(N'2017-04-29 15:38:28.980' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1272, N'sa                                                                                                  ', N'added the fund in Member''s Account having transaction id ''1''', CAST(N'2017-04-29 15:39:27.620' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1273, N'sa                                                                                                  ', N'updated the Member''s Account (Fund Entry) having id ''1''', CAST(N'2017-04-29 15:39:42.173' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1274, N'sa                                                                                                  ', N'added the new Kitchen/section ''non veg''', CAST(N'2017-04-29 15:43:37.437' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1275, N'sa                                                                                                  ', N'Sucessfully performed the restore', CAST(N'2017-05-05 15:50:23.307' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1276, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-05 15:50:45.240' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1277, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-05 15:50:47.767' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1278, N'sa                                                                                                  ', N'added the new restaurant pos record having bill no. ''#4''', CAST(N'2017-05-05 15:51:15.860' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1279, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-05 15:51:37.937' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1280, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-05 15:51:40.727' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1281, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-05 15:52:59.913' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1282, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-05 15:53:02.143' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1283, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-10''', CAST(N'2017-05-05 15:53:31.583' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1284, N'sa                                                                                                  ', N'added the new restaurant pos record having bill no. ''#5''', CAST(N'2017-05-05 15:53:39.367' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1285, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-05 15:55:52.497' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1286, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-11''', CAST(N'2017-05-05 15:56:13.073' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1287, N'sa                                                                                                  ', N'added the new restaurant pos record having bill no. ''#6''', CAST(N'2017-05-05 15:56:20.093' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1288, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-05 15:57:05.863' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1289, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-05 15:57:10.717' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1290, N'sa                                                                                                  ', N'updated the category ''Andhra Spl Non-Veg Curry'' details', CAST(N'2017-05-05 15:57:25.397' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1291, N'sa                                                                                                  ', N'updated the category ''Bevrages'' details', CAST(N'2017-05-05 15:57:32.383' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1292, N'sa                                                                                                  ', N'updated the category ''Indian Curry'' details', CAST(N'2017-05-05 15:57:41.073' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1293, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-05 15:57:48.297' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1294, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-05 15:57:50.840' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1295, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-12''', CAST(N'2017-05-05 15:58:07.500' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1296, N'sa                                                                                                  ', N'added the new restaurant pos record having bill no. ''#7''', CAST(N'2017-05-05 15:58:13.850' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1297, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-05 16:09:59.437' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1298, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-05 17:31:09.550' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1299, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-05 17:31:22.920' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1300, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-05 17:31:25.307' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1301, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-05 17:31:40.920' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1302, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-05 18:00:40.573' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1303, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-05 18:02:00.150' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1304, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-05 18:02:03.253' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1305, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-13''', CAST(N'2017-05-05 18:02:20.647' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1306, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-05 18:02:40.570' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1307, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-05 18:02:42.783' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1308, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-05 18:03:03.580' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1309, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-05 18:03:05.903' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1310, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-14''', CAST(N'2017-05-05 18:03:16.433' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1311, N'sa                                                                                                  ', N'added the new restaurant pos record having bill no. ''#8''', CAST(N'2017-05-05 18:04:26.417' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1312, N'sa                                                                                                  ', N'added the new restaurant pos(express billing) record having bill no. ''#2''', CAST(N'2017-05-05 18:06:29.220' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1313, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-05 18:07:15.007' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1314, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-05 18:07:17.907' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1315, N'sa                                                                                                  ', N'added the others setting info', CAST(N'2017-05-05 18:07:45.207' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1316, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-05 18:07:55.207' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1317, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-05 18:07:57.610' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1318, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-05 18:08:15.830' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1319, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-05 18:08:19.450' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1320, N'sa                                                                                                  ', N'Updated the Kitchen/section ''shubham''', CAST(N'2017-05-05 18:08:48.247' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1321, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-05 18:09:08.823' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1322, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-05 18:09:11.553' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1323, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-05 18:18:50.220' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1324, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-05 18:18:52.607' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1325, N'sa                                                                                                  ', N'deleted the Kitchen/section ''non veg''', CAST(N'2017-05-05 18:19:23.183' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1326, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-05 18:20:06.410' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1327, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-05 18:20:09.033' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1328, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-05 18:20:23.273' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1329, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-05 18:20:25.630' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1330, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-15''', CAST(N'2017-05-05 18:20:34.927' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (1331, N'sa                                                                                                  ', N'added the new restaurant pos record having bill no. ''#9''', CAST(N'2017-05-05 18:20:40.200' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2330, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-05 18:32:37.973' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2331, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-16''', CAST(N'2017-05-05 18:32:52.387' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2332, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-05 18:33:50.983' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2333, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-05 18:33:53.867' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2334, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-17''', CAST(N'2017-05-05 18:34:58.110' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2335, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-18''', CAST(N'2017-05-05 18:35:55.487' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2336, N'sa                                                                                                  ', N'added the new restaurant pos record having bill no. ''#10''', CAST(N'2017-05-05 18:37:11.100' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2337, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-05 18:37:33.627' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2338, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-08 13:55:16.653' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2339, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-08 14:03:45.263' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2340, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-08 14:03:47.433' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2341, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-19''', CAST(N'2017-05-08 14:04:05.363' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2342, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-08 14:06:09.297' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2343, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-08 14:06:12.013' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2344, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-08 14:08:28.697' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2345, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-08 14:08:30.867' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2346, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-08 14:10:54.730' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2347, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-08 14:10:57.240' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2348, N'sa                                                                                                  ', N'added the new Wallet Type ''paytym''', CAST(N'2017-05-08 14:11:57.430' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2349, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-08 14:12:03.817' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2350, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-08 14:12:06.580' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2351, N'sa                                                                                                  ', N'added the new restaurant pos record having bill no. ''#11''', CAST(N'2017-05-08 14:21:25.177' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2352, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-08 14:24:36.227' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2353, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-08 14:24:39.083' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2354, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-08 14:25:01.443' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2355, N'Cashier                                                                                             ', N'Successfully logged in', CAST(N'2017-05-08 14:25:04.473' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2356, N'Cashier                                                                                             ', N'Successfully logged out', CAST(N'2017-05-08 14:25:16.383' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2357, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-08 14:25:18.783' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2358, N'sa                                                                                                  ', N'Sucessfully performed the restore', CAST(N'2017-05-08 14:28:32.250' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2359, N'sa                                                                                                  ', N'added the new Expense ''10000''', CAST(N'2017-05-08 14:31:39.450' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2360, N'sa                                                                                                  ', N'added the new category ''Crocin''', CAST(N'2017-05-08 14:34:30.327' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2361, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-08 14:34:45.030' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2362, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-08 14:34:47.247' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2363, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-08 14:35:09.833' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2364, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-08 14:35:12.160' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2365, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-08 14:37:50.307' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2366, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-09 14:30:13.803' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2367, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-09 14:31:16.280' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2368, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-09 14:31:18.480' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2369, N'sa                                                                                                  ', N'deleted the restaurant pos record having bill no. ''#2''', CAST(N'2017-05-09 14:31:34.203' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2370, N'sa                                                                                                  ', N'deleted the restaurant pos record having bill no. ''#4''', CAST(N'2017-05-09 14:31:49.710' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2371, N'sa                                                                                                  ', N'deleted the restaurant pos record having bill no. ''#11''', CAST(N'2017-05-09 14:32:03.127' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2372, N'sa                                                                                                  ', N'deleted the restaurant pos record having bill no. ''#9''', CAST(N'2017-05-09 14:32:15.140' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2373, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-09 14:32:24.577' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2374, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-09 14:32:26.980' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2375, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-09 19:52:23.527' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2376, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-09 19:55:33.850' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2377, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-09 19:56:17.513' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2378, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-20''', CAST(N'2017-05-09 19:57:31.957' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2379, N'sa                                                                                                  ', N'added the new restaurant pos record having bill no. ''#11''', CAST(N'2017-05-09 19:57:51.520' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2380, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-09 19:59:55.697' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2381, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-09 19:59:58.673' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2382, N'sa                                                                                                  ', N'added the new user ''add''', CAST(N'2017-05-09 20:05:05.357' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2383, N'sa                                                                                                  ', N'deleted the user ''add''', CAST(N'2017-05-09 20:05:20.067' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2384, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-09 20:05:50.830' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2385, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-09 20:05:53.280' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2386, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-09 20:06:30.517' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2387, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-09 20:06:35.103' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2388, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-09 20:07:06.333' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2389, N'Cashier                                                                                             ', N'Successfully logged in', CAST(N'2017-05-09 20:07:08.657' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2390, N'Cashier                                                                                             ', N'Successfully logged out', CAST(N'2017-05-09 20:07:14.773' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2391, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-09 20:07:17.270' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2392, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-09 20:07:47.253' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2393, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-09 20:07:50.107' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2394, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-21''', CAST(N'2017-05-09 20:09:34.673' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2395, N'sa                                                                                                  ', N'added the new restaurant pos(Takeaway) record having bill no. ''#2''', CAST(N'2017-05-09 20:10:15.390' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2396, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-09 20:10:23.830' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2397, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-09 20:14:01.340' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2398, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-09 20:14:19.373' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2399, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-11 14:30:41.307' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2400, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-22''', CAST(N'2017-05-11 14:31:53.903' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2401, N'sa                                                                                                  ', N'added the new restaurant pos record having bill no. ''#12''', CAST(N'2017-05-11 14:32:52.193' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2402, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-23''', CAST(N'2017-05-11 14:36:31.437' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2403, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-24''', CAST(N'2017-05-11 14:41:59.767' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2404, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-25''', CAST(N'2017-05-11 14:43:12.297' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2405, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-11 14:51:51.370' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2406, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-11 14:55:02.483' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2407, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-11 14:55:06.193' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2408, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-11 15:07:39.697' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2409, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-11 15:17:22.700' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2410, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-11 15:19:46.633' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2411, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-26''', CAST(N'2017-05-11 15:20:03.167' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2412, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-27''', CAST(N'2017-05-11 15:21:02.960' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2413, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-28''', CAST(N'2017-05-11 15:22:51.490' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2414, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-11 15:24:32.897' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2415, N'sa                                                                                                  ', N'added the new restaurant pos record having bill no. ''#13''', CAST(N'2017-05-11 15:27:53.120' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2416, N'sa                                                                                                  ', N'added the new restaurant pos record having bill no. ''#14''', CAST(N'2017-05-11 15:28:02.587' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2417, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-11 15:28:14.993' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2418, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-11 15:28:17.577' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2419, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-29''', CAST(N'2017-05-11 15:28:40.833' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2420, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-30''', CAST(N'2017-05-11 15:30:26.327' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2421, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-31''', CAST(N'2017-05-11 15:31:01.837' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2422, N'sa                                                                                                  ', N'added the new restaurant pos record having bill no. ''#15''', CAST(N'2017-05-11 15:32:02.073' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2423, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-32''', CAST(N'2017-05-11 15:32:14.857' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2424, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-11 15:35:53.863' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2425, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-11 15:35:56.800' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2426, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-11 15:36:07.943' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2427, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-11 15:36:10.347' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2428, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-33''', CAST(N'2017-05-11 15:45:01.913' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2429, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-11 17:22:03.663' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2430, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-34''', CAST(N'2017-05-11 17:22:32.840' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2431, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-11 17:24:27.870' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2432, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-11 17:26:39.887' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2433, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-11 17:28:27.837' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2434, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-11 17:37:10.580' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2435, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-11 17:39:53.170' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2436, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-11 17:43:49.967' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2437, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-11 17:45:24.190' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2438, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-11 17:52:03.897' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2439, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-11 17:54:36.410' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2440, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-11 17:57:45.223' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2441, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-11 17:58:41.310' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2442, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-11 18:04:25.950' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2443, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-11 18:05:14.837' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2444, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-11 18:07:46.150' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2445, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-11 18:10:10.083' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2446, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-11 18:14:54.813' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2447, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-11 18:17:10.683' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2448, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-11 18:20:54.413' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2449, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-11 18:28:33.450' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2450, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-11 18:30:13.507' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2451, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-11 18:31:47.703' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2452, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-11 18:36:01.850' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (2453, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-11 18:49:40.793' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3415, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-12 10:02:34.527' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3416, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-12 10:03:36.633' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3417, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-12 10:09:31.350' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3418, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-12 10:48:18.813' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3419, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-12 10:53:29.730' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3420, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-12 13:07:20.807' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3421, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-12 13:10:25.873' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3422, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-12 13:11:27.013' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3423, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-12 13:11:34.580' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3424, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-12 13:11:37.153' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3425, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-12 13:35:38.580' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3426, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 09:55:06.993' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3427, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 10:17:28.240' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3428, N'sa                                                                                                  ', N'added the new restaurant pos record having bill no. ''#16''', CAST(N'2017-05-13 11:08:18.680' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3429, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 11:11:23.620' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3430, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 11:13:18.243' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3431, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 11:18:54.893' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3432, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 11:23:36.177' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3433, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-35''', CAST(N'2017-05-13 11:25:19.927' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3434, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 11:28:58.930' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3435, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 11:30:24.987' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3436, N'sa                                                                                                  ', N'deleted the restaurant pos record having bill no. ''#3''', CAST(N'2017-05-13 11:33:23.873' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3437, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 11:36:52.333' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3438, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-36''', CAST(N'2017-05-13 11:37:13.297' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3439, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-37''', CAST(N'2017-05-13 11:37:40.787' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3440, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-38''', CAST(N'2017-05-13 11:37:57.743' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3441, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 11:51:29.273' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3442, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-39''', CAST(N'2017-05-13 11:51:41.690' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3443, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 11:52:44.487' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3444, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 11:54:58.323' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3445, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 12:00:15.537' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3446, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-40''', CAST(N'2017-05-13 12:05:51.350' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3447, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 12:06:42.027' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3448, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-13 12:06:47.337' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3449, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 12:06:50.153' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3450, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-41''', CAST(N'2017-05-13 12:07:16.237' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3451, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 12:08:23.573' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3452, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-42''', CAST(N'2017-05-13 12:16:29.613' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3453, N'sa                                                                                                  ', N'deleted the restaurant pos record having ticket no. ''KOT-10''', CAST(N'2017-05-13 12:16:40.300' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3454, N'sa                                                                                                  ', N'deleted the restaurant pos record having ticket no. ''KOT-13''', CAST(N'2017-05-13 12:16:58.253' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3455, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 12:44:20.840' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3456, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 12:52:27.840' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3457, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 12:54:02.087' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3458, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 12:57:48.913' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3459, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 13:03:49.537' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3460, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-13 13:03:54.287' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3461, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 13:03:56.793' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3462, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 13:07:33.577' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3463, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-43''', CAST(N'2017-05-13 13:09:16.387' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3464, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 13:11:09.013' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3465, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-13 13:15:43.170' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3466, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 13:17:40.380' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3467, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 13:23:28.850' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3468, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 13:26:04.913' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3469, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 13:28:49.217' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3470, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 13:34:00.980' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3471, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 13:35:19.537' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3472, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 13:39:24.557' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3473, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 13:45:14.067' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3474, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 13:46:52.360' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3475, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 14:08:38.147' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3476, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 14:13:19.443' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3477, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-44''', CAST(N'2017-05-13 14:14:56.193' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3478, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 14:19:19.323' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3479, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-45''', CAST(N'2017-05-13 14:22:13.750' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3480, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-46''', CAST(N'2017-05-13 14:23:02.897' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3481, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 14:30:31.973' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3482, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 14:34:49.633' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3483, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 14:36:37.223' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3484, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 14:39:11.467' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3485, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 14:43:21.800' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3486, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 14:49:07.173' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3487, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 14:55:44.920' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3488, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 14:56:42.547' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3489, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 14:58:43.323' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3490, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-47''', CAST(N'2017-05-13 14:59:18.203' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3491, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 15:04:08.123' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3492, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-48''', CAST(N'2017-05-13 15:04:45.083' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3493, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 15:06:17.107' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3494, N'sa                                                                                                  ', N'added the new restaurant pos(home delivery) record having bill no. ''#1''', CAST(N'2017-05-13 15:07:17.317' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3495, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 15:14:16.377' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3496, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 15:20:09.323' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3497, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 15:24:26.493' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3498, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-49''', CAST(N'2017-05-13 15:31:35.577' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3499, N'sa                                                                                                  ', N'added the new restaurant pos record having bill no. ''#17''', CAST(N'2017-05-13 15:32:42.550' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3500, N'sa                                                                                                  ', N'deleted the restaurant pos record having bill no. ''#5''', CAST(N'2017-05-13 15:37:02.733' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3501, N'sa                                                                                                  ', N'deleted the restaurant pos record having bill no. ''#1''', CAST(N'2017-05-13 15:40:07.033' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3502, N'sa                                                                                                  ', N'deleted the restaurant pos record having bill no. ''#6''', CAST(N'2017-05-13 15:41:09.183' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3503, N'sa                                                                                                  ', N'deleted the restaurant pos record having bill no. ''#16''', CAST(N'2017-05-13 15:41:28.283' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3504, N'sa                                                                                                  ', N'deleted the restaurant pos record having bill no. ''#7''', CAST(N'2017-05-13 15:42:29.013' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3505, N'sa                                                                                                  ', N'deleted the restaurant pos record having bill no. ''#8''', CAST(N'2017-05-13 15:44:14.470' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3506, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 16:07:35.147' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3507, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 16:15:52.883' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3508, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 16:18:03.863' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3509, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 16:21:57.077' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3510, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 16:31:36.033' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3511, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 16:34:58.547' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3512, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 16:39:11.380' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3513, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 16:42:54.077' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3514, N'sa                                                                                                  ', N'deleted the restaurant pos record having bill no. ''1''', CAST(N'2017-05-13 16:43:26.643' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3515, N'sa                                                                                                  ', N'deleted the restaurant pos record having bill no. ''1''', CAST(N'2017-05-13 16:45:31.830' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3516, N'sa                                                                                                  ', N'deleted the restaurant pos record having ticket no. ''KOT-5''', CAST(N'2017-05-13 16:55:05.230' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3517, N'sa                                                                                                  ', N'deleted the restaurant pos record having ticket no. ''KOT-15''', CAST(N'2017-05-13 16:56:00.037' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3518, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-50''', CAST(N'2017-05-13 16:56:48.353' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3519, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-51''', CAST(N'2017-05-13 16:57:10.657' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3520, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 16:58:17.267' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3521, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-52''', CAST(N'2017-05-13 16:58:38.827' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3522, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-53''', CAST(N'2017-05-13 17:04:06.193' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3523, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-54''', CAST(N'2017-05-13 17:04:15.230' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3524, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 17:05:55.863' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3525, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 17:12:29.117' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3526, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-55''', CAST(N'2017-05-13 17:14:21.237' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3527, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-56''', CAST(N'2017-05-13 17:16:30.037' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3528, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-57''', CAST(N'2017-05-13 17:18:11.397' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3529, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-58''', CAST(N'2017-05-13 17:19:04.587' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3530, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 17:22:21.620' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3531, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 17:34:51.297' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3532, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-13 17:45:26.653' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3533, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 17:46:07.467' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3534, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 17:47:51.513' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3535, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-60''', CAST(N'2017-05-13 17:48:20.893' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3536, N'sa                                                                                                  ', N'added the new restaurant pos record having bill no. ''#18''', CAST(N'2017-05-13 17:49:07.617' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3537, N'sa                                                                                                  ', N'added the new restaurant pos record having bill no. ''#19''', CAST(N'2017-05-13 17:51:32.477' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3538, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-61''', CAST(N'2017-05-13 17:54:02.897' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3539, N'sa                                                                                                  ', N'added the new restaurant pos record having bill no. ''#20''', CAST(N'2017-05-13 17:54:36.613' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3540, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-62''', CAST(N'2017-05-13 17:56:41.777' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3541, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-63''', CAST(N'2017-05-13 17:57:20.503' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3542, N'sa                                                                                                  ', N'added the new restaurant pos record having bill no. ''#21''', CAST(N'2017-05-13 17:57:33.750' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3543, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-64''', CAST(N'2017-05-13 17:57:57.703' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3544, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-65''', CAST(N'2017-05-13 17:58:33.217' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3545, N'sa                                                                                                  ', N'added the new restaurant pos record having bill no. ''#22''', CAST(N'2017-05-13 17:59:08.553' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3546, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-66''', CAST(N'2017-05-13 17:59:39.370' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3547, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-67''', CAST(N'2017-05-13 18:00:03.607' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3548, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-68''', CAST(N'2017-05-13 18:00:39.047' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3549, N'sa                                                                                                  ', N'added the new restaurant pos record having bill no. ''#23''', CAST(N'2017-05-13 18:00:45.400' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3550, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-69''', CAST(N'2017-05-13 18:01:11.103' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3551, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-70''', CAST(N'2017-05-13 18:02:00.633' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3552, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-71''', CAST(N'2017-05-13 18:03:15.020' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3553, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 18:04:43.780' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3554, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-72''', CAST(N'2017-05-13 18:05:29.213' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3555, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-73''', CAST(N'2017-05-13 18:07:04.227' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3556, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-74''', CAST(N'2017-05-13 18:12:00.940' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3557, N'sa                                                                                                  ', N'added the new restaurant pos record having bill no. ''#24''', CAST(N'2017-05-13 18:13:21.370' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3558, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-13 18:15:10.897' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3559, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-75''', CAST(N'2017-05-13 18:16:01.563' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3560, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-76''', CAST(N'2017-05-13 18:16:27.737' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3561, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-14 09:43:25.727' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3562, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-77''', CAST(N'2017-05-14 09:43:54.700' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3563, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-78''', CAST(N'2017-05-14 09:45:21.003' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3564, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-79''', CAST(N'2017-05-14 09:46:05.540' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3565, N'sa                                                                                                  ', N'added the new restaurant pos record having bill no. ''#25''', CAST(N'2017-05-14 09:47:58.930' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3566, N'sa                                                                                                  ', N'added the new restaurant pos record having bill no. ''#26''', CAST(N'2017-05-14 09:49:38.553' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3567, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-14 09:52:47.410' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3568, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-80''', CAST(N'2017-05-14 09:53:07.210' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3569, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-81''', CAST(N'2017-05-14 09:53:38.860' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3570, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-14 09:55:17.873' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3571, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-82''', CAST(N'2017-05-14 09:55:57.023' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3572, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-14 09:57:36.437' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3573, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-14 09:57:40.683' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3574, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-14 09:59:16.993' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3575, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-83''', CAST(N'2017-05-14 10:00:13.750' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3576, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-84''', CAST(N'2017-05-14 10:01:24.927' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3577, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-85''', CAST(N'2017-05-14 10:03:09.573' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3578, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-86''', CAST(N'2017-05-14 10:06:08.547' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3579, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-87''', CAST(N'2017-05-14 10:06:32.197' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3580, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-14 10:08:00.293' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3581, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-88''', CAST(N'2017-05-14 10:11:00.680' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3582, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-14 10:23:44.860' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3583, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-14 10:41:44.157' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3584, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-14 10:43:08.677' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3585, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-14 12:22:17.823' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3586, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-14 12:24:28.333' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3587, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-14 12:27:29.400' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3588, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-14 12:34:04.690' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3589, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-14 12:37:10.173' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3590, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-14 12:46:50.850' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3591, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-14 13:31:43.027' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3592, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 09:51:11.207' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3593, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 10:34:50.260' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3594, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-15 10:37:02.517' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3595, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 10:38:57.697' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3596, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 10:43:38.057' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3597, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 10:51:45.143' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3598, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 11:00:44.603' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3599, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 11:09:03.877' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3600, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 11:12:56.817' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3601, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 11:18:02.503' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3602, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 11:22:19.600' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3603, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 11:25:06.603' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3604, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 11:40:59.037' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3605, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-15 11:42:16.550' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3606, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 11:42:19.983' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3607, N'sa                                                                                                  ', N'added the new restaurant pos record having bill no. ''#27''', CAST(N'2017-05-15 11:43:16.407' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3608, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 11:47:43.683' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3609, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 11:56:20.070' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3610, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 11:59:13.977' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3611, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-15 11:59:51.743' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3612, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 12:00:25.270' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3613, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-15 12:01:15.123' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3614, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 12:05:44.993' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3615, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 12:21:24.440' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3616, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 12:26:27.897' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3617, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 12:34:39.033' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3618, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 12:46:12.587' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3619, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 12:53:16.670' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3620, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 13:06:46.840' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3621, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 13:09:48.370' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3622, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 13:15:47.523' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3623, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 13:24:26.507' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3624, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-90''', CAST(N'2017-05-15 13:25:09.610' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3625, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-15 13:25:24.270' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3626, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 13:30:11.827' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3627, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-90''', CAST(N'2017-05-15 13:30:26.623' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3628, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-90''', CAST(N'2017-05-15 13:30:41.793' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3629, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-90''', CAST(N'2017-05-15 13:31:15.373' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3630, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-90''', CAST(N'2017-05-15 13:31:31.290' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3631, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-90''', CAST(N'2017-05-15 13:33:24.287' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3632, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 13:38:06.153' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3633, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 13:42:44.330' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3634, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-90''', CAST(N'2017-05-15 13:42:55.383' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3635, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-15 13:45:02.733' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3636, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 13:45:32.510' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3637, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 13:52:17.240' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3638, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 13:57:25.357' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3639, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 14:04:56.237' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3640, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 14:05:46.037' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3641, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-90''', CAST(N'2017-05-15 14:05:55.833' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3642, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 14:31:15.567' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3643, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 14:32:41.877' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3644, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 14:41:05.087' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3645, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-90''', CAST(N'2017-05-15 14:41:19.477' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3646, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-92''', CAST(N'2017-05-15 14:41:54.160' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3647, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-93''', CAST(N'2017-05-15 14:42:20.697' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3648, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-94''', CAST(N'2017-05-15 14:43:03.823' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3649, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-95''', CAST(N'2017-05-15 14:45:14.077' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3650, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-96''', CAST(N'2017-05-15 14:46:01.100' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3651, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-97''', CAST(N'2017-05-15 14:46:40.440' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3652, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-98''', CAST(N'2017-05-15 14:47:26.013' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3653, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-99''', CAST(N'2017-05-15 14:48:00.073' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3654, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-100''', CAST(N'2017-05-15 14:52:13.403' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3655, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-15 14:53:52.113' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3656, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 14:54:25.450' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3657, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 14:57:59.430' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3658, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-101''', CAST(N'2017-05-15 14:58:18.353' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3659, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 15:01:08.163' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3660, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 15:38:30.950' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3661, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 15:40:46.913' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3662, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 15:48:27.310' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3663, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 15:50:53.667' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (3664, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 15:58:24.150' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (4664, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 16:18:11.370' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (4665, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 16:20:36.663' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (4666, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 16:24:39.363' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (4667, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 16:30:35.487' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (4668, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 16:32:28.933' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (4669, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 16:35:35.413' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (4670, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 16:40:38.100' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (4671, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 16:42:52.800' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (4672, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 16:43:53.970' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5664, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 16:51:10.170' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5665, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 16:54:34.770' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5666, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-15 16:54:42.690' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5667, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 16:54:45.513' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5668, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 16:57:17.870' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5669, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 17:04:03.657' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5670, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-15 17:04:36.513' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5671, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 17:09:25.637' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5672, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 17:21:08.243' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5673, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 18:11:58.477' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5674, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 18:13:48.120' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5675, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 18:16:26.277' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5676, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 18:28:31.167' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5677, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 18:31:52.973' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5678, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 18:33:34.380' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5679, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-111''', CAST(N'2017-05-15 18:34:19.837' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5680, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 18:36:37.283' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5681, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-15 18:41:28.140' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5682, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 09:19:02.537' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5683, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 09:22:01.633' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5684, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-112''', CAST(N'2017-05-16 09:27:40.827' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5685, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-16 09:36:13.623' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5686, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 09:37:50.013' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5687, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-1''', CAST(N'2017-05-16 09:39:26.333' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5688, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-16 09:41:23.493' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5689, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 09:42:33.303' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5690, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 09:46:00.630' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5691, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 09:58:28.713' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5692, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 10:03:16.260' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5693, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 10:27:10.993' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5694, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 10:39:05.933' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5695, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 10:43:24.837' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5696, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 10:47:47.497' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5697, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-1          ''', CAST(N'2017-05-16 10:48:58.603' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5698, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 10:50:29.510' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5699, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 10:54:02.840' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5700, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 10:57:17.610' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5701, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 10:59:08.427' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5702, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 11:07:53.413' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5703, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 11:12:54.623' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5704, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 11:15:16.717' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5705, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 11:17:37.580' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5706, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 11:19:37.883' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5707, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 11:30:05.707' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5708, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 11:34:39.123' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5709, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-3''', CAST(N'2017-05-16 11:35:46.297' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5710, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 11:38:09.773' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5711, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-3          ''', CAST(N'2017-05-16 11:39:47.863' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5712, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 11:42:17.060' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5713, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-3          ''', CAST(N'2017-05-16 11:42:41.767' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5714, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 11:45:30.373' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5715, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-3          ''', CAST(N'2017-05-16 11:45:44.683' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5716, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-3          ''', CAST(N'2017-05-16 11:53:33.570' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5717, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-4''', CAST(N'2017-05-16 11:54:36.770' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5718, N'sa                                                                                                  ', N'added the new restaurant pos record having bill no. ''#28''', CAST(N'2017-05-16 11:55:35.890' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5719, N'sa                                                                                                  ', N'added the new restaurant pos record having bill no. ''#29''', CAST(N'2017-05-16 11:56:01.450' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5720, N'sa                                                                                                  ', N'added the new restaurant pos record having bill no. ''#30''', CAST(N'2017-05-16 11:56:20.907' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5721, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 11:59:30.500' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5722, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 12:02:05.593' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5723, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-8''', CAST(N'2017-05-16 12:02:25.580' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5724, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-8          ''', CAST(N'2017-05-16 12:04:22.133' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5725, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 12:06:40.860' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5726, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-9''', CAST(N'2017-05-16 12:07:39.100' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5727, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-9          ''', CAST(N'2017-05-16 12:08:12.690' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5728, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-9          ''', CAST(N'2017-05-16 12:09:17.610' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5729, N'sa                                                                                                  ', N'added the new restaurant pos record having bill no. ''#31''', CAST(N'2017-05-16 12:10:47.573' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5730, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 12:17:38.833' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5731, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 12:22:01.697' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5732, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 12:23:09.650' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5733, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-9''', CAST(N'2017-05-16 12:23:57.397' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5734, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 12:53:50.373' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5735, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-8          ''', CAST(N'2017-05-16 12:54:44.470' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5736, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 13:02:47.677' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5737, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-8          ''', CAST(N'2017-05-16 13:03:23.167' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5738, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-9          ''', CAST(N'2017-05-16 13:06:41.533' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5739, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-16 13:18:49.257' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5740, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 13:18:52.347' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5741, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-10''', CAST(N'2017-05-16 13:19:11.810' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5742, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-9          ''', CAST(N'2017-05-16 13:19:31.540' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5743, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-9          ''', CAST(N'2017-05-16 13:19:53.273' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5744, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-9          ''', CAST(N'2017-05-16 13:20:00.887' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5745, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-8          ''', CAST(N'2017-05-16 13:20:21.330' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5746, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-8          ''', CAST(N'2017-05-16 13:20:25.653' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5747, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 13:23:40.523' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5748, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 13:32:02.033' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5749, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 14:09:14.143' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5750, N'sa                                                                                                  ', N'deleted the restaurant pos record having bill no. ''9''', CAST(N'2017-05-16 14:09:46.600' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5751, N'sa                                                                                                  ', N'deleted the restaurant pos record having bill no. ''18''', CAST(N'2017-05-16 14:10:14.943' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5752, N'sa                                                                                                  ', N'deleted the restaurant pos record having bill no. ''17''', CAST(N'2017-05-16 14:10:46.267' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5753, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 14:13:15.550' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5754, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-10         ''', CAST(N'2017-05-16 14:13:31.510' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5755, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-10         ''', CAST(N'2017-05-16 14:13:39.603' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5756, N'sa                                                                                                  ', N'deleted the restaurant pos record having bill no. ''5''', CAST(N'2017-05-16 14:16:05.240' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5757, N'sa                                                                                                  ', N'deleted the restaurant pos record having bill no. ''5''', CAST(N'2017-05-16 14:16:27.823' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5758, N'sa                                                                                                  ', N'deleted the restaurant pos record having bill no. ''14''', CAST(N'2017-05-16 14:16:50.420' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (5759, N'sa                                                                                                  ', N'added the new restaurant pos record having bill no. ''#29''', CAST(N'2017-05-16 14:17:42.643' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6738, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 15:27:51.463' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6739, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 15:30:45.863' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6740, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-15''', CAST(N'2017-05-16 15:31:00.683' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6741, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-16 15:32:11.517' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6742, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 15:37:42.637' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6743, N'sa                                                                                                  ', N'added the new restaurant pos record having bill no. ''#30''', CAST(N'2017-05-16 15:38:12.620' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6744, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 15:39:37.697' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6745, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-1''', CAST(N'2017-05-16 15:40:08.733' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6746, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-2''', CAST(N'2017-05-16 15:40:16.020' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6747, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 15:46:22.107' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6748, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 15:56:45.727' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6749, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-16 15:57:25.790' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6750, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 15:59:36.727' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6751, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 16:02:56.697' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6752, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 16:08:00.543' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6753, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 16:10:41.503' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6754, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-16 16:13:35.493' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6755, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 16:17:45.323' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6756, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 16:27:41.597' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6757, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-16 16:32:12.547' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6758, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 16:35:55.700' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6759, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 17:09:00.230' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6760, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-2          ''', CAST(N'2017-05-16 17:09:25.617' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6761, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-1          ''', CAST(N'2017-05-16 17:09:38.863' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6762, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-3''', CAST(N'2017-05-16 17:09:59.570' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6763, N'sa                                                                                                  ', N'deleted the restaurant pos record having bill no. ''15''', CAST(N'2017-05-16 17:13:26.343' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6764, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-16 17:52:11.693' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6765, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 18:11:25.790' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6766, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 18:13:50.060' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6767, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-2          ''', CAST(N'2017-05-16 18:16:07.013' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6768, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 18:20:03.187' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6769, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-2          ''', CAST(N'2017-05-16 18:31:37.823' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6770, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-3          ''', CAST(N'2017-05-16 18:32:18.913' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6771, N'sa                                                                                                  ', N'added the new restaurant pos record having ticket no. ''KOT-3          ''', CAST(N'2017-05-16 18:32:31.577' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6772, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-16 18:33:00.713' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6773, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 19:33:42.327' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6774, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-16 19:36:01.753' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6775, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 19:36:04.080' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6776, N'sa                                                                                                  ', N'added the new Expense ''20''', CAST(N'2017-05-16 19:42:51.853' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6777, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-16 19:45:40.960' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6778, N'Cashier                                                                                             ', N'Successfully logged in', CAST(N'2017-05-16 19:45:43.597' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6779, N'Cashier                                                                                             ', N'Successfully logged out', CAST(N'2017-05-16 19:46:03.813' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6780, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 19:46:05.920' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6781, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-16 19:47:36.663' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6782, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 19:47:39.037' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6783, N'sa                                                                                                  ', N'Successfully logged out', CAST(N'2017-05-16 19:48:35.573' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6784, N'sa                                                                                                  ', N'Successfully logged in', CAST(N'2017-05-16 19:48:37.960' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6785, N'sa                                                                                                  ', N'Updated the others setting info', CAST(N'2017-05-16 19:50:08.517' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [UserID], [Operation], [Date]) VALUES (6786, N'sa                                                                                                  ', N'Updated the Kitchen/section ''shubham''', CAST(N'2017-05-16 19:50:19.467' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Logs] OFF
GO
INSERT [dbo].[Member] ([MemberID], [Name], [ContactNo], [Address], [RegistrationDate], [Active]) VALUES (100001, N'san                                                                                                                                                                                                     ', N'7396154636                                        ', N'madhapur', CAST(N'2017-04-20 18:25:28.877' AS DateTime), N'Yes       ')
GO
INSERT [dbo].[Member] ([MemberID], [Name], [ContactNo], [Address], [RegistrationDate], [Active]) VALUES (100002, N'yatesh                                                                                                                                                                                                  ', N'909656478                                         ', N'h.no 32', CAST(N'2017-04-29 15:38:28.980' AS DateTime), N'Yes       ')
GO
INSERT [dbo].[MemberLedger] ([Id], [Date], [LedgerNo], [Label], [Debit], [Credit], [MemberID]) VALUES (1, CAST(N'2017-04-29 15:39:13.000' AS DateTime), N'1                                                 ', N'Added the fund in Member''s Account                                                                                                                                                                      ', CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 100002)
GO
SET IDENTITY_INSERT [dbo].[OtherSetting] ON 

GO
INSERT [dbo].[OtherSetting] ([ID], [ParcelCharges], [HomeDeliveryCharges], [CashDrawer], [VAT], [ServiceTax], [ServiceCharges], [TA], [HD], [EB], [KG]) VALUES (1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'Disabled            ', CAST(14.50 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'Yes       ', N'Yes       ', N'Yes       ', N'Yes       ')
GO
SET IDENTITY_INSERT [dbo].[OtherSetting] OFF
GO
SET IDENTITY_INSERT [dbo].[PosPrinterSetting] ON 

GO
INSERT [dbo].[PosPrinterSetting] ([Id], [PrinterName], [PrinterType], [IsEnabled]) VALUES (2, N'Microsoft XPS Document Writer', N'Ticket Printer                                                                                      ', N'Yes                 ')
GO
INSERT [dbo].[PosPrinterSetting] ([Id], [PrinterName], [PrinterType], [IsEnabled]) VALUES (3, N'Microsoft XPS Document Writer', N'Invoice Printer                                                                                     ', N'Yes                 ')
GO
SET IDENTITY_INSERT [dbo].[PosPrinterSetting] OFF
GO
INSERT [dbo].[R_Table] ([TableNo], [Status], [BkColor]) VALUES (N'1                             ', N'Activate                      ', -65536)
GO
INSERT [dbo].[R_Table] ([TableNo], [Status], [BkColor]) VALUES (N'2                             ', N'Activate                      ', -65536)
GO
INSERT [dbo].[R_Table] ([TableNo], [Status], [BkColor]) VALUES (N'3                             ', N'Activate                      ', -65536)
GO
INSERT [dbo].[R_Table] ([TableNo], [Status], [BkColor]) VALUES (N'4                             ', N'Activate                      ', -7278960)
GO
INSERT [dbo].[R_Table] ([TableNo], [Status], [BkColor]) VALUES (N'5                             ', N'Activate                      ', -7278960)
GO
INSERT [dbo].[R_Table] ([TableNo], [Status], [BkColor]) VALUES (N'6                             ', N'Activate                      ', -7278960)
GO
INSERT [dbo].[R_Table] ([TableNo], [Status], [BkColor]) VALUES (N'7                             ', N'Activate                      ', -7278960)
GO
INSERT [dbo].[R_Table] ([TableNo], [Status], [BkColor]) VALUES (N'8                             ', N'Activate                      ', -7278960)
GO
INSERT [dbo].[R_Table] ([TableNo], [Status], [BkColor]) VALUES (N'9                             ', N'Activate                      ', -7278960)
GO
INSERT [dbo].[Registration] ([UserID], [UserType], [Password], [Name], [ContactNo], [EmailID], [JoiningDate], [Active]) VALUES (N'admin                                                                                               ', N'Admin                         ', N'NjgxMg==                                          ', N'Amit Singh                                                                                                                                            ', N'9727762216                                        ', N'amit.singh@gmail.com                                                                                                                                  ', CAST(N'2017-01-13 02:41:58.250' AS DateTime), N'Yes       ')
GO
INSERT [dbo].[Registration] ([UserID], [UserType], [Password], [Name], [ContactNo], [EmailID], [JoiningDate], [Active]) VALUES (N'Cashier                                                                                             ', N'Cashier                       ', N'Mzg2MQ==                                          ', N'Cashier                                                                                                                                               ', N'9727762216                                        ', N'info@caramelit.com                                                                                                                                    ', CAST(N'2016-07-15 12:58:16.207' AS DateTime), N'Yes       ')
GO
INSERT [dbo].[Registration] ([UserID], [UserType], [Password], [Name], [ContactNo], [EmailID], [JoiningDate], [Active]) VALUES (N'Rahul                                                                                               ', N'Waiter                        ', N'ODg4OA==                                          ', N'Rahul Singh                                                                                                                                           ', N'9727762216                                        ', N'                                                                                                                                                      ', CAST(N'2016-07-08 06:40:57.723' AS DateTime), N'Yes       ')
GO
INSERT [dbo].[Registration] ([UserID], [UserType], [Password], [Name], [ContactNo], [EmailID], [JoiningDate], [Active]) VALUES (N'sa                                                                                                  ', N'Super Admin                   ', N'MTIzNA==                                          ', N'Jatin Zalavadiya                                                                                                                                      ', N'9727762216                                        ', N'yakshjatin@gmail.com                                                                                                                                  ', CAST(N'2016-04-10 17:50:33.363' AS DateTime), N'Yes       ')
GO
INSERT [dbo].[RestaurantPOS_BillingInfoEB] ([Id], [BillNo], [BillDate], [EBDiscountPer], [GrandTotal], [Cash], [Change], [Operator], [PaymentMode], [BillNote], [ExchangeRate], [CurrencyCode], [EB_Status], [DiscountReason], [Member_ID]) VALUES (1, N'#1             ', CAST(N'2017-04-21 14:06:30.270' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(970.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), N'sa                                                                                                  ', N'Cash                                              ', N'', CAST(1.00 AS Decimal(18, 2)), N'INR       ', N'Paid                ', N'                                                                                                                                                                                                        ', N'          ')
GO
INSERT [dbo].[RestaurantPOS_BillingInfoEB] ([Id], [BillNo], [BillDate], [EBDiscountPer], [GrandTotal], [Cash], [Change], [Operator], [PaymentMode], [BillNote], [ExchangeRate], [CurrencyCode], [EB_Status], [DiscountReason], [Member_ID]) VALUES (2, N'#2             ', CAST(N'2017-05-05 18:06:29.203' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(144.60 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'sa                                                                                                  ', N'Cash                                              ', N'', CAST(1.00 AS Decimal(18, 2)), N'INR       ', N'Unpaid              ', N'                                                                                                                                                                                                        ', N'          ')
GO
INSERT [dbo].[RestaurantPOS_BillingInfoHD] ([Id], [BillNo], [BillDate], [Operator], [SubTotal], [HDDiscountPer], [HomeDeliveryCharges], [GrandTotal], [CustomerName], [Address], [ContactNo], [Employee_ID], [PaymentMode], [BillNote], [DiscountReason], [Member_ID]) VALUES (1, N'#1             ', CAST(N'2017-05-13 15:07:17.090' AS DateTime), N'sa                                                                                                  ', CAST(210.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(210.00 AS Decimal(18, 2)), N'gdfg                                                                                                                                                                                                    ', N'nj', N'njbjb                                             ', 1, N'Cash                                              ', N'', N'                                                                                                                                                                                                        ', N'          ')
GO
INSERT [dbo].[RestaurantPOS_BillingInfoKOT] ([Id], [BillNo], [BillDate], [KOTDiscountPer], [GrandTotal], [Cash], [Change], [Operator], [PaymentMode], [ExchangeRate], [CurrencyCode], [DiscountReason], [Member_ID]) VALUES (11, N'#11            ', CAST(N'2017-05-09 19:57:51.520' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(313.30 AS Decimal(18, 2)), CAST(313.30 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'sa                                                                                                  ', N'Credit Card                                                                                         ', CAST(1.00 AS Decimal(18, 2)), N'INR       ', N'                                                                                                                                                                                                        ', N'          ')
GO
INSERT [dbo].[RestaurantPOS_BillingInfoKOT] ([Id], [BillNo], [BillDate], [KOTDiscountPer], [GrandTotal], [Cash], [Change], [Operator], [PaymentMode], [ExchangeRate], [CurrencyCode], [DiscountReason], [Member_ID]) VALUES (12, N'#12            ', CAST(N'2017-05-11 14:32:52.140' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(204.85 AS Decimal(18, 2)), CAST(204.85 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'sa                                                                                                  ', N'Credit Card                                                                                         ', CAST(1.00 AS Decimal(18, 2)), N'INR       ', N'                                                                                                                                                                                                        ', N'          ')
GO
INSERT [dbo].[RestaurantPOS_BillingInfoKOT] ([Id], [BillNo], [BillDate], [KOTDiscountPer], [GrandTotal], [Cash], [Change], [Operator], [PaymentMode], [ExchangeRate], [CurrencyCode], [DiscountReason], [Member_ID]) VALUES (13, N'#13            ', CAST(N'2017-05-11 15:27:52.853' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(5786.22 AS Decimal(18, 2)), CAST(5786.22 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'sa                                                                                                  ', N'Credit Card                                                                                         ', CAST(1.00 AS Decimal(18, 2)), N'INR       ', N'                                                                                                                                                                                                        ', N'          ')
GO
INSERT [dbo].[RestaurantPOS_BillingInfoKOT] ([Id], [BillNo], [BillDate], [KOTDiscountPer], [GrandTotal], [Cash], [Change], [Operator], [PaymentMode], [ExchangeRate], [CurrencyCode], [DiscountReason], [Member_ID]) VALUES (15, N'#15            ', CAST(N'2017-05-11 15:32:01.947' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(1452.02 AS Decimal(18, 2)), CAST(1452.02 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'sa                                                                                                  ', N'Credit Card                                                                                         ', CAST(1.00 AS Decimal(18, 2)), N'INR       ', N'                                                                                                                                                                                                        ', N'          ')
GO
INSERT [dbo].[RestaurantPOS_BillingInfoKOT] ([Id], [BillNo], [BillDate], [KOTDiscountPer], [GrandTotal], [Cash], [Change], [Operator], [PaymentMode], [ExchangeRate], [CurrencyCode], [DiscountReason], [Member_ID]) VALUES (19, N'#19            ', CAST(N'2017-05-13 17:51:32.447' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(482.00 AS Decimal(18, 2)), CAST(482.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'sa                                                                                                  ', N'Credit Card                                                                                         ', CAST(1.00 AS Decimal(18, 2)), N'INR       ', N'                                                                                                                                                                                                        ', N'          ')
GO
INSERT [dbo].[RestaurantPOS_BillingInfoKOT] ([Id], [BillNo], [BillDate], [KOTDiscountPer], [GrandTotal], [Cash], [Change], [Operator], [PaymentMode], [ExchangeRate], [CurrencyCode], [DiscountReason], [Member_ID]) VALUES (20, N'#20            ', CAST(N'2017-05-13 17:54:36.550' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(58161.20 AS Decimal(18, 2)), CAST(58161.20 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'sa                                                                                                  ', N'Credit Card                                                                                         ', CAST(1.00 AS Decimal(18, 2)), N'INR       ', N'                                                                                                                                                                                                        ', N'          ')
GO
INSERT [dbo].[RestaurantPOS_BillingInfoKOT] ([Id], [BillNo], [BillDate], [KOTDiscountPer], [GrandTotal], [Cash], [Change], [Operator], [PaymentMode], [ExchangeRate], [CurrencyCode], [DiscountReason], [Member_ID]) VALUES (22, N'#22            ', CAST(N'2017-05-13 17:59:08.533' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(90.38 AS Decimal(18, 2)), CAST(90.38 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'sa                                                                                                  ', N'Credit Card                                                                                         ', CAST(1.00 AS Decimal(18, 2)), N'INR       ', N'                                                                                                                                                                                                        ', N'          ')
GO
INSERT [dbo].[RestaurantPOS_BillingInfoKOT] ([Id], [BillNo], [BillDate], [KOTDiscountPer], [GrandTotal], [Cash], [Change], [Operator], [PaymentMode], [ExchangeRate], [CurrencyCode], [DiscountReason], [Member_ID]) VALUES (23, N'#23            ', CAST(N'2017-05-13 18:00:45.390' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(578.40 AS Decimal(18, 2)), CAST(578.40 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'sa                                                                                                  ', N'Credit Card                                                                                         ', CAST(1.00 AS Decimal(18, 2)), N'INR       ', N'                                                                                                                                                                                                        ', N'          ')
GO
INSERT [dbo].[RestaurantPOS_BillingInfoKOT] ([Id], [BillNo], [BillDate], [KOTDiscountPer], [GrandTotal], [Cash], [Change], [Operator], [PaymentMode], [ExchangeRate], [CurrencyCode], [DiscountReason], [Member_ID]) VALUES (24, N'#24            ', CAST(N'2017-05-13 18:13:21.340' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(994.12 AS Decimal(18, 2)), CAST(994.12 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'sa                                                                                                  ', N'Credit Card                                                                                         ', CAST(1.00 AS Decimal(18, 2)), N'INR       ', N'                                                                                                                                                                                                        ', N'          ')
GO
INSERT [dbo].[RestaurantPOS_BillingInfoKOT] ([Id], [BillNo], [BillDate], [KOTDiscountPer], [GrandTotal], [Cash], [Change], [Operator], [PaymentMode], [ExchangeRate], [CurrencyCode], [DiscountReason], [Member_ID]) VALUES (25, N'#25            ', CAST(N'2017-05-14 09:47:58.900' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(879.65 AS Decimal(18, 2)), CAST(879.65 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'sa                                                                                                  ', N'Credit Card                                                                                         ', CAST(1.00 AS Decimal(18, 2)), N'INR       ', N'                                                                                                                                                                                                        ', N'          ')
GO
INSERT [dbo].[RestaurantPOS_BillingInfoKOT] ([Id], [BillNo], [BillDate], [KOTDiscountPer], [GrandTotal], [Cash], [Change], [Operator], [PaymentMode], [ExchangeRate], [CurrencyCode], [DiscountReason], [Member_ID]) VALUES (26, N'#26            ', CAST(N'2017-05-14 09:49:38.507' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(2096.70 AS Decimal(18, 2)), CAST(2096.70 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'sa                                                                                                  ', N'Credit Card                                                                                         ', CAST(1.00 AS Decimal(18, 2)), N'INR       ', N'                                                                                                                                                                                                        ', N'          ')
GO
INSERT [dbo].[RestaurantPOS_BillingInfoKOT] ([Id], [BillNo], [BillDate], [KOTDiscountPer], [GrandTotal], [Cash], [Change], [Operator], [PaymentMode], [ExchangeRate], [CurrencyCode], [DiscountReason], [Member_ID]) VALUES (27, N'#27            ', CAST(N'2017-05-15 11:43:16.313' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(30927.30 AS Decimal(18, 2)), CAST(30927.30 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'sa                                                                                                  ', N'Credit Card                                                                                         ', CAST(1.00 AS Decimal(18, 2)), N'INR       ', N'                                                                                                                                                                                                        ', N'          ')
GO
INSERT [dbo].[RestaurantPOS_BillingInfoKOT] ([Id], [BillNo], [BillDate], [KOTDiscountPer], [GrandTotal], [Cash], [Change], [Operator], [PaymentMode], [ExchangeRate], [CurrencyCode], [DiscountReason], [Member_ID]) VALUES (28, N'#28            ', CAST(N'2017-05-16 11:55:35.837' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(590.45 AS Decimal(18, 2)), CAST(590.45 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'sa                                                                                                  ', N'Credit Card                                                                                         ', CAST(1.00 AS Decimal(18, 2)), N'INR       ', N'                                                                                                                                                                                                        ', N'          ')
GO
INSERT [dbo].[RestaurantPOS_BillingInfoKOT] ([Id], [BillNo], [BillDate], [KOTDiscountPer], [GrandTotal], [Cash], [Change], [Operator], [PaymentMode], [ExchangeRate], [CurrencyCode], [DiscountReason], [Member_ID]) VALUES (29, N'#29            ', CAST(N'2017-05-16 14:17:42.533' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(2602.80 AS Decimal(18, 2)), CAST(2602.80 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'sa                                                                                                  ', N'Credit Card                                                                                         ', CAST(1.00 AS Decimal(18, 2)), N'INR       ', N'                                                                                                                                                                                                        ', N'          ')
GO
INSERT [dbo].[RestaurantPOS_BillingInfoTA] ([Id], [BillNo], [BillDate], [SubTotal], [TADiscountPer], [ParcelCharges], [GrandTotal], [Cash], [Change], [Operator], [PaymentMode], [BillNote], [ExchangeRate], [CurrencyCode], [DiscountReason], [Member_ID]) VALUES (1, N'#1             ', CAST(N'2017-04-21 13:29:40.960' AS DateTime), CAST(480.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(490.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), N'sa                                                                                                  ', N'Cash                                              ', N'', CAST(1.00 AS Decimal(18, 2)), N'INR       ', N'                                                                                                                                                                                                        ', N'          ')
GO
INSERT [dbo].[RestaurantPOS_BillingInfoTA] ([Id], [BillNo], [BillDate], [SubTotal], [TADiscountPer], [ParcelCharges], [GrandTotal], [Cash], [Change], [Operator], [PaymentMode], [BillNote], [ExchangeRate], [CurrencyCode], [DiscountReason], [Member_ID]) VALUES (2, N'#2             ', CAST(N'2017-05-09 20:10:15.390' AS DateTime), CAST(277.15 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(277.15 AS Decimal(18, 2)), CAST(277.15 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'sa                                                                                                  ', N'Credit Card                                       ', N'', CAST(1.00 AS Decimal(18, 2)), N'INR       ', N'                                                                                                                                                                                                        ', N'          ')
GO
SET IDENTITY_INSERT [dbo].[RestaurantPOS_OrderedProductBillEB] ON 

GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillEB] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [Notes]) VALUES (1, 1, N'Chicken Curry B/E', CAST(240.00 AS Decimal(18, 2)), 1, CAST(240.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(240.00 AS Decimal(18, 2)), N'')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillEB] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [Notes]) VALUES (2, 1, N'Chicken Koshapuri', CAST(240.00 AS Decimal(18, 2)), 1, CAST(240.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(240.00 AS Decimal(18, 2)), N'')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillEB] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [Notes]) VALUES (3, 1, N'Kadai Chicken', CAST(240.00 AS Decimal(18, 2)), 1, CAST(240.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(240.00 AS Decimal(18, 2)), N'')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillEB] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [Notes]) VALUES (4, 1, N'Kadai Mutton', CAST(250.00 AS Decimal(18, 2)), 1, CAST(250.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), N'')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillEB] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [Notes]) VALUES (5, 2, N'Fruit Salad With Ice-Cream', CAST(120.00 AS Decimal(18, 2)), 1, CAST(120.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(17.40 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(7.20 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(144.60 AS Decimal(18, 2)), N'')
GO
SET IDENTITY_INSERT [dbo].[RestaurantPOS_OrderedProductBillEB] OFF
GO
SET IDENTITY_INSERT [dbo].[RestaurantPOS_OrderedProductBillHD] ON 

GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillHD] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [Notes]) VALUES (1, 1, N'Chicken SSS', CAST(210.00 AS Decimal(18, 2)), 1, CAST(210.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(210.00 AS Decimal(18, 2)), N'')
GO
SET IDENTITY_INSERT [dbo].[RestaurantPOS_OrderedProductBillHD] OFF
GO
SET IDENTITY_INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ON 

GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (1044, 11, N'Bommidalu pulusu', CAST(260.00 AS Decimal(18, 2)), 1, CAST(260.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(37.70 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(15.60 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(313.30 AS Decimal(18, 2)), N'2                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (1045, 12, N'Curd', CAST(25.00 AS Decimal(18, 2)), 2, CAST(50.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(7.25 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(60.25 AS Decimal(18, 2)), N'2                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (1046, 12, N'Fruit Salad With Ice-Cream', CAST(120.00 AS Decimal(18, 2)), 1, CAST(120.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(17.40 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(7.20 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(144.60 AS Decimal(18, 2)), N'2                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (1047, 13, N'Capcicum Masala', CAST(140.00 AS Decimal(18, 2)), 1, CAST(140.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(20.30 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(8.40 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(168.70 AS Decimal(18, 2)), N'1                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (1048, 13, N'Cashew Panner', CAST(230.00 AS Decimal(18, 2)), 1, CAST(230.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(33.35 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(13.80 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(277.15 AS Decimal(18, 2)), N'1                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (1049, 13, N'Curd', CAST(25.00 AS Decimal(18, 2)), 1, CAST(25.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(3.62 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(1.50 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(30.12 AS Decimal(18, 2)), N'1                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (1050, 13, N'Fruit Salad', CAST(80.00 AS Decimal(18, 2)), 1, CAST(80.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(11.60 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(4.80 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(96.40 AS Decimal(18, 2)), N'1                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (1051, 13, N'Fruit Salad With Ice-Cream', CAST(120.00 AS Decimal(18, 2)), 1, CAST(120.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(17.40 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(7.20 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(144.60 AS Decimal(18, 2)), N'1                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (1052, 13, N'Ice-Cream', CAST(120.00 AS Decimal(18, 2)), 1, CAST(120.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(17.40 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(7.20 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(144.60 AS Decimal(18, 2)), N'1                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (1053, 13, N'Malai Kolta', CAST(220.00 AS Decimal(18, 2)), 1, CAST(220.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(31.90 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(13.20 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(265.10 AS Decimal(18, 2)), N'1                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (1054, 13, N'Bommidalu pulusu', CAST(260.00 AS Decimal(18, 2)), 1, CAST(260.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(37.70 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(15.60 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(313.30 AS Decimal(18, 2)), N'2                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (1055, 13, N'Chicken Fry (With Bones)', CAST(230.00 AS Decimal(18, 2)), 1, CAST(230.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(33.35 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(13.80 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(277.15 AS Decimal(18, 2)), N'2                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (1056, 13, N'Chicken Maveltic', CAST(220.00 AS Decimal(18, 2)), 1, CAST(220.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(220.00 AS Decimal(18, 2)), N'2                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (1057, 13, N'Chicken SSS', CAST(210.00 AS Decimal(18, 2)), 1, CAST(210.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(210.00 AS Decimal(18, 2)), N'2                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (1058, 13, N'Country Chicken Curry', CAST(240.00 AS Decimal(18, 2)), 1, CAST(240.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(34.80 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(14.40 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(289.20 AS Decimal(18, 2)), N'2                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (1059, 13, N'Chicken Fry (With Bones)', CAST(230.00 AS Decimal(18, 2)), 2, CAST(460.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(66.70 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(27.60 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(554.30 AS Decimal(18, 2)), N'3                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (1060, 13, N'Chicken Gongura', CAST(240.00 AS Decimal(18, 2)), 2, CAST(480.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(69.60 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(28.80 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(578.40 AS Decimal(18, 2)), N'3                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (1061, 13, N'Country Chicken Curry', CAST(240.00 AS Decimal(18, 2)), 2, CAST(480.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(69.60 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(28.80 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(578.40 AS Decimal(18, 2)), N'3                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (1062, 13, N'Fish Pulusu', CAST(250.00 AS Decimal(18, 2)), 1, CAST(250.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(36.25 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(301.25 AS Decimal(18, 2)), N'3                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (1063, 13, N'Gabs Curry', CAST(260.00 AS Decimal(18, 2)), 2, CAST(520.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(75.40 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(31.20 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(626.60 AS Decimal(18, 2)), N'3                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (1064, 13, N'Capcicum Masala', CAST(140.00 AS Decimal(18, 2)), 1, CAST(140.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(20.30 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(8.40 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(168.70 AS Decimal(18, 2)), N'6                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (1065, 13, N'Cashew Masala', CAST(220.00 AS Decimal(18, 2)), 1, CAST(220.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(31.90 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(13.20 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(265.10 AS Decimal(18, 2)), N'6                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (1066, 13, N'Cashew Panner', CAST(230.00 AS Decimal(18, 2)), 1, CAST(230.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(33.35 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(13.80 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(277.15 AS Decimal(18, 2)), N'6                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (1071, 15, N'Capcicum Masala', CAST(140.00 AS Decimal(18, 2)), 1, CAST(140.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(20.30 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(8.40 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(168.70 AS Decimal(18, 2)), N'1                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (1072, 15, N'Cashew Panner', CAST(230.00 AS Decimal(18, 2)), 1, CAST(230.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(33.35 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(13.80 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(277.15 AS Decimal(18, 2)), N'1                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (1073, 15, N'Curd', CAST(25.00 AS Decimal(18, 2)), 1, CAST(25.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(3.62 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(1.50 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(30.12 AS Decimal(18, 2)), N'1                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (1074, 15, N'Fruit Salad With Ice-Cream', CAST(120.00 AS Decimal(18, 2)), 1, CAST(120.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(17.40 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(7.20 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(144.60 AS Decimal(18, 2)), N'1                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (1075, 15, N'Capcicum Masala', CAST(140.00 AS Decimal(18, 2)), 1, CAST(140.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(20.30 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(8.40 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(168.70 AS Decimal(18, 2)), N'2                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (1076, 15, N'Cashew Masala', CAST(220.00 AS Decimal(18, 2)), 1, CAST(220.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(31.90 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(13.20 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(265.10 AS Decimal(18, 2)), N'2                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (1077, 15, N'Cashew Panner', CAST(230.00 AS Decimal(18, 2)), 1, CAST(230.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(33.35 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(13.80 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(277.15 AS Decimal(18, 2)), N'2                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (1078, 15, N'Dal Fry', CAST(100.00 AS Decimal(18, 2)), 1, CAST(100.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(120.50 AS Decimal(18, 2)), N'2                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (2073, 19, N'Malai Kolta', CAST(220.00 AS Decimal(18, 2)), 1, CAST(220.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(31.90 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(13.20 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(265.10 AS Decimal(18, 2)), N'7                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (2074, 19, N'Mixed Veg Curry', CAST(180.00 AS Decimal(18, 2)), 1, CAST(180.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(26.10 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(10.80 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(216.90 AS Decimal(18, 2)), N'7                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (2075, 20, N'Chicken Lolypop', CAST(210.00 AS Decimal(18, 2)), 32, CAST(6720.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(6720.00 AS Decimal(18, 2)), N'1                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (2076, 20, N'Chicken Maveltic', CAST(220.00 AS Decimal(18, 2)), 32, CAST(7040.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(7040.00 AS Decimal(18, 2)), N'1                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (2077, 20, N'Chicken SSS', CAST(210.00 AS Decimal(18, 2)), 32, CAST(6720.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(6720.00 AS Decimal(18, 2)), N'1                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (2078, 20, N'Chilli Chicken', CAST(190.00 AS Decimal(18, 2)), 4, CAST(760.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(760.00 AS Decimal(18, 2)), N'1                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (2079, 20, N'Fish Pulusu', CAST(250.00 AS Decimal(18, 2)), 16, CAST(4000.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(580.00 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(240.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(4820.00 AS Decimal(18, 2)), N'1                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (2080, 20, N'Gabs Curry', CAST(260.00 AS Decimal(18, 2)), 64, CAST(16640.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(2412.80 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(998.40 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(20051.20 AS Decimal(18, 2)), N'1                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (2081, 20, N'Mutton Curry Bk', CAST(250.00 AS Decimal(18, 2)), 8, CAST(2000.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(290.00 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(2410.00 AS Decimal(18, 2)), N'1                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (2082, 20, N'Mutton Fry Bk', CAST(250.00 AS Decimal(18, 2)), 32, CAST(8000.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(1160.00 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(480.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(9640.00 AS Decimal(18, 2)), N'1                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (2101, 22, N'Curd', CAST(25.00 AS Decimal(18, 2)), 3, CAST(75.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(10.88 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(4.50 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(90.38 AS Decimal(18, 2)), N'2                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (2102, 23, N'Fruit Salad', CAST(80.00 AS Decimal(18, 2)), 6, CAST(480.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(69.60 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(28.80 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(578.40 AS Decimal(18, 2)), N'2                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (2103, 24, N'Curd', CAST(25.00 AS Decimal(18, 2)), 1, CAST(25.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(3.62 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(1.50 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(30.12 AS Decimal(18, 2)), N'1                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (2104, 24, N'Fruit Salad', CAST(80.00 AS Decimal(18, 2)), 1, CAST(80.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(11.60 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(4.80 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(96.40 AS Decimal(18, 2)), N'1                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (2105, 24, N'Fruit Salad With Ice-Cream', CAST(120.00 AS Decimal(18, 2)), 6, CAST(720.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(104.40 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(43.20 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(867.60 AS Decimal(18, 2)), N'2                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (2106, 25, N'Chicken Fry (With Bones)', CAST(230.00 AS Decimal(18, 2)), 1, CAST(230.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(33.35 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(13.80 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(277.15 AS Decimal(18, 2)), N'2                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (2107, 25, N'Country Chicken Curry', CAST(240.00 AS Decimal(18, 2)), 1, CAST(240.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(34.80 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(14.40 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(289.20 AS Decimal(18, 2)), N'2                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (2108, 25, N'Gabs Curry', CAST(260.00 AS Decimal(18, 2)), 1, CAST(260.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(37.70 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(15.60 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(313.30 AS Decimal(18, 2)), N'2                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (2109, 26, N'Country Chicken Curry', CAST(240.00 AS Decimal(18, 2)), 3, CAST(720.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(104.40 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(43.20 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(867.60 AS Decimal(18, 2)), N'1                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (2110, 26, N'Gabs Curry', CAST(260.00 AS Decimal(18, 2)), 2, CAST(520.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(75.40 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(31.20 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(626.60 AS Decimal(18, 2)), N'1                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (2111, 26, N'Mutton Curry Bk', CAST(250.00 AS Decimal(18, 2)), 2, CAST(500.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(72.50 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(602.50 AS Decimal(18, 2)), N'1                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (2112, 27, N'Country Chicken Curry', CAST(240.00 AS Decimal(18, 2)), 2, CAST(480.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(69.60 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(28.80 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(578.40 AS Decimal(18, 2)), N'1                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (2113, 27, N'Gongura Prwans', CAST(250.00 AS Decimal(18, 2)), 1, CAST(250.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(36.25 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(301.25 AS Decimal(18, 2)), N'1                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (2114, 27, N'Country Chicken Curry', CAST(240.00 AS Decimal(18, 2)), 1, CAST(240.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(34.80 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(14.40 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(289.20 AS Decimal(18, 2)), N'2                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (2115, 27, N'Gabs Curry', CAST(260.00 AS Decimal(18, 2)), 2, CAST(520.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(75.40 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(31.20 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(626.60 AS Decimal(18, 2)), N'2                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (2116, 27, N'Country Chicken Curry', CAST(240.00 AS Decimal(18, 2)), 1, CAST(240.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(34.80 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(14.40 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(289.20 AS Decimal(18, 2)), N'3                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (2117, 27, N'Gongura Mutton', CAST(250.00 AS Decimal(18, 2)), 1, CAST(250.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(36.25 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(301.25 AS Decimal(18, 2)), N'3                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (2118, 27, N'Bommidalu pulusu', CAST(260.00 AS Decimal(18, 2)), 2, CAST(520.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(75.40 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(31.20 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(626.60 AS Decimal(18, 2)), N'4                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (2119, 27, N'Chicken Fry (With Bones)', CAST(230.00 AS Decimal(18, 2)), 2, CAST(460.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(66.70 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(27.60 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(554.30 AS Decimal(18, 2)), N'4                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (2120, 27, N'Country Chicken Curry', CAST(240.00 AS Decimal(18, 2)), 91, CAST(21840.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(3166.80 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(1310.40 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(26317.20 AS Decimal(18, 2)), N'4                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (2121, 27, N'Gabs Curry', CAST(260.00 AS Decimal(18, 2)), 1, CAST(260.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(37.70 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(15.60 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(313.30 AS Decimal(18, 2)), N'4                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (2122, 27, N'Chicken Koshapuri', CAST(240.00 AS Decimal(18, 2)), 1, CAST(240.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(240.00 AS Decimal(18, 2)), N'5                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (2123, 27, N'Chicken Tikka Masala', CAST(250.00 AS Decimal(18, 2)), 1, CAST(250.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), N'5                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (2124, 27, N'Kadai Chicken', CAST(240.00 AS Decimal(18, 2)), 1, CAST(240.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(240.00 AS Decimal(18, 2)), N'5                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (2125, 28, N'Country Chicken Curry', CAST(240.00 AS Decimal(18, 2)), 1, CAST(240.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(34.80 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(14.40 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(289.20 AS Decimal(18, 2)), N'1                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (2126, 28, N'Fish Pulusu', CAST(250.00 AS Decimal(18, 2)), 1, CAST(250.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(36.25 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(301.25 AS Decimal(18, 2)), N'1                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (2134, 29, N'Cashew Panner', CAST(230.00 AS Decimal(18, 2)), 1, CAST(230.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(33.35 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(13.80 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(277.15 AS Decimal(18, 2)), N'1                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (2135, 29, N'Chicken Fry (With Bones)', CAST(230.00 AS Decimal(18, 2)), 1, CAST(230.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(33.35 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(13.80 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(277.15 AS Decimal(18, 2)), N'1                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (2136, 29, N'Chicken Gongura', CAST(240.00 AS Decimal(18, 2)), 1, CAST(240.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(34.80 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(14.40 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(289.20 AS Decimal(18, 2)), N'1                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (2137, 29, N'Country Chicken Curry', CAST(240.00 AS Decimal(18, 2)), 1, CAST(240.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(34.80 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(14.40 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(289.20 AS Decimal(18, 2)), N'1                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (2138, 29, N'Chicken Fry (With Bones)', CAST(230.00 AS Decimal(18, 2)), 1, CAST(230.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(33.35 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(13.80 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(277.15 AS Decimal(18, 2)), N'2                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (2139, 29, N'Fish Pulusu', CAST(250.00 AS Decimal(18, 2)), 1, CAST(250.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(36.25 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(301.25 AS Decimal(18, 2)), N'2                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (2140, 29, N'Bommidalu pulusu', CAST(260.00 AS Decimal(18, 2)), 1, CAST(260.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(37.70 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(15.60 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(313.30 AS Decimal(18, 2)), N'3                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (2141, 29, N'Chicken Fry (With Bones)', CAST(230.00 AS Decimal(18, 2)), 1, CAST(230.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(33.35 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(13.80 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(277.15 AS Decimal(18, 2)), N'3                             ')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [TableNo]) VALUES (2142, 29, N'Gongura Mutton', CAST(250.00 AS Decimal(18, 2)), 1, CAST(250.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(36.25 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(301.25 AS Decimal(18, 2)), N'3                             ')
GO
SET IDENTITY_INSERT [dbo].[RestaurantPOS_OrderedProductBillKOT] OFF
GO
SET IDENTITY_INSERT [dbo].[RestaurantPOS_OrderedProductBillTA] ON 

GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillTA] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [Notes]) VALUES (1, 1, N'Capcicum Masala', CAST(140.00 AS Decimal(18, 2)), 1, CAST(140.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(140.00 AS Decimal(18, 2)), N'')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillTA] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [Notes]) VALUES (2, 1, N'Cashew Masala', CAST(220.00 AS Decimal(18, 2)), 1, CAST(220.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(220.00 AS Decimal(18, 2)), N'')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillTA] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [Notes]) VALUES (3, 1, N'Fruit Salad With Ice-Cream', CAST(120.00 AS Decimal(18, 2)), 1, CAST(120.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), N'')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductBillTA] ([OP_ID], [BillID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [Notes]) VALUES (4, 2, N'Cashew Panner', CAST(230.00 AS Decimal(18, 2)), 1, CAST(230.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(33.35 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(13.80 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(277.15 AS Decimal(18, 2)), N'')
GO
SET IDENTITY_INSERT [dbo].[RestaurantPOS_OrderedProductBillTA] OFF
GO
SET IDENTITY_INSERT [dbo].[RestaurantPOS_OrderedProductKOT] ON 

GO
INSERT [dbo].[RestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [Notes]) VALUES (1, 1, N'Country Chicken Curry', CAST(240.00 AS Decimal(18, 2)), 1, CAST(240.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(14.40 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(34.80 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(289.20 AS Decimal(18, 2)), N'')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [Notes]) VALUES (5, 3, N'Fish Pulusu', CAST(250.00 AS Decimal(18, 2)), 1, CAST(250.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(36.25 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(301.25 AS Decimal(18, 2)), N'')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [Notes]) VALUES (8, 4, N'Country Chicken Curry', CAST(240.00 AS Decimal(18, 2)), 1, CAST(240.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(34.80 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(14.40 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(289.20 AS Decimal(18, 2)), N'')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [Notes]) VALUES (9, 4, N'Gabs Curry', CAST(260.00 AS Decimal(18, 2)), 2, CAST(520.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(75.40 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(31.20 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(626.60 AS Decimal(18, 2)), N'')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [Notes]) VALUES (10, 8, N'Chicken Fry (With Bones)', CAST(230.00 AS Decimal(18, 2)), 1, CAST(230.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(13.80 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(33.35 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(277.15 AS Decimal(18, 2)), N'')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [Notes]) VALUES (11, 8, N'Chicken Gongura', CAST(240.00 AS Decimal(18, 2)), 1, CAST(240.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(14.40 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(34.80 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(289.20 AS Decimal(18, 2)), N'')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [Notes]) VALUES (12, 8, N'Country Chicken Curry', CAST(240.00 AS Decimal(18, 2)), 1, CAST(240.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(14.40 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(34.80 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(289.20 AS Decimal(18, 2)), N'')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [Notes]) VALUES (14, 9, N'Chicken Fry (With Bones)', CAST(230.00 AS Decimal(18, 2)), 1, CAST(230.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(13.80 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(33.35 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(277.15 AS Decimal(18, 2)), N'')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [Notes]) VALUES (18, 9, N'Fish Pulusu', CAST(250.00 AS Decimal(18, 2)), 1, CAST(250.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(36.25 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(301.25 AS Decimal(18, 2)), N'')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [Notes]) VALUES (19, 10, N'Bommidalu pulusu', CAST(260.00 AS Decimal(18, 2)), 1, CAST(260.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(15.60 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(37.70 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(313.30 AS Decimal(18, 2)), N'')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [Notes]) VALUES (20, 10, N'Chicken Fry (With Bones)', CAST(230.00 AS Decimal(18, 2)), 1, CAST(230.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(13.80 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(33.35 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(277.15 AS Decimal(18, 2)), N'')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [Notes]) VALUES (21, 8, N'Cashew Panner', CAST(230.00 AS Decimal(18, 2)), 1, CAST(230.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(13.80 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(33.35 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(277.15 AS Decimal(18, 2)), N'')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [Notes]) VALUES (23, 10, N'Gongura Mutton', CAST(250.00 AS Decimal(18, 2)), 1, CAST(250.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(36.25 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(301.25 AS Decimal(18, 2)), N'')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [Notes]) VALUES (1019, 15, N'Country Chicken Curry', CAST(240.00 AS Decimal(18, 2)), 1, CAST(240.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(34.80 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(14.40 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(289.20 AS Decimal(18, 2)), N'')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [Notes]) VALUES (1020, 15, N'Fish Pulusu', CAST(250.00 AS Decimal(18, 2)), 1, CAST(250.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(36.25 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(301.25 AS Decimal(18, 2)), N'')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [Notes]) VALUES (1021, 15, N'Gabs Curry', CAST(260.00 AS Decimal(18, 2)), 1, CAST(260.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(37.70 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(15.60 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(313.30 AS Decimal(18, 2)), N'')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [Notes]) VALUES (1022, 15, N'Gongura Prwans', CAST(250.00 AS Decimal(18, 2)), 1, CAST(250.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(36.25 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(301.25 AS Decimal(18, 2)), N'')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [Notes]) VALUES (1023, 1, N'Cashew Panner', CAST(230.00 AS Decimal(18, 2)), 1, CAST(230.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(13.80 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(33.35 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(277.15 AS Decimal(18, 2)), N'')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [Notes]) VALUES (1024, 1, N'Malai Kolta', CAST(220.00 AS Decimal(18, 2)), 1, CAST(220.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(13.20 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(31.90 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(265.10 AS Decimal(18, 2)), N'')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [Notes]) VALUES (1026, 2, N'Cashew Masala', CAST(220.00 AS Decimal(18, 2)), 1, CAST(220.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(13.20 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(31.90 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(265.10 AS Decimal(18, 2)), N'')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [Notes]) VALUES (1027, 2, N'Cashew Panner', CAST(230.00 AS Decimal(18, 2)), 1, CAST(230.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(13.80 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(33.35 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(277.15 AS Decimal(18, 2)), N'')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [Notes]) VALUES (1028, 2, N'Country Chicken Curry', CAST(240.00 AS Decimal(18, 2)), 1, CAST(240.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(14.40 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(34.80 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(289.20 AS Decimal(18, 2)), N'')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [Notes]) VALUES (1029, 2, N'Fish Pulusu', CAST(250.00 AS Decimal(18, 2)), 1, CAST(250.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(36.25 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(301.25 AS Decimal(18, 2)), N'')
GO
INSERT [dbo].[RestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [Notes]) VALUES (1030, 3, N'Chicken Gongura', CAST(240.00 AS Decimal(18, 2)), 1, CAST(240.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(14.40 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(34.80 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(289.20 AS Decimal(18, 2)), N'')
GO
SET IDENTITY_INSERT [dbo].[RestaurantPOS_OrderedProductKOT] OFF
GO
SET IDENTITY_INSERT [dbo].[RestaurantPOS_OrderInfoKOT] ON 

GO
INSERT [dbo].[RestaurantPOS_OrderInfoKOT] ([ID], [TicketNo], [BillDate], [GrandTotal], [TableNo], [Operator], [GroupName], [TicketNote]) VALUES (1, N'               ', CAST(N'2017-05-16 15:40:08.647' AS DateTime), CAST(831.45 AS Decimal(18, 2)), N'3                             ', N'sa                                                                                                  ', N'                                                                                                                                                                                                        ', N'')
GO
INSERT [dbo].[RestaurantPOS_OrderInfoKOT] ([ID], [TicketNo], [BillDate], [GrandTotal], [TableNo], [Operator], [GroupName], [TicketNote]) VALUES (2, N'               ', CAST(N'2017-05-16 15:40:15.990' AS DateTime), CAST(1409.85 AS Decimal(18, 2)), N'1                             ', N'sa                                                                                                  ', N'                                                                                                                                                                                                        ', N'')
GO
INSERT [dbo].[RestaurantPOS_OrderInfoKOT] ([ID], [TicketNo], [BillDate], [GrandTotal], [TableNo], [Operator], [GroupName], [TicketNote]) VALUES (3, N'               ', CAST(N'2017-05-16 17:09:59.537' AS DateTime), CAST(590.45 AS Decimal(18, 2)), N'2                             ', N'sa                                                                                                  ', N'                                                                                                                                                                                                        ', N'')
GO
INSERT [dbo].[RestaurantPOS_OrderInfoKOT] ([ID], [TicketNo], [BillDate], [GrandTotal], [TableNo], [Operator], [GroupName], [TicketNote]) VALUES (4, N'               ', CAST(N'2017-05-16 18:12:08.837' AS DateTime), CAST(1409.85 AS Decimal(18, 2)), N'1                             ', N'sa                                                                                                  ', N'                                                                                                                                                                                                        ', N'')
GO
INSERT [dbo].[RestaurantPOS_OrderInfoKOT] ([ID], [TicketNo], [BillDate], [GrandTotal], [TableNo], [Operator], [GroupName], [TicketNote]) VALUES (5, N'               ', CAST(N'2017-05-16 18:14:56.770' AS DateTime), CAST(1409.85 AS Decimal(18, 2)), N'1                             ', N'sa                                                                                                  ', N'                                                                                                                                                                                                        ', N'')
GO
INSERT [dbo].[RestaurantPOS_OrderInfoKOT] ([ID], [TicketNo], [BillDate], [GrandTotal], [TableNo], [Operator], [GroupName], [TicketNote]) VALUES (6, N'KOT-2          ', CAST(N'2017-05-16 18:31:32.997' AS DateTime), CAST(1409.85 AS Decimal(18, 2)), N'1                             ', N'sa                                                                                                  ', N'                                                                                                                                                                                                        ', N'')
GO
INSERT [dbo].[RestaurantPOS_OrderInfoKOT] ([ID], [TicketNo], [BillDate], [GrandTotal], [TableNo], [Operator], [GroupName], [TicketNote]) VALUES (7, N'               ', CAST(N'2017-05-16 18:31:58.340' AS DateTime), CAST(590.45 AS Decimal(18, 2)), N'2                             ', N'sa                                                                                                  ', N'                                                                                                                                                                                                        ', N'')
GO
SET IDENTITY_INSERT [dbo].[RestaurantPOS_OrderInfoKOT] OFF
GO
SET IDENTITY_INSERT [dbo].[TempRestaurantPOS_OrderedProductKOT] ON 

GO
INSERT [dbo].[TempRestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [T_Number]) VALUES (1, 1, N'Country Chicken Curry', CAST(240.00 AS Decimal(18, 2)), 1, CAST(240.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(34.80 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(14.40 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(289.20 AS Decimal(18, 2)), N'1                             ')
GO
INSERT [dbo].[TempRestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [T_Number]) VALUES (5, 3, N'Fish Pulusu', CAST(250.00 AS Decimal(18, 2)), 1, CAST(250.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(36.25 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(301.25 AS Decimal(18, 2)), N'2                             ')
GO
INSERT [dbo].[TempRestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [T_Number]) VALUES (8, 4, N'Country Chicken Curry', CAST(240.00 AS Decimal(18, 2)), 1, CAST(240.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(34.80 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(14.40 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(289.20 AS Decimal(18, 2)), N'3                             ')
GO
INSERT [dbo].[TempRestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [T_Number]) VALUES (9, 4, N'Gabs Curry', CAST(260.00 AS Decimal(18, 2)), 2, CAST(520.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(75.40 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(31.20 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(626.60 AS Decimal(18, 2)), N'3                             ')
GO
INSERT [dbo].[TempRestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [T_Number]) VALUES (10, 8, N'Chicken Fry (With Bones)', CAST(230.00 AS Decimal(18, 2)), 1, CAST(230.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(33.35 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(13.80 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(277.15 AS Decimal(18, 2)), N'1                             ')
GO
INSERT [dbo].[TempRestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [T_Number]) VALUES (11, 8, N'Chicken Gongura', CAST(240.00 AS Decimal(18, 2)), 1, CAST(240.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(34.80 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(14.40 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(289.20 AS Decimal(18, 2)), N'1                             ')
GO
INSERT [dbo].[TempRestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [T_Number]) VALUES (12, 8, N'Country Chicken Curry', CAST(240.00 AS Decimal(18, 2)), 1, CAST(240.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(34.80 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(14.40 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(289.20 AS Decimal(18, 2)), N'1                             ')
GO
INSERT [dbo].[TempRestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [T_Number]) VALUES (14, 9, N'Chicken Fry (With Bones)', CAST(230.00 AS Decimal(18, 2)), 1, CAST(230.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(33.35 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(13.80 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(277.15 AS Decimal(18, 2)), N'2                             ')
GO
INSERT [dbo].[TempRestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [T_Number]) VALUES (18, 9, N'Fish Pulusu', CAST(250.00 AS Decimal(18, 2)), 1, CAST(250.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(36.25 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(301.25 AS Decimal(18, 2)), N'2                             ')
GO
INSERT [dbo].[TempRestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [T_Number]) VALUES (19, 10, N'Bommidalu pulusu', CAST(260.00 AS Decimal(18, 2)), 1, CAST(260.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(37.70 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(15.60 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(313.30 AS Decimal(18, 2)), N'3                             ')
GO
INSERT [dbo].[TempRestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [T_Number]) VALUES (20, 10, N'Chicken Fry (With Bones)', CAST(230.00 AS Decimal(18, 2)), 1, CAST(230.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(33.35 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(13.80 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(277.15 AS Decimal(18, 2)), N'3                             ')
GO
INSERT [dbo].[TempRestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [T_Number]) VALUES (21, 8, N'Cashew Panner', CAST(230.00 AS Decimal(18, 2)), 1, CAST(230.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(33.35 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(13.80 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(277.15 AS Decimal(18, 2)), N'1                             ')
GO
INSERT [dbo].[TempRestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [T_Number]) VALUES (23, 10, N'Gongura Mutton', CAST(250.00 AS Decimal(18, 2)), 1, CAST(250.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(36.25 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(301.25 AS Decimal(18, 2)), N'3                             ')
GO
INSERT [dbo].[TempRestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [T_Number]) VALUES (1019, 15, N'Country Chicken Curry', CAST(240.00 AS Decimal(18, 2)), 1, CAST(240.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(34.80 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(14.40 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(289.20 AS Decimal(18, 2)), N'1                             ')
GO
INSERT [dbo].[TempRestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [T_Number]) VALUES (1020, 15, N'Fish Pulusu', CAST(250.00 AS Decimal(18, 2)), 1, CAST(250.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(36.25 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(301.25 AS Decimal(18, 2)), N'1                             ')
GO
INSERT [dbo].[TempRestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [T_Number]) VALUES (1021, 15, N'Gabs Curry', CAST(260.00 AS Decimal(18, 2)), 1, CAST(260.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(37.70 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(15.60 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(313.30 AS Decimal(18, 2)), N'1                             ')
GO
INSERT [dbo].[TempRestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [T_Number]) VALUES (1022, 15, N'Gongura Prwans', CAST(250.00 AS Decimal(18, 2)), 1, CAST(250.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(36.25 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(301.25 AS Decimal(18, 2)), N'1                             ')
GO
INSERT [dbo].[TempRestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [T_Number]) VALUES (1023, 1, N'Cashew Panner', CAST(230.00 AS Decimal(18, 2)), 1, CAST(230.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(33.35 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(13.80 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(277.15 AS Decimal(18, 2)), N'3                             ')
GO
INSERT [dbo].[TempRestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [T_Number]) VALUES (1024, 1, N'Malai Kolta', CAST(220.00 AS Decimal(18, 2)), 1, CAST(220.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(31.90 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(13.20 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(265.10 AS Decimal(18, 2)), N'3                             ')
GO
INSERT [dbo].[TempRestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [T_Number]) VALUES (1026, 2, N'Cashew Masala', CAST(220.00 AS Decimal(18, 2)), 1, CAST(220.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(31.90 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(13.20 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(265.10 AS Decimal(18, 2)), N'1                             ')
GO
INSERT [dbo].[TempRestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [T_Number]) VALUES (1027, 2, N'Cashew Panner', CAST(230.00 AS Decimal(18, 2)), 1, CAST(230.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(33.35 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(13.80 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(277.15 AS Decimal(18, 2)), N'1                             ')
GO
INSERT [dbo].[TempRestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [T_Number]) VALUES (1028, 2, N'Country Chicken Curry', CAST(240.00 AS Decimal(18, 2)), 1, CAST(240.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(34.80 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(14.40 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(289.20 AS Decimal(18, 2)), N'1                             ')
GO
INSERT [dbo].[TempRestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [T_Number]) VALUES (1029, 2, N'Fish Pulusu', CAST(250.00 AS Decimal(18, 2)), 1, CAST(250.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(36.25 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(301.25 AS Decimal(18, 2)), N'1                             ')
GO
INSERT [dbo].[TempRestaurantPOS_OrderedProductKOT] ([OP_ID], [TicketID], [Dish], [Rate], [Quantity], [Amount], [VATPer], [VATAmount], [STPer], [STAmount], [SCPer], [SCAmount], [DiscountPer], [DiscountAmount], [TotalAmount], [T_Number]) VALUES (1030, 3, N'Chicken Gongura', CAST(240.00 AS Decimal(18, 2)), 1, CAST(240.00 AS Decimal(18, 2)), CAST(14.50 AS Decimal(18, 2)), CAST(34.80 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(14.40 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(289.20 AS Decimal(18, 2)), N'2                             ')
GO
SET IDENTITY_INSERT [dbo].[TempRestaurantPOS_OrderedProductKOT] OFF
GO
INSERT [dbo].[TempRestaurantPOS_OrderInfoKOT] ([Id], [TicketNo], [BillDate], [GrandTotal], [TableNo], [GroupName], [Operator], [TicketNote]) VALUES (1, N'KOT-1          ', CAST(N'2017-05-16 15:40:08.690' AS DateTime), CAST(831.45 AS Decimal(18, 2)), N'3                             ', N'                                                                                                                                                                                                        ', N'sa                                                                                                  ', N' ')
GO
INSERT [dbo].[TempRestaurantPOS_OrderInfoKOT] ([Id], [TicketNo], [BillDate], [GrandTotal], [TableNo], [GroupName], [Operator], [TicketNote]) VALUES (2, N'KOT-2          ', CAST(N'2017-05-16 15:40:15.997' AS DateTime), CAST(1409.85 AS Decimal(18, 2)), N'1                             ', N'                                                                                                                                                                                                        ', N'sa                                                                                                  ', N' ')
GO
INSERT [dbo].[TempRestaurantPOS_OrderInfoKOT] ([Id], [TicketNo], [BillDate], [GrandTotal], [TableNo], [GroupName], [Operator], [TicketNote]) VALUES (3, N'KOT-3          ', CAST(N'2017-05-16 17:09:59.553' AS DateTime), CAST(590.45 AS Decimal(18, 2)), N'2                             ', N'                                                                                                                                                                                                        ', N'sa                                                                                                  ', N' ')
GO
INSERT [dbo].[Wallet] ([WalletType]) VALUES (N'paytym                                                                                                                                                                                                  ')
GO
INSERT [dbo].[Warehouse] ([WarehouseName], [Address], [WarehouseType], [City]) VALUES (N'shu                                                                                                                                                                                                                                                       ', N'sdf', N'Store                                                                                                                                                                                                   ', N'sdf                                                                                                                                                                                                     ')
GO
INSERT [dbo].[WarehouseType] ([Type]) VALUES (N'Store                                                                                                                                                                                                   ')
GO
INSERT [dbo].[WorkPeriodEnd] ([Id], [WPEnd]) VALUES (1, CAST(N'2017-04-25 09:52:41.517' AS DateTime))
GO
INSERT [dbo].[WorkPeriodEnd] ([Id], [WPEnd]) VALUES (2, CAST(N'2017-04-25 10:04:00.337' AS DateTime))
GO
INSERT [dbo].[WorkPeriodEnd] ([Id], [WPEnd]) VALUES (3, CAST(N'2017-04-29 15:07:52.457' AS DateTime))
GO
INSERT [dbo].[WorkPeriodEnd] ([Id], [WPEnd]) VALUES (4, CAST(N'2017-05-05 16:09:55.727' AS DateTime))
GO
INSERT [dbo].[WorkPeriodEnd] ([Id], [WPEnd]) VALUES (5, CAST(N'2017-05-09 19:56:41.427' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[WorkPeriodStart] ON 

GO
INSERT [dbo].[WorkPeriodStart] ([ID], [WPStart], [Status]) VALUES (1, CAST(N'2017-04-21 13:28:30.807' AS DateTime), N'Inactive            ')
GO
INSERT [dbo].[WorkPeriodStart] ([ID], [WPStart], [Status]) VALUES (2, CAST(N'2017-04-25 09:52:48.643' AS DateTime), N'Inactive            ')
GO
INSERT [dbo].[WorkPeriodStart] ([ID], [WPStart], [Status]) VALUES (3, CAST(N'2017-04-29 15:05:29.450' AS DateTime), N'Inactive            ')
GO
INSERT [dbo].[WorkPeriodStart] ([ID], [WPStart], [Status]) VALUES (4, CAST(N'2017-04-29 15:17:08.763' AS DateTime), N'Inactive            ')
GO
INSERT [dbo].[WorkPeriodStart] ([ID], [WPStart], [Status]) VALUES (5, CAST(N'2017-05-05 18:02:07.980' AS DateTime), N'Inactive            ')
GO
INSERT [dbo].[WorkPeriodStart] ([ID], [WPStart], [Status]) VALUES (6, CAST(N'2017-05-09 19:56:48.353' AS DateTime), N'Active              ')
GO
SET IDENTITY_INSERT [dbo].[WorkPeriodStart] OFF
GO
ALTER TABLE [dbo].[Temp_Stock_RM] ADD  CONSTRAINT [DF_Temp_Stock_RM_Qty]  DEFAULT ((0)) FOR [Qty]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([CustomerId])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Customer]
GO
ALTER TABLE [dbo].[Dish]  WITH CHECK ADD  CONSTRAINT [FK_Dish_Category] FOREIGN KEY([Category])
REFERENCES [dbo].[Category] ([CategoryName])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Dish] CHECK CONSTRAINT [FK_Dish_Category]
GO
ALTER TABLE [dbo].[Dish]  WITH CHECK ADD  CONSTRAINT [FK_Dish_Kitchen] FOREIGN KEY([Kitchen])
REFERENCES [dbo].[Kitchen] ([Kitchenname])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Dish] CHECK CONSTRAINT [FK_Dish_Kitchen]
GO
ALTER TABLE [dbo].[Expense]  WITH CHECK ADD  CONSTRAINT [FK_Expense_ExpenseType] FOREIGN KEY([ExpenseType])
REFERENCES [dbo].[ExpenseType] ([Type])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Expense] CHECK CONSTRAINT [FK_Expense_ExpenseType]
GO
ALTER TABLE [dbo].[Logs]  WITH CHECK ADD  CONSTRAINT [FK_Logs_Registration] FOREIGN KEY([UserID])
REFERENCES [dbo].[Registration] ([UserID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Logs] CHECK CONSTRAINT [FK_Logs_Registration]
GO
ALTER TABLE [dbo].[MemberLedger]  WITH CHECK ADD  CONSTRAINT [FK_MemberLedger_Member] FOREIGN KEY([MemberID])
REFERENCES [dbo].[Member] ([MemberID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[MemberLedger] CHECK CONSTRAINT [FK_MemberLedger_Member]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_Supplier] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Supplier] ([ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_Supplier]
GO
ALTER TABLE [dbo].[Product_OpeningStock]  WITH CHECK ADD  CONSTRAINT [FK_Product_OpeningStock_Product1] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([PID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product_OpeningStock] CHECK CONSTRAINT [FK_Product_OpeningStock_Product1]
GO
ALTER TABLE [dbo].[Product_OpeningStock]  WITH CHECK ADD  CONSTRAINT [FK_Product_OpeningStock_Warehouse] FOREIGN KEY([Warehouse])
REFERENCES [dbo].[Warehouse] ([WarehouseName])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Product_OpeningStock] CHECK CONSTRAINT [FK_Product_OpeningStock_Warehouse]
GO
ALTER TABLE [dbo].[Purchase]  WITH CHECK ADD  CONSTRAINT [FK_Purchase_Supplier] FOREIGN KEY([Supplier_ID])
REFERENCES [dbo].[Supplier] ([ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Purchase] CHECK CONSTRAINT [FK_Purchase_Supplier]
GO
ALTER TABLE [dbo].[Purchase_Join]  WITH CHECK ADD  CONSTRAINT [FK_Purchase_Join_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([PID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Purchase_Join] CHECK CONSTRAINT [FK_Purchase_Join_Product]
GO
ALTER TABLE [dbo].[Purchase_Join]  WITH CHECK ADD  CONSTRAINT [FK_Purchase_Join_Purchase] FOREIGN KEY([PurchaseID])
REFERENCES [dbo].[Purchase] ([ST_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Purchase_Join] CHECK CONSTRAINT [FK_Purchase_Join_Purchase]
GO
ALTER TABLE [dbo].[Purchase_Join]  WITH CHECK ADD  CONSTRAINT [FK_Purchase_Join_Warehouse] FOREIGN KEY([Warehouse])
REFERENCES [dbo].[Warehouse] ([WarehouseName])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Purchase_Join] CHECK CONSTRAINT [FK_Purchase_Join_Warehouse]
GO
ALTER TABLE [dbo].[Recipe]  WITH CHECK ADD  CONSTRAINT [FK_Recipe_Dish] FOREIGN KEY([Dish])
REFERENCES [dbo].[Dish] ([DishName])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Recipe] CHECK CONSTRAINT [FK_Recipe_Dish]
GO
ALTER TABLE [dbo].[Recipe_Join]  WITH CHECK ADD  CONSTRAINT [FK_Recipe_Join_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([PID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Recipe_Join] CHECK CONSTRAINT [FK_Recipe_Join_Product]
GO
ALTER TABLE [dbo].[Recipe_Join]  WITH CHECK ADD  CONSTRAINT [FK_Recipe_Join_Recipe] FOREIGN KEY([RecipeID])
REFERENCES [dbo].[Recipe] ([R_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Recipe_Join] CHECK CONSTRAINT [FK_Recipe_Join_Recipe]
GO
ALTER TABLE [dbo].[RestaurantPOS_BillingInfoEB]  WITH CHECK ADD  CONSTRAINT [FK_RestaurantPOS_BillingInfoEB_Registration] FOREIGN KEY([Operator])
REFERENCES [dbo].[Registration] ([UserID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[RestaurantPOS_BillingInfoEB] CHECK CONSTRAINT [FK_RestaurantPOS_BillingInfoEB_Registration]
GO
ALTER TABLE [dbo].[RestaurantPOS_BillingInfoHD]  WITH CHECK ADD  CONSTRAINT [FK_RestaurantPOS_BillingInfoHD_EmployeeRegistration] FOREIGN KEY([Employee_ID])
REFERENCES [dbo].[EmployeeRegistration] ([EmpId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[RestaurantPOS_BillingInfoHD] CHECK CONSTRAINT [FK_RestaurantPOS_BillingInfoHD_EmployeeRegistration]
GO
ALTER TABLE [dbo].[RestaurantPOS_BillingInfoHD]  WITH CHECK ADD  CONSTRAINT [FK_RestaurantPOS_BillingInfoHD_Registration] FOREIGN KEY([Operator])
REFERENCES [dbo].[Registration] ([UserID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[RestaurantPOS_BillingInfoHD] CHECK CONSTRAINT [FK_RestaurantPOS_BillingInfoHD_Registration]
GO
ALTER TABLE [dbo].[RestaurantPOS_BillingInfoKOT]  WITH CHECK ADD  CONSTRAINT [FK_RestaurantPOS_BillingInfoKOT_Registration] FOREIGN KEY([Operator])
REFERENCES [dbo].[Registration] ([UserID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[RestaurantPOS_BillingInfoKOT] CHECK CONSTRAINT [FK_RestaurantPOS_BillingInfoKOT_Registration]
GO
ALTER TABLE [dbo].[RestaurantPOS_BillingInfoTA]  WITH CHECK ADD  CONSTRAINT [FK_RestaurantPOS_BillingInfoTA_Registration] FOREIGN KEY([Operator])
REFERENCES [dbo].[Registration] ([UserID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[RestaurantPOS_BillingInfoTA] CHECK CONSTRAINT [FK_RestaurantPOS_BillingInfoTA_Registration]
GO
ALTER TABLE [dbo].[RestaurantPOS_OrderedProductBillEB]  WITH CHECK ADD  CONSTRAINT [FK_RestaurantPOS_OrderedProductBillEB_Dish] FOREIGN KEY([Dish])
REFERENCES [dbo].[Dish] ([DishName])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[RestaurantPOS_OrderedProductBillEB] CHECK CONSTRAINT [FK_RestaurantPOS_OrderedProductBillEB_Dish]
GO
ALTER TABLE [dbo].[RestaurantPOS_OrderedProductBillEB]  WITH CHECK ADD  CONSTRAINT [FK_RestaurantPOS_OrderedProductBillEB_RestaurantPOS_BillingInfoEB] FOREIGN KEY([BillID])
REFERENCES [dbo].[RestaurantPOS_BillingInfoEB] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RestaurantPOS_OrderedProductBillEB] CHECK CONSTRAINT [FK_RestaurantPOS_OrderedProductBillEB_RestaurantPOS_BillingInfoEB]
GO
ALTER TABLE [dbo].[RestaurantPOS_OrderedProductBillHD]  WITH CHECK ADD  CONSTRAINT [FK_RestaurantPOS_OrderedProductBillHD_Dish] FOREIGN KEY([Dish])
REFERENCES [dbo].[Dish] ([DishName])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[RestaurantPOS_OrderedProductBillHD] CHECK CONSTRAINT [FK_RestaurantPOS_OrderedProductBillHD_Dish]
GO
ALTER TABLE [dbo].[RestaurantPOS_OrderedProductBillHD]  WITH CHECK ADD  CONSTRAINT [FK_RestaurantPOS_OrderedProductBillHD_RestaurantPOS_BillingInfoHD] FOREIGN KEY([BillID])
REFERENCES [dbo].[RestaurantPOS_BillingInfoHD] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RestaurantPOS_OrderedProductBillHD] CHECK CONSTRAINT [FK_RestaurantPOS_OrderedProductBillHD_RestaurantPOS_BillingInfoHD]
GO
ALTER TABLE [dbo].[RestaurantPOS_OrderedProductBillKOT]  WITH CHECK ADD  CONSTRAINT [FK_RestaurantPOS_OrderedProductBillKOT_Dish] FOREIGN KEY([Dish])
REFERENCES [dbo].[Dish] ([DishName])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[RestaurantPOS_OrderedProductBillKOT] CHECK CONSTRAINT [FK_RestaurantPOS_OrderedProductBillKOT_Dish]
GO
ALTER TABLE [dbo].[RestaurantPOS_OrderedProductBillKOT]  WITH CHECK ADD  CONSTRAINT [FK_RestaurantPOS_OrderedProductBillKOT_R_Table] FOREIGN KEY([TableNo])
REFERENCES [dbo].[R_Table] ([TableNo])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[RestaurantPOS_OrderedProductBillKOT] CHECK CONSTRAINT [FK_RestaurantPOS_OrderedProductBillKOT_R_Table]
GO
ALTER TABLE [dbo].[RestaurantPOS_OrderedProductBillKOT]  WITH CHECK ADD  CONSTRAINT [FK_RestaurantPOS_OrderedProductBillKOT_TempRestaurantPOS_OrderInfoKOT] FOREIGN KEY([BillID])
REFERENCES [dbo].[RestaurantPOS_BillingInfoKOT] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RestaurantPOS_OrderedProductBillKOT] CHECK CONSTRAINT [FK_RestaurantPOS_OrderedProductBillKOT_TempRestaurantPOS_OrderInfoKOT]
GO
ALTER TABLE [dbo].[RestaurantPOS_OrderedProductBillTA]  WITH CHECK ADD  CONSTRAINT [FK_RestaurantPOS_OrderedProductBillTA_Dish] FOREIGN KEY([Dish])
REFERENCES [dbo].[Dish] ([DishName])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[RestaurantPOS_OrderedProductBillTA] CHECK CONSTRAINT [FK_RestaurantPOS_OrderedProductBillTA_Dish]
GO
ALTER TABLE [dbo].[RestaurantPOS_OrderedProductBillTA]  WITH CHECK ADD  CONSTRAINT [FK_RestaurantPOS_OrderedProductBillTA_RestaurantPOS_BillingInfoTA] FOREIGN KEY([BillID])
REFERENCES [dbo].[RestaurantPOS_BillingInfoTA] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RestaurantPOS_OrderedProductBillTA] CHECK CONSTRAINT [FK_RestaurantPOS_OrderedProductBillTA_RestaurantPOS_BillingInfoTA]
GO
ALTER TABLE [dbo].[RestaurantPOS_OrderedProductKOT]  WITH CHECK ADD  CONSTRAINT [FK_RestaurantPOS_OrderedProductKOT_Dish] FOREIGN KEY([Dish])
REFERENCES [dbo].[Dish] ([DishName])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[RestaurantPOS_OrderedProductKOT] CHECK CONSTRAINT [FK_RestaurantPOS_OrderedProductKOT_Dish]
GO
ALTER TABLE [dbo].[RestaurantPOS_OrderInfoKOT]  WITH CHECK ADD  CONSTRAINT [FK_RestaurantPOS_OrderInfoKOT_R_Table] FOREIGN KEY([TableNo])
REFERENCES [dbo].[R_Table] ([TableNo])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[RestaurantPOS_OrderInfoKOT] CHECK CONSTRAINT [FK_RestaurantPOS_OrderInfoKOT_R_Table]
GO
ALTER TABLE [dbo].[RestaurantPOS_OrderInfoKOT]  WITH CHECK ADD  CONSTRAINT [FK_RestaurantPOS_OrderInfoKOT_Registration] FOREIGN KEY([Operator])
REFERENCES [dbo].[Registration] ([UserID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[RestaurantPOS_OrderInfoKOT] CHECK CONSTRAINT [FK_RestaurantPOS_OrderInfoKOT_Registration]
GO
ALTER TABLE [dbo].[Stock_Store_Join]  WITH CHECK ADD  CONSTRAINT [FK_Stock_Store_Join_Dish] FOREIGN KEY([Dish])
REFERENCES [dbo].[Dish] ([DishName])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Stock_Store_Join] CHECK CONSTRAINT [FK_Stock_Store_Join_Dish]
GO
ALTER TABLE [dbo].[Stock_Store_Join]  WITH CHECK ADD  CONSTRAINT [FK_Stock_Store_Join_Stock_Store] FOREIGN KEY([StockID])
REFERENCES [dbo].[Stock_Store] ([St_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Stock_Store_Join] CHECK CONSTRAINT [FK_Stock_Store_Join_Stock_Store]
GO
ALTER TABLE [dbo].[StockTransfer]  WITH CHECK ADD  CONSTRAINT [FK_StockTransfer_Kitchen] FOREIGN KEY([Kitchen])
REFERENCES [dbo].[Kitchen] ([Kitchenname])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[StockTransfer] CHECK CONSTRAINT [FK_StockTransfer_Kitchen]
GO
ALTER TABLE [dbo].[StockTransfer_Join]  WITH CHECK ADD  CONSTRAINT [FK_StockTransfer_Join_StockTransfer] FOREIGN KEY([StockTransferID])
REFERENCES [dbo].[StockTransfer] ([ST_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StockTransfer_Join] CHECK CONSTRAINT [FK_StockTransfer_Join_StockTransfer]
GO
ALTER TABLE [dbo].[StockTransfer_Join]  WITH CHECK ADD  CONSTRAINT [FK_StockTransfer_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([PID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[StockTransfer_Join] CHECK CONSTRAINT [FK_StockTransfer_Product]
GO
ALTER TABLE [dbo].[StockTransfer_Join]  WITH CHECK ADD  CONSTRAINT [FK_StockTransfer_Warehouse] FOREIGN KEY([Warehouse])
REFERENCES [dbo].[Warehouse] ([WarehouseName])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[StockTransfer_Join] CHECK CONSTRAINT [FK_StockTransfer_Warehouse]
GO
ALTER TABLE [dbo].[Temp_Stock]  WITH CHECK ADD  CONSTRAINT [FK_Temp_Stock_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([PID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Temp_Stock] CHECK CONSTRAINT [FK_Temp_Stock_Product]
GO
ALTER TABLE [dbo].[Temp_Stock]  WITH CHECK ADD  CONSTRAINT [FK_Temp_Stock_Warehouse] FOREIGN KEY([Warehouse])
REFERENCES [dbo].[Warehouse] ([WarehouseName])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Temp_Stock] CHECK CONSTRAINT [FK_Temp_Stock_Warehouse]
GO
ALTER TABLE [dbo].[Temp_Stock_RM]  WITH CHECK ADD  CONSTRAINT [FK_Temp_Stock_RM_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([PID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Temp_Stock_RM] CHECK CONSTRAINT [FK_Temp_Stock_RM_Product]
GO
ALTER TABLE [dbo].[Temp_Stock_Store]  WITH CHECK ADD  CONSTRAINT [FK_TempStock_Store_Dish] FOREIGN KEY([Dish])
REFERENCES [dbo].[Dish] ([DishName])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Temp_Stock_Store] CHECK CONSTRAINT [FK_TempStock_Store_Dish]
GO
ALTER TABLE [dbo].[TempRestaurantPOS_OrderedProductKOT]  WITH CHECK ADD  CONSTRAINT [FK_TempRestaurantPOS_OrderedProductKOT_Dish] FOREIGN KEY([Dish])
REFERENCES [dbo].[Dish] ([DishName])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[TempRestaurantPOS_OrderedProductKOT] CHECK CONSTRAINT [FK_TempRestaurantPOS_OrderedProductKOT_Dish]
GO
ALTER TABLE [dbo].[TempRestaurantPOS_OrderInfoKOT]  WITH CHECK ADD  CONSTRAINT [FK_TempRestaurantPOS_OrderInfoKOT_R_Table] FOREIGN KEY([TableNo])
REFERENCES [dbo].[R_Table] ([TableNo])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[TempRestaurantPOS_OrderInfoKOT] CHECK CONSTRAINT [FK_TempRestaurantPOS_OrderInfoKOT_R_Table]
GO
ALTER TABLE [dbo].[TempRestaurantPOS_OrderInfoKOT]  WITH CHECK ADD  CONSTRAINT [FK_TempRestaurantPOS_OrderInfoKOT_Registration] FOREIGN KEY([Operator])
REFERENCES [dbo].[Registration] ([UserID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TempRestaurantPOS_OrderInfoKOT] CHECK CONSTRAINT [FK_TempRestaurantPOS_OrderInfoKOT_Registration]
GO
ALTER TABLE [dbo].[TempRestaurantPOS_OrderInfoKOT]  WITH CHECK ADD  CONSTRAINT [FK_TempRestaurantPOS_OrderInfoKOT_TempRestaurantPOS_OrderInfoKOT] FOREIGN KEY([Id])
REFERENCES [dbo].[TempRestaurantPOS_OrderInfoKOT] ([Id])
GO
ALTER TABLE [dbo].[TempRestaurantPOS_OrderInfoKOT] CHECK CONSTRAINT [FK_TempRestaurantPOS_OrderInfoKOT_TempRestaurantPOS_OrderInfoKOT]
GO
ALTER TABLE [dbo].[Voucher_OtherDetails]  WITH CHECK ADD  CONSTRAINT [FK_Voucher_OtherDetails_Expense] FOREIGN KEY([Particulars])
REFERENCES [dbo].[Expense] ([ExpenseName])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Voucher_OtherDetails] CHECK CONSTRAINT [FK_Voucher_OtherDetails_Expense]
GO
ALTER TABLE [dbo].[Voucher_OtherDetails]  WITH CHECK ADD  CONSTRAINT [FK_Voucher_OtherDetails_Voucher] FOREIGN KEY([VoucherID])
REFERENCES [dbo].[Voucher] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Voucher_OtherDetails] CHECK CONSTRAINT [FK_Voucher_OtherDetails_Voucher]
GO
ALTER TABLE [dbo].[Warehouse]  WITH CHECK ADD  CONSTRAINT [FK_Warehouse_WarehouseType] FOREIGN KEY([WarehouseType])
REFERENCES [dbo].[WarehouseType] ([Type])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Warehouse] CHECK CONSTRAINT [FK_Warehouse_WarehouseType]
GO
ALTER TABLE [dbo].[WorkPeriodEnd]  WITH CHECK ADD  CONSTRAINT [FK_WorkPeriodEnd_WorkPeriodStart] FOREIGN KEY([Id])
REFERENCES [dbo].[WorkPeriodStart] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WorkPeriodEnd] CHECK CONSTRAINT [FK_WorkPeriodEnd_WorkPeriodStart]
GO
/****** Object:  StoredProcedure [dbo].[insertandupdateOrderedProductKOT]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[insertandupdateOrderedProductKOT]
 @ticketId             int   ,
 @d1                   nvarchar(250) ,
 @d2                  decimal(18,2),
 @d3                   int , 
 @d4                   decimal(18,2),
 @d5                   decimal(18,2) ,
 @d6                   decimal(18,2),
 @d7                   decimal(18,2),
 @d8                   decimal(18,2),
 @d9                   decimal(18,2),
 @d10                  decimal(18,2),
 @d11                  decimal(18,2),
 @d12                  decimal(18,2),
 @d13                  decimal(18,2),
 @d14                  nvarchar(max )=null
 as
 Begin
  set nocount on
  Declare @id int
  if Exists(select  1 from RestaurantPOS_OrderedProductKOT where TicketID=@ticketId and Dish=@d1)
  begin 
  select  @id=OP_ID from RestaurantPOS_OrderedProductKOT where TicketID=@ticketId and Dish=@d1
   update RestaurantPOS_OrderedProductKOT set TicketID = @ticketId ,Dish=@d1,Rate=@d2 ,Quantity=@d3 ,Amount=@d4 ,VATPer=@d5 ,
          VATAmount=@d6 ,STPer=@d7 ,STAmount =@d8 ,SCPer=@d9 ,SCAmount =@d10 , DiscountPer=@d11 ,DiscountAmount =@d12,
		  TotalAmount=@d13,Notes=@d14 where  OP_ID=@id
  end
  else
  Begin
   insert into RestaurantPOS_OrderedProductKOT(TicketID,Dish,Rate,Quantity,Amount,DiscountPer, DiscountAmount, STPer, STAmount, VATPer, VATAmount,SCPer,SCAmount,TotalAmount,Notes ) VALUES ( @ticketId ,@d1,@d2,@d3,@d4,@d5,@d6,@d7,@d8,@d9,@d10,@d11,@d12,@d13,@d14)
  End
end
GO
/****** Object:  StoredProcedure [dbo].[insertandupdateOrderedProductKOTTemp]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[insertandupdateOrderedProductKOTTemp]
 @ticketId             int         ,
 @d1                   nvarchar(250) ,
 @d2                  decimal(18,2),
 @d3                   int , 
 @d4                   decimal(18,2),
 @d5                   decimal(18,2) ,
 @d6                   decimal(18,2),
 @d7                   decimal(18,2),
 @d8                   decimal(18,2),
 @d9                   decimal(18,2),
 @d10                  decimal(18,2),
 @d11                  decimal(18,2),
 @d12                  decimal(18,2),
 @d13                  decimal(18,2),
 @d14                  nvarchar(30 ) 
 as
 Begin
  set nocount on
 --   Declare @id1 int   
	--select @id1=id from  TempRestaurantPOS_OrderInfoKOT where TicketNo = @ticketId 
	-- select @id1                  
  Declare @id int
  if Exists(select   1 from TempRestaurantPOS_OrderedProductKOT where TicketID=@ticketId    and Dish=@d1)
  begin 
  select @id=  OP_ID from TempRestaurantPOS_OrderedProductKOT where TicketID=@ticketId  and Dish=@d1
   update RestaurantPOS_OrderedProductKOT set TicketID = @ticketId  ,Dish=@d1,Rate=@d2 ,Quantity=@d3 ,Amount=@d4 ,VATPer=@d5 ,
          VATAmount=@d6 ,STPer=@d7 ,STAmount =@d8 ,SCPer=@d9 ,SCAmount =@d10 , DiscountPer=@d11 ,DiscountAmount =@d12,
		  TotalAmount=@d13 where  OP_ID=@id
  end
  else
  Begin
   insert into TempRestaurantPOS_OrderedProductKOT(TicketID,Dish,Rate,Quantity,Amount,DiscountPer, DiscountAmount, STPer, STAmount, VATPer, VATAmount,SCPer,SCAmount,TotalAmount,T_Number ) VALUES ( @ticketId  ,@d1,@d2,@d3,@d4,@d5,@d6,@d7,@d8,@d9,@d10,@d11,@d12,@d13,@d14)
  End
end
GO
/****** Object:  StoredProcedure [dbo].[InsertDailyCustomer]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsertDailyCustomer]
 @CustomerName       varchar(50) ,
 @CustomerDOB        Date		 ,
 @Contact            nChar(15)   ,
 @TicketId           int
 As
 Begin
   
   Set nocount on
    if Exists(Select 1 from  Customer  where TicketId=@TicketId )
	Begin
	   Declare @id int
	   Select @id=CustomerId from Customer where TicketId=@TicketId
	   Update Customer set CustomerName=@CustomerName ,CustomerDOB=@CustomerDOB ,Contact = @Contact where CustomerId =@id  
	End
	Else
	begin 
	  Insert into Customer(CustomerName, CustomerDOB,Contact,TicketId)values(@CustomerName,@CustomerDOB,@Contact,@TicketId)
	   
	end
	 
 End
GO
/****** Object:  StoredProcedure [dbo].[SpInsertUpdateGrandTotal]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SpInsertUpdateGrandTotal]
 
@BALANCETOTAL  DECIMAL(18,2)     ,
@d1           NCHAR(15)     ,
@d2          DATETIME,
@d3          NCHAR(30) ,
@d4          NCHAR(100)  ,
@d5          NCHAR(200)=NULL ,
@TICKETNO    NVARCHAR(MAX)=NULL 
 
 AS
 BEGIN
     SET NOCOUNT ON
	 Declare @id int
    IF EXISTS(SELECT  1   FROM  RestaurantPOS_OrderInfoKOT WHERE  TicketNo= @d1  )
    BEGIN
	  SELECT @id=id   FROM  RestaurantPOS_OrderInfoKOT where TicketNo= @d1
    update  RestaurantPOS_OrderInfoKOT set GrandTotal=@BALANCETOTAL , TicketNo= @TICKETNO where ID=@id
	  
    END
    ELSE
     BEGIN
	 insert into RestaurantPOS_OrderInfoKOT( TicketNo, BillDate, GrandTotal,tableNo,Operator,GroupName,TicketNote) Values (@d1,@d2,@BALANCETOTAL,@d3,@d4,@d5, @TICKETNO) 
  
     END
 END

GO
/****** Object:  StoredProcedure [dbo].[SpInsertUpdateGrandTotalTemp]    Script Date: 5/16/2017 8:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROCEDURE [dbo].[SpInsertUpdateGrandTotalTemp]
 @id           int , 
@BALANCETOTAL  DECIMAL(18,2)     ,
@d1           NCHAR(30)     ,
@d2          DATETIME,
@d3          NCHAR(100) ,
@d4          NCHAR=NULL ,
@d5          NCHAR=NULL ,
@TICKETNO    NVARCHAR(MAX) 
 AS
 BEGIN
     SET NOCOUNT ON
    IF EXISTS(SELECT TicketNo= @TICKETNO FROM  TempRestaurantPOS_OrderInfoKOT WHERE TableNo = @d1)
    BEGIN
    update TempRestaurantPOS_OrderInfoKOT set GrandTotal=@BALANCETOTAL ,TicketNo= @TICKETNO  where Id=@id 
    END
    ELSE
     BEGIN
	 insert into TempRestaurantPOS_OrderInfoKOT(Id, TicketNo, BillDate, GrandTotal,tableNo,Operator,GroupName,TicketNote) Values (@id, @TICKETNO,@d2,@BALANCETOTAL,@d1,@d3,@d4,@d5) 
     END
 END
GO
