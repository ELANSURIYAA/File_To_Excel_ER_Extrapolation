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
--  Object:  Table [dbo].[ALLFILENAMES]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[ALLFILENAMES](
	[WHICHPATH] [varchar](255) NULL,
	[WHICHFILE] [varchar](255) NULL
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[AmountRange]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[AmountRange](
	[RangeId] [uniqueidentifier] NOT NULL,
	[RuleSetId] [uniqueidentifier] NOT NULL,
	[StartAmount] [decimal](18, 2) NOT NULL,
	[EndAmount] [decimal](18, 2) NULL,
	[IsUnbounded] [bit] NOT NULL,
	[RangeOrder] [int] NOT NULL,
	[RangeDescription] [nvarchar](100) NULL,
	[CurrencyCode] [nvarchar](3) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_AmountRange] PRIMARY KEY CLUSTERED 
(
	[RangeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[APConfig]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[APConfig](
	[APConfigId] [uniqueidentifier] NOT NULL,
	[APAccrualChartOfAccountsId] [uniqueidentifier] NULL,
	[EntityId] [uniqueidentifier] NULL,
	[CustomerId] [uniqueidentifier] NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[APConfigId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[ApprovalConfiguration]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[ApprovalConfiguration](
	[ConfigurationId] [uniqueidentifier] NOT NULL,
	[WorkflowDefinitionId] [uniqueidentifier] NOT NULL,
	[ApprovalRuleId] [uniqueidentifier] NOT NULL,
	[ConfigurationType] [nvarchar](50) NOT NULL,
	[ConfigName] [nvarchar](100) NOT NULL,
	[CustomRuleName] [nvarchar](200) NULL,
	[RuleDescription] [nvarchar](500) NULL,
	[AmountField] [nvarchar](100) NULL,
	[RuleMetadata] [nvarchar](max) NULL,
	[IsDefaultConfiguration] [bit] NOT NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[EntityId] [uniqueidentifier] NULL,
	[EnterpriseId] [uniqueidentifier] NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_ApprovalConfiguration] PRIMARY KEY CLUSTERED 
(
	[ConfigurationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[ApprovalLimits]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[ApprovalLimits](
	[LimitId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[WorkflowDefinitionId] [uniqueidentifier] NOT NULL,
	[LimitCategory] [nvarchar](50) NOT NULL,
	[MaxAmount] [decimal](18, 2) NOT NULL,
	[CurrencyCode] [nvarchar](3) NOT NULL,
	[TimePeriod] [nvarchar](20) NULL,
	[CumulativeLimit] [decimal](18, 2) NULL,
	[VelocityLimit] [int] NULL,
	[EntityId] [uniqueidentifier] NULL,
	[EnterpriseId] [uniqueidentifier] NULL,
	[OverridePermissionId] [uniqueidentifier] NULL,
	[IsActive] [bit] NOT NULL,
	[RequiresAdditionalApproval] [bit] NOT NULL,
	[ThresholdPercentage] [decimal](5, 2) NULL,
	[LimitMetadata] [nvarchar](max) NULL,
	[EffectiveFrom] [datetime2](7) NOT NULL,
	[EffectiveTo] [datetime2](7) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_ApprovalLimits] PRIMARY KEY CLUSTERED 
(
	[LimitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[ApprovalRule]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[ApprovalRule](
	[ApprovalRuleId] [uniqueidentifier] NOT NULL,
	[RuleName] [nvarchar](200) NOT NULL,
	[RuleDescription] [nvarchar](500) NULL,
	[ModuleId] [uniqueidentifier] NOT NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[EnterpriseId] [uniqueidentifier] NULL,
	[EntityId] [uniqueidentifier] NULL,
	[RuleType] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Priority] [int] NOT NULL,
	[EffectiveFrom] [datetime2](7) NOT NULL,
	[EffectiveTo] [datetime2](7) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[BankAccountId] [uniqueidentifier] NULL,
	[ApprovalRuleScopeType] [int] NULL,
	[IsMarkedForDeletion] [bit] NOT NULL,
	[IsApprovalRequired] [bit] NULL,
	[ModulefunctionId] [uniqueidentifier] NULL,
	[Version] [int] NULL,
 CONSTRAINT [PK_ApprovalRule] PRIMARY KEY CLUSTERED 
(
	[ApprovalRuleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[ApprovalRuleScopeType]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[ApprovalRuleScopeType](
	[ApprovalRuleScopeTypeId] [int] NOT NULL,
	[ScopeCode] [varchar](100) NULL,
	[ScopeValue] [varchar](255) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK__ApprovalRuleScopeType] PRIMARY KEY CLUSTERED 
(
	[ApprovalRuleScopeTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[ApprovalStatus]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[ApprovalStatus](
	[ApprovalStatusId] [int] IDENTITY(1,1) NOT NULL,
	[ApprovalStatusTypeId] [int] NOT NULL,
	[StatusName] [nvarchar](100) NOT NULL,
	[StatusCode] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_ApprovalStatus] PRIMARY KEY CLUSTERED 
(
	[ApprovalStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[ApprovalStatusType]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[ApprovalStatusType](
	[ApprovalStatusTypeId] [int] IDENTITY(1,1) NOT NULL,
	[StatusTypeName] [nvarchar](100) NOT NULL,
	[StatusTypeCode] [nvarchar](50) NOT NULL,
	[ModuleFunctionId] [uniqueidentifier] NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_ApprovalStatusType] PRIMARY KEY CLUSTERED 
(
	[ApprovalStatusTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[ApprovalStep]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[ApprovalStep](
	[StepId] [uniqueidentifier] NOT NULL,
	[RangeId] [uniqueidentifier] NOT NULL,
	[StepOrder] [int] NOT NULL,
	[StepName] [nvarchar](100) NOT NULL,
	[ApprovalLogic] [nvarchar](10) NOT NULL,
	[MinApproversRequired] [int] NOT NULL,
	[TimeoutHours] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_ApprovalStep] PRIMARY KEY CLUSTERED 
(
	[StepId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[ApprovalStepVerticalGroup]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[ApprovalStepVerticalGroup](
	[VerticalGroupId] [uniqueidentifier] NOT NULL,
	[ApprovalStepId] [uniqueidentifier] NOT NULL,
	[ParentVerticalGroupId] [uniqueidentifier] NULL,
	[VerticalGroupName] [nvarchar](100) NOT NULL,
	[VerticalLogic] [nvarchar](10) NOT NULL,
	[VerticalOrder] [int] NOT NULL,
	[MinimumRequired] [int] NOT NULL,
	[GroupLevel] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_ApprovalStepVerticalGroup] PRIMARY KEY CLUSTERED 
(
	[VerticalGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_ApprovalStepVerticalGroup_Order] UNIQUE NONCLUSTERED 
(
	[ApprovalStepId] ASC,
	[ParentVerticalGroupId] ASC,
	[VerticalOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[ApprovalStepVerticalGroupMember]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[ApprovalStepVerticalGroupMember](
	[VerticalGroupMemberId] [uniqueidentifier] NOT NULL,
	[VerticalGroupId] [uniqueidentifier] NOT NULL,
	[HorizontalGroupId] [uniqueidentifier] NOT NULL,
	[MemberOrder] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_ApprovalStepVerticalGroupMember] PRIMARY KEY CLUSTERED 
(
	[VerticalGroupMemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_VerticalGroupMember_Unique] UNIQUE NONCLUSTERED 
(
	[VerticalGroupId] ASC,
	[HorizontalGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[ApprovalTask]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[ApprovalTask](
	[TaskId] [uniqueidentifier] NOT NULL,
	[InstanceId] [uniqueidentifier] NOT NULL,
	[StepId] [uniqueidentifier] NOT NULL,
	[TaskGroupId] [uniqueidentifier] NULL,
	[AssignedToId] [uniqueidentifier] NOT NULL,
	[OriginalAssigneeId] [uniqueidentifier] NOT NULL,
	[AssignmentReason] [nvarchar](255) NULL,
	[Status] [nvarchar](50) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[DueDate] [datetime2](7) NULL,
	[CompletedAt] [datetime2](7) NULL,
	[CompletedBy] [uniqueidentifier] NULL,
	[Priority] [int] NOT NULL,
	[TaskOrder] [int] NOT NULL,
	[CanDelegate] [bit] NOT NULL,
	[RequiresComment] [bit] NOT NULL,
	[IsEscalated] [bit] NOT NULL,
	[EscalationLevel] [int] NOT NULL,
	[DataVersionSnapshot] [int] NOT NULL,
	[TaskData] [nvarchar](max) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[IsDelegatedTask] [bit] NOT NULL,
	[DelegationActivationPeriodId] [uniqueidentifier] NULL,
	[OriginalUserId] [uniqueidentifier] NULL,
	[DelegationAssignedAt] [datetime2](7) NULL,
	[StatusId] [int] NULL,
 CONSTRAINT [PK_ApprovalTask] PRIMARY KEY CLUSTERED 
(
	[TaskId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[ARConfig]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[ARConfig](
	[ARConfigId] [uniqueidentifier] NOT NULL,
	[EntityId] [uniqueidentifier] NULL,
	[CustomerId] [uniqueidentifier] NULL,
	[ARAccrualChartOfAccountsId] [uniqueidentifier] NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ARConfigId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[AuditLog_Outbox]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[AuditLog_Outbox](
	[AuditLogOutboxId] [bigint] IDENTITY(1,1) NOT NULL,
	[CorrelationId] [nvarchar](100) NOT NULL,
	[OperationId] [nvarchar](250) NOT NULL,
	[OperationName] [nvarchar](50) NOT NULL,
	[DatabaseName] [nvarchar](100) NOT NULL,
	[TableName] [nvarchar](100) NOT NULL,
	[FieldName] [nvarchar](100) NOT NULL,
	[OldValue] [nvarchar](250) NULL,
	[NewValue] [nvarchar](250) NULL,
	[SessionUserId] [uniqueidentifier] NULL,
	[EventDateTimeUtc] [datetime2](3) NOT NULL,
	[IsProcessed] [bit] NOT NULL,
	[ProcessedStatusCode] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[AuditLogOutboxId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[BankAccount]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[BankAccount](
	[BankAccountId] [uniqueidentifier] NOT NULL,
	[BankRTNId] [uniqueidentifier] NOT NULL,
	[BankAccountNumber] [varchar](18) NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[BankAccountType] [int] NULL,
	[EntityId] [uniqueidentifier] NULL,
	[Description] [varchar](256) NULL,
	[SameAsEntityAddress] [bit] NULL,
	[AccountNickName] [varchar](128) NULL,
	[CurrencyId] [uniqueidentifier] NULL,
	[NextCheckNumber] [int] NULL,
	[BankAccountStatusType] [int] NULL,
	[IsActive] [bit] NULL,
	[RowVersionNumber] [int] NULL,
	[BusinessPartyId] [uniqueidentifier] NULL,
	[IsValid] [bit] NULL,
	[ValidationMessage] [varchar](500) NULL,
	[GLCashAccount] [uniqueidentifier] NULL,
	[IsPrimaryBankAccount] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
	[FinancialInstitutionId] [uniqueidentifier] NULL,
	[BankName] [varchar](50) NULL,
	[BankId] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK__BankAccount] PRIMARY KEY CLUSTERED 
(
	[BankAccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[BankAccountEntitlement]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[BankAccountEntitlement](
	[BankAccountEntitlementId] [uniqueidentifier] NOT NULL,
	[FIEntitlementId] [uniqueidentifier] NOT NULL,
	[IsEntitled] [bit] NULL,
	[BankAccountId] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK__BankAccountEntitlement] PRIMARY KEY CLUSTERED 
(
	[BankAccountEntitlementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[BankAccountEntitlementHistory]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[BankAccountEntitlementHistory](
	[HistoryId] [uniqueidentifier] NOT NULL,
	[BankAccountEntitlementId] [uniqueidentifier] NOT NULL,
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
--  Object:  Table [dbo].[BankAccountEntitlementLimit]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[BankAccountEntitlementLimit](
	[BankAccountEntitlementLimitId] [uniqueidentifier] NOT NULL,
	[FIEntitlementId] [uniqueidentifier] NOT NULL,
	[BankAccountId] [uniqueidentifier] NOT NULL,
	[LimitType] [int] NULL,
	[TotalDebit] [decimal](18, 2) NULL,
	[TotalCredit] [decimal](18, 2) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK__BankAccountEntitlementLimit] PRIMARY KEY CLUSTERED 
(
	[BankAccountEntitlementLimitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[BankAccountEntitlementLimitHistory]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[BankAccountEntitlementLimitHistory](
	[HistoryId] [uniqueidentifier] NOT NULL,
	[BankAccountEntitlementLimitId] [uniqueidentifier] NOT NULL,
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
--  Object:  Table [dbo].[BankAccountHistory]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[BankAccountHistory](
	[HistoryId] [uniqueidentifier] NOT NULL,
	[BankAccountId] [uniqueidentifier] NOT NULL,
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
--  Object:  Table [dbo].[BankAccountHolder]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[BankAccountHolder](
	[BankAccountHolderId] [uniqueidentifier] NOT NULL,
	[BankAccountId] [uniqueidentifier] NOT NULL,
	[IsPrimaryAccountHolder] [bit] NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[EntityId] [uniqueidentifier] NOT NULL,
	[AccountHolderName] [varchar](255) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK__BankAccountHolder] PRIMARY KEY CLUSTERED 
(
	[BankAccountHolderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[BankAccountHolderHistory]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[BankAccountHolderHistory](
	[HistoryId] [uniqueidentifier] NOT NULL,
	[BankAccountHolderId] [uniqueidentifier] NOT NULL,
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
--  Object:  Table [dbo].[BankAccountSignee]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[BankAccountSignee](
	[BankAccountSigneeId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[BankAccountId] [uniqueidentifier] NULL,
	[IsActive] [int] NULL,
	[IsApproverEligible] [int] NULL,
	[ApplySignatureOnApproval] [int] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
	[ApprovedLimit] [decimal](18, 2) NULL,
	[HasMaxApprovalLimit] [bit] NULL,
	[SortOrder] [int] NULL,
 CONSTRAINT [PK__BankAccountSignee] PRIMARY KEY CLUSTERED 
(
	[BankAccountSigneeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[BankAccountSigneeHistory]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[BankAccountSigneeHistory](
	[HistoryId] [uniqueidentifier] NOT NULL,
	[BankAccountSigneeId] [uniqueidentifier] NOT NULL,
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
--  Object:  Table [dbo].[BankAccountStatusType]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[BankAccountStatusType](
	[BankAccountStatusTypeId] [int] NOT NULL,
	[TypeCode] [varchar](100) NULL,
	[TypeValue] [varchar](255) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK__BankAccountStatusType] PRIMARY KEY CLUSTERED 
(
	[BankAccountStatusTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[BankAccountType]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[BankAccountType](
	[BankAccountTypeId] [int] NOT NULL,
	[TypeCode] [varchar](100) NULL,
	[TypeValue] [varchar](255) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK__BankAccountType] PRIMARY KEY CLUSTERED 
(
	[BankAccountTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[BankEntitlementType]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[BankEntitlementType](
	[BankEntitlementTypeId] [int] NOT NULL,
	[TypeCode] [varchar](100) NULL,
	[TypeValue] [varchar](255) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK__BankEntitlementType] PRIMARY KEY CLUSTERED 
(
	[BankEntitlementTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[BankingEntitlements]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[BankingEntitlements](
	[BankingEntitlementsId] [uniqueidentifier] NOT NULL,
	[BankEntitlementType] [int] NULL,
	[ShortName] [varchar](100) NULL,
	[Description] [varchar](255) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK__BankingEntitlements] PRIMARY KEY CLUSTERED 
(
	[BankingEntitlementsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[BankingFileProcessingAttempts]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[BankingFileProcessingAttempts](
	[AttemptId] [int] IDENTITY(1,1) NOT NULL,
	[FileId] [bigint] NOT NULL,
	[AttemptNumber] [int] NOT NULL,
	[AttemptTime] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AttemptId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[BankingFiles]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[BankingFiles](
	[FileId] [bigint] IDENTITY(1,1) NOT NULL,
	[FileName] [nvarchar](255) NOT NULL,
	[Direction] [nvarchar](20) NOT NULL,
	[Date] [date] NOT NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[RunTimeSeconds] [int] NULL,
	[TransactionTypeId] [int] NULL,
	[FileSizeMB] [decimal](10, 2) NULL,
	[SenderBankId] [int] NULL,
	[Customer] [nvarchar](100) NULL,
	[Entity] [nvarchar](100) NULL,
	[ReceiverBankId] [int] NULL,
	[Status] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[BankingRouterInterfaces]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[BankingRouterInterfaces](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[bankName] [nvarchar](50) NOT NULL,
	[path] [nvarchar](500) NOT NULL,
	[status] [nvarchar](20) NOT NULL,
	[fileExtension] [nvarchar](10) NOT NULL,
	[interfaceName] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[BankingTransactions]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[BankingTransactions](
	[TransactionTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsRealTime] [bit] NOT NULL,
	[Destination] [nvarchar](255) NOT NULL,
	[Active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[TransactionTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[BankPaymentStatus]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[BankPaymentStatus](
	[BankPaymentStatusId] [int] IDENTITY(1,1) NOT NULL,
	[BankPaymentStatusTypeId] [int] NOT NULL,
	[StatusName] [nvarchar](100) NOT NULL,
	[StatusCode] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_BankPaymentStatus] PRIMARY KEY CLUSTERED 
(
	[BankPaymentStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[BankPaymentStatusType]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[BankPaymentStatusType](
	[BankPaymentStatusTypeId] [int] IDENTITY(1,1) NOT NULL,
	[StatusTypeName] [nvarchar](100) NOT NULL,
	[StatusTypeCode] [nvarchar](50) NOT NULL,
	[ModuleFunctionId] [uniqueidentifier] NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_BankPaymentStatusType] PRIMARY KEY CLUSTERED 
(
	[BankPaymentStatusTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[BankRTN]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[BankRTN](
	[BankRTNId] [uniqueidentifier] NOT NULL,
	[FinancialInstitutionId] [uniqueidentifier] NULL,
	[RTNNumber] [varchar](50) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK__BankRTN] PRIMARY KEY CLUSTERED 
(
	[BankRTNId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[BatchDirection]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[BatchDirection](
	[BatchDirectionId] [int] NOT NULL,
	[BatchDirectionName] [varchar](50) NOT NULL,
	[BatchDirectionCode] [varchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_BatchDirection] PRIMARY KEY CLUSTERED 
(
	[BatchDirectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[BatchMethodType]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[BatchMethodType](
	[BatchMethodTypeId] [int] NOT NULL,
	[BatchMethodTypeName] [varchar](50) NOT NULL,
	[BatchMethodTypeCode] [varchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_BatchMethodType] PRIMARY KEY CLUSTERED 
(
	[BatchMethodTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[BatchStatus]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[BatchStatus](
	[BatchStatusId] [int] NOT NULL,
	[BatchStatusName] [varchar](50) NOT NULL,
	[BatchStatusCode] [varchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_BatchStatus] PRIMARY KEY CLUSTERED 
(
	[BatchStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[BillDistribution]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[BillDistribution](
	[BillDistributionId] [uniqueidentifier] NOT NULL,
	[BillId] [uniqueidentifier] NOT NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[EntityId] [uniqueidentifier] NOT NULL,
	[ChartOfAccountsId] [uniqueidentifier] NOT NULL,
	[LineNumber] [int] NOT NULL,
	[GlAccountNumber] [nvarchar](50) NOT NULL,
	[GlAccountName] [nvarchar](255) NULL,
	[LineItemDescription] [nvarchar](1000) NOT NULL,
	[Amount] [decimal](15, 2) NOT NULL,
	[Is1099Eligible] [bit] NOT NULL,
	[DistributionType] [nvarchar](20) NOT NULL,
	[DistributionPercentage] [decimal](5, 2) NULL,
	[ParentBillId] [uniqueidentifier] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_BillDistribution_BillDistributionId] PRIMARY KEY CLUSTERED 
(
	[BillDistributionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[BillHeader]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[BillHeader](
	[BillId] [uniqueidentifier] NOT NULL,
	[BillNumber] [nvarchar](50) NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[EntityId] [uniqueidentifier] NOT NULL,
	[VendorId] [uniqueidentifier] NOT NULL,
	[InvoiceNumber] [nvarchar](100) NULL,
	[InvoiceDate] [date] NULL,
	[DueDate] [date] NULL,
	[PaymentDate] [date] NULL,
	[BillAmount] [decimal](15, 2) NOT NULL,
	[CurrencyId] [int] NULL,
	[PurchaseOrderNumber] [nvarchar](50) NULL,
	[PaymentMethodId] [int] NULL,
	[BankAccountId] [uniqueidentifier] NULL,
	[PaymentTerms] [nvarchar](50) NULL,
	[IsUrgentPriority] [bit] NOT NULL,
	[IsAutoPayUponApproval] [bit] NOT NULL,
	[HoldPayment] [bit] NOT NULL,
	[HoldReason] [nvarchar](500) NULL,
	[RemittanceAddressLine1] [nvarchar](255) NULL,
	[RemittanceAddressLine2] [nvarchar](255) NULL,
	[RemittanceCity] [nvarchar](100) NULL,
	[RemittanceState] [nvarchar](50) NULL,
	[RemittancePostalCode] [nvarchar](20) NULL,
	[RemittanceCountry] [nvarchar](50) NULL,
	[BillStatusTypeId] [int] NOT NULL,
	[IsAccrualPosted] [bit] NOT NULL,
	[AccrualPostedDate] [datetime2](7) NULL,
	[BillTriggeredById] [int] NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[BillTypeId] [int] NOT NULL,
	[BankPaymentStatusId] [int] NOT NULL,
	[BillTemplateId] [uniqueidentifier] NULL,
	[ParentBillId] [uniqueidentifier] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[SubmittedBy] [uniqueidentifier] NULL,
	[SubmittedDate] [datetime2](7) NULL,
	[ApprovedBy] [uniqueidentifier] NULL,
	[ApprovedDate] [datetime2](7) NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedDate] [datetime2](7) NULL,
	[DeletionReason] [nvarchar](500) NULL,
 CONSTRAINT [PK_BillHeader_BillId] PRIMARY KEY CLUSTERED 
(
	[BillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[BillNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[BillHeaderDocument]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[BillHeaderDocument](
	[BillHeaderDocumentId] [uniqueidentifier] NOT NULL,
	[DocumentId] [uniqueidentifier] NOT NULL,
	[BillHeaderId] [uniqueidentifier] NOT NULL,
	[BillTemplateId] [uniqueidentifier] NULL,
	[Status] [nvarchar](50) NULL,
	[IsStaged] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[DeactivatedBy] [uniqueidentifier] NULL,
	[DeactivatedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_BillHeaderDocument] PRIMARY KEY CLUSTERED 
(
	[BillHeaderDocumentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[BillRecurrenceConditionType]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[BillRecurrenceConditionType](
	[BillRecurrenceConditionTypeId] [int] NOT NULL,
	[BillRecurrenceConditionTypeName] [varchar](50) NOT NULL,
	[BillRecurrenceConditionTypeCode] [varchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [DF_BillRecurrenceConditionType_NEWID] PRIMARY KEY CLUSTERED 
(
	[BillRecurrenceConditionTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[BillRecurrenceType]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[BillRecurrenceType](
	[BillRecurrenceTypeId] [int] NOT NULL,
	[BillRecurrenceTypeName] [varchar](50) NOT NULL,
	[BillRecurrenceTypeCode] [varchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_BillRecurrenceType] PRIMARY KEY CLUSTERED 
(
	[BillRecurrenceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[BillRecurrenceUnitType]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[BillRecurrenceUnitType](
	[BillRecurrenceUnitTypeId] [int] NOT NULL,
	[BillRecurrenceUnitTypeName] [varchar](50) NOT NULL,
	[BillRecurrenceUnitTypeCode] [varchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_BillRecurrenceUnitTypeID] PRIMARY KEY CLUSTERED 
(
	[BillRecurrenceUnitTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[BillTemplate]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[BillTemplate](
	[BillTemplateId] [uniqueidentifier] NOT NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[EntityId] [uniqueidentifier] NOT NULL,
	[TemplateName] [nvarchar](255) NOT NULL,
	[TemplateDescription] [nvarchar](1000) NULL,
	[VendorId] [uniqueidentifier] NULL,
	[InvoiceNumber] [nvarchar](100) NULL,
	[InvoiceDate] [date] NULL,
	[DueDate] [date] NULL,
	[PaymentDate] [date] NULL,
	[BillAmount] [decimal](15, 2) NULL,
	[TaxAmount] [decimal](15, 2) NULL,
	[NetAmount] [decimal](15, 2) NULL,
	[CurrencyId] [uniqueidentifier] NULL,
	[PurchaseOrderNumber] [nvarchar](50) NULL,
	[VendorPaymentMethodId] [uniqueidentifier] NULL,
	[PaymentTerms] [nvarchar](50) NULL,
	[IsUrgentPriority] [bit] NOT NULL,
	[IsAutoPayUponApproval] [bit] NOT NULL,
	[HoldPayment] [bit] NULL,
	[HoldReason] [nvarchar](500) NULL,
	[RemittanceAddressLine1] [nvarchar](255) NULL,
	[RemittanceAddressLine2] [nvarchar](255) NULL,
	[RemittanceCity] [nvarchar](100) NULL,
	[RemittanceState] [nvarchar](50) NULL,
	[RemittancePostalCode] [nvarchar](20) NULL,
	[RemittanceCountry] [nvarchar](50) NULL,
	[Description] [nvarchar](1000) NULL,
	[Notes] [nvarchar](max) NULL,
	[HasRecurringSchedule] [bit] NOT NULL,
	[HasVendorDetail] [bit] NOT NULL,
	[HasCurrentDoc] [bit] NOT NULL,
	[HasCurrentDistribution] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[TemplateStatus] [nvarchar](30) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_BillTemplate_BillTemplateId] PRIMARY KEY CLUSTERED 
(
	[BillTemplateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[BillTemplateCustomDate]    Script Date: 11/19/2025 9:13:21 PM *****
 CREATE TABLE [dbo].[BillTemplateCustomDate](
	[BillTemplateCustomDateId] [uniqueidentifier] NOT NULL,
	[BillTemplateRecurrenceScheduleId] [uniqueidentifier] NOT NULL,
	[ScheduledDate] [date] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_BillTemplateCustomDate] PRIMARY KEY CLUSTERED 
(
	[BillTemplateCustomDateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[BillTemplateDistribution]    Script Date: 11/19/2025 9:13:21 PM *****
 CREATE TABLE [dbo].[BillTemplateDistribution](
	[BillTemplateDistributionId] [uniqueidentifier] NOT NULL,
	[BillTemplateId] [uniqueidentifier] NOT NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[EntityId] [uniqueidentifier] NOT NULL,
	[ChartOfAccountsId] [uniqueidentifier] NOT NULL,
	[LineNumber] [int] NOT NULL,
	[GlAccountNumber] [nvarchar](50) NOT NULL,
	[GlAccountName] [nvarchar](255) NULL,
	[LineItemDescription] [nvarchar](1000) NOT NULL,
	[Amount] [decimal](15, 2) NOT NULL,
	[Is1099Eligible] [bit] NOT NULL,
	[DistributionType] [nvarchar](20) NOT NULL,
	[DistributionPercentage] [decimal](5, 2) NULL,
	[ChildBillId] [uniqueidentifier] NULL,
	[Notes] [nvarchar](1000) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_BillTemplateDistribution] PRIMARY KEY CLUSTERED 
(
	[BillTemplateDistributionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[BillTemplateRecurrenceSchedule]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[BillTemplateRecurrenceSchedule](
	[BillTemplateRecurrenceScheduleId] [uniqueidentifier] NOT NULL,
	[BillTemplateId] [uniqueidentifier] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
	[SkipWeekendAndHolidays] [bit] NULL,
	[NextBillTemplateTriggerDate] [date] NOT NULL,
	[BillRecurrenceTypeId] [int] NOT NULL,
	[BillRecurrenceConditionTypeId] [int] NULL,
	[SelectedWeekDays] [nvarchar](55) NULL,
	[DayOfPeriod] [int] NULL,
	[CustomIntervalNumber] [int] NULL,
	[BillRecurrenceUnitTypeId] [int] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_BillTemplateRecurrenceSchedule] PRIMARY KEY CLUSTERED 
(
	[BillTemplateRecurrenceScheduleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[BusinessParty]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[BusinessParty](
	[BusinessPartyId] [uniqueidentifier] NOT NULL,
	[BusinessPartyNumber] [varchar](50) NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
	[BusinessPartyTypeId] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[BusinessPartyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[BusinessPartyNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[BusinessPartyType]    Script Date: 11/19/2025 9:13:21 PM *****
 CREATE TABLE [dbo].[BusinessPartyType](
	[BusinessPartyTypeId] [uniqueidentifier] NOT NULL,
	[TypeCode] [varchar](50) NOT NULL,
	[TypeName] [varchar](100) NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[BusinessPartyTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[TypeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[CalendarPatternName]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[CalendarPatternName](
	[CalendarPatternNameId] [uniqueidentifier] NOT NULL,
	[CalendarPatternName] [nvarchar](256) NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[EntityId] [uniqueidentifier] NULL,
	[NumberofPeriods] [int] NULL,
	[StartMonth] [int] NULL,
	[StartDay] [int] NULL,
	[EndMonth] [int] NULL,
	[EndDay] [int] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
	[Status] [varchar](50) NULL,
	[DeactivatedBy] [uniqueidentifier] NULL,
	[DeactivatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CalendarPatternNameId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[ChartOfAccounts]    Script Date: 11/19/2025 9:13:21 PM *****
 CREATE TABLE [dbo].[ChartOfAccounts](
	[ChartOfAccountsId] [uniqueidentifier] NOT NULL,
	[CustomerId] [uniqueidentifier] NULL,
	[ChartOfAccountsNameId] [uniqueidentifier] NULL,
	[AccountNumber] [varchar](50) NULL,
	[EntityId] [uniqueidentifier] NULL,
	[AccountType] [int] NULL,
	[AccountShortName] [varchar](128) NULL,
	[Description] [varchar](255) NULL,
	[ParentAccountId] [uniqueidentifier] NULL,
	[IsSummary] [bit] NULL,
	[IsPostable] [bit] NULL,
	[Note] [varchar](255) NULL,
	[Tags] [varchar](255) NULL,
	[IsActive] [bit] NULL,
	[DeactivatedBy] [uniqueidentifier] NULL,
	[DeactivatedDate] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
	[AccountCategoryId] [int] NULL,
	[AccountSubTypeName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ChartOfAccountsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[ChartOfAccountsHistory]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[ChartOfAccountsHistory](
	[ChartOfAccountsId] [uniqueidentifier] NOT NULL,
	[CustomerId] [uniqueidentifier] NULL,
	[ChartOfAccountsNameId] [uniqueidentifier] NULL,
	[AccountNumber] [varchar](50) NULL,
	[EntityId] [uniqueidentifier] NULL,
	[AccountType] [int] NULL,
	[AccountSubType] [varchar](50) NULL,
	[AccountShortName] [varchar](128) NULL,
	[Description] [varchar](255) NULL,
	[ParentAccountId] [uniqueidentifier] NULL,
	[IsSummary] [bit] NULL,
	[IsPostable] [bit] NULL,
	[Note] [varchar](255) NULL,
	[Tags] [varchar](255) NULL,
	[IsActive] [bit] NULL,
	[DeactivatedBy] [uniqueidentifier] NULL,
	[DeactivatedDate] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
	[AccountCategoryId] [int] NULL,
	[AccountSubTypeName] [varchar](50) NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedDate] [datetime] NULL,
	[ActionType] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ChartOfAccountsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[ChartOfAccountsImportStaging]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[ChartOfAccountsImportStaging](
	[StagingId] [uniqueidentifier] NOT NULL,
	[ChartOfAccountsNameId] [uniqueidentifier] NOT NULL,
	[BatchId] [varchar](50) NULL,
	[AccountNumber] [varchar](50) NULL,
	[AccountName] [varchar](256) NULL,
	[AccountType] [int] NULL,
	[AccountSubType] [varchar](50) NULL,
	[ParentAccountNumber] [varchar](50) NULL,
	[IsValid] [bit] NOT NULL,
	[ValidationMessage] [nvarchar](max) NULL,
	[StatusTypeId] [int] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[CustomerId] [uniqueidentifier] NULL,
	[AccountShortName] [varchar](128) NULL,
	[Description] [varchar](255) NULL,
	[IsSummary] [bit] NULL,
	[IsPostable] [bit] NULL,
 CONSTRAINT [PK_ChartOfAccountsImportStaging] PRIMARY KEY CLUSTERED 
(
	[StagingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[ChartOfAccountsName]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[ChartOfAccountsName](
	[ChartOfAccountsNameId] [uniqueidentifier] NOT NULL,
	[RetainedEarningsChartOfAccountsId] [uniqueidentifier] NULL,
	[ARAccuralChartOfAccountsId] [uniqueidentifier] NULL,
	[APAccrualChartOfAccountsId] [uniqueidentifier] NULL,
	[CustomerId] [uniqueidentifier] NULL,
	[COAName] [varchar](128) NULL,
	[Description] [varchar](255) NULL,
	[AccountNumberFormat] [varchar](255) NULL,
	[MaxHierarchyLevel] [int] NULL,
	[Note] [varchar](255) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
	[AllowSubSummary] [bit] NULL,
	[StatusTypeId] [int] NOT NULL,
	[IsStaged] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ChartOfAccountsNameId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[ColorChart]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[ColorChart](
	[ColorId] [uniqueidentifier] NOT NULL,
	[ColorCode] [varchar](255) NULL,
	[ColorName] [varchar](255) NULL,
	[HexCode] [varchar](7) NULL,
	[IsActive] [bit] NULL,
	[Status] [varchar](255) NULL,
	[DeactivatedBy] [uniqueidentifier] NULL,
	[DeactivatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ColorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[Contact]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[Contact](
	[ContactId] [uniqueidentifier] NOT NULL,
	[ContactInfoId] [uniqueidentifier] NOT NULL,
	[IsPrimary] [bit] NULL,
	[UseAsPrimaryAddress] [bit] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC,
	[ContactInfoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[ContactInformation]    Script Date: 11/19/2025 9:13:21 PM *****
 CREATE TABLE [dbo].[ContactInformation](
	[ContactInfoId] [uniqueidentifier] NOT NULL,
	[ContactTypeId] [uniqueidentifier] NOT NULL,
	[Value] [nvarchar](max) NULL,
	[IsVerified] [bit] NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ContactInfoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[ContactType]    Script Date: 11/19/2025 9:13:21 PM *****
 
CREATE TABLE [dbo].[ContactType](
	[ContactTypeId] [uniqueidentifier] NOT NULL,
	[TypeCode] [varchar](20) NOT NULL,
	[TypeName] [nvarchar](50) NOT NULL,
	[ValidationPattern] [varchar](500) NULL,
	[MaxLength] [int] NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ContactTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[TypeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[Country]    Script Date: 11/19/2025 9:13:21 PM *****
 

CREATE TABLE [dbo].[Country](
	[CountryId] [uniqueidentifier] NOT NULL,
	[Iso] [nvarchar](2) NOT NULL,
	[Iso3] [nvarchar](3) NOT NULL,
	[IsoNumber] [int] NOT NULL,
	[PhoneCode] [nvarchar](10) NOT NULL,
	[CountryName] [nvarchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[PhoneNumberLength] [int] NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[Currency]    Script Date: 11/19/2025 9:13:21 PM *****
 
CREATE TABLE [dbo].[Currency](
	[CurrencyId] [uniqueidentifier] NOT NULL,
	[CurrencyCode] [varchar](3) NOT NULL,
	[CurrencyName] [varchar](50) NOT NULL,
	[Symbol] [nvarchar](5) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[CurrencyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[CurrencyCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[Customer]    Script Date: 11/19/2025 9:13:21 PM *****

CREATE TABLE [dbo].[Customer](
	[CustomerId] [uniqueidentifier] NOT NULL,
	[CustomerName] [nvarchar](128) NOT NULL,
	[CustomerTypeId] [uniqueidentifier] NOT NULL,
	[OfficeCode] [nvarchar](25) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[CustomerNumber] [varchar](50) NULL,
	[Description] [varchar](255) NULL,
	[TIN] [varchar](50) NULL,
	[TCCNumber] [varchar](50) NULL,
	[UseMailingAddressAsPrimary] [bit] NULL,
	[BusinessPartyId] [uniqueidentifier] NULL,
	[DeactivatedDate] [datetime] NULL,
	[DeactivatedBy] [uniqueidentifier] NULL,
	[IsZenithCustomer] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[CustomerTeam]    Script Date: 11/19/2025 9:13:21 PM *****

CREATE TABLE [dbo].[CustomerTeam](
	[TeamId] [uniqueidentifier] NOT NULL,
	[TeamName] [nvarchar](50) NOT NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[TeamId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[CustomerTeamMember]    Script Date: 11/19/2025 9:13:21 PM *****

CREATE TABLE [dbo].[CustomerTeamMember](
	[TeamMemberId] [uniqueidentifier] NOT NULL,
	[TeamId] [uniqueidentifier] NOT NULL,
	[UserRoleId] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[TeamMemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[CustomerType]    Script Date: 11/19/2025 9:13:21 PM *****

CREATE TABLE [dbo].[CustomerType](
	[CustomerTypeId] [uniqueidentifier] NOT NULL,
	[TypeCode] [nvarchar](50) NOT NULL,
	[TypeValue] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[TypeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[DataSet]    Script Date: 11/19/2025 9:13:21 PM *****

CREATE TABLE [dbo].[DataSet](
	[DataSetId] [uniqueidentifier] NOT NULL,
	[DataSetName] [nvarchar](100) NOT NULL,
	[DataSetType] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[DataSetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[DelegationActivationPeriod]    Script Date: 11/19/2025 9:13:21 PM *****
 
CREATE TABLE [dbo].[DelegationActivationPeriod](
	[DelegationActivationPeriodId] [uniqueidentifier] NOT NULL,
	[UserDelegationId] [uniqueidentifier] NOT NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_DelegationActivationPeriod] PRIMARY KEY CLUSTERED 
(
	[DelegationActivationPeriodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[DelegationEntityAssignment]    Script Date: 11/19/2025 9:13:21 PM *****
 
CREATE TABLE [dbo].[DelegationEntityAssignment](
	[DelegationEntityAssignmentId] [uniqueidentifier] NOT NULL,
	[UserDelegationId] [uniqueidentifier] NOT NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[Id] [uniqueidentifier] NULL,
	[EntityId] [uniqueidentifier] NULL,
	[EntityName] [nvarchar](200) NOT NULL,
	[PendingApprovalCount] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_DelegationEntityAssignment] PRIMARY KEY CLUSTERED 
(
	[DelegationEntityAssignmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[DelegationEntityDelegate]    Script Date: 11/19/2025 9:13:21 PM *****
 
CREATE TABLE [dbo].[DelegationEntityDelegate](
	[DelegationEntityDelegateId] [uniqueidentifier] NOT NULL,
	[DelegationEntityAssignmentId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[DelegateOrder] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_DelegationEntityDelegate] PRIMARY KEY CLUSTERED 
(
	[DelegationEntityDelegateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_DelegationEntityDelegate] UNIQUE NONCLUSTERED 
(
	[DelegationEntityAssignmentId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[DelegationStatusType]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[DelegationStatusType](
	[DelegationStatusTypeId] [int] NOT NULL,
	[StatusCode] [varchar](50) NOT NULL,
	[StatusName] [varchar](100) NOT NULL,
	[StatusDescription] [varchar](255) NULL,
	[IsActive] [bit] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_DelegationStatusType] PRIMARY KEY CLUSTERED 
(
	[DelegationStatusTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_DelegationStatusType_Code] UNIQUE NONCLUSTERED 
(
	[StatusCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[DelegationTaskAuditLog]    Script Date: 11/19/2025 9:13:21 PM *****

CREATE TABLE [dbo].[DelegationTaskAuditLog](
	[DelegationTaskAuditLogId] [uniqueidentifier] NOT NULL,
	[TaskId] [uniqueidentifier] NOT NULL,
	[UserDelegationId] [uniqueidentifier] NOT NULL,
	[DelegationActivationPeriodId] [uniqueidentifier] NULL,
	[OriginalUserId] [uniqueidentifier] NOT NULL,
	[DelegateUserId] [uniqueidentifier] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_DelegationTaskAuditLog] PRIMARY KEY CLUSTERED 
(
	[DelegationTaskAuditLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[DepositDistribution]    Script Date: 11/19/2025 9:13:21 PM *****

CREATE TABLE [dbo].[DepositDistribution](
	[DepositDistributionId] [uniqueidentifier] NOT NULL,
	[DepositId] [uniqueidentifier] NOT NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[EntityId] [uniqueidentifier] NOT NULL,
	[ChartOfAccountsId] [uniqueidentifier] NOT NULL,
	[LineNumber] [int] NOT NULL,
	[GlAccountNumber] [nvarchar](50) NOT NULL,
	[GlAccountName] [nvarchar](255) NULL,
	[LineItemDescription] [nvarchar](1000) NOT NULL,
	[Amount] [decimal](15, 2) NOT NULL,
	[CommissionProcessed] [bit] NOT NULL,
	[CommissionProcessedDate] [datetime2](7) NULL,
	[AppliedCommissionRuleId] [uniqueidentifier] NULL,
	[CalculatedCommissionAmount] [decimal](15, 2) NULL,
	[Notes] [nvarchar](1000) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_DepositDistribution] PRIMARY KEY CLUSTERED 
(
	[DepositDistributionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[DepositHeader]    Script Date: 11/19/2025 9:13:21 PM *****
 

CREATE TABLE [dbo].[DepositHeader](
	[DepositId] [uniqueidentifier] NOT NULL,
	[DepositNumber] [nvarchar](50) NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[EntityId] [uniqueidentifier] NOT NULL,
	[BankAccountId] [uniqueidentifier] NOT NULL,
	[DepositDate] [date] NOT NULL,
	[DepositAmount] [decimal](15, 2) NOT NULL,
	[DepositSource] [nvarchar](100) NULL,
	[DepositPaymentMethodTypeId] [int] NOT NULL,
	[ExternalTransactionReference] [nvarchar](100) NULL,
	[BankTransactionRegisterId] [nvarchar](100) NULL,
	[VendorId] [uniqueidentifier] NOT NULL,
	[PayorName] [nvarchar](255) NOT NULL,
	[PayorAccountNumber] [nvarchar](50) NULL,
	[DepositStatusId] [int] NOT NULL,
	[ClearedDate] [date] NULL,
	[TriggersCommission] [bit] NOT NULL,
	[CommissionProcessed] [bit] NOT NULL,
	[CommissionProcessedDate] [datetime2](7) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[DepositId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[Document]    Script Date: 11/19/2025 9:13:21 PM *****
 

CREATE TABLE [dbo].[Document](
	[DocumentId] [uniqueidentifier] NOT NULL,
	[DocumentTypeId] [uniqueidentifier] NOT NULL,
	[Name] [varchar](500) NULL,
	[DocLink] [varchar](500) NOT NULL,
	[DocumentData] [binary](500) NULL,
	[EntryDate] [datetime] NULL,
	[Note] [varchar](500) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
	[Status] [varchar](50) NULL,
	[DeactivatedBY] [uniqueidentifier] NULL,
	[DeactivatedDate] [datetime] NULL,
	[OriginalFileName] [varchar](500) NULL,
	[Description] [varchar](256) NULL,
	[FileSize] [bigint] NULL,
	[FileTypeId] [int] NULL,
	[DocumentCategoryTypeId] [int] NULL,
	[ProcessingMethodTypeId] [int] NOT NULL,
	[HighPriority] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedDate] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[CustomerId] [uniqueidentifier] NULL,
	[ClientEnterpriseId] [uniqueidentifier] NULL,
	[EntityId] [uniqueidentifier] NULL,
	[ThumbnailPath] [varchar](500) NULL,
	[LastViewedDate] [datetime] NULL,
	[LastViewedBy] [uniqueidentifier] NULL,
	[TotalPages] [int] NULL,
	[ParentDocumentId] [uniqueidentifier] NULL,
	[IsOriginal] [bit] NOT NULL,
	[DocumentVersion] [int] NOT NULL,
	[DocumentStatusId] [int] NULL,
	[IsRecycleBin] [bit] NULL,
	[IsHardDelete] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[DocumentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[DocumentCategoryType]    Script Date: 11/19/2025 9:13:21 PM *****
 

CREATE TABLE [dbo].[DocumentCategoryType](
	[DocumentCategoryTypeId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
	[CategoryCode] [nvarchar](20) NOT NULL,
	[CategoryDescription] [nvarchar](200) NULL,
	[SortOrder] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_DocumentCategoryType] PRIMARY KEY CLUSTERED 
(
	[DocumentCategoryTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[DocumentHistory]    Script Date: 11/19/2025 9:13:21 PM *****
 

CREATE TABLE [dbo].[DocumentHistory](
	[HistoryId] [uniqueidentifier] NOT NULL,
	[DocumentId] [uniqueidentifier] NOT NULL,
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
--  Object:  Table [dbo].[DocumentProcessingQueue]    Script Date: 11/19/2025 9:13:21 PM *****
 

CREATE TABLE [dbo].[DocumentProcessingQueue](
	[QueueId] [uniqueidentifier] NOT NULL,
	[SourceTypeId] [int] NOT NULL,
	[EmailMessageId] [uniqueidentifier] NULL,
	[UploadedBy] [uniqueidentifier] NULL,
	[FileName] [varchar](500) NOT NULL,
	[FileSize] [bigint] NULL,
	[FileExtension] [varchar](50) NULL,
	[FileHash] [varchar](128) NULL,
	[ExtractedPath] [varchar](500) NULL,
	[ScannedPath] [varchar](500) NULL,
	[CurrentStageId] [int] NOT NULL,
	[ProcessingStatusId] [int] NOT NULL,
	[ScanStatusId] [int] NOT NULL,
	[ScanDate] [datetime] NULL,
	[InfectionInfo] [nvarchar](500) NULL,
	[ECMUploadDate] [datetime] NULL,
	[ECMDocId] [varchar](500) NULL,
	[DocumentId] [uniqueidentifier] NULL,
	[OrchestratorCalled] [bit] NOT NULL,
	[OrchestratorDate] [datetime] NULL,
	[Priority] [int] NOT NULL,
	[RequiresReview] [bit] NOT NULL,
	[ReviewNotes] [nvarchar](max) NULL,
	[CustomerId] [uniqueidentifier] NULL,
	[ClientEnterpriseId] [uniqueidentifier] NULL,
	[EntityId] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ProcessingStartDate] [datetime] NULL,
	[ProcessingEndDate] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
	[DocumentTypeId] [uniqueidentifier] NOT NULL,
	[FileTypeId] [int] NULL,
	[DocumentCategoryTypeId] [int] NULL,
	[ProcessingMethodTypeId] [int] NOT NULL,
	[Note] [varchar](500) NULL,
	[Description] [varchar](256) NULL,
	[HighPriority] [bit] NOT NULL,
	[DocumentStatusId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[QueueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[DocumentProcessStatus]    Script Date: 11/19/2025 9:13:21 PM *****
 

CREATE TABLE [dbo].[DocumentProcessStatus](
	[DocumentProcessStatusId] [int] IDENTITY(1,1) NOT NULL,
	[DocumentProcessStatusTypeId] [int] NOT NULL,
	[StatusName] [nvarchar](100) NOT NULL,
	[StatusCode] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_DocumentProcessStatus] PRIMARY KEY CLUSTERED 
(
	[DocumentProcessStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[DocumentProcessStatusType]    Script Date: 11/19/2025 9:13:21 PM *****
 

CREATE TABLE [dbo].[DocumentProcessStatusType](
	[DocumentProcessStatusTypeId] [int] IDENTITY(1,1) NOT NULL,
	[StatusTypeName] [nvarchar](100) NOT NULL,
	[StatusTypeCode] [nvarchar](50) NOT NULL,
	[ModuleFunctionId] [uniqueidentifier] NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_DocumentProcessStatusType] PRIMARY KEY CLUSTERED 
(
	[DocumentProcessStatusTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[DocumentStatus]    Script Date: 11/19/2025 9:13:21 PM *****
 

CREATE TABLE [dbo].[DocumentStatus](
	[DocumentStatusId] [int] IDENTITY(1,1) NOT NULL,
	[StatusCode] [varchar](50) NOT NULL,
	[StatusName] [varchar](100) NOT NULL,
	[StatusCategory] [varchar](50) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DocumentStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[StatusCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[DocumentType]    Script Date: 11/19/2025 9:13:21 PM *****
 

CREATE TABLE [dbo].[DocumentType](
	[DocumentTypeId] [uniqueidentifier] NOT NULL,
	[DocumentTypeName] [varchar](max) NOT NULL,
	[DocumentTypeDescirption] [varchar](max) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
	[AppName] [varchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[DocumentTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[DomainMaster]    Script Date: 11/19/2025 9:13:21 PM *****
 

CREATE TABLE [dbo].[DomainMaster](
	[DomainId] [uniqueidentifier] NOT NULL,
	[DomainName] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DomainId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[DraftSequence]    Script Date: 11/19/2025 9:13:21 PM *****
 

CREATE TABLE [dbo].[DraftSequence](
	[DraftSequenceId] [uniqueidentifier] NOT NULL,
	[EntityId] [uniqueidentifier] NOT NULL,
	[FiscalYear] [int] NULL,
	[LastSequenceNumber] [int] NOT NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_DraftSequence] PRIMARY KEY CLUSTERED 
(
	[DraftSequenceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UK_DraftSequence_Entity_Year] UNIQUE NONCLUSTERED 
(
	[EntityId] ASC,
	[FiscalYear] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[EmailDomain]    Script Date: 11/19/2025 9:13:21 PM *****
 

CREATE TABLE [dbo].[EmailDomain](
	[EmailDomainId] [uniqueidentifier] NOT NULL,
	[DomainName] [nvarchar](255) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[EmailDomainId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[DomainName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[EmailMessage]    Script Date: 11/19/2025 9:13:21 PM *****
 
CREATE TABLE [dbo].[EmailMessage](
	[EmailMessageId] [uniqueidentifier] NOT NULL,
	[MessageId] [varchar](500) NOT NULL,
	[Subject] [nvarchar](500) NULL,
	[SenderEmail] [varchar](255) NOT NULL,
	[SenderName] [nvarchar](255) NULL,
	[RecipientEmail] [varchar](255) NOT NULL,
	[RecipientName] [nvarchar](255) NULL,
	[EmailBody] [nvarchar](max) NULL,
	[ReceivedDate] [datetime] NOT NULL,
	[AttachmentCount] [int] NOT NULL,
	[MsgFilePath] [varchar](500) NULL,
	[CustomerId] [uniqueidentifier] NULL,
	[ClientEnterpriseId] [uniqueidentifier] NULL,
	[EntityId] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EmailMessageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[MessageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[Enterprise]    Script Date: 11/19/2025 9:13:21 PM *****
 

CREATE TABLE [dbo].[Enterprise](
	[Id] [uniqueidentifier] NOT NULL,
	[EnterpriseNumber] [varchar](50) NULL,
	[CustomerId] [uniqueidentifier] NULL,
	[EnterpriseName] [nvarchar](130) NULL,
	[Description] [nvarchar](256) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
	[DeactivatedDate] [datetime] NULL,
	[DeactivatedBy] [uniqueidentifier] NULL,
	[IsCascadeDeactivation] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[Entitlement]    Script Date: 11/19/2025 9:13:21 PM *****
 

CREATE TABLE [dbo].[Entitlement](
	[EntitlementId] [uniqueidentifier] NOT NULL,
	[EntitlementName] [nvarchar](50) NOT NULL,
	[EntitlementTypeId] [uniqueidentifier] NOT NULL,
	[EntitlementGroupId] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[EntitlementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[EntitlementGroup]    Script Date: 11/19/2025 9:13:21 PM *****
 

CREATE TABLE [dbo].[EntitlementGroup](
	[EntitlementGroupId] [uniqueidentifier] NOT NULL,
	[GroupName] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[PermissionId] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[EntitlementGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[EntitlementType]    Script Date: 11/19/2025 9:13:21 PM *****

CREATE TABLE [dbo].[EntitlementType](
	[EntitlementTypeId] [uniqueidentifier] NOT NULL,
	[TypeCode] [nvarchar](50) NOT NULL,
	[TypeValue] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[EntitlementTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[TypeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[Entity]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[Entity](
	[Id] [uniqueidentifier] NOT NULL,
	[EntityNumber] [varchar](50) NULL,
	[EnterpriseId] [uniqueidentifier] NULL,
	[CustomerId] [uniqueidentifier] NULL,
	[EntityName] [nvarchar](130) NULL,
	[CashOrAccuralBasisIndicator] [varchar](10) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
	[EntityAddress] [nvarchar](255) NULL,
	[PreferredCurrencyId] [uniqueidentifier] NULL,
	[EIN] [varchar](20) NULL,
	[UseMailingAddressAsPrimary] [bit] NULL,
	[BusinessPartyId] [uniqueidentifier] NULL,
	[ChartOfAccountsNameId] [uniqueidentifier] NULL,
	[EntityTypeId] [uniqueidentifier] NULL,
	[CurrentFiscalYear] [int] NULL,
	[CurrentOpenPeriod] [int] NULL,
	[InceptionFicaslYear] [int] NULL,
	[InceptionFiscalPeriod] [int] NULL,
	[DeactivatedDate] [datetime] NULL,
	[DeactivatedBY] [uniqueidentifier] NULL,
	[FinancialInstitutionId] [uniqueidentifier] NULL,
	[DocumentId] [uniqueidentifier] NULL,
	[SIN] [varchar](20) NULL,
	[SSN] [varchar](20) NULL,
	[Note] [varchar](255) NULL,
	[CalendarPatternNameId] [uniqueidentifier] NULL,
	[EntityShortName] [varchar](50) NULL,
	[IsCascadeDeactivation] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_Entity_EntityNumber_CustomerId] UNIQUE NONCLUSTERED 
(
	[EntityNumber] ASC,
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[EntityGroup]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[EntityGroup](
	[Id] [uniqueidentifier] NOT NULL,
	[EntityGroupNumber] [varchar](50) NULL,
	[EnterpriseId] [uniqueidentifier] NULL,
	[CustomerId] [uniqueidentifier] NULL,
	[EntityGroupName] [varchar](128) NULL,
	[Description] [varchar](256) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[EntityGroupNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[EntityGroupMapping]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[EntityGroupMapping](
	[EntityId] [uniqueidentifier] NOT NULL,
	[EntityGroupId] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC,
	[EntityGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[EntityHistory]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[EntityHistory](
	[HistoryId] [uniqueidentifier] NOT NULL,
	[EntityId] [uniqueidentifier] NOT NULL,
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
--  Object:  Table [dbo].[EntityType]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[EntityType](
	[EntityTypeId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](255) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[EntityIcon] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[TypeCode] [nvarchar](50) NOT NULL,
	[TypeValue] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EntityTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[FeatureType]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[FeatureType](
	[FeatureTypeId] [uniqueidentifier] NOT NULL,
	[TypeCode] [nvarchar](50) NOT NULL,
	[TypeValue] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[FeatureTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[TypeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[FieldChangeHistory]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[FieldChangeHistory](
	[ChangeId] [uniqueidentifier] NOT NULL,
	[InstanceId] [uniqueidentifier] NOT NULL,
	[FieldName] [nvarchar](100) NOT NULL,
	[FieldPath] [nvarchar](500) NULL,
	[OldValue] [nvarchar](max) NULL,
	[NewValue] [nvarchar](max) NULL,
	[ChangeType] [nvarchar](50) NOT NULL,
	[ChangedAt] [datetime2](7) NOT NULL,
	[ChangedBy] [uniqueidentifier] NOT NULL,
	[ChangeReason] [nvarchar](255) NULL,
	[ChangeSource] [nvarchar](100) NULL,
	[ResetApproval] [bit] NOT NULL,
	[AffectedTaskIds] [nvarchar](max) NULL,
	[IsSignificantChange] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_FieldChangeHistory] PRIMARY KEY CLUSTERED 
(
	[ChangeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[FieldPermission]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[FieldPermission](
	[PermissionId] [uniqueidentifier] NOT NULL,
	[WorkflowDefinitionId] [uniqueidentifier] NOT NULL,
	[ParameterId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[StateFilter] [nvarchar](max) NULL,
	[IsEditable] [bit] NOT NULL,
	[ResetApprovalOnEdit] [bit] NOT NULL,
	[RequiresJustification] [bit] NOT NULL,
	[NotifyOnChange] [bit] NOT NULL,
	[NotificationTargets] [nvarchar](max) NULL,
	[PermissionLevel] [nvarchar](50) NOT NULL,
	[ConditionalRules] [nvarchar](max) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_FieldPermission] PRIMARY KEY CLUSTERED 
(
	[PermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[FIEntitlement]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[FIEntitlement](
	[FIEntitlementId] [uniqueidentifier] NOT NULL,
	[FinancialInstitutionId] [uniqueidentifier] NOT NULL,
	[BankingEntitlementsId] [uniqueidentifier] NOT NULL,
	[Configuration] [varchar](500) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK__FIEntitlement] PRIMARY KEY CLUSTERED 
(
	[FIEntitlementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[FileType]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[FileType](
	[FileTypeId] [int] IDENTITY(1,1) NOT NULL,
	[TypeCode] [nvarchar](50) NOT NULL,
	[TypeValue] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Extension] [nvarchar](20) NOT NULL,
	[MimeType] [nvarchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_FileType] PRIMARY KEY CLUSTERED 
(
	[FileTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[FinancialInstitution]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[FinancialInstitution](
	[FinancialInstitutionId] [uniqueidentifier] NOT NULL,
	[Name] [varchar](255) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
	[BusinessPartyId] [uniqueidentifier] NULL,
 CONSTRAINT [PK__FinancialInstitution] PRIMARY KEY CLUSTERED 
(
	[FinancialInstitutionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[FinancialInstitutions]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[FinancialInstitutions](
	[FinancialInstitutionId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FinancialInstitutionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[FiscalCalendarDetail]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[FiscalCalendarDetail](
	[CalendarPatternNameId] [uniqueidentifier] NOT NULL,
	[FiscalYearNumber] [int] NOT NULL,
	[FiscalPeriodNumber] [int] NOT NULL,
	[PeriodStartDate] [date] NULL,
	[PeriodEndDate] [date] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
	[Status] [varchar](50) NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[EntityId] [uniqueidentifier] NULL,
	[FiscalCalendardetailId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_FiscalCalendardetail_FiscalCalendardetailId] PRIMARY KEY CLUSTERED 
(
	[FiscalCalendardetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_FiscalCalendarDetail] UNIQUE NONCLUSTERED 
(
	[CalendarPatternNameId] ASC,
	[FiscalYearNumber] ASC,
	[FiscalPeriodNumber] ASC,
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[GLAllocationDetail]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[GLAllocationDetail](
	[GLAllocationDetailId] [uniqueidentifier] NOT NULL,
	[CustomerId] [uniqueidentifier] NULL,
	[GLAllocationHeaderId] [uniqueidentifier] NULL,
	[AccountName] [varchar](100) NULL,
	[AllocationPercentage] [decimal](18, 2) NULL,
	[Description] [varchar](255) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
	[Status] [varchar](50) NULL,
	[DeactivatedBy] [uniqueidentifier] NULL,
	[DeactivatedDate] [datetime] NULL,
	[COANameId] [uniqueidentifier] NULL,
	[Tags] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[GLAllocationDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[GLAllocationHeader]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[GLAllocationHeader](
	[GLAllocationHeaderId] [uniqueidentifier] NOT NULL,
	[EntityId] [uniqueidentifier] NULL,
	[CustomerId] [uniqueidentifier] NULL,
	[AllocationName] [varchar](100) NULL,
	[Description] [varchar](255) NULL,
	[AllocationMethod] [varchar](50) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
	[Status] [varchar](50) NULL,
	[DeactivatedBy] [uniqueidentifier] NULL,
	[DeactivatedDate] [datetime] NULL,
	[Tags] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[GLAllocationHeaderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[AllocationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[GLBalance]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[GLBalance](
	[GlBalanceId] [uniqueidentifier] NOT NULL,
	[EntityId] [uniqueidentifier] NOT NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[COAId] [uniqueidentifier] NOT NULL,
	[FiscalYear] [int] NOT NULL,
	[Dimension] [char](1) NOT NULL,
	[TypeIndicator] [bit] NOT NULL,
	[Period] [int] NOT NULL,
	[NetCredit] [decimal](18, 2) NULL,
	[NetDebit] [decimal](18, 2) NULL,
	[Balance] [decimal](18, 2) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
	[DeactivatedBy] [uniqueidentifier] NULL,
	[DeactivatedDate] [datetime] NULL,
 CONSTRAINT [PK_GLBalance] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC,
	[CustomerId] ASC,
	[COAId] ASC,
	[FiscalYear] ASC,
	[Dimension] ASC,
	[TypeIndicator] ASC,
	[Period] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[GLConfig]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[GLConfig](
	[GLconfigId] [uniqueidentifier] NOT NULL,
	[EntityId] [uniqueidentifier] NULL,
	[CustomerId] [uniqueidentifier] NULL,
	[EntityNumber] [varchar](50) NULL,
	[COANameId] [uniqueidentifier] NULL,
	[CurrentFiscalYear] [int] NULL,
	[CurrentOpenPeriod] [int] NULL,
	[AccountNumber] [varchar](50) NULL,
	[RetainedEarningsCOAId] [uniqueidentifier] NULL,
	[CalendarPatternNameId ] [uniqueidentifier] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
	[Status] [varchar](50) NULL,
	[DeactivatedBY] [uniqueidentifier] NULL,
	[DeactivatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[GLconfigId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[GLDailyBalance]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[GLDailyBalance](
	[GlDailyBalanceId] [uniqueidentifier] NOT NULL,
	[EntityId] [uniqueidentifier] NOT NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[COAId] [uniqueidentifier] NOT NULL,
	[Year] [int] NOT NULL,
	[Month] [int] NOT NULL,
	[Day] [int] NOT NULL,
	[Dimension] [char](1) NOT NULL,
	[NetCredit] [decimal](18, 2) NULL,
	[NetDebit] [decimal](18, 2) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_GLDailyBalance] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC,
	[CustomerId] ASC,
	[COAId] ASC,
	[Year] ASC,
	[Dimension] ASC,
	[Month] ASC,
	[Day] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[GLJETemplate]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[GLJETemplate](
	[GLJETemplateId] [uniqueidentifier] NOT NULL,
	[EntityId] [uniqueidentifier] NULL,
	[CustomerId] [uniqueidentifier] NULL,
	[TemplateName] [varchar](255) NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
	[Description] [varchar](255) NOT NULL,
	[IsCurrentDocument] [bit] NULL,
	[IsCurrentDistribution] [bit] NULL,
 CONSTRAINT [PK_GLJETemplate_GLJETemplateId] PRIMARY KEY CLUSTERED 
(
	[GLJETemplateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[GLJETemplateDefinition]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[GLJETemplateDefinition](
	[GLJETemplateDefinitionId] [uniqueidentifier] NOT NULL,
	[GLJETemplateId] [uniqueidentifier] NULL,
	[COAId] [uniqueidentifier] NULL,
	[EntityId] [uniqueidentifier] NULL,
	[CustomerId] [uniqueidentifier] NULL,
	[Dimension] [char](1) NULL,
	[Amount] [decimal](18, 2) NULL,
	[DebitCredit] [char](1) NULL,
	[Description] [varchar](255) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
	[Status] [varchar](50) NULL,
	[JournalEntryStatusTypeId] [int] NULL,
 CONSTRAINT [PK_GLJETemplateDefinition_GLJETemplateDefinitionId] PRIMARY KEY CLUSTERED 
(
	[GLJETemplateDefinitionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[GLJournalEntryDetail]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[GLJournalEntryDetail](
	[GLJournalEntryDetailId] [uniqueidentifier] NOT NULL,
	[GLJournalEntryHeaderId] [uniqueidentifier] NULL,
	[COAId] [uniqueidentifier] NULL,
	[EntityId] [uniqueidentifier] NULL,
	[CustomerId] [uniqueidentifier] NULL,
	[Dimension] [char](1) NULL,
	[Amount] [decimal](18, 2) NULL,
	[DebitCredit] [char](1) NULL,
	[JournalSource] [varchar](255) NULL,
	[JournalStatus] [varchar](50) NULL,
	[Description] [varchar](256) NULL,
	[Tags] [varchar](255) NULL,
	[Notes] [varchar](max) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
	[Status] [varchar](50) NULL,
	[DeactivatedBY] [uniqueidentifier] NULL,
	[DeactivatedDate] [datetime] NULL,
	[JournalEntryStatusTypeId] [int] NULL,
	[Version] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[GLJournalEntryDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[GLJournalEntryDetailHistory]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[GLJournalEntryDetailHistory](
	[HistoryId] [uniqueidentifier] NOT NULL,
	[GLJournalEntryDetailId] [uniqueidentifier] NOT NULL,
	[GLJournalEntryHeaderId] [uniqueidentifier] NULL,
	[COAId] [uniqueidentifier] NULL,
	[EntityId] [uniqueidentifier] NULL,
	[CustomerId] [uniqueidentifier] NULL,
	[Dimension] [char](1) NULL,
	[Amount] [decimal](18, 2) NULL,
	[DebitCredit] [char](1) NULL,
	[JournalSource] [varchar](255) NULL,
	[JournalStatus] [varchar](50) NULL,
	[Description] [varchar](255) NULL,
	[Tags] [varchar](255) NULL,
	[Notes] [varchar](255) NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedDate] [datetime] NOT NULL,
	[DeletionReason] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[HistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[GLJournalEntryDetailStaging]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[GLJournalEntryDetailStaging](
	[GLJournalEntryDetailStagingId] [uniqueidentifier] NOT NULL,
	[GLJournalEntryHeaderStagingId] [uniqueidentifier] NULL,
	[COAId] [uniqueidentifier] NULL,
	[EntityId] [uniqueidentifier] NULL,
	[CustomerId] [uniqueidentifier] NULL,
	[Dimension] [char](1) NULL,
	[Amount] [decimal](18, 2) NULL,
	[DebitCredit] [char](1) NULL,
	[JournalSource] [varchar](255) NULL,
	[JournalStatus] [varchar](50) NULL,
	[Description] [varchar](255) NULL,
	[Tags] [varchar](255) NULL,
	[Notes] [varchar](255) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
	[Status] [varchar](50) NULL,
	[DeactivatedBY] [uniqueidentifier] NULL,
	[DeactivatedDate] [datetime] NULL,
	[IsValid] [bit] NOT NULL,
	[ValidationMessage] [nvarchar](max) NULL,
	[StatusTypeId] [int] NOT NULL,
	[JournalNumber] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[GLJournalEntryDetailStagingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[GLJournalEntryDocument]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[GLJournalEntryDocument](
	[GLJournalEntryDocumentId] [uniqueidentifier] NOT NULL,
	[DocumentId] [uniqueidentifier] NOT NULL,
	[GLJournalEntryHeaderId] [uniqueidentifier] NOT NULL,
	[EntryDate] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
	[Status] [varchar](50) NULL,
	[DeactivatedBY] [uniqueidentifier] NULL,
	[DeactivatedDate] [datetime] NULL,
	[IsStaged] [bit] NULL,
	[GLJETemplateId] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[GLJournalEntryDocumentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[GLJournalEntryHeader]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[GLJournalEntryHeader](
	[GLJournalEntryHeaderId] [uniqueidentifier] NOT NULL,
	[EntityId] [uniqueidentifier] NULL,
	[CustomerId] [uniqueidentifier] NULL,
	[BatchName] [varchar](50) NULL,
	[DimensionId] [char](1) NULL,
	[EntryDate] [datetime] NULL,
	[EffectiveDate] [datetime] NULL,
	[Description] [varchar](256) NULL,
	[CashOrAccrualBasisIndicator] [char](1) NULL,
	[JournalStatus] [varchar](50) NULL,
	[ApprovalStatus] [varchar](50) NULL,
	[Notes] [varchar](255) NULL,
	[IsPosted] [bit] NULL,
	[IsYearEndAdjustment] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
	[Status] [varchar](50) NULL,
	[DeactivatedBY] [uniqueidentifier] NULL,
	[DeactivatedDate] [datetime] NULL,
	[JournalEntryStatusTypeId] [int] NULL,
	[ControlTotal] [decimal](18, 2) NULL,
	[JournalId] [varchar](50) NULL,
	[PostedDate] [datetime] NULL,
	[PostedBy] [uniqueidentifier] NULL,
	[IsManual] [bit] NULL,
	[IsYEClosing] [bit] NULL,
	[RecordVersionNumber] [timestamp] NULL,
	[DraftId] [varchar](50) NULL,
	[JournalSource] [varchar](50) NULL,
	[Version] [int] NOT NULL,
	[IsValid] [bit] NOT NULL,
	[ValidationMessage] [nvarchar](max) NULL,
	[isCustomJournalId] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[GLJournalEntryHeaderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[GLJournalEntryHeaderHistory]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[GLJournalEntryHeaderHistory](
	[HistoryId] [uniqueidentifier] NOT NULL,
	[GLJournalEntryHeaderId] [uniqueidentifier] NOT NULL,
	[EntityId] [uniqueidentifier] NULL,
	[CustomerId] [uniqueidentifier] NULL,
	[BatchName] [varchar](50) NULL,
	[DimensionId] [char](1) NULL,
	[EntryDate] [datetime] NULL,
	[EffectiveDate] [datetime] NULL,
	[Description] [varchar](255) NULL,
	[CashOrAccrualBasisIndicator] [char](1) NULL,
	[JournalStatus] [varchar](50) NULL,
	[ApprovalStatus] [varchar](50) NULL,
	[Notes] [varchar](255) NULL,
	[IsPosted] [bit] NULL,
	[IsYearEndAdjustment] [bit] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedDate] [datetime] NOT NULL,
	[DeletionReason] [varchar](500) NULL,
	[ControlTotal] [decimal](18, 2) NULL,
	[RecordVersionNumber] [timestamp] NULL,
	[IsYEClosing] [bit] NULL,
	[IsManual] [bit] NULL,
	[PostedBy] [uniqueidentifier] NULL,
	[PostedDate] [datetime] NULL,
	[JournalId] [varchar](50) NULL,
	[DraftId] [varchar](50) NULL,
	[JournalSource] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[HistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[GLJournalEntryHeaderStaging]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[GLJournalEntryHeaderStaging](
	[GLJournalEntryHeaderStagingId] [uniqueidentifier] NOT NULL,
	[EntityId] [uniqueidentifier] NULL,
	[CustomerId] [uniqueidentifier] NULL,
	[BatchName] [varchar](50) NULL,
	[DimensionId] [char](1) NULL,
	[EntryDate] [datetime] NULL,
	[EffectiveDate] [datetime] NULL,
	[Description] [varchar](255) NULL,
	[CashOrAccrualBasisIndicator] [char](1) NULL,
	[JournalStatus] [varchar](50) NULL,
	[ApprovalStatus] [varchar](50) NULL,
	[Notes] [varchar](255) NULL,
	[IsPosted] [bit] NULL,
	[IsYearEndAdjustment] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
	[Status] [varchar](50) NULL,
	[DeactivatedBY] [uniqueidentifier] NULL,
	[DeactivatedDate] [datetime] NULL,
	[IsValid] [bit] NOT NULL,
	[ValidationMessage] [nvarchar](max) NULL,
	[StatusTypeId] [int] NOT NULL,
	[ControlTotal] [decimal](18, 2) NULL,
	[JournalId] [varchar](50) NULL,
	[PostedDate] [datetime] NULL,
	[PostedBy] [uniqueidentifier] NULL,
	[IsManual] [bit] NULL,
	[IsYEClosing] [bit] NULL,
	[RecordVersionNumber] [timestamp] NULL,
	[DraftId] [varchar](50) NULL,
	[JournalSource] [varchar](50) NULL,
	[isCustomJournalId] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[GLJournalEntryHeaderStagingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[GLJournalRecurringDetail]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[GLJournalRecurringDetail](
	[Id] [uniqueidentifier] NOT NULL,
	[GLJournalRecurringHeaderId] [uniqueidentifier] NULL,
	[Amount] [decimal](18, 2) NULL,
	[DebitCredit] [char](1) NULL,
	[Description] [varchar](255) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
	[DeactivatedBy] [uniqueidentifier] NULL,
	[DeactivatedDate] [datetime] NULL,
	[Status] [varchar](50) NULL,
	[Note] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[GLJournalRecurringHeader]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[GLJournalRecurringHeader](
	[Id] [uniqueidentifier] NOT NULL,
	[EntityId] [uniqueidentifier] NULL,
	[CustomerId] [uniqueidentifier] NULL,
	[RecurringName] [varchar](100) NULL,
	[Description] [varchar](255) NULL,
	[RecurrencePattern] [varchar](50) NULL,
	[NextEntryDate] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
	[DeactivatedBy] [uniqueidentifier] NULL,
	[DeactivatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[RecurringName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[GLPostingDetail]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[GLPostingDetail](
	[GlPostingDetailId] [uniqueidentifier] NOT NULL,
	[GlPostingHeaderId] [uniqueidentifier] NOT NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[EntityId] [uniqueidentifier] NOT NULL,
	[COAID] [uniqueidentifier] NOT NULL,
	[Dimension] [char](1) NULL,
	[Amount] [decimal](18, 2) NULL,
	[DebitCredit] [char](1) NULL,
	[Description] [varchar](255) NULL,
	[JournalNumber] [varchar](100) NULL,
	[Notes] [varchar](255) NULL,
	[Status] [varchar](50) NULL,
	[DeactivatedBY] [uniqueidentifier] NULL,
	[DeactivatedDate] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[GlPostingDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[GLPostingHeader]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[GLPostingHeader](
	[GLPostingHeaderId] [uniqueidentifier] NOT NULL,
	[EntityId] [uniqueidentifier] NOT NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[COAID] [uniqueidentifier] NULL,
	[Dimension] [char](1) NOT NULL,
	[DocumentId] [uniqueidentifier] NULL,
	[EffectiveDate] [datetime] NOT NULL,
	[PostingDate] [datetime] NULL,
	[Amount] [decimal](18, 2) NULL,
	[Description] [varchar](255) NULL,
	[Notes] [varchar](255) NULL,
	[IsPosted] [bit] NULL,
	[PostedBy] [varchar](50) NULL,
	[ApprovedBy] [uniqueidentifier] NULL,
	[Status] [varchar](50) NULL,
	[DeactivatedBY] [uniqueidentifier] NULL,
	[DeactivatedDate] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[GLPostingHeaderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[IncomingEntitlementDetails]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[IncomingEntitlementDetails](
	[Id] [uniqueidentifier] NOT NULL,
	[FileId] [uniqueidentifier] NOT NULL,
	[Key] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NOT NULL,
	[RowNumber] [int] NOT NULL,
 CONSTRAINT [PK_IncomingEntitlementDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[IncomingEntitlementFiles]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[IncomingEntitlementFiles](
	[Id] [uniqueidentifier] NOT NULL,
	[FileName] [nvarchar](255) NOT NULL,
	[FinancialInstitutionID] [varchar](50) NOT NULL,
	[TotalRows] [int] NOT NULL,
	[ProcessedDateTime] [datetime] NULL,
	[Status] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[IncomingEntitlementsFileConfiguration]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[IncomingEntitlementsFileConfiguration](
	[FinancialInstitutionID] [nvarchar](100) NOT NULL,
	[Configuration] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FinancialInstitutionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[Job]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[Job](
	[JobId] [uniqueidentifier] NOT NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[JobName] [varchar](100) NOT NULL,
	[Description] [varchar](255) NULL,
	[JobStatusId] [int] NOT NULL,
	[JobTypeId] [int] NOT NULL,
	[ReferenceId] [uniqueidentifier] NULL,
	[IsStaged] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
	[OutputResponse] [nvarchar](max) NULL,
 CONSTRAINT [PK_Job] PRIMARY KEY CLUSTERED 
(
	[JobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[JobStatus]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[JobStatus](
	[JobStatusId] [int] IDENTITY(1,1) NOT NULL,
	[JobStatusName] [varchar](50) NOT NULL,
	[Description] [varchar](255) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_JobStatus] PRIMARY KEY CLUSTERED 
(
	[JobStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[JobType]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[JobType](
	[JobTypeId] [int] IDENTITY(1,1) NOT NULL,
	[JobTypeName] [varchar](50) NOT NULL,
	[Description] [varchar](255) NULL,
	[ReferenceTable] [varchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_JobType] PRIMARY KEY CLUSTERED 
(
	[JobTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[JournalEntryStatusType]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[JournalEntryStatusType](
	[JournalEntryStatusTypeId] [int] IDENTITY(1,1) NOT NULL,
	[StatusCode] [nvarchar](50) NOT NULL,
	[StatusValue] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_JournalEntryStatusType] PRIMARY KEY CLUSTERED 
(
	[JournalEntryStatusTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_JournalEntryStatusType_StatusCode] UNIQUE NONCLUSTERED 
(
	[StatusCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[JournalSequence]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[JournalSequence](
	[JournalSequenceId] [uniqueidentifier] NOT NULL,
	[EntityId] [uniqueidentifier] NOT NULL,
	[FiscalYear] [int] NULL,
	[LastSequenceNumber] [int] NOT NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_JournalSequence] PRIMARY KEY CLUSTERED 
(
	[JournalSequenceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UK_JournalSequence_Entity_Year] UNIQUE NONCLUSTERED 
(
	[EntityId] ASC,
	[FiscalYear] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[MakerCheckerValidation]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[MakerCheckerValidation](
	[ValidationId] [uniqueidentifier] NOT NULL,
	[ApprovalRuleId] [uniqueidentifier] NOT NULL,
	[ValidationType] [nvarchar](50) NOT NULL,
	[ValidationScope] [nvarchar](50) NOT NULL,
	[ValidationRule] [nvarchar](max) NOT NULL,
	[ValidationMessage] [nvarchar](255) NULL,
	[SeverityLevel] [nvarchar](20) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[PreventionLevel] [nvarchar](50) NOT NULL,
	[BypassPermissionRequired] [uniqueidentifier] NULL,
	[ValidationOrder] [int] NOT NULL,
	[ConditionalLogic] [nvarchar](max) NULL,
	[ExemptionCriteria] [nvarchar](max) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_MakerCheckerValidation] PRIMARY KEY CLUSTERED 
(
	[ValidationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[MenuItem]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[MenuItem](
	[MenuItemId] [uniqueidentifier] NOT NULL,
	[ModuleId] [uniqueidentifier] NOT NULL,
	[ParentMenuItemId] [uniqueidentifier] NULL,
	[MenuItemName] [nvarchar](100) NOT NULL,
	[MenuItemUrl] [nvarchar](255) NULL,
	[DisplayOrder] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[MenuItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[MenuItemEntitlement]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[MenuItemEntitlement](
	[MenuItemEntitlementId] [uniqueidentifier] NOT NULL,
	[MenuItemId] [uniqueidentifier] NOT NULL,
	[EntitlementId] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[MenuItemEntitlementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_MenuItemEntitlement_MenuItemId_EntitlementId] UNIQUE NONCLUSTERED 
(
	[MenuItemId] ASC,
	[EntitlementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[Module]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[Module](
	[ModuleId] [uniqueidentifier] NOT NULL,
	[ModuleName] [nvarchar](100) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[isSystemModule] [bit] NOT NULL,
	[IsAdminModule] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ModuleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[ModuleFunction]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[ModuleFunction](
	[ModuleFunctionId] [uniqueidentifier] NOT NULL,
	[ModuleFunctionName] [nvarchar](100) NOT NULL,
	[ModuleId] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[SortOrder] [int] NULL,
	[ParentModuleFunctionId] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[ModuleFunctionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[ModuleFunctionPermission]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[ModuleFunctionPermission](
	[ModuleFunctionPermissionId] [uniqueidentifier] NOT NULL,
	[ModuleFunctionId] [uniqueidentifier] NOT NULL,
	[PermissionId] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[SortOrder] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ModuleFunctionPermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_ModuleFunctionPermission_ModuleFunction_Permission] UNIQUE NONCLUSTERED 
(
	[ModuleFunctionId] ASC,
	[PermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[Note]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[Note](
	[NoteId] [uniqueidentifier] NOT NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[EntityId] [uniqueidentifier] NULL,
	[RefEntityObjectTypeId] [int] NULL,
	[RefEntityObjectId] [nvarchar](255) NULL,
	[ParentNoteId] [uniqueidentifier] NULL,
	[RootNoteId] [uniqueidentifier] NULL,
	[AuthorId] [uniqueidentifier] NULL,
	[Content] [nvarchar](max) NULL,
	[Mentions] [nvarchar](max) NULL,
	[ThreadDepth] [int] NULL,
	[Metadata] [nvarchar](max) NULL,
	[IsDeleted] [bit] NULL,
	[IsSystemNote] [bit] NULL,
	[TaskId] [nvarchar](255) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime2](7) NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[NoteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[OutboundACH]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[OutboundACH](
	[OutboundACHId] [uniqueidentifier] NOT NULL,
	[PaymentId] [uniqueidentifier] NOT NULL,
	[ACHTransactionType] [nvarchar](10) NOT NULL,
	[PayeeAccountNumber] [nvarchar](50) NOT NULL,
	[PayeeRoutingNumber] [nvarchar](20) NOT NULL,
	[PayeeBankName] [nvarchar](255) NULL,
	[ACHEffectiveDate] [date] NOT NULL,
	[SECCode] [nvarchar](3) NOT NULL,
	[ACHTraceNumber] [nvarchar](15) NULL,
	[ACHBatchNumber] [nvarchar](7) NULL,
	[ACHCompanyId] [nvarchar](10) NULL,
	[ReturnReason] [nvarchar](255) NULL,
	[ReturnDate] [date] NULL,
	[NotificationOfChange] [nvarchar](255) NULL,
	[PositivePayTransmitted] [bit] NOT NULL,
	[PositivePayDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[OutboundACHId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[PaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[OutboundCheck]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[OutboundCheck](
	[OutboundCheckId] [uniqueidentifier] NOT NULL,
	[PaymentId] [uniqueidentifier] NOT NULL,
	[CheckNumber] [int] NOT NULL,
	[CheckDate] [date] NOT NULL,
	[PrintedDate] [datetime2](7) NULL,
	[MailedDate] [datetime2](7) NULL,
	[ClearedDate] [date] NULL,
	[IsVoided] [bit] NOT NULL,
	[VoidReason] [nvarchar](500) NULL,
	[VoidedDate] [datetime2](7) NULL,
	[VoidedBy] [uniqueidentifier] NULL,
	[StopPaymentRequested] [bit] NOT NULL,
	[StopPaymentDate] [datetime2](7) NULL,
	[StopPaymentReason] [nvarchar](500) NULL,
	[StopPaymentFee] [decimal](10, 2) NULL,
	[PositivePayTransmitted] [bit] NOT NULL,
	[PositivePayDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[OutboundCheckId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[PaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[OutboundOther]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[OutboundOther](
	[OutboundOtherId] [uniqueidentifier] NOT NULL,
	[PaymentId] [uniqueidentifier] NOT NULL,
	[ExternalTransactionId] [nvarchar](100) NULL,
	[ExternalConfirmationCode] [nvarchar](100) NULL,
	[PaymentInstructions] [nvarchar](1000) NULL,
	[PaymentMetadata] [nvarchar](max) NULL,
	[ProcessingFee] [decimal](10, 2) NULL,
	[ExternalSystemName] [nvarchar](100) NULL,
	[PaymentSubTypeId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OutboundOtherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[PaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[OutboundWire]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[OutboundWire](
	[OutboundWireId] [uniqueidentifier] NOT NULL,
	[PaymentId] [uniqueidentifier] NOT NULL,
	[BeneficiaryName] [nvarchar](255) NOT NULL,
	[BeneficiaryAccountNumber] [nvarchar](50) NOT NULL,
	[BeneficiaryBankName] [nvarchar](255) NOT NULL,
	[BeneficiaryBankAddress] [nvarchar](500) NULL,
	[BeneficiaryBankSWIFT] [nvarchar](11) NULL,
	[BeneficiaryBankABA] [nvarchar](9) NULL,
	[IntermediaryBankName] [nvarchar](255) NULL,
	[IntermediaryBankSWIFT] [nvarchar](11) NULL,
	[WireReference] [nvarchar](100) NULL,
	[PaymentInstructions] [nvarchar](1000) NULL,
	[WireFee] [decimal](10, 2) NULL,
	[ExchangeRate] [decimal](10, 6) NULL,
	[FedwireReference] [nvarchar](16) NULL,
	[ConfirmationNumber] [nvarchar](100) NULL,
	[WireTypeId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OutboundWireId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[PaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[PageFeature]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[PageFeature](
	[PageFeatureId] [uniqueidentifier] NOT NULL,
	[FeatureName] [nvarchar](100) NOT NULL,
	[FeatureTypeId] [uniqueidentifier] NOT NULL,
	[FeatureUrl] [nvarchar](255) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[PageFeatureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[PaymentHeader]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[PaymentHeader](
	[PaymentId] [uniqueidentifier] NOT NULL,
	[PaymentNumber] [nvarchar](50) NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[EntityId] [uniqueidentifier] NOT NULL,
	[BankAccountId] [uniqueidentifier] NOT NULL,
	[BillId] [uniqueidentifier] NULL,
	[PaymentDate] [date] NOT NULL,
	[PaymentAmount] [decimal](15, 2) NOT NULL,
	[PaymentMethodTypeId] [int] NOT NULL,
	[PaymentStatus] [int] NOT NULL,
	[BatchId] [uniqueidentifier] NULL,
	[BAI2TransactionDetailId] [uniqueidentifier] NULL,
	[BankReferenceNumber] [nvarchar](100) NULL,
	[SettledDate] [date] NULL,
	[PayeeName] [nvarchar](255) NOT NULL,
	[PayeeAddressLine1] [nvarchar](255) NULL,
	[PayeeAddressLine2] [nvarchar](255) NULL,
	[PayeeCity] [nvarchar](100) NULL,
	[PayeeState] [nvarchar](50) NULL,
	[PayeePostalCode] [nvarchar](20) NULL,
	[PayeeCountry] [nvarchar](50) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_PaymentHeader] PRIMARY KEY CLUSTERED 
(
	[PaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[Permission]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[Permission](
	[PermissionId] [uniqueidentifier] NOT NULL,
	[PermissionName] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[PermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[PermissionGroup]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[PermissionGroup](
	[PermissionGroupId] [uniqueidentifier] NOT NULL,
	[GroupName] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[PermissionGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[PermissionPageFeature]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[PermissionPageFeature](
	[PermissionPageFeatureId] [uniqueidentifier] NOT NULL,
	[PermissionId] [uniqueidentifier] NOT NULL,
	[PageFeatureId] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[PermissionPageFeatureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[PermissionType]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[PermissionType](
	[PermissionTypeId] [uniqueidentifier] NOT NULL,
	[TypeCode] [nvarchar](50) NOT NULL,
	[TypeValue] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[PermissionTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[TypeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[Person]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[Person](
	[PersonId] [uniqueidentifier] NOT NULL,
	[PersonInfoId] [uniqueidentifier] NOT NULL,
	[RoleDescription] [varchar](50) NOT NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC,
	[PersonInfoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[PersonContact]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[PersonContact](
	[PersonInfoId] [uniqueidentifier] NOT NULL,
	[ContactInfoId] [uniqueidentifier] NOT NULL,
	[IsPrimary] [bit] NULL,
	[UseAsPrimaryAddress] [bit] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PersonInfoId] ASC,
	[ContactInfoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[PersonInformation]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[PersonInformation](
	[PersonInfoId] [uniqueidentifier] NOT NULL,
	[FirstName] [varchar](128) NULL,
	[LastName] [nvarchar](50) NULL,
	[DisplayName] [varchar](230) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
	[MiddleName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[PersonInfoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[POSTING_NET]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[POSTING_NET](
	[CUSTOMER] [char](3) NOT NULL,
	[CLIENT] [char](4) NOT NULL,
	[FYE] [date] NOT NULL,
	[DOCID] [char](16) NOT NULL,
	[JOURNAL] [char](1) NOT NULL,
	[TRANSACTION_DATE] [date] NOT NULL,
	[QUALIFIER] [char](3) NOT NULL,
	[SEQUENCE_NAME] [char](10) NOT NULL,
	[DESCRIPTION] [char](45) NULL,
	[NET] [decimal](18, 2) NOT NULL,
	[CLIENT_GROUP] [char](1) NOT NULL,
	[BANK_MASTER] [char](5) NOT NULL,
	[BANK_SUB] [char](5) NOT NULL,
	[POSTED] [date] NULL,
	[PROCESSING_STATUS] [char](1) NULL,
	[EIN] [char](5) NULL,
	[APAR_ESTABLISH] [char](2) NULL,
	[APAR_PAN] [char](11) NULL,
	[CHANGED] [date] NULL,
	[CHANGED_BY] [char](12) NULL,
	[POST_AFTER] [date] NULL,
	[DOC_DESCRIPTION1] [char](45) NULL,
	[DOC_DESCRIPTION2] [char](45) NULL,
	[DOC_DESCRIPTION3] [char](45) NULL,
	[DOC_DESCRIPTION4] [char](45) NULL,
	[DOC_DESCRIPTION5] [char](45) NULL,
	[REFERENCE_NUMBER] [char](8) NOT NULL,
	[POSTING_NAME2] [char](45) NULL,
	[POSTING_ADDR] [char](45) NULL,
	[POSTING_ADDR2] [char](45) NULL,
	[POSTING_CITY] [char](45) NULL,
	[POSTING_STATE] [char](45) NULL,
	[POSTING_ZIP] [char](45) NULL,
	[PRINT_STATUS] [int] NULL,
	[RECONCILIATION_STATUS] [char](1) NULL,
	[DOC_DESCRIPTION1_FLAG] [char](1) NULL,
	[DOC_DESCRIPTION2_FLAG] [char](1) NULL,
	[DOC_DESCRIPTION3_FLAG] [char](1) NULL,
	[DOC_DESCRIPTION4_FLAG] [char](1) NULL,
	[DOC_DESCRIPTION5_FLAG] [char](1) NULL,
	[CREATED] [date] NULL,
	[CREATED_BY] [char](12) NULL,
	[PRINT_DEPOSIT_STATUS] [int] NULL,
	[BANK_REC_LINE] [char](16) NULL,
	[BANK_REC_ID] [char](16) NULL,
	[BANK_TRANSFER_ID] [char](16) NULL,
	[PR_FLAG] [char](1) NULL,
	[WORK_GEO_CODE] [char](9) NULL,
	[RES_GEO_CODE] [char](9) NULL,
	[PAY_PERIOD] [char](3) NULL,
	[PAYROLL_YEAR] [int] NULL,
	[PAYROLL_QUARTER] [int] NULL,
	[BANK] [char](10) NULL,
	[FULL_REFERENCE] [char](11) NULL,
	[DEPOSIT] [varchar](8) NULL,
	[RECEIPT] [varchar](8) NULL,
	[FULL_DEPOSIT] [varchar](11) NULL,
	[APAR_TYPE] [char](2) NULL,
	[POSTING_CAREOF] [char](45) NULL,
	[APPLY_EIN] [char](5) NULL,
	[TEMP_ID] [char](20) NULL,
	[BASIS] [char](1) NULL,
	[VENDOR_INVOICE] [char](10) NULL,
	[DUE_DATE] [date] NULL,
	[DISCOUNT_CODE] [char](10) NULL,
	[DISCOUNT_DATE] [date] NULL,
	[DISCOUNT_AMOUNT] [decimal](18, 2) NULL,
	[PR_GROUP_ID] [char](20) NULL,
	[POSTING_BATCH_ID] [char](14) NULL,
	[F94X_FLAG] [char](1) NULL,
	[TEMP_DOCID] [char](16) NULL,
	[TEMP_BANK_REC_LINE] [char](16) NULL,
	[TEMP_BANK_REC_ID] [char](16) NULL,
	[TEMP_BANK_TRANSFER_ID] [char](16) NULL,
	[PRINT_BATCH] [date] NULL,
	[APAR_MASTER] [char](5) NULL,
	[APAR_SUB] [char](5) NULL,
	[APAR_CODE] [char](10) NULL,
	[RR_FLAG] [char](1) NULL,
	[JOB_DETAIL_PRESENT] [char](1) NULL,
	[UI_GEO_CODE] [char](9) NULL,
	[SORT_KEY] [char](20) NULL
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[ProcessingMethodType]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[ProcessingMethodType](
	[ProcessingMethodTypeId] [int] IDENTITY(1,1) NOT NULL,
	[MethodName] [nvarchar](50) NOT NULL,
	[MethodCode] [nvarchar](20) NOT NULL,
	[MethodDescription] [nvarchar](200) NULL,
	[IsDefault] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_ProcessingMethodType] PRIMARY KEY CLUSTERED 
(
	[ProcessingMethodTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[ProcessingStageHistory]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[ProcessingStageHistory](
	[HistoryId] [uniqueidentifier] NOT NULL,
	[QueueId] [uniqueidentifier] NOT NULL,
	[StageFrom] [int] NULL,
	[StageTo] [int] NOT NULL,
	[StageResultId] [int] NOT NULL,
	[Message] [nvarchar](500) NULL,
	[ErrorDetails] [nvarchar](max) NULL,
	[ProcessedBy] [varchar](100) NULL,
	[DurationMs] [int] NULL,
	[StageDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[HistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[RefEntityObjectType]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[RefEntityObjectType](
	[RefEntityObjectTypeId] [int] NOT NULL,
	[EntityDisplayName] [nvarchar](255) NULL,
	[EntityTableName] [nvarchar](128) NOT NULL,
	[EntityPKColumn] [nvarchar](128) NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime2](7) NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[RefEntityObjectTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[Role]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[Role](
	[RoleId] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](128) NOT NULL,
	[RoleTypeId] [uniqueidentifier] NOT NULL,
	[CustomerId] [uniqueidentifier] NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[RoleDescription] [nvarchar](max) NULL,
	[isAdminRole] [bit] NOT NULL,
	[IsSuperAdmin] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[RoleModuleFunctionPermission]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[RoleModuleFunctionPermission](
	[RoleModuleFunctionPermissionId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[ModuleFunctionPermissionId] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleModuleFunctionPermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_RoleModuleFunctionPermission_Role_ModuleFunctionPermission] UNIQUE NONCLUSTERED 
(
	[RoleId] ASC,
	[ModuleFunctionPermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[RolePermissionGroup]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[RolePermissionGroup](
	[RolePermissionGroupId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[PermissionGroupId] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[RolePermissionGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[RoleScope]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[RoleScope](
	[RoleScopeId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](100) NULL,
	[DetailedDescription] [nvarchar](255) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleScopeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[RoleType]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[RoleType](
	[RoleTypeId] [uniqueidentifier] NOT NULL,
	[TypeCode] [nvarchar](50) NOT NULL,
	[TypeValue] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[TypeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[RuleSet]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[RuleSet](
	[RuleSetId] [uniqueidentifier] NOT NULL,
	[ApprovalRuleId] [uniqueidentifier] NOT NULL,
	[SetName] [nvarchar](100) NOT NULL,
	[SetDescription] [nvarchar](255) NULL,
	[SetOrder] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_RuleSet] PRIMARY KEY CLUSTERED 
(
	[RuleSetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[RuleSetPaymentMethod]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[RuleSetPaymentMethod](
	[Id] [uniqueidentifier] NOT NULL,
	[RuleSetId] [uniqueidentifier] NOT NULL,
	[ModuleFunctionId] [uniqueidentifier] NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[FunctionOrder] [int] NOT NULL,
	[ConditionalRules] [nvarchar](max) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_RuleSetPaymentMethod] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_RuleSetPaymentMethod] UNIQUE NONCLUSTERED 
(
	[RuleSetId] ASC,
	[ModuleFunctionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[StatusType]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[StatusType](
	[StatusTypeId] [int] IDENTITY(1,1) NOT NULL,
	[TypeCode] [nvarchar](50) NOT NULL,
	[TypeValue] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[StatusTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[StepApprover]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[StepApprover](
	[Id] [uniqueidentifier] NOT NULL,
	[StepId] [uniqueidentifier] NOT NULL,
	[GroupId] [uniqueidentifier] NULL,
	[ApproverType] [nvarchar](10) NOT NULL,
	[ApproverReferenceId] [uniqueidentifier] NOT NULL,
	[GroupLogic] [nvarchar](10) NOT NULL,
	[ApproverOrder] [int] NOT NULL,
	[CanDelegate] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_StepApprover] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[StepApproverGroup]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[StepApproverGroup](
	[GroupId] [uniqueidentifier] NOT NULL,
	[StepId] [uniqueidentifier] NOT NULL,
	[ParentGroupId] [uniqueidentifier] NULL,
	[GroupName] [nvarchar](100) NOT NULL,
	[GroupLogic] [nvarchar](10) NOT NULL,
	[GroupOrder] [int] NOT NULL,
	[MinimumRequired] [int] NOT NULL,
	[GroupLevel] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_StepApproverGroup] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[Tag]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[Tag](
	[TagId] [uniqueidentifier] NOT NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[EnterpriseId] [uniqueidentifier] NULL,
	[EntityId] [uniqueidentifier] NULL,
	[Name] [varchar](255) NOT NULL,
	[ColorId] [uniqueidentifier] NULL,
	[Description] [varchar](255) NULL,
	[IsActive] [bit] NULL,
	[Status] [varchar](255) NULL,
	[DeactivatedBy] [uniqueidentifier] NULL,
	[DeactivatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModuleFunctionId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED 
(
	[TagId] ASC,
	[CustomerId] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[Task]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[Task](
	[Id] [uniqueidentifier] NOT NULL,
	[TaskName] [varchar](130) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[Rate] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[TaskDecision]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[TaskDecision](
	[DecisionId] [uniqueidentifier] NOT NULL,
	[TaskId] [uniqueidentifier] NOT NULL,
	[DecisionType] [nvarchar](50) NOT NULL,
	[DecisionReason] [nvarchar](255) NULL,
	[DecisionComments] [nvarchar](max) NULL,
	[DecisionTime] [datetime2](7) NOT NULL,
	[DecisionBy] [uniqueidentifier] NOT NULL,
	[DecisionOnBehalfOf] [uniqueidentifier] NULL,
	[IsFinalDecision] [bit] NOT NULL,
	[DataVersionAtDecision] [int] NOT NULL,
	[DecisionMetadata] [nvarchar](max) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[StatusId] [int] NULL,
 CONSTRAINT [PK_TaskDecision] PRIMARY KEY CLUSTERED 
(
	[DecisionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[TaskGroup]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[TaskGroup](
	[GroupId] [uniqueidentifier] NOT NULL,
	[InstanceId] [uniqueidentifier] NOT NULL,
	[StepId] [uniqueidentifier] NOT NULL,
	[ApproverGroupId] [uniqueidentifier] NULL,
	[GroupType] [nvarchar](50) NOT NULL,
	[ApprovalStrategy] [nvarchar](50) NOT NULL,
	[MinimumApprovals] [int] NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[CompletedAt] [datetime2](7) NULL,
	[TimeoutAt] [datetime2](7) NULL,
	[TotalTasks] [int] NOT NULL,
	[CompletedTasks] [int] NOT NULL,
	[ApprovedTasks] [int] NOT NULL,
	[RejectedTasks] [int] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[StatusId] [int] NULL,
	[StepStatusId] [int] NULL,
 CONSTRAINT [PK_TaskGroup] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[TaskList]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[TaskList](
	[TaskId] [uniqueidentifier] NOT NULL,
	[CustomerId] [uniqueidentifier] NULL,
	[EntityId] [uniqueidentifier] NULL,
	[TaskTypeId] [int] NULL,
	[TaskPriorityId] [int] NULL,
	[AssignedToUserId] [uniqueidentifier] NULL,
	[AssignedByUserId] [uniqueidentifier] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime2](7) NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[TaskStatusTypeId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[TaskId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[TaskPriority]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[TaskPriority](
	[TaskPriorityId] [int] IDENTITY(1,1) NOT NULL,
	[PriorityName] [nvarchar](50) NOT NULL,
	[PriorityLevel] [int] NOT NULL,
	[Description] [nvarchar](255) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime2](7) NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[TaskPriorityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[TaskStatusType]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[TaskStatusType](
	[TaskStatusTypeId] [int] IDENTITY(1,1) NOT NULL,
	[TaskStatusTypeName] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime2](7) NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[TaskStatusTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[TaskType]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[TaskType](
	[TaskTypeId] [int] IDENTITY(1,1) NOT NULL,
	[TaskTypeName] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime2](7) NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[TaskTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[Template]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[Template](
	[TemplateId] [uniqueidentifier] NOT NULL,
	[TemplateName] [nvarchar](100) NOT NULL,
	[CustomerId] [uniqueidentifier] NULL,
	[IsStandardTemplate] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[TemplateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[TemplateInfo]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[TemplateInfo](
	[Id] [uniqueidentifier] NOT NULL,
	[TemplateID] [uniqueidentifier] NULL,
	[Header] [varchar](255) NULL,
	[Column_Name] [varchar](255) NULL,
	[ColumnValue] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[Test]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[Test](
	[id] [int] IDENTITY(50,1) NOT NULL,
	[somecolumn] [varchar](10) NULL,
	[Id1] [int] NULL
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[TimeRecords]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[TimeRecords](
	[TimeRecordID] [uniqueidentifier] NOT NULL,
	[UserID] [uniqueidentifier] NOT NULL,
	[Date] [date] NOT NULL,
	[Hours] [decimal](10, 2) NOT NULL,
	[IsAdminTime] [bit] NOT NULL,
	[EnterpriseID] [uniqueidentifier] NULL,
	[EntityID] [uniqueidentifier] NULL,
	[TaskID] [uniqueidentifier] NULL,
	[Rate] [decimal](10, 2) NULL,
	[Billable] [bit] NULL,
	[Description] [nvarchar](500) NULL,
	[TimesheetID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TimeRecordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[Timesheets]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[Timesheets](
	[TimesheetID] [uniqueidentifier] NOT NULL,
	[UserID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[StatusID] [uniqueidentifier] NOT NULL,
	[ApproverID] [uniqueidentifier] NULL,
	[LastUpdate] [datetime2](7) NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TimesheetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[TimesheetStatus]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[TimesheetStatus](
	[TimesheetStatusID] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TimesheetStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[TransactionBatch]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[TransactionBatch](
	[BatchId] [uniqueidentifier] NOT NULL,
	[BatchNumber] [nvarchar](50) NOT NULL,
	[EntityId] [uniqueidentifier] NOT NULL,
	[BankAccountId] [uniqueidentifier] NOT NULL,
	[BatchDirectionId] [int] NOT NULL,
	[BatchMethodTypeId] [int] NOT NULL,
	[BatchDate] [date] NOT NULL,
	[TotalAmount] [decimal](15, 2) NOT NULL,
	[TransactionCount] [int] NOT NULL,
	[BatchStatusId] [int] NOT NULL,
	[BankFileId] [nvarchar](100) NULL,
	[BankFileSubmittedDate] [datetime2](7) NULL,
	[BankFileConfirmedDate] [datetime2](7) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[SubmittedBy] [uniqueidentifier] NULL,
	[SubmittedDate] [datetime2](7) NULL,
	[ProcessedDate] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[BatchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[BatchNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[TransitionCondition]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[TransitionCondition](
	[ConditionId] [uniqueidentifier] NOT NULL,
	[TransitionId] [uniqueidentifier] NOT NULL,
	[ConditionType] [nvarchar](50) NOT NULL,
	[ParameterName] [nvarchar](100) NULL,
	[Operator] [nvarchar](50) NULL,
	[Value] [nvarchar](255) NULL,
	[LogicalOperator] [nvarchar](10) NULL,
	[ConditionGroup] [int] NOT NULL,
	[ConditionOrder] [int] NOT NULL,
	[ErrorMessage] [nvarchar](255) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_TransitionCondition] PRIMARY KEY CLUSTERED 
(
	[ConditionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[Unavailability]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[Unavailability](
	[UnavailabilityId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UnavailabilityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[UnprocessedBankingFile]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[UnprocessedBankingFile](
	[UnprocessedBankingFileId] [int] NOT NULL,
	[ReceivedDateTime] [datetime] NOT NULL,
	[Status] [varchar](100) NOT NULL,
	[FileType] [varchar](100) NOT NULL,
 CONSTRAINT [PK_BAI2Files] PRIMARY KEY CLUSTERED 
(
	[UnprocessedBankingFileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[UploadTemplate]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[UploadTemplate](
	[UploadTemplateId] [uniqueidentifier] NOT NULL,
	[TemplateName] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Version] [nvarchar](50) NOT NULL,
	[ModuleId] [uniqueidentifier] NOT NULL,
	[TemplateDefinition] [nvarchar](max) NULL,
	[FileTypeId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_UploadTemplate] PRIMARY KEY CLUSTERED 
(
	[UploadTemplateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[User]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[User](
	[UserId] [uniqueidentifier] NOT NULL,
	[AxosIdentityId] [nvarchar](100) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[UserTypeId] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[FirstName] [nvarchar](40) NULL,
	[LastName] [nvarchar](100) NULL,
	[Mobile] [nvarchar](15) NULL,
	[BusinessPartyId] [uniqueidentifier] NULL,
	[MiddleName] [nvarchar](30) NULL,
	[PersonInfoId] [uniqueidentifier] NULL,
	[SignatureDocumentId] [uniqueidentifier] NULL,
	[IsApproverEligible] [bit] NULL,
	[IsUserApproveTransaction] [bit] NULL,
	[IsEndTalent] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[AxosIdentityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[UserDelegation]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[UserDelegation](
	[UserDelegationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[DelegationStatusTypeId] [int] NOT NULL,
	[Reason] [nvarchar](255) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_UserDelegation] PRIMARY KEY CLUSTERED 
(
	[UserDelegationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[UserRoleEntitlementGroup]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[UserRoleEntitlementGroup](
	[UserEntitlementGroupRoleId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[EntitlementGroupId] [uniqueidentifier] NULL,
	[ClientEnterpriseId] [uniqueidentifier] NULL,
	[ClientEntityId] [uniqueidentifier] NULL,
	[CustomerId] [uniqueidentifier] NULL,
	[DataSetId] [uniqueidentifier] NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[IsDefaultRole] [bit] NOT NULL,
	[IsAdminRole] [bit] NOT NULL,
	[IsCustomerAssociation] [bit] NOT NULL,
	[AllEnterprise] [bit] NOT NULL,
	[AllCustomers] [bit] NOT NULL,
	[RoleScopeId] [int] NOT NULL,
	[IsCascadeDeactivation] [bit] NOT NULL,
	[IsDelegatedRole] [bit] NOT NULL,
	[DelegationExpirationTime] [datetime2](7) NULL,
	[DelegatedFromUserId] [uniqueidentifier] NULL,
	[UserDelegationId] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserEntitlementGroupRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[UserType]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[UserType](
	[UserTypeId] [uniqueidentifier] NOT NULL,
	[TypeCode] [nvarchar](50) NOT NULL,
	[TypeValue] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UserTypeInt] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[TypeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[Vendor]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[Vendor](
	[MasterVendorId] [uniqueidentifier] NOT NULL,
	[BusinessPartyId] [uniqueidentifier] NULL,
	[EnterpriseId] [uniqueidentifier] NULL,
	[CustomerId] [uniqueidentifier] NULL,
	[BankAccountId] [uniqueidentifier] NULL,
	[IsSystem] [bit] NULL,
	[TIN] [varchar](50) NULL,
	[VendorName] [varchar](255) NULL,
	[PayeeName] [varchar](255) NULL,
	[Category] [varchar](100) NULL,
	[IsActive] [bit] NULL,
	[DeactivatedBy] [uniqueidentifier] NULL,
	[DeactivatedDate] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsBankAddressSameAsPaymentAddress] [bit] NULL,
	[IsBusinessAddressSameAsPaymentAddress] [bit] NULL,
	[IsWireInfoSameAsACH] [bit] NULL,
	[BusinessName] [varchar](255) NULL,
	[IsBusinessNameSameAsVendorName] [bit] NULL,
	[VendorStatusTypeId] [int] NULL,
	[FormattedVendorId] [varchar](8) NULL,
	[NickName] [varchar](100) NULL,
 CONSTRAINT [PK__MasterVendor] PRIMARY KEY CLUSTERED 
(
	[MasterVendorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[VendorAccount]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[VendorAccount](
	[VendorAccountId] [uniqueidentifier] NOT NULL,
	[EntityId] [uniqueidentifier] NOT NULL,
	[MasterVendorId] [uniqueidentifier] NOT NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[BusinessPartyId] [uniqueidentifier] NOT NULL,
	[DefaultPaymentType] [uniqueidentifier] NOT NULL,
	[DefaultPayFromBankAccount] [uniqueidentifier] NOT NULL,
	[VendorAssignedAccountNumber] [varchar](100) NULL,
	[VendorName] [varchar](255) NULL,
	[NickName] [varchar](100) NULL,
	[IsBusiness] [bit] NULL,
	[IsForeign] [bit] NULL,
	[Status] [int] NULL,
	[SocialSecurityNumber] [varchar](20) NULL,
	[EmployerIdentificationNumber] [varchar](20) NULL,
	[StateIdentificationNumber] [varchar](50) NULL,
	[IsActive] [bit] NULL,
	[Notes] [text] NULL,
	[Is1099] [bit] NULL,
	[DeactivatedBy] [uniqueidentifier] NULL,
	[DeactivatedDate] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
	[DefaultDesctription] [varchar](255) NULL,
	[PreferredBankAccountId] [varchar](255) NULL,
	[FormattedVendorId] [varchar](128) NOT NULL,
	[VendorStatusTypeId] [int] NULL,
	[VendorPaymentMethodTypeId] [int] NULL,
 CONSTRAINT [PK__VendorAccount] PRIMARY KEY CLUSTERED 
(
	[VendorAccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[VendorAccountHistory]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[VendorAccountHistory](
	[HistoryId] [uniqueidentifier] NOT NULL,
	[VendorAccountId] [uniqueidentifier] NULL,
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
--  Object:  Table [dbo].[VendorBillingAccount]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[VendorBillingAccount](
	[VendorBillingAccountId] [uniqueidentifier] NOT NULL,
	[VendorId] [uniqueidentifier] NOT NULL,
	[BankAccountId] [uniqueidentifier] NOT NULL,
	[VendorBillHeaderId] [uniqueidentifier] NOT NULL,
	[VendorBillHeaderId2] [uniqueidentifier] NOT NULL,
	[BillingAccountNumber] [varchar](100) NULL,
	[Is1099] [bit] NULL,
	[Amount] [money] NULL,
	[CreatedBy] [varchar](255) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK__VendorBillingAccount] PRIMARY KEY CLUSTERED 
(
	[VendorBillingAccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[VendorDocument]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[VendorDocument](
	[VendorDocumentId] [uniqueidentifier] NOT NULL,
	[DocumentId] [uniqueidentifier] NOT NULL,
	[MasterVendorId] [uniqueidentifier] NULL,
	[EntryDate] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
	[Status] [varchar](50) NULL,
	[DeactivatedBY] [uniqueidentifier] NULL,
	[DeactivatedDate] [datetime] NULL,
	[VendorAccountId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_VendorDocument_VendorDocumentId] PRIMARY KEY CLUSTERED 
(
	[VendorDocumentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[VendorGLDistrib]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[VendorGLDistrib](
	[Id] [uniqueidentifier] NOT NULL,
	[VendorId] [uniqueidentifier] NULL,
	[AccountId] [uniqueidentifier] NULL,
	[DefaultAmount] [decimal](18, 2) NULL,
	[DefaultPercentage] [decimal](18, 2) NULL,
	[Description] [varchar](255) NULL,
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
--  Object:  Table [dbo].[VendorGLDistribution]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[VendorGLDistribution](
	[VendorGLDistributionId] [uniqueidentifier] NOT NULL,
	[VendorId] [uniqueidentifier] NOT NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[COAId] [uniqueidentifier] NOT NULL,
	[Notes] [text] NULL,
	[Description] [varchar](255) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
	[Amount] [decimal](18, 2) NULL,
	[DebitCredit] [char](1) NULL,
 CONSTRAINT [PK__VendorGLDistribution] PRIMARY KEY CLUSTERED 
(
	[VendorGLDistributionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[VendorGLDistributionHistory]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[VendorGLDistributionHistory](
	[HistoryId] [uniqueidentifier] NOT NULL,
	[VendorGLDistributionId] [uniqueidentifier] NULL,
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
--  Object:  Table [dbo].[VendorHistory]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[VendorHistory](
	[HistoryId] [uniqueidentifier] NOT NULL,
	[MasterVendorId] [uniqueidentifier] NULL,
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
--  Object:  Table [dbo].[VendorPaymentMethod]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[VendorPaymentMethod](
	[VendorPaymentMethodId] [uniqueidentifier] NOT NULL,
	[PaymentMethodTypeId] [int] NULL,
	[Description] [varchar](255) NULL,
	[Name] [varchar](255) NULL,
	[DeactivatedBy] [uniqueidentifier] NULL,
	[DeactivatedDate] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
	[VendorId] [uniqueidentifier] NOT NULL,
	[BankRTN] [varchar](255) NULL,
	[BankAccountNumber] [varchar](255) NULL,
 CONSTRAINT [PK__VendorPaymentMethod] PRIMARY KEY CLUSTERED 
(
	[VendorPaymentMethodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[VendorPaymentMethodHistory]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[VendorPaymentMethodHistory](
	[HistoryId] [uniqueidentifier] NOT NULL,
	[VendorPaymentMethodId] [uniqueidentifier] NULL,
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
--  Object:  Table [dbo].[VendorPaymentMethodType]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[VendorPaymentMethodType](
	[VendorPaymentMethodTypeId] [int] NOT NULL,
	[TypeCode] [varchar](100) NULL,
	[TypeValue] [varchar](255) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK__VendorPaymentMethodType] PRIMARY KEY CLUSTERED 
(
	[VendorPaymentMethodTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[VendorStatusType]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[VendorStatusType](
	[VendorStatusTypeId] [int] IDENTITY(1,1) NOT NULL,
	[StatusCode] [nvarchar](50) NOT NULL,
	[StatusValue] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_SystemVendor] PRIMARY KEY CLUSTERED 
(
	[VendorStatusTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[WorkflowAuditLog]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[WorkflowAuditLog](
	[LogId] [uniqueidentifier] NOT NULL,
	[InstanceId] [uniqueidentifier] NULL,
	[TaskId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[EventType] [nvarchar](100) NOT NULL,
	[EventCategory] [nvarchar](50) NOT NULL,
	[EventDescription] [nvarchar](255) NOT NULL,
	[EventDetails] [nvarchar](max) NULL,
	[IpAddress] [nvarchar](50) NULL,
	[UserAgent] [nvarchar](500) NULL,
	[SessionId] [nvarchar](100) NULL,
	[CorrelationId] [uniqueidentifier] NULL,
	[RiskLevel] [nvarchar](20) NOT NULL,
	[Timestamp] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_WorkflowAuditLog] PRIMARY KEY CLUSTERED 
(
	[LogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[WorkflowDefinition]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[WorkflowDefinition](
	[WorkflowDefinitionId] [uniqueidentifier] NOT NULL,
	[WorkflowTypeId] [uniqueidentifier] NOT NULL,
	[ModuleId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[DisplayName] [nvarchar](200) NULL,
	[Description] [nvarchar](255) NULL,
	[Version] [int] NOT NULL,
	[SupportsParallelApproval] [bit] NOT NULL,
	[AllowFieldEditDuringApproval] [bit] NOT NULL,
	[RequiresApprovalReset] [bit] NOT NULL,
	[StatusTransitionConfigJson] [nvarchar](max) NULL,
	[WorkflowMetadata] [nvarchar](max) NULL,
	[CustomerId] [uniqueidentifier] NULL,
	[EntityId] [uniqueidentifier] NULL,
	[EnterpriseId] [uniqueidentifier] NULL,
	[IsTemplate] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[EffectiveFrom] [datetime2](7) NULL,
	[EffectiveTo] [datetime2](7) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModuleFunctionId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_WorkflowDefinition] PRIMARY KEY CLUSTERED 
(
	[WorkflowDefinitionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_WorkflowDefinition_Code] UNIQUE NONCLUSTERED 
(
	[Code] ASC,
	[Version] ASC,
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[WorkflowInstance]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[WorkflowInstance](
	[InstanceId] [uniqueidentifier] NOT NULL,
	[ApprovalRuleId] [uniqueidentifier] NOT NULL,
	[WorkflowSourceEntityId] [uniqueidentifier] NOT NULL,
	[CurrentStateId] [uniqueidentifier] NOT NULL,
	[PreviousStateId] [uniqueidentifier] NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[EnterpriseId] [uniqueidentifier] NULL,
	[EntityId] [uniqueidentifier] NULL,
	[InitiatedBy] [uniqueidentifier] NOT NULL,
	[BusinessKey] [nvarchar](100) NULL,
	[Priority] [int] NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[InitiatedAt] [datetime2](7) NOT NULL,
	[CompletedAt] [datetime2](7) NULL,
	[DueDate] [datetime2](7) NULL,
	[InstanceData] [nvarchar](max) NULL,
	[DataVersion] [int] NOT NULL,
	[ProcessingNotes] [nvarchar](max) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[IsCompleted] [bit] NULL,
	[Version] [int] NULL,
	[ResetWorkflow] [bit] NULL,
 CONSTRAINT [PK_WorkflowInstance] PRIMARY KEY CLUSTERED 
(
	[InstanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[WorkflowMetrics]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[WorkflowMetrics](
	[MetricId] [uniqueidentifier] NOT NULL,
	[InstanceId] [uniqueidentifier] NULL,
	[ApprovalRuleId] [uniqueidentifier] NOT NULL,
	[MetricType] [nvarchar](50) NOT NULL,
	[MetricName] [nvarchar](100) NOT NULL,
	[MetricValue] [decimal](18, 6) NOT NULL,
	[MetricUnit] [nvarchar](20) NULL,
	[MeasurementPeriod] [nvarchar](20) NULL,
	[MetricDate] [datetime2](7) NOT NULL,
	[MetricContext] [nvarchar](max) NULL,
	[BaselineValue] [decimal](18, 6) NULL,
	[TargetValue] [decimal](18, 6) NULL,
	[ThresholdViolation] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_WorkflowMetrics] PRIMARY KEY CLUSTERED 
(
	[MetricId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[WorkflowNotification]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[WorkflowNotification](
	[NotificationId] [uniqueidentifier] NOT NULL,
	[InstanceId] [uniqueidentifier] NOT NULL,
	[TaskId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[NotificationType] [nvarchar](50) NOT NULL,
	[Channel] [nvarchar](50) NOT NULL,
	[Subject] [nvarchar](255) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[ScheduledSendTime] [datetime2](7) NULL,
	[SentAt] [datetime2](7) NULL,
	[DeliveredAt] [datetime2](7) NULL,
	[ReadAt] [datetime2](7) NULL,
	[RetryCount] [int] NOT NULL,
	[MaxRetries] [int] NOT NULL,
	[FailureReason] [nvarchar](max) NULL,
	[IsUrgent] [bit] NOT NULL,
	[ExpirationDate] [datetime2](7) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_WorkflowNotification] PRIMARY KEY CLUSTERED 
(
	[NotificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[WorkflowParameter]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[WorkflowParameter](
	[ParameterId] [uniqueidentifier] NOT NULL,
	[WorkflowDefinitionId] [uniqueidentifier] NOT NULL,
	[ParameterName] [nvarchar](100) NOT NULL,
	[ParameterType] [nvarchar](50) NOT NULL,
	[ValidationRule] [nvarchar](255) NULL,
	[IsRequired] [bit] NOT NULL,
	[IsSensitive] [bit] NOT NULL,
	[IsSearchable] [bit] NOT NULL,
	[IsEditable] [bit] NOT NULL,
	[ResetApprovalOnEdit] [bit] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[ParameterConfiguration] [nvarchar](max) NULL,
	[UIComponent] [nvarchar](50) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_WorkflowParameter] PRIMARY KEY CLUSTERED 
(
	[ParameterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[WorkflowSourceEntity]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[WorkflowSourceEntity](
	[SourceEntityId] [uniqueidentifier] NOT NULL,
	[WorkflowSourceTypeId] [int] NOT NULL,
	[SourceData] [nvarchar](max) NOT NULL,
	[SourceMetadata] [nvarchar](max) NULL,
	[BusinessKey] [nvarchar](100) NULL,
	[ExternalId] [nvarchar](100) NULL,
	[RequestedBy] [uniqueidentifier] NOT NULL,
	[Priority] [int] NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModuleFunctionId] [uniqueidentifier] NOT NULL,
	[WorkflowSourceEntityId] [uniqueidentifier] NOT NULL,
	[StatusId] [int] NULL,
 CONSTRAINT [PK_WorkflowSourceEntity] PRIMARY KEY CLUSTERED 
(
	[WorkflowSourceEntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[WorkflowSourceType]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[WorkflowSourceType](
	[WorkflowSourceTypeId] [int] IDENTITY(1,1) NOT NULL,
	[SourceTypeName] [nvarchar](100) NOT NULL,
	[SourceTypeCode] [nvarchar](50) NOT NULL,
	[AmountFieldPath] [nvarchar](200) NULL,
	[SourceSchema] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_WorkflowSourceType] PRIMARY KEY CLUSTERED 
(
	[WorkflowSourceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_WorkflowSourceType_Code] UNIQUE NONCLUSTERED 
(
	[SourceTypeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[WorkflowState]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[WorkflowState](
	[StateId] [uniqueidentifier] NOT NULL,
	[StateName] [nvarchar](50) NOT NULL,
	[StateCode] [nvarchar](20) NOT NULL,
	[StateType] [nvarchar](20) NOT NULL,
	[IsSystemState] [bit] NOT NULL,
	[AllowEdit] [bit] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[StateColor] [nvarchar](20) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_WorkflowState] PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_WorkflowState_Code] UNIQUE NONCLUSTERED 
(
	[StateCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[WorkflowTransition]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[WorkflowTransition](
	[TransitionId] [uniqueidentifier] NOT NULL,
	[WorkflowDefinitionId] [uniqueidentifier] NOT NULL,
	[SourceStateId] [uniqueidentifier] NOT NULL,
	[TargetStateId] [uniqueidentifier] NOT NULL,
	[TransitionName] [nvarchar](100) NOT NULL,
	[TransitionType] [nvarchar](50) NOT NULL,
	[Priority] [int] NOT NULL,
	[RequiresComment] [bit] NOT NULL,
	[RequiresJustification] [bit] NOT NULL,
	[TransitionConditions] [nvarchar](max) NULL,
	[IsSystemTransition] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_WorkflowTransition] PRIMARY KEY CLUSTERED 
(
	[TransitionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[WorkflowTrigger]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[WorkflowTrigger](
	[TriggerId] [uniqueidentifier] NOT NULL,
	[ApprovalRuleId] [uniqueidentifier] NOT NULL,
	[WorkflowDefinitionId] [uniqueidentifier] NULL,
	[ModuleFunctionId] [uniqueidentifier] NOT NULL,
	[PermissionId] [uniqueidentifier] NULL,
	[TriggerCondition] [nvarchar](50) NOT NULL,
	[TriggerOnCreate] [bit] NOT NULL,
	[TriggerOnUpdate] [bit] NOT NULL,
	[TriggerOnDelete] [bit] NOT NULL,
	[TriggerMetadata] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_WorkflowTrigger] PRIMARY KEY CLUSTERED 
(
	[TriggerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_WorkflowTrigger] UNIQUE NONCLUSTERED 
(
	[ApprovalRuleId] ASC,
	[ModuleFunctionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[WorkflowType]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [dbo].[WorkflowType](
	[WorkflowTypeId] [uniqueidentifier] NOT NULL,
	[TypeCode] [nvarchar](50) NOT NULL,
	[TypeName] [nvarchar](100) NOT NULL,
	[TypeCategory] [nvarchar](50) NULL,
	[Description] [nvarchar](255) NULL,
	[DefaultFeatures] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_WorkflowType] PRIMARY KEY CLUSTERED 
(
	[WorkflowTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_WorkflowType_Code] UNIQUE NONCLUSTERED 
(
	[TypeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [tag].[BankAccount]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [tag].[BankAccount](
	[BankAccountId] [uniqueidentifier] NOT NULL,
	[TagId] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[BankAccountId] ASC,
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [tag].[Customer]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [tag].[Customer](
	[CustomerId] [uniqueidentifier] NOT NULL,
	[TagId] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC,
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [tag].[Document]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [tag].[Document](
	[DocumentId] [uniqueidentifier] NOT NULL,
	[TagId] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[DocumentId] ASC,
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [tag].[Enterprise]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [tag].[Enterprise](
	[EnterpriseId] [uniqueidentifier] NOT NULL,
	[TagId] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EnterpriseId] ASC,
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [tag].[Entity]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [tag].[Entity](
	[EntityId] [uniqueidentifier] NOT NULL,
	[TagId] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC,
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [tag].[GLJournalEntryDetail]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [tag].[GLJournalEntryDetail](
	[GLJournalEntryDetailId] [uniqueidentifier] NOT NULL,
	[TagId] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[GLJournalEntryDetailId] ASC,
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [tag].[GLJournalEntryHeader]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [tag].[GLJournalEntryHeader](
	[GLJournalEntryHeaderId] [uniqueidentifier] NOT NULL,
	[TagId] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[GLJournalEntryHeaderId] ASC,
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [tag].[Vendor]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [tag].[Vendor](
	[VendorId] [uniqueidentifier] NOT NULL,
	[TagId] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[TagId] ASC,
	[VendorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [tag].[VendorAccount]    Script Date: 11/19/2025 9:13:21 PM *****
 
GO
 
GO
CREATE TABLE [tag].[VendorAccount](
	[VendorAccountId] [uniqueidentifier] NOT NULL,
	[TagId] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[TagId] ASC,
	[VendorAccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Index [IX_AddressDetailHistory_AddressDetailId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_AddressDetailHistory_AddressDetailId] ON [dbo].[AddressDetailHistory]
(
	[AddressDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_AddressDetailHistory_ChangedDate]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_AddressDetailHistory_ChangedDate] ON [dbo].[AddressDetailHistory]
(
	[ChangedDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_AddressDetailHistory_ChangeType]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_AddressDetailHistory_ChangeType] ON [dbo].[AddressDetailHistory]
(
	[ChangeType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_AddressDetailHistory_CustomerId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_AddressDetailHistory_CustomerId] ON [dbo].[AddressDetailHistory]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_AmountRange_Amount]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_AmountRange_Amount] ON [dbo].[AmountRange]
(
	[StartAmount] ASC,
	[EndAmount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_AmountRange_RuleSet]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_AmountRange_RuleSet] ON [dbo].[AmountRange]
(
	[RuleSetId] ASC,
	[RangeOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_ApprovalConfiguration_ApprovalRule]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_ApprovalConfiguration_ApprovalRule] ON [dbo].[ApprovalConfiguration]
(
	[ApprovalRuleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_ApprovalConfiguration_Customer_Entity]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_ApprovalConfiguration_Customer_Entity] ON [dbo].[ApprovalConfiguration]
(
	[CustomerId] ASC,
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_ApprovalConfiguration_WorkflowDefinition]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_ApprovalConfiguration_WorkflowDefinition] ON [dbo].[ApprovalConfiguration]
(
	[WorkflowDefinitionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_ApprovalLimits_Effective]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_ApprovalLimits_Effective] ON [dbo].[ApprovalLimits]
(
	[EffectiveFrom] ASC,
	[EffectiveTo] ASC,
	[IsActive] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_ApprovalLimits_Role]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_ApprovalLimits_Role] ON [dbo].[ApprovalLimits]
(
	[RoleId] ASC
)
WHERE ([RoleId] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_ApprovalLimits_User]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_ApprovalLimits_User] ON [dbo].[ApprovalLimits]
(
	[UserId] ASC
)
WHERE ([UserId] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_ApprovalLimits_WorkflowDefinition]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_ApprovalLimits_WorkflowDefinition] ON [dbo].[ApprovalLimits]
(
	[WorkflowDefinitionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_ApprovalRule_Customer_Scope]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_ApprovalRule_Customer_Scope] ON [dbo].[ApprovalRule]
(
	[CustomerId] ASC,
	[ApprovalRuleScopeType] ASC,
	[IsActive] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_ApprovalRule_Enterprise]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_ApprovalRule_Enterprise] ON [dbo].[ApprovalRule]
(
	[EnterpriseId] ASC
)
WHERE ([EnterpriseId] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_ApprovalRule_Entity]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_ApprovalRule_Entity] ON [dbo].[ApprovalRule]
(
	[EntityId] ASC
)
WHERE ([EntityId] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_UC_ApprovalRule]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_UC_ApprovalRule] ON [dbo].[ApprovalRule]
(
	[CustomerId] ASC,
	[EnterpriseId] ASC,
	[EntityId] ASC,
	[IsActive] ASC
)
WHERE ([IsActive]=(1))
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_ApprovalStep_Range]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_ApprovalStep_Range] ON [dbo].[ApprovalStep]
(
	[RangeId] ASC,
	[StepOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_ApprovalStepVerticalGroup_Level]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_ApprovalStepVerticalGroup_Level] ON [dbo].[ApprovalStepVerticalGroup]
(
	[GroupLevel] ASC,
	[VerticalOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_ApprovalStepVerticalGroup_Parent]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_ApprovalStepVerticalGroup_Parent] ON [dbo].[ApprovalStepVerticalGroup]
(
	[ParentVerticalGroupId] ASC
)
WHERE ([ParentVerticalGroupId] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_ApprovalStepVerticalGroup_Step]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_ApprovalStepVerticalGroup_Step] ON [dbo].[ApprovalStepVerticalGroup]
(
	[ApprovalStepId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_VerticalGroupMember_HorizontalGroup]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_VerticalGroupMember_HorizontalGroup] ON [dbo].[ApprovalStepVerticalGroupMember]
(
	[HorizontalGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_VerticalGroupMember_VerticalGroup]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_VerticalGroupMember_VerticalGroup] ON [dbo].[ApprovalStepVerticalGroupMember]
(
	[VerticalGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_ApprovalTask_AssignedUser]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_ApprovalTask_AssignedUser] ON [dbo].[ApprovalTask]
(
	[AssignedToId] ASC,
	[Status] ASC,
	[Priority] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_ApprovalTask_DueDate]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_ApprovalTask_DueDate] ON [dbo].[ApprovalTask]
(
	[DueDate] ASC,
	[Status] ASC
)
WHERE ([DueDate] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_ApprovalTask_Instance]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_ApprovalTask_Instance] ON [dbo].[ApprovalTask]
(
	[InstanceId] ASC,
	[TaskOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_ApprovalTask_TaskGroup]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_ApprovalTask_TaskGroup] ON [dbo].[ApprovalTask]
(
	[TaskGroupId] ASC
)
WHERE ([TaskGroupId] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BankAccountEntitlementHistory_BankAccountEntitlementId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BankAccountEntitlementHistory_BankAccountEntitlementId] ON [dbo].[BankAccountEntitlementHistory]
(
	[BankAccountEntitlementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BankAccountEntitlementHistory_ChangedDate]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BankAccountEntitlementHistory_ChangedDate] ON [dbo].[BankAccountEntitlementHistory]
(
	[ChangedDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_BankAccountEntitlementHistory_ChangeType]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BankAccountEntitlementHistory_ChangeType] ON [dbo].[BankAccountEntitlementHistory]
(
	[ChangeType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BankAccountEntitlementHistory_CustomerId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BankAccountEntitlementHistory_CustomerId] ON [dbo].[BankAccountEntitlementHistory]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BankAccountEntitlementLimitHistory_BankAccountEntitlementLimitId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BankAccountEntitlementLimitHistory_BankAccountEntitlementLimitId] ON [dbo].[BankAccountEntitlementLimitHistory]
(
	[BankAccountEntitlementLimitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BankAccountEntitlementLimitHistory_ChangedDate]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BankAccountEntitlementLimitHistory_ChangedDate] ON [dbo].[BankAccountEntitlementLimitHistory]
(
	[ChangedDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_BankAccountEntitlementLimitHistory_ChangeType]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BankAccountEntitlementLimitHistory_ChangeType] ON [dbo].[BankAccountEntitlementLimitHistory]
(
	[ChangeType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BankAccountEntitlementLimitHistory_CustomerId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BankAccountEntitlementLimitHistory_CustomerId] ON [dbo].[BankAccountEntitlementLimitHistory]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BankAccountHistory_BankAccountId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BankAccountHistory_BankAccountId] ON [dbo].[BankAccountHistory]
(
	[BankAccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BankAccountHistory_ChangedDate]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BankAccountHistory_ChangedDate] ON [dbo].[BankAccountHistory]
(
	[ChangedDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_BankAccountHistory_ChangeType]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BankAccountHistory_ChangeType] ON [dbo].[BankAccountHistory]
(
	[ChangeType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BankAccountHistory_CustomerId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BankAccountHistory_CustomerId] ON [dbo].[BankAccountHistory]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BankAccountHolderHistory_BankAccountHolderId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BankAccountHolderHistory_BankAccountHolderId] ON [dbo].[BankAccountHolderHistory]
(
	[BankAccountHolderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BankAccountHolderHistory_ChangedDate]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BankAccountHolderHistory_ChangedDate] ON [dbo].[BankAccountHolderHistory]
(
	[ChangedDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_BankAccountHolderHistory_ChangeType]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BankAccountHolderHistory_ChangeType] ON [dbo].[BankAccountHolderHistory]
(
	[ChangeType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BankAccountHolderHistory_CustomerId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BankAccountHolderHistory_CustomerId] ON [dbo].[BankAccountHolderHistory]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BankAccountSigneeHistory_BankAccountSigneeId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BankAccountSigneeHistory_BankAccountSigneeId] ON [dbo].[BankAccountSigneeHistory]
(
	[BankAccountSigneeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BankAccountSigneeHistory_ChangedDate]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BankAccountSigneeHistory_ChangedDate] ON [dbo].[BankAccountSigneeHistory]
(
	[ChangedDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_BankAccountSigneeHistory_ChangeType]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BankAccountSigneeHistory_ChangeType] ON [dbo].[BankAccountSigneeHistory]
(
	[ChangeType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BankAccountSigneeHistory_CustomerId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BankAccountSigneeHistory_CustomerId] ON [dbo].[BankAccountSigneeHistory]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BillDistribution_Bill]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BillDistribution_Bill] ON [dbo].[BillDistribution]
(
	[BillId] ASC,
	[LineNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BillDistribution_ChartOfAccounts]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BillDistribution_ChartOfAccounts] ON [dbo].[BillDistribution]
(
	[ChartOfAccountsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BillDistribution_Customer_Entity]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BillDistribution_Customer_Entity] ON [dbo].[BillDistribution]
(
	[CustomerId] ASC,
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_BillDistribution_GlAccount]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BillDistribution_GlAccount] ON [dbo].[BillDistribution]
(
	[GlAccountNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BillHeader_BillTemplate]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BillHeader_BillTemplate] ON [dbo].[BillHeader]
(
	[BillTemplateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BillHeader_Customer_Entity]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BillHeader_Customer_Entity] ON [dbo].[BillHeader]
(
	[CustomerId] ASC,
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BillHeader_DueDate]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BillHeader_DueDate] ON [dbo].[BillHeader]
(
	[DueDate] ASC,
	[BillStatusTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BillHeader_Entity_Status]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BillHeader_Entity_Status] ON [dbo].[BillHeader]
(
	[EntityId] ASC,
	[BillStatusTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BillHeader_IsDeleted]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BillHeader_IsDeleted] ON [dbo].[BillHeader]
(
	[IsDeleted] ASC,
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BillHeader_ParentBill]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BillHeader_ParentBill] ON [dbo].[BillHeader]
(
	[ParentBillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BillHeader_PaymentDate]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BillHeader_PaymentDate] ON [dbo].[BillHeader]
(
	[PaymentDate] ASC,
	[BillStatusTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BillHeader_Vendor_Date]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BillHeader_Vendor_Date] ON [dbo].[BillHeader]
(
	[VendorId] ASC,
	[InvoiceDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BillHeaderDocument_BillHeader]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BillHeaderDocument_BillHeader] ON [dbo].[BillHeaderDocument]
(
	[BillHeaderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BillHeaderDocument_Document]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BillHeaderDocument_Document] ON [dbo].[BillHeaderDocument]
(
	[DocumentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_BillHeaderDocument_Status]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BillHeaderDocument_Status] ON [dbo].[BillHeaderDocument]
(
	[Status] ASC,
	[IsStaged] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BillTemplate_Currency]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BillTemplate_Currency] ON [dbo].[BillTemplate]
(
	[CurrencyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BillTemplate_Customer_Entity]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BillTemplate_Customer_Entity] ON [dbo].[BillTemplate]
(
	[CustomerId] ASC,
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_BillTemplate_Status]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BillTemplate_Status] ON [dbo].[BillTemplate]
(
	[TemplateStatus] ASC,
	[IsActive] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BillTemplate_Vendor]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BillTemplate_Vendor] ON [dbo].[BillTemplate]
(
	[VendorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BillTemplateCustomDate_Date]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BillTemplateCustomDate_Date] ON [dbo].[BillTemplateCustomDate]
(
	[ScheduledDate] ASC,
	[IsActive] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BillTemplateCustomDate_Schedule]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BillTemplateCustomDate_Schedule] ON [dbo].[BillTemplateCustomDate]
(
	[BillTemplateRecurrenceScheduleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BillTemplateDistribution_ChartOfAccounts]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BillTemplateDistribution_ChartOfAccounts] ON [dbo].[BillTemplateDistribution]
(
	[ChartOfAccountsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BillTemplateDistribution_Customer_Entity]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BillTemplateDistribution_Customer_Entity] ON [dbo].[BillTemplateDistribution]
(
	[CustomerId] ASC,
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_BillTemplateDistribution_GlAccount]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BillTemplateDistribution_GlAccount] ON [dbo].[BillTemplateDistribution]
(
	[GlAccountNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BillTemplateDistribution_Template]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BillTemplateDistribution_Template] ON [dbo].[BillTemplateDistribution]
(
	[BillTemplateId] ASC,
	[LineNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BillTemplateRecurrenceSchedule_Template]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BillTemplateRecurrenceSchedule_Template] ON [dbo].[BillTemplateRecurrenceSchedule]
(
	[BillTemplateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_ChartOfAccounts_AccountNumber]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_ChartOfAccounts_AccountNumber] ON [dbo].[ChartOfAccounts]
(
	[AccountNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_ChartOfAccounts_AccountType]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_ChartOfAccounts_AccountType] ON [dbo].[ChartOfAccounts]
(
	[AccountType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_ChartOfAccounts_ChartOfAccountsNameId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_ChartOfAccounts_ChartOfAccountsNameId] ON [dbo].[ChartOfAccounts]
(
	[ChartOfAccountsNameId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_ChartOfAccounts_CustomerId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_ChartOfAccounts_CustomerId] ON [dbo].[ChartOfAccounts]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_ChartOfAccounts_IsActive]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_ChartOfAccounts_IsActive] ON [dbo].[ChartOfAccounts]
(
	[IsActive] ASC
)
INCLUDE([AccountNumber],[AccountShortName]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_ChartOfAccounts_ParentAccountId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_ChartOfAccounts_ParentAccountId] ON [dbo].[ChartOfAccounts]
(
	[ParentAccountId] ASC
)
WHERE ([ParentAccountId] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_ChartOfAccounts_Search]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_ChartOfAccounts_Search] ON [dbo].[ChartOfAccounts]
(
	[CustomerId] ASC,
	[IsActive] ASC
)
INCLUDE([AccountNumber],[AccountShortName],[Description]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_Customer_CustomerNumber]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_Customer_CustomerNumber] ON [dbo].[Customer]
(
	[CustomerNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_Customer_OneZenithCustomer]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE UNIQUE NONCLUSTERED INDEX [IX_Customer_OneZenithCustomer] ON [dbo].[Customer]
(
	[IsZenithCustomer] ASC
)
WHERE ([IsZenithCustomer]=(1) AND [IsActive]=(1))
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_DepositDistribution_ChartOfAccounts]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_DepositDistribution_ChartOfAccounts] ON [dbo].[DepositDistribution]
(
	[ChartOfAccountsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_DepositDistribution_CommissionRule]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_DepositDistribution_CommissionRule] ON [dbo].[DepositDistribution]
(
	[AppliedCommissionRuleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_DepositDistribution_Customer_Entity]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_DepositDistribution_Customer_Entity] ON [dbo].[DepositDistribution]
(
	[CustomerId] ASC,
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_DepositDistribution_Deposit]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_DepositDistribution_Deposit] ON [dbo].[DepositDistribution]
(
	[DepositId] ASC,
	[LineNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_DepositDistribution_GlAccount]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_DepositDistribution_GlAccount] ON [dbo].[DepositDistribution]
(
	[GlAccountNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_DepositHeader_BankAccount]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_DepositHeader_BankAccount] ON [dbo].[DepositHeader]
(
	[BankAccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_DepositHeader_CommissionProcessed]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_DepositHeader_CommissionProcessed] ON [dbo].[DepositHeader]
(
	[CommissionProcessed] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_DepositHeader_Customer_Entity]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_DepositHeader_Customer_Entity] ON [dbo].[DepositHeader]
(
	[CustomerId] ASC,
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_DepositHeader_DepositDate]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_DepositHeader_DepositDate] ON [dbo].[DepositHeader]
(
	[DepositDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_DepositHeader_PayorName]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_DepositHeader_PayorName] ON [dbo].[DepositHeader]
(
	[PayorName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_DepositHeader_Status]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_DepositHeader_Status] ON [dbo].[DepositHeader]
(
	[DepositStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_DocumentProcessingQueue_CreatedDate]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_DocumentProcessingQueue_CreatedDate] ON [dbo].[DocumentProcessingQueue]
(
	[CreatedDate] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_DocumentProcessingQueue_CurrentStage]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_DocumentProcessingQueue_CurrentStage] ON [dbo].[DocumentProcessingQueue]
(
	[ProcessingStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_DocumentProcessingQueue_DocumentId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_DocumentProcessingQueue_DocumentId] ON [dbo].[DocumentProcessingQueue]
(
	[DocumentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_DocumentProcessingQueue_EmailMessageId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_DocumentProcessingQueue_EmailMessageId] ON [dbo].[DocumentProcessingQueue]
(
	[EmailMessageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_DocumentProcessingQueue_SourceType]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_DocumentProcessingQueue_SourceType] ON [dbo].[DocumentProcessingQueue]
(
	[SourceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_DraftSequence_EntityId_FiscalYear]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_DraftSequence_EntityId_FiscalYear] ON [dbo].[DraftSequence]
(
	[EntityId] ASC,
	[FiscalYear] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_Entity_EntityNumber]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_Entity_EntityNumber] ON [dbo].[Entity]
(
	[EntityNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_FieldChangeHistory_ChangedBy]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_FieldChangeHistory_ChangedBy] ON [dbo].[FieldChangeHistory]
(
	[ChangedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_FieldChangeHistory_Field]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_FieldChangeHistory_Field] ON [dbo].[FieldChangeHistory]
(
	[FieldName] ASC,
	[ChangedAt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_FieldChangeHistory_Instance]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_FieldChangeHistory_Instance] ON [dbo].[FieldChangeHistory]
(
	[InstanceId] ASC,
	[ChangedAt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_FieldChangeHistory_Significant]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_FieldChangeHistory_Significant] ON [dbo].[FieldChangeHistory]
(
	[IsSignificantChange] ASC,
	[ChangedAt] ASC
)
WHERE ([IsSignificantChange]=(1))
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_FieldPermission_Parameter]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_FieldPermission_Parameter] ON [dbo].[FieldPermission]
(
	[ParameterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_FieldPermission_Role]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_FieldPermission_Role] ON [dbo].[FieldPermission]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_FieldPermission_WorkflowDefinition]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_FieldPermission_WorkflowDefinition] ON [dbo].[FieldPermission]
(
	[WorkflowDefinitionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_GLJournalEntryDetail_JournalEntryStatusTypeId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_GLJournalEntryDetail_JournalEntryStatusTypeId] ON [dbo].[GLJournalEntryDetail]
(
	[JournalEntryStatusTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_GLJournalEntryHeader_JournalEntryStatusTypeId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_GLJournalEntryHeader_JournalEntryStatusTypeId] ON [dbo].[GLJournalEntryHeader]
(
	[JournalEntryStatusTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_JournalSequence_EntityId_FiscalYear]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_JournalSequence_EntityId_FiscalYear] ON [dbo].[JournalSequence]
(
	[EntityId] ASC,
	[FiscalYear] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_MakerCheckerValidation_ApprovalRule]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_MakerCheckerValidation_ApprovalRule] ON [dbo].[MakerCheckerValidation]
(
	[ApprovalRuleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_MakerCheckerValidation_Type]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_MakerCheckerValidation_Type] ON [dbo].[MakerCheckerValidation]
(
	[ValidationType] ASC,
	[SeverityLevel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_MenuItem_ModuleId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_MenuItem_ModuleId] ON [dbo].[MenuItem]
(
	[ModuleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_MenuItem_ParentMenuItemId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_MenuItem_ParentMenuItemId] ON [dbo].[MenuItem]
(
	[ParentMenuItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_MenuItemEntitlement_EntitlementId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_MenuItemEntitlement_EntitlementId] ON [dbo].[MenuItemEntitlement]
(
	[EntitlementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_MenuItemEntitlement_MenuItemId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_MenuItemEntitlement_MenuItemId] ON [dbo].[MenuItemEntitlement]
(
	[MenuItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_ModuleFunction_ModuleId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_ModuleFunction_ModuleId] ON [dbo].[ModuleFunction]
(
	[ModuleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_ModuleFunctionPermission_ModuleFunctionId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_ModuleFunctionPermission_ModuleFunctionId] ON [dbo].[ModuleFunctionPermission]
(
	[ModuleFunctionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_ModuleFunctionPermission_PermissionId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_ModuleFunctionPermission_PermissionId] ON [dbo].[ModuleFunctionPermission]
(
	[PermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_OutboundACH_EffectiveDate]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_OutboundACH_EffectiveDate] ON [dbo].[OutboundACH]
(
	[ACHEffectiveDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_OutboundACH_TraceNumber]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_OutboundACH_TraceNumber] ON [dbo].[OutboundACH]
(
	[ACHTraceNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_OutboundCheck_CheckDate]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_OutboundCheck_CheckDate] ON [dbo].[OutboundCheck]
(
	[CheckDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_OutboundCheck_CheckNumber]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_OutboundCheck_CheckNumber] ON [dbo].[OutboundCheck]
(
	[CheckNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_OutboundCheck_IsVoided]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_OutboundCheck_IsVoided] ON [dbo].[OutboundCheck]
(
	[IsVoided] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_OutboundOther_ExternalSystem]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_OutboundOther_ExternalSystem] ON [dbo].[OutboundOther]
(
	[ExternalSystemName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_OutboundOther_ExternalTransactionId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_OutboundOther_ExternalTransactionId] ON [dbo].[OutboundOther]
(
	[ExternalTransactionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_OutboundOther_PaymentSubType]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_OutboundOther_PaymentSubType] ON [dbo].[OutboundOther]
(
	[PaymentSubTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_OutboundWire_ConfirmationNumber]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_OutboundWire_ConfirmationNumber] ON [dbo].[OutboundWire]
(
	[ConfirmationNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_OutboundWire_SWIFT]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_OutboundWire_SWIFT] ON [dbo].[OutboundWire]
(
	[BeneficiaryBankSWIFT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_OutboundWire_WireType]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_OutboundWire_WireType] ON [dbo].[OutboundWire]
(
	[WireTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_PaymentHeader_Bill]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_PaymentHeader_Bill] ON [dbo].[PaymentHeader]
(
	[BillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_PaymentHeader_Customer_Entity]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_PaymentHeader_Customer_Entity] ON [dbo].[PaymentHeader]
(
	[CustomerId] ASC,
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_PaymentHeader_PaymentDate]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_PaymentHeader_PaymentDate] ON [dbo].[PaymentHeader]
(
	[PaymentDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_PaymentHeader_Status]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_PaymentHeader_Status] ON [dbo].[PaymentHeader]
(
	[PaymentStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_ProcessingStageHistory_QueueId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_ProcessingStageHistory_QueueId] ON [dbo].[ProcessingStageHistory]
(
	[QueueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_ProcessingStageHistory_StageDate]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_ProcessingStageHistory_StageDate] ON [dbo].[ProcessingStageHistory]
(
	[StageDate] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_Role_OneSuperAdmin]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE UNIQUE NONCLUSTERED INDEX [IX_Role_OneSuperAdmin] ON [dbo].[Role]
(
	[IsSuperAdmin] ASC
)
WHERE ([IsSuperAdmin]=(1) AND [IsActive]=(1))
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_RoleModuleFunctionPermission_ModuleFunctionPermissionId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_RoleModuleFunctionPermission_ModuleFunctionPermissionId] ON [dbo].[RoleModuleFunctionPermission]
(
	[ModuleFunctionPermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_RoleModuleFunctionPermission_RoleId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_RoleModuleFunctionPermission_RoleId] ON [dbo].[RoleModuleFunctionPermission]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_RuleSet_ApprovalRule]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_RuleSet_ApprovalRule] ON [dbo].[RuleSet]
(
	[ApprovalRuleId] ASC,
	[SetOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_RuleSetPaymentMethod_Enabled]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_RuleSetPaymentMethod_Enabled] ON [dbo].[RuleSetPaymentMethod]
(
	[IsEnabled] ASC
)
WHERE ([IsEnabled]=(1))
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_RuleSetPaymentMethod_RuleSet]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_RuleSetPaymentMethod_RuleSet] ON [dbo].[RuleSetPaymentMethod]
(
	[RuleSetId] ASC,
	[FunctionOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_StepApprover_Group]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_StepApprover_Group] ON [dbo].[StepApprover]
(
	[GroupId] ASC
)
WHERE ([GroupId] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_StepApprover_Reference]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_StepApprover_Reference] ON [dbo].[StepApprover]
(
	[ApproverType] ASC,
	[ApproverReferenceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_StepApprover_Step]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_StepApprover_Step] ON [dbo].[StepApprover]
(
	[StepId] ASC,
	[ApproverOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_StepApproverGroup_Logic]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_StepApproverGroup_Logic] ON [dbo].[StepApproverGroup]
(
	[GroupLogic] ASC,
	[GroupLevel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_StepApproverGroup_Parent]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_StepApproverGroup_Parent] ON [dbo].[StepApproverGroup]
(
	[ParentGroupId] ASC
)
WHERE ([ParentGroupId] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_StepApproverGroup_Step]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_StepApproverGroup_Step] ON [dbo].[StepApproverGroup]
(
	[StepId] ASC,
	[GroupOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_TaskDecision_DecisionBy]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_TaskDecision_DecisionBy] ON [dbo].[TaskDecision]
(
	[DecisionBy] ASC,
	[DecisionTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_TaskDecision_Task]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_TaskDecision_Task] ON [dbo].[TaskDecision]
(
	[TaskId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_TaskDecision_Type]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_TaskDecision_Type] ON [dbo].[TaskDecision]
(
	[DecisionType] ASC,
	[DecisionTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_TaskGroup_Instance]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_TaskGroup_Instance] ON [dbo].[TaskGroup]
(
	[InstanceId] ASC,
	[Status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_TaskGroup_Status]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_TaskGroup_Status] ON [dbo].[TaskGroup]
(
	[Status] ASC,
	[CreatedAt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_TaskGroup_Step]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_TaskGroup_Step] ON [dbo].[TaskGroup]
(
	[StepId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_TransactionBatch_BatchDate]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_TransactionBatch_BatchDate] ON [dbo].[TransactionBatch]
(
	[BatchDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_TransactionBatch_Entity]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_TransactionBatch_Entity] ON [dbo].[TransactionBatch]
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_TransitionCondition_Transition]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_TransitionCondition_Transition] ON [dbo].[TransitionCondition]
(
	[TransitionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [UserRoleEntitlementGroup_NCI]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [UserRoleEntitlementGroup_NCI] ON [dbo].[UserRoleEntitlementGroup]
(
	[CustomerId] ASC
)
INCLUDE([RoleId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_VendorAccountHistory_ChangedDate]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_VendorAccountHistory_ChangedDate] ON [dbo].[VendorAccountHistory]
(
	[ChangedDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_VendorAccountHistory_ChangeType]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_VendorAccountHistory_ChangeType] ON [dbo].[VendorAccountHistory]
(
	[ChangeType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_VendorAccountHistory_CustomerId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_VendorAccountHistory_CustomerId] ON [dbo].[VendorAccountHistory]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_VendorAccountHistory_VendorAccountId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_VendorAccountHistory_VendorAccountId] ON [dbo].[VendorAccountHistory]
(
	[VendorAccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_VendorGLDistributionHistory_ChangedDate]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_VendorGLDistributionHistory_ChangedDate] ON [dbo].[VendorGLDistributionHistory]
(
	[ChangedDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_VendorGLDistributionHistory_ChangeType]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_VendorGLDistributionHistory_ChangeType] ON [dbo].[VendorGLDistributionHistory]
(
	[ChangeType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_VendorGLDistributionHistory_CustomerId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_VendorGLDistributionHistory_CustomerId] ON [dbo].[VendorGLDistributionHistory]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_VendorGLDistributionHistory_VendorGLDistributionId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_VendorGLDistributionHistory_VendorGLDistributionId] ON [dbo].[VendorGLDistributionHistory]
(
	[VendorGLDistributionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_VendorHistory_ChangedDate]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_VendorHistory_ChangedDate] ON [dbo].[VendorHistory]
(
	[ChangedDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_VendorHistory_ChangeType]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_VendorHistory_ChangeType] ON [dbo].[VendorHistory]
(
	[ChangeType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_VendorHistory_CustomerId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_VendorHistory_CustomerId] ON [dbo].[VendorHistory]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_VendorHistory_MasterVendorId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_VendorHistory_MasterVendorId] ON [dbo].[VendorHistory]
(
	[MasterVendorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_VendorPaymentMethodHistory_ChangedDate]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_VendorPaymentMethodHistory_ChangedDate] ON [dbo].[VendorPaymentMethodHistory]
(
	[ChangedDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_VendorPaymentMethodHistory_ChangeType]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_VendorPaymentMethodHistory_ChangeType] ON [dbo].[VendorPaymentMethodHistory]
(
	[ChangeType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_VendorPaymentMethodHistory_CustomerId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_VendorPaymentMethodHistory_CustomerId] ON [dbo].[VendorPaymentMethodHistory]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_VendorPaymentMethodHistory_VendorPaymentMethodId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_VendorPaymentMethodHistory_VendorPaymentMethodId] ON [dbo].[VendorPaymentMethodHistory]
(
	[VendorPaymentMethodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_WorkflowAuditLog_Correlation]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowAuditLog_Correlation] ON [dbo].[WorkflowAuditLog]
(
	[CorrelationId] ASC
)
WHERE ([CorrelationId] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_WorkflowAuditLog_EventType]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowAuditLog_EventType] ON [dbo].[WorkflowAuditLog]
(
	[EventType] ASC,
	[EventCategory] ASC,
	[Timestamp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_WorkflowAuditLog_Instance]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowAuditLog_Instance] ON [dbo].[WorkflowAuditLog]
(
	[InstanceId] ASC,
	[Timestamp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_WorkflowAuditLog_User]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowAuditLog_User] ON [dbo].[WorkflowAuditLog]
(
	[UserId] ASC,
	[Timestamp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_WorkflowDefinition_Customer_Entity]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowDefinition_Customer_Entity] ON [dbo].[WorkflowDefinition]
(
	[CustomerId] ASC,
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_WorkflowDefinition_Module]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowDefinition_Module] ON [dbo].[WorkflowDefinition]
(
	[ModuleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_WorkflowDefinition_Template]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowDefinition_Template] ON [dbo].[WorkflowDefinition]
(
	[IsTemplate] ASC,
	[IsActive] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_WorkflowDefinition_Type]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowDefinition_Type] ON [dbo].[WorkflowDefinition]
(
	[WorkflowTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_WorkflowInstance_Customer]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowInstance_Customer] ON [dbo].[WorkflowInstance]
(
	[CustomerId] ASC,
	[Status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_WorkflowInstance_DueDate]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowInstance_DueDate] ON [dbo].[WorkflowInstance]
(
	[DueDate] ASC
)
WHERE ([DueDate] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_WorkflowInstance_SourceEntity]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowInstance_SourceEntity] ON [dbo].[WorkflowInstance]
(
	[WorkflowSourceEntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_WorkflowInstance_Status]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowInstance_Status] ON [dbo].[WorkflowInstance]
(
	[Status] ASC,
	[Priority] ASC,
	[InitiatedAt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_WorkflowMetrics_ApprovalRule]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowMetrics_ApprovalRule] ON [dbo].[WorkflowMetrics]
(
	[ApprovalRuleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_WorkflowMetrics_Date]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowMetrics_Date] ON [dbo].[WorkflowMetrics]
(
	[MetricDate] ASC,
	[MeasurementPeriod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_WorkflowMetrics_Instance]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowMetrics_Instance] ON [dbo].[WorkflowMetrics]
(
	[InstanceId] ASC
)
WHERE ([InstanceId] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_WorkflowMetrics_Type]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowMetrics_Type] ON [dbo].[WorkflowMetrics]
(
	[MetricType] ASC,
	[MetricName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_WorkflowMetrics_Violations]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowMetrics_Violations] ON [dbo].[WorkflowMetrics]
(
	[ThresholdViolation] ASC,
	[MetricDate] ASC
)
WHERE ([ThresholdViolation]=(1))
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_WorkflowNotification_Instance]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowNotification_Instance] ON [dbo].[WorkflowNotification]
(
	[InstanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_WorkflowNotification_Scheduled]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowNotification_Scheduled] ON [dbo].[WorkflowNotification]
(
	[ScheduledSendTime] ASC,
	[Status] ASC
)
WHERE ([ScheduledSendTime] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_WorkflowNotification_Urgent]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowNotification_Urgent] ON [dbo].[WorkflowNotification]
(
	[IsUrgent] ASC,
	[CreatedDate] ASC
)
WHERE ([IsUrgent]=(1))
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_WorkflowNotification_User]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowNotification_User] ON [dbo].[WorkflowNotification]
(
	[UserId] ASC,
	[Status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_WorkflowParameter_Required]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowParameter_Required] ON [dbo].[WorkflowParameter]
(
	[IsRequired] ASC,
	[IsEditable] ASC
)
WHERE ([IsRequired]=(1))
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_WorkflowParameter_WorkflowDefinition]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowParameter_WorkflowDefinition] ON [dbo].[WorkflowParameter]
(
	[WorkflowDefinitionId] ASC,
	[DisplayOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_WorkflowSourceEntity_BusinessKey]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowSourceEntity_BusinessKey] ON [dbo].[WorkflowSourceEntity]
(
	[BusinessKey] ASC
)
WHERE ([BusinessKey] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_WorkflowSourceEntity_RequestedBy]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowSourceEntity_RequestedBy] ON [dbo].[WorkflowSourceEntity]
(
	[RequestedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_WorkflowSourceEntity_SourceType]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowSourceEntity_SourceType] ON [dbo].[WorkflowSourceEntity]
(
	[WorkflowSourceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_WorkflowSourceEntity_Status]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowSourceEntity_Status] ON [dbo].[WorkflowSourceEntity]
(
	[Status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_WorkflowState_Type]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowState_Type] ON [dbo].[WorkflowState]
(
	[StateType] ASC,
	[DisplayOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_WorkflowTransition_SourceState]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowTransition_SourceState] ON [dbo].[WorkflowTransition]
(
	[SourceStateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_WorkflowTransition_WorkflowDefinition]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowTransition_WorkflowDefinition] ON [dbo].[WorkflowTransition]
(
	[WorkflowDefinitionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_WorkflowTrigger_ApprovalRule]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowTrigger_ApprovalRule] ON [dbo].[WorkflowTrigger]
(
	[ApprovalRuleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_WorkflowTrigger_ModuleFunction]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowTrigger_ModuleFunction] ON [dbo].[WorkflowTrigger]
(
	[ModuleFunctionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_WorkflowTrigger_WorkflowDefinition]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowTrigger_WorkflowDefinition] ON [dbo].[WorkflowTrigger]
(
	[WorkflowDefinitionId] ASC
)
WHERE ([WorkflowDefinitionId] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_WorkflowType_Category]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowType_Category] ON [dbo].[WorkflowType]
(
	[TypeCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
