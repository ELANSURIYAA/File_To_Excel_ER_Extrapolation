--  Object:  Table [dbo].[GLJournalEntryHeaderHistory]    Script Date: 11/19/2025 9:13:21 PM *****
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