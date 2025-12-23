--  Object:  Table [dbo].[PermissionType]    Script Date: 11/19/2025 9:13:21 PM *****
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