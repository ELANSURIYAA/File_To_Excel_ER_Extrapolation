--  Object:  Table [dbo].[GLBalance]    Script Date: 11/19/2025 9:13:21 PM *****
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