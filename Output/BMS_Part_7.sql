--  Object:  Table [dbo].[FeatureType]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [dbo].[FeatureType](
	[FeatureTypeId] [uniqueidentifier] NOT NULL,
	[TypeCode] [nvarchar](50) NOT NULL,
	[TypeValue] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[FeatureTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[TypeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[FieldChangeHistory]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [dbo].[FieldChangeHistory](
	[ChangeId] [uniqueidentifier] NOT NULL,
	[InstanceId] [uniqueidentifier] NOT NULL,
	[FieldName] [nvarchar](100) NOT NULL,
	[FieldPath] [nvarchar](500) NULL,
	[OldValue] [nvarchar](max) NULL,
	[NewValue] [nvarchar](max) NULL,
	[ChangeType] [nvarchar](50) NOT NULL,
	[ChangedAt] [datetime2](7) NOT NULL,
	[ChangedBy] [uniqueidentifier] NOT NULL,
	[ChangeReason] [nvarchar](255) NULL,
	[ChangeSource] [nvarchar](100) NULL,
	[ResetApproval] [bit] NOT NULL,
	[AffectedTaskIds] [nvarchar](max) NULL,
	[IsSignificantChange] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_FieldChangeHistory] PRIMARY KEY CLUSTERED 
(
	[ChangeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[FieldPermission]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [dbo].[FieldPermission](
	[PermissionId] [uniqueidentifier] NOT NULL,
	[WorkflowDefinitionId] [uniqueidentifier] NOT NULL,
	[ParameterId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[StateFilter] [nvarchar](max) NULL,
	[IsEditable] [bit] NOT NULL,
	[ResetApprovalOnEdit] [bit] NOT NULL,
	[RequiresJustification] [bit] NOT NULL,
	[NotifyOnChange] [bit] NOT NULL,
	[NotificationTargets] [nvarchar](max) NULL,
	[PermissionLevel] [nvarchar](50) NOT NULL,
	[ConditionalRules] [nvarchar](max) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_FieldPermission] PRIMARY KEY CLUSTERED 
(
	[PermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[FIEntitlement]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [dbo].[FIEntitlement](
	[FIEntitlementId] [uniqueidentifier] NOT NULL,
	[FinancialInstitutionId] [uniqueidentifier] NOT NULL,
	[BankingEntitlementsId] [uniqueidentifier] NOT NULL,
	[Configuration] [varchar](500) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK__FIEntitlement] PRIMARY KEY CLUSTERED 
(
	[FIEntitlementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[FileType]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [dbo].[FileType](
	[FileTypeId] [int] IDENTITY(1,1) NOT NULL,
	[TypeCode] [nvarchar](50) NOT NULL,
	[TypeValue] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Extension] [nvarchar](20) NOT NULL,
	[MimeType] [nvarchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_FileType] PRIMARY KEY CLUSTERED 
(
	[FileTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[FinancialInstitution]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [dbo].[FinancialInstitution](
	[FinancialInstitutionId] [uniqueidentifier] NOT NULL,
	[Name] [varchar](255) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
	[BusinessPartyId] [uniqueidentifier] NULL,
 CONSTRAINT [PK__FinancialInstitution] PRIMARY KEY CLUSTERED 
(
	[FinancialInstitutionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[FinancialInstitutions]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [dbo].[FinancialInstitutions](
	[FinancialInstitutionId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FinancialInstitutionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[FiscalCalendarDetail]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [dbo].[FiscalCalendarDetail](
	[CalendarPatternNameId] [uniqueidentifier] NOT NULL,
	[FiscalYearNumber] [int] NOT NULL,
	[FiscalPeriodNumber] [int] NOT NULL,
	[PeriodStartDate] [date] NULL,
	[PeriodEndDate] [date] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
	[Status] [varchar](50) NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[EntityId] [uniqueidentifier] NULL,
	[FiscalCalendardetailId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_FiscalCalendardetail_FiscalCalendardetailId] PRIMARY KEY CLUSTERED 
(
	[FiscalCalendardetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_FiscalCalendarDetail] UNIQUE NONCLUSTERED 
(
	[CalendarPatternNameId] ASC,
	[FiscalYearNumber] ASC,
	[FiscalPeriodNumber] ASC,
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[GLAllocationDetail]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [dbo].[GLAllocationDetail](
	[GLAllocationDetailId] [uniqueidentifier] NOT NULL,
	[CustomerId] [uniqueidentifier] NULL,
	[GLAllocationHeaderId] [uniqueidentifier] NULL,
	[AccountName] [varchar](100) NULL,
	[AllocationPercentage] [decimal](18, 2) NULL,
	[Description] [varchar](255) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
	[Status] [varchar](50) NULL,
	[DeactivatedBy] [uniqueidentifier] NULL,
	[DeactivatedDate] [datetime] NULL,
	[COANameId] [uniqueidentifier] NULL,
	[Tags] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[GLAllocationDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[GLAllocationHeader]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [dbo].[GLAllocationHeader](
	[GLAllocationHeaderId] [uniqueidentifier] NOT NULL,
	[EntityId] [uniqueidentifier] NULL,
	[CustomerId] [uniqueidentifier] NULL,
	[AllocationName] [varchar](100) NULL,
	[Description] [varchar](255) NULL,
	[AllocationMethod] [varchar](50) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
	[Status] [varchar](50) NULL,
	[DeactivatedBy] [uniqueidentifier] NULL,
	[DeactivatedDate] [datetime] NULL,
	[Tags] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[GLAllocationHeaderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[AllocationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO