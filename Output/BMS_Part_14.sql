--  Object:  Table [dbo].[TaskDecision]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [dbo].[TaskDecision](
	[DecisionId] [uniqueidentifier] NOT NULL,
	[TaskId] [uniqueidentifier] NOT NULL,
	[DecisionType] [nvarchar](50) NOT NULL,
	[DecisionReason] [nvarchar](255) NULL,
	[DecisionComments] [nvarchar](max) NULL,
	[DecisionTime] [datetime2](7) NOT NULL,
	[DecisionBy] [uniqueidentifier] NOT NULL,
	[DecisionOnBehalfOf] [uniqueidentifier] NULL,
	[IsFinalDecision] [bit] NOT NULL,
	[DataVersionAtDecision] [int] NOT NULL,
	[DecisionMetadata] [nvarchar](max) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[StatusId] [int] NULL,
 CONSTRAINT [PK_TaskDecision] PRIMARY KEY CLUSTERED 
(
	[DecisionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[TaskGroup]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [dbo].[TaskGroup](
	[GroupId] [uniqueidentifier] NOT NULL,
	[InstanceId] [uniqueidentifier] NOT NULL,
	[StepId] [uniqueidentifier] NOT NULL,
	[ApproverGroupId] [uniqueidentifier] NULL,
	[GroupType] [nvarchar](50) NOT NULL,
	[ApprovalStrategy] [nvarchar](50) NOT NULL,
	[MinimumApprovals] [int] NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[CompletedAt] [datetime2](7) NULL,
	[TimeoutAt] [datetime2](7) NULL,
	[TotalTasks] [int] NOT NULL,
	[CompletedTasks] [int] NOT NULL,
	[ApprovedTasks] [int] NOT NULL,
	[RejectedTasks] [int] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[StatusId] [int] NULL,
	[StepStatusId] [int] NULL,
 CONSTRAINT [PK_TaskGroup] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[TaskList]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [dbo].[TaskList](
	[TaskId] [uniqueidentifier] NOT NULL,
	[CustomerId] [uniqueidentifier] NULL,
	[EntityId] [uniqueidentifier] NULL,
	[TaskTypeId] [int] NULL,
	[TaskPriorityId] [int] NULL,
	[AssignedToUserId] [uniqueidentifier] NULL,
	[AssignedByUserId] [uniqueidentifier] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime2](7) NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[TaskStatusTypeId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[TaskId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[TaskPriority]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [dbo].[TaskPriority](
	[TaskPriorityId] [int] IDENTITY(1,1) NOT NULL,
	[PriorityName] [nvarchar](50) NOT NULL,
	[PriorityLevel] [int] NOT NULL,
	[Description] [nvarchar](255) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime2](7) NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[TaskPriorityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[TaskStatusType]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [dbo].[TaskStatusType](
	[TaskStatusTypeId] [int] IDENTITY(1,1) NOT NULL,
	[TaskStatusTypeName] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime2](7) NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[TaskStatusTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[TaskType]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [dbo].[TaskType](
	[TaskTypeId] [int] IDENTITY(1,1) NOT NULL,
	[TaskTypeName] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime2](7) NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[TaskTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[Template]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [dbo].[Template](
	[TemplateId] [uniqueidentifier] NOT NULL,
	[TemplateName] [nvarchar](100) NOT NULL,
	[CustomerId] [uniqueidentifier] NULL,
	[IsStandardTemplate] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[TemplateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[TemplateInfo]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [dbo].[TemplateInfo](
	[Id] [uniqueidentifier] NOT NULL,
	[TemplateID] [uniqueidentifier] NULL,
	[Header] [varchar](255) NULL,
	[Column_Name] [varchar](255) NULL,
	[ColumnValue] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[Test]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [dbo].[Test](
	[id] [int] IDENTITY(50,1) NOT NULL,
	[somecolumn] [varchar](10) NULL,
	[Id1] [int] NULL
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[TimeRecords]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [dbo].[TimeRecords](
	[TimeRecordID] [uniqueidentifier] NOT NULL,
	[UserID] [uniqueidentifier] NOT NULL,
	[Date] [date] NOT NULL,
	[Hours] [decimal](10, 2) NOT NULL,
	[IsAdminTime] [bit] NOT NULL,
	[EnterpriseID] [uniqueidentifier] NULL,
	[EntityID] [uniqueidentifier] NULL,
	[TaskID] [uniqueidentifier] NULL,
	[Rate] [decimal](10, 2) NULL,
	[Billable] [bit] NULL,
	[Description] [nvarchar](500) NULL,
	[TimesheetID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TimeRecordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO