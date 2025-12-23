--  Object:  Table [dbo].[Note]    Script Date: 11/19/2025 9:13:21 PM *****
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