--  Object:  Table [dbo].[Timesheets]    Script Date: 11/19/2025 9:13:21 PM *****
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