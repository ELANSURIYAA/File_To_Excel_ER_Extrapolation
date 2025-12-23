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