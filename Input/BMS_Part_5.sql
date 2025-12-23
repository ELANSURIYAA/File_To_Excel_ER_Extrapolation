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