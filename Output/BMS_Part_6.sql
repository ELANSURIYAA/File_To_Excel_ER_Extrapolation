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