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