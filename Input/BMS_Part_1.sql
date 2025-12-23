CREATE TABLE [bai2].[BAI2AccountBalances]( 
	[BAI2AccountBalanceId] [uniqueidentifier] NOT NULL,
	[BAI2AccountId] [uniqueidentifier] NOT NULL,
	[TypeCode] [nvarchar](10) NULL,
	[Amount] [bigint] NULL,
	[ItemCount] [int] NULL,
	[Order] [int] NULL,
 CONSTRAINT [PK_BAI2AccountBalances] PRIMARY KEY CLUSTERED 
(
	[BAI2AccountBalanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY];
END
GO
--  Object:  Table [bai2].[BAI2AccountFundTypes]    Script Date: 11/19/2025 9:13:21 PM *****

CREATE TABLE [bai2].[BAI2AccountFundTypes](
	[BAI2AccountFundsTypeId] [uniqueidentifier] NOT NULL,
	[BAI2AccountBalanceId] [uniqueidentifier] NOT NULL,
	[FundsType] [nvarchar](max) NULL,
	[ImmediateAmount] [decimal](18, 2) NOT NULL,
	[OneDayAmount] [decimal](18, 2) NOT NULL,
	[TwoOrMoreDaysAmount] [decimal](18, 2) NOT NULL,
	[ValueDate] [nvarchar](max) NULL,
	[ValueTime] [nvarchar](max) NULL,
	[NumberOfDistributions] [bigint] NOT NULL,
	[Field1] [nvarchar](max) NULL,
	[Field2] [nvarchar](max) NULL,
	[Field3] [nvarchar](max) NULL,
 CONSTRAINT [PK_BAI2AccountFundTypes] PRIMARY KEY CLUSTERED 
(
	[BAI2AccountFundsTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY];
END
GO
--  Object:  Table [bai2].[BAI2Accounts]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [bai2].[BAI2Accounts](
	[BAI2AccountId] [uniqueidentifier] NOT NULL,
	[BAI2GroupId] [uniqueidentifier] NOT NULL,
	[CustomerAccountNumber] [varchar](2000) NULL,
	[CurrencyCode] [char](3) NULL,
	[AccountControlTotal] [bigint] NULL,
	[NumberOfRecords] [int] NULL,
	[RawBAI2Account] [text] NULL,
 CONSTRAINT [PK_BAI2Accounts] PRIMARY KEY CLUSTERED 
(
	[BAI2AccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY];
GO
--  Object:  Table [bai2].[BAI2ATransactionDetailsFundsTypes]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [bai2].[BAI2ATransactionDetailsFundsTypes](
	[BAI2TransactionDetailsFundsTypesId] [uniqueidentifier] NOT NULL,
	[BAI2TransactionDetailId] [uniqueidentifier] NOT NULL,
	[FundsType] [nvarchar](max) NULL,
	[ImmediateAmount] [decimal](18, 2) NOT NULL,
	[OneDayAmount] [decimal](18, 2) NOT NULL,
	[TwoOrMoreDaysAmount] [decimal](18, 2) NOT NULL,
	[ValueDate] [nvarchar](max) NULL,
	[ValueTime] [nvarchar](max) NULL,
	[NumberOfDistributions] [bigint] NOT NULL,
	[Field1] [nvarchar](max) NULL,
	[Field2] [nvarchar](max) NULL,
	[Field3] [nvarchar](max) NULL,
 CONSTRAINT [PK_BAI2ATransactionDetailsFundsTypes] PRIMARY KEY CLUSTERED 
(
	[BAI2TransactionDetailsFundsTypesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [bai2].[BAI2Deliveries]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [bai2].[BAI2Deliveries](
	[BAI2DeliveryId] [uniqueidentifier] NOT NULL,
	[ReceiveFolder] [nvarchar](max) NOT NULL,
	[DestinationQueue] [nvarchar](max) NOT NULL,
	[NotifyEmail] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_BAI2Deliveries] PRIMARY KEY CLUSTERED 
(
	[BAI2DeliveryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [bai2].[BAI2FileParsingErrors]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [bai2].[BAI2FileParsingErrors](
	[BAI2FileParsingErrorId] [uniqueidentifier] NOT NULL,
	[BAI2FileId] [uniqueidentifier] NULL,
	[BAI2GroupId] [uniqueidentifier] NULL,
	[BAI2AccountId] [uniqueidentifier] NULL,
	[BAI2TransactionDetailId] [uniqueidentifier] NULL,
	[BAI2ParsingErrorId] [uniqueidentifier] NULL,
	[ErrorMessage] [varchar](max) NOT NULL,
	[LineNumber] [int] NULL,
	[ReceivedValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_BAI2FileParsingErrors] PRIMARY KEY CLUSTERED 
(
	[BAI2FileParsingErrorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [bai2].[BAI2Files]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [bai2].[BAI2Files](
	[BAI2FileId] [uniqueidentifier] NOT NULL,
	[FileName] [varchar](2000) NOT NULL,
	[SenderId] [varchar](2000) NULL,
	[ReceiverId] [varchar](2000) NULL,
	[FileCreationDate] [char](6) NULL,
	[FileCreationTime] [char](4) NULL,
	[FileIdNumber] [int] NULL,
	[PhysicalRecordLength] [tinyint] NULL,
	[BlockSize] [int] NULL,
	[VersionNumber] [char](1) NULL,
	[FileControlTotal] [bigint] NULL,
	[NumberOfGroups] [int] NULL,
	[NumberOfRecords] [int] NULL,
	[RawBAI2File] [text] NULL,
	[ProcessingTotalTime] [float] NULL,
	[ProcessingDate] [datetime] NULL,
	[Status] [nvarchar](10) NULL,
 CONSTRAINT [PK_BAI2Files] PRIMARY KEY CLUSTERED 
(
	[BAI2FileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [bai2].[BAI2Groups]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [bai2].[BAI2Groups](
	[BAI2GroupId] [uniqueidentifier] NOT NULL,
	[BAI2FileId] [uniqueidentifier] NOT NULL,
	[ReceiverId] [varchar](2000) NULL,
	[SenderId] [varchar](2000) NULL,
	[GroupStatus] [tinyint] NULL,
	[AsOfDate] [char](6) NULL,
	[AsOfTime] [char](4) NULL,
	[CurrencyCode] [char](3) NULL,
	[AsOfDateModifier] [tinyint] NULL,
	[GroupControlTotal] [bigint] NULL,
	[NumberOfAccounts] [int] NULL,
	[NumberOfRecords] [int] NULL,
	[RawBAI2Group] [text] NULL,
 CONSTRAINT [PK_BAI2Groups] PRIMARY KEY CLUSTERED 
(
	[BAI2GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [bai2].[BAI2ParsingErrorLevels]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [bai2].[BAI2ParsingErrorLevels](
	[BAI2ParsingErrorLevelId] [uniqueidentifier] NOT NULL,
	[LevelDescription] [varchar](50) NOT NULL,
	[LevelCode] [varchar](2) NOT NULL,
 CONSTRAINT [PK_BAI2ParsingErrorLevels] PRIMARY KEY CLUSTERED 
(
	[BAI2ParsingErrorLevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [bai2].[BAI2ParsingErrors]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [bai2].[BAI2ParsingErrors](
	[BAI2ParsingErrorId] [uniqueidentifier] NOT NULL,
	[BAI2ParsingErrorSeverityId] [uniqueidentifier] NOT NULL,
	[BAI2ParsingErrorLevelId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_BAI2ParsingErrors] PRIMARY KEY CLUSTERED 
(
	[BAI2ParsingErrorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [bai2].[BAI2ParsingErrorSeverities]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [bai2].[BAI2ParsingErrorSeverities](
	[BAI2ParsingErrorSeverityId] [uniqueidentifier] NOT NULL,
	[Name] [varchar](250) NOT NULL,
 CONSTRAINT [PK_BAI2ParsingErrorSeverities] PRIMARY KEY CLUSTERED 
(
	[BAI2ParsingErrorSeverityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [bai2].[BAI2TransactionDetail]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [bai2].[BAI2TransactionDetail](
	[BAI2TransactionDetailId] [uniqueidentifier] NOT NULL,
	[BAI2AccountId] [uniqueidentifier] NOT NULL,
	[TypeCode] [char](3) NULL,
	[Amount] [bigint] NULL,
	[BankReferenceNumber] [varchar](2000) NULL,
	[CustomerReferenceNumber] [varchar](2000) NULL,
	[Text] [text] NULL,
	[RawBAI2Group] [text] NULL,
	[Order] [int] NULL,
 CONSTRAINT [PK_BAI2TransactionDetail] PRIMARY KEY CLUSTERED 
(
	[BAI2TransactionDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[AccountCategory]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[AccountCategory](
	[AccountCategoryId] [int] NOT NULL,
	[AccountCategoryName] [varchar](50) NOT NULL,
	[Description] [varchar](255) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[AccountSecurity]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[AccountSecurity](
	[AccountSecurityId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[EntityId] [uniqueidentifier] NOT NULL,
	[LineNumber] [int] NULL,
	[FromCode] [varchar](50) NULL,
	[ToCode] [varchar](50) NULL,
	[HasAccess] [bit] NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountSecurityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[AccountSubType]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[AccountSubType](
	[AccountSubTypeId] [int] NOT NULL,
	[AccountTypeId] [int] NOT NULL,
	[AccountSubTypeName] [varchar](50) NOT NULL,
	[Description] [varchar](255) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountSubTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[AccountType]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[AccountType](
	[AccountTypeId] [int] NOT NULL,
	[AccountTypeName] [varchar](50) NOT NULL,
	[Description] [varchar](255) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[Address]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[Address](
	[Id] [uniqueidentifier] NOT NULL,
	[AddressTypeId] [char](1) NULL,
	[Description] [varchar](255) NULL,
	[AddressLineOne] [varchar](255) NULL,
	[AddressLineTwo] [varchar](255) NULL,
	[City] [varchar](100) NULL,
	[State] [varchar](50) NULL,
	[PostalCode] [varchar](20) NULL,
	[Country] [varchar](100) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[AddressDetail]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[AddressDetail](
	[AddressDetailId] [uniqueidentifier] NOT NULL,
	[AddressTypeId] [uniqueidentifier] NOT NULL,
	[Description] [varchar](255) NULL,
	[AddressLineOne] [varchar](255) NULL,
	[AddressLineTwo] [varchar](255) NULL,
	[City] [varchar](100) NULL,
	[State] [varchar](50) NULL,
	[PostalCode] [varchar](20) NULL,
	[CountryId] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
	[AddressLineThree] [varchar](255) NULL,
	[AddressLineFour] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[AddressDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[AddressDetailHistory]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[AddressDetailHistory](
	[HistoryId] [uniqueidentifier] NOT NULL,
	[AddressDetailId] [uniqueidentifier] NOT NULL,
	[CustomerId] [uniqueidentifier] NULL,
	[FieldName] [nvarchar](100) NOT NULL,
	[OldValue] [nvarchar](max) NULL,
	[NewValue] [nvarchar](max) NULL,
	[ChangeType] [nvarchar](10) NOT NULL,
	[ChangedBy] [uniqueidentifier] NULL,
	[ChangedDate] [datetime2](7) NOT NULL,
	[ChangeReason] [nvarchar](255) NULL,
	[TransactionId] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[HistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[AddressType]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[AddressType](
	[AddressTypeId] [uniqueidentifier] NOT NULL,
	[TypeCode] [varchar](20) NOT NULL,
	[TypeName] [varchar](50) NOT NULL,
	[Description] [varchar](255) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[AddressTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[TypeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO