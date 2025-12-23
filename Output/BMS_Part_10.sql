--  Object:  Table [dbo].[JobStatus]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [dbo].[JobStatus](
	[JobStatusId] [int] IDENTITY(1,1) NOT NULL,
	[JobStatusName] [varchar](50) NOT NULL,
	[Description] [varchar](255) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_JobStatus] PRIMARY KEY CLUSTERED 
(
	[JobStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[JobType]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [dbo].[JobType](
	[JobTypeId] [int] IDENTITY(1,1) NOT NULL,
	[JobTypeName] [varchar](50) NOT NULL,
	[Description] [varchar](255) NULL,
	[ReferenceTable] [varchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_JobType] PRIMARY KEY CLUSTERED 
(
	[JobTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[JournalEntryStatusType]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [dbo].[JournalEntryStatusType](
	[JournalEntryStatusTypeId] [int] IDENTITY(1,1) NOT NULL,
	[StatusCode] [nvarchar](50) NOT NULL,
	[StatusValue] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_JournalEntryStatusType] PRIMARY KEY CLUSTERED 
(
	[JournalEntryStatusTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_JournalEntryStatusType_StatusCode] UNIQUE NONCLUSTERED 
(
	[StatusCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[JournalSequence]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [dbo].[JournalSequence](
	[JournalSequenceId] [uniqueidentifier] NOT NULL,
	[EntityId] [uniqueidentifier] NOT NULL,
	[FiscalYear] [int] NULL,
	[LastSequenceNumber] [int] NOT NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_JournalSequence] PRIMARY KEY CLUSTERED 
(
	[JournalSequenceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UK_JournalSequence_Entity_Year] UNIQUE NONCLUSTERED 
(
	[EntityId] ASC,
	[FiscalYear] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[MakerCheckerValidation]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [dbo].[MakerCheckerValidation](
	[ValidationId] [uniqueidentifier] NOT NULL,
	[ApprovalRuleId] [uniqueidentifier] NOT NULL,
	[ValidationType] [nvarchar](50) NOT NULL,
	[ValidationScope] [nvarchar](50) NOT NULL,
	[ValidationRule] [nvarchar](max) NOT NULL,
	[ValidationMessage] [nvarchar](255) NULL,
	[SeverityLevel] [nvarchar](20) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[PreventionLevel] [nvarchar](50) NOT NULL,
	[BypassPermissionRequired] [uniqueidentifier] NULL,
	[ValidationOrder] [int] NOT NULL,
	[ConditionalLogic] [nvarchar](max) NULL,
	[ExemptionCriteria] [nvarchar](max) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_MakerCheckerValidation] PRIMARY KEY CLUSTERED 
(
	[ValidationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[MenuItem]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [dbo].[MenuItem](
	[MenuItemId] [uniqueidentifier] NOT NULL,
	[ModuleId] [uniqueidentifier] NOT NULL,
	[ParentMenuItemId] [uniqueidentifier] NULL,
	[MenuItemName] [nvarchar](100) NOT NULL,
	[MenuItemUrl] [nvarchar](255) NULL,
	[DisplayOrder] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[MenuItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[MenuItemEntitlement]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [dbo].[MenuItemEntitlement](
	[MenuItemEntitlementId] [uniqueidentifier] NOT NULL,
	[MenuItemId] [uniqueidentifier] NOT NULL,
	[EntitlementId] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[MenuItemEntitlementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_MenuItemEntitlement_MenuItemId_EntitlementId] UNIQUE NONCLUSTERED 
(
	[MenuItemId] ASC,
	[EntitlementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[Module]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [dbo].[Module](
	[ModuleId] [uniqueidentifier] NOT NULL,
	[ModuleName] [nvarchar](100) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[isSystemModule] [bit] NOT NULL,
	[IsAdminModule] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ModuleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[ModuleFunction]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [dbo].[ModuleFunction](
	[ModuleFunctionId] [uniqueidentifier] NOT NULL,
	[ModuleFunctionName] [nvarchar](100) NOT NULL,
	[ModuleId] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[SortOrder] [int] NULL,
	[ParentModuleFunctionId] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[ModuleFunctionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[ModuleFunctionPermission]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [dbo].[ModuleFunctionPermission](
	[ModuleFunctionPermissionId] [uniqueidentifier] NOT NULL,
	[ModuleFunctionId] [uniqueidentifier] NOT NULL,
	[PermissionId] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[SortOrder] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ModuleFunctionPermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_ModuleFunctionPermission_ModuleFunction_Permission] UNIQUE NONCLUSTERED 
(
	[ModuleFunctionId] ASC,
	[PermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO