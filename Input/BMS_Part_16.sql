--  Object:  Table [dbo].[UserType]    Script Date: 11/19/2025 9:13:21 PM *****
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