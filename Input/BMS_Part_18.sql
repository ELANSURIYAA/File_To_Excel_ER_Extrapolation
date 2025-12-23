--  Object:  Table [dbo].[WorkflowSourceEntity]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [dbo].[WorkflowSourceEntity](
	[SourceEntityId] [uniqueidentifier] NOT NULL,
	[WorkflowSourceTypeId] [int] NOT NULL,
	[SourceData] [nvarchar](max) NOT NULL,
	[SourceMetadata] [nvarchar](max) NULL,
	[BusinessKey] [nvarchar](100) NULL,
	[ExternalId] [nvarchar](100) NULL,
	[RequestedBy] [uniqueidentifier] NOT NULL,
	[Priority] [int] NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModuleFunctionId] [uniqueidentifier] NOT NULL,
	[WorkflowSourceEntityId] [uniqueidentifier] NOT NULL,
	[StatusId] [int] NULL,
 CONSTRAINT [PK_WorkflowSourceEntity] PRIMARY KEY CLUSTERED 
(
	[WorkflowSourceEntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[WorkflowSourceType]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [dbo].[WorkflowSourceType](
	[WorkflowSourceTypeId] [int] IDENTITY(1,1) NOT NULL,
	[SourceTypeName] [nvarchar](100) NOT NULL,
	[SourceTypeCode] [nvarchar](50) NOT NULL,
	[AmountFieldPath] [nvarchar](200) NULL,
	[SourceSchema] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_WorkflowSourceType] PRIMARY KEY CLUSTERED 
(
	[WorkflowSourceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_WorkflowSourceType_Code] UNIQUE NONCLUSTERED 
(
	[SourceTypeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[WorkflowState]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [dbo].[WorkflowState](
	[StateId] [uniqueidentifier] NOT NULL,
	[StateName] [nvarchar](50) NOT NULL,
	[StateCode] [nvarchar](20) NOT NULL,
	[StateType] [nvarchar](20) NOT NULL,
	[IsSystemState] [bit] NOT NULL,
	[AllowEdit] [bit] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[StateColor] [nvarchar](20) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_WorkflowState] PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_WorkflowState_Code] UNIQUE NONCLUSTERED 
(
	[StateCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[WorkflowTransition]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [dbo].[WorkflowTransition](
	[TransitionId] [uniqueidentifier] NOT NULL,
	[WorkflowDefinitionId] [uniqueidentifier] NOT NULL,
	[SourceStateId] [uniqueidentifier] NOT NULL,
	[TargetStateId] [uniqueidentifier] NOT NULL,
	[TransitionName] [nvarchar](100) NOT NULL,
	[TransitionType] [nvarchar](50) NOT NULL,
	[Priority] [int] NOT NULL,
	[RequiresComment] [bit] NOT NULL,
	[RequiresJustification] [bit] NOT NULL,
	[TransitionConditions] [nvarchar](max) NULL,
	[IsSystemTransition] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_WorkflowTransition] PRIMARY KEY CLUSTERED 
(
	[TransitionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[WorkflowTrigger]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [dbo].[WorkflowTrigger](
	[TriggerId] [uniqueidentifier] NOT NULL,
	[ApprovalRuleId] [uniqueidentifier] NOT NULL,
	[WorkflowDefinitionId] [uniqueidentifier] NULL,
	[ModuleFunctionId] [uniqueidentifier] NOT NULL,
	[PermissionId] [uniqueidentifier] NULL,
	[TriggerCondition] [nvarchar](50) NOT NULL,
	[TriggerOnCreate] [bit] NOT NULL,
	[TriggerOnUpdate] [bit] NOT NULL,
	[TriggerOnDelete] [bit] NOT NULL,
	[TriggerMetadata] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_WorkflowTrigger] PRIMARY KEY CLUSTERED 
(
	[TriggerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_WorkflowTrigger] UNIQUE NONCLUSTERED 
(
	[ApprovalRuleId] ASC,
	[ModuleFunctionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[WorkflowType]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [dbo].[WorkflowType](
	[WorkflowTypeId] [uniqueidentifier] NOT NULL,
	[TypeCode] [nvarchar](50) NOT NULL,
	[TypeName] [nvarchar](100) NOT NULL,
	[TypeCategory] [nvarchar](50) NULL,
	[Description] [nvarchar](255) NULL,
	[DefaultFeatures] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_WorkflowType] PRIMARY KEY CLUSTERED 
(
	[WorkflowTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_WorkflowType_Code] UNIQUE NONCLUSTERED 
(
	[TypeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [tag].[BankAccount]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [tag].[BankAccount](
	[BankAccountId] [uniqueidentifier] NOT NULL,
	[TagId] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[BankAccountId] ASC,
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [tag].[Customer]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [tag].[Customer](
	[CustomerId] [uniqueidentifier] NOT NULL,
	[TagId] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC,
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [tag].[Document]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [tag].[Document](
	[DocumentId] [uniqueidentifier] NOT NULL,
	[TagId] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[DocumentId] ASC,
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [tag].[Enterprise]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [tag].[Enterprise](
	[EnterpriseId] [uniqueidentifier] NOT NULL,
	[TagId] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EnterpriseId] ASC,
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO