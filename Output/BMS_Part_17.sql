--  Object:  Table [dbo].[VendorPaymentMethod]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [dbo].[VendorPaymentMethod](
	[VendorPaymentMethodId] [uniqueidentifier] NOT NULL,
	[PaymentMethodTypeId] [int] NULL,
	[Description] [varchar](255) NULL,
	[Name] [varchar](255) NULL,
	[DeactivatedBy] [uniqueidentifier] NULL,
	[DeactivatedDate] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
	[VendorId] [uniqueidentifier] NOT NULL,
	[BankRTN] [varchar](255) NULL,
	[BankAccountNumber] [varchar](255) NULL,
 CONSTRAINT [PK__VendorPaymentMethod] PRIMARY KEY CLUSTERED 
(
	[VendorPaymentMethodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[VendorPaymentMethodHistory]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [dbo].[VendorPaymentMethodHistory](
	[HistoryId] [uniqueidentifier] NOT NULL,
	[VendorPaymentMethodId] [uniqueidentifier] NULL,
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
--  Object:  Table [dbo].[VendorPaymentMethodType]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [dbo].[VendorPaymentMethodType](
	[VendorPaymentMethodTypeId] [int] NOT NULL,
	[TypeCode] [varchar](100) NULL,
	[TypeValue] [varchar](255) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK__VendorPaymentMethodType] PRIMARY KEY CLUSTERED 
(
	[VendorPaymentMethodTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[VendorStatusType]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [dbo].[VendorStatusType](
	[VendorStatusTypeId] [int] IDENTITY(1,1) NOT NULL,
	[StatusCode] [nvarchar](50) NOT NULL,
	[StatusValue] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_SystemVendor] PRIMARY KEY CLUSTERED 
(
	[VendorStatusTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[WorkflowAuditLog]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [dbo].[WorkflowAuditLog](
	[LogId] [uniqueidentifier] NOT NULL,
	[InstanceId] [uniqueidentifier] NULL,
	[TaskId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[EventType] [nvarchar](100) NOT NULL,
	[EventCategory] [nvarchar](50) NOT NULL,
	[EventDescription] [nvarchar](255) NOT NULL,
	[EventDetails] [nvarchar](max) NULL,
	[IpAddress] [nvarchar](50) NULL,
	[UserAgent] [nvarchar](500) NULL,
	[SessionId] [nvarchar](100) NULL,
	[CorrelationId] [uniqueidentifier] NULL,
	[RiskLevel] [nvarchar](20) NOT NULL,
	[Timestamp] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_WorkflowAuditLog] PRIMARY KEY CLUSTERED 
(
	[LogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[WorkflowDefinition]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [dbo].[WorkflowDefinition](
	[WorkflowDefinitionId] [uniqueidentifier] NOT NULL,
	[WorkflowTypeId] [uniqueidentifier] NOT NULL,
	[ModuleId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[DisplayName] [nvarchar](200) NULL,
	[Description] [nvarchar](255) NULL,
	[Version] [int] NOT NULL,
	[SupportsParallelApproval] [bit] NOT NULL,
	[AllowFieldEditDuringApproval] [bit] NOT NULL,
	[RequiresApprovalReset] [bit] NOT NULL,
	[StatusTransitionConfigJson] [nvarchar](max) NULL,
	[WorkflowMetadata] [nvarchar](max) NULL,
	[CustomerId] [uniqueidentifier] NULL,
	[EntityId] [uniqueidentifier] NULL,
	[EnterpriseId] [uniqueidentifier] NULL,
	[IsTemplate] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[EffectiveFrom] [datetime2](7) NULL,
	[EffectiveTo] [datetime2](7) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModuleFunctionId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_WorkflowDefinition] PRIMARY KEY CLUSTERED 
(
	[WorkflowDefinitionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_WorkflowDefinition_Code] UNIQUE NONCLUSTERED 
(
	[Code] ASC,
	[Version] ASC,
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[WorkflowInstance]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [dbo].[WorkflowInstance](
	[InstanceId] [uniqueidentifier] NOT NULL,
	[ApprovalRuleId] [uniqueidentifier] NOT NULL,
	[WorkflowSourceEntityId] [uniqueidentifier] NOT NULL,
	[CurrentStateId] [uniqueidentifier] NOT NULL,
	[PreviousStateId] [uniqueidentifier] NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[EnterpriseId] [uniqueidentifier] NULL,
	[EntityId] [uniqueidentifier] NULL,
	[InitiatedBy] [uniqueidentifier] NOT NULL,
	[BusinessKey] [nvarchar](100) NULL,
	[Priority] [int] NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[InitiatedAt] [datetime2](7) NOT NULL,
	[CompletedAt] [datetime2](7) NULL,
	[DueDate] [datetime2](7) NULL,
	[InstanceData] [nvarchar](max) NULL,
	[DataVersion] [int] NOT NULL,
	[ProcessingNotes] [nvarchar](max) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[IsCompleted] [bit] NULL,
	[Version] [int] NULL,
	[ResetWorkflow] [bit] NULL,
 CONSTRAINT [PK_WorkflowInstance] PRIMARY KEY CLUSTERED 
(
	[InstanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[WorkflowMetrics]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [dbo].[WorkflowMetrics](
	[MetricId] [uniqueidentifier] NOT NULL,
	[InstanceId] [uniqueidentifier] NULL,
	[ApprovalRuleId] [uniqueidentifier] NOT NULL,
	[MetricType] [nvarchar](50) NOT NULL,
	[MetricName] [nvarchar](100) NOT NULL,
	[MetricValue] [decimal](18, 6) NOT NULL,
	[MetricUnit] [nvarchar](20) NULL,
	[MeasurementPeriod] [nvarchar](20) NULL,
	[MetricDate] [datetime2](7) NOT NULL,
	[MetricContext] [nvarchar](max) NULL,
	[BaselineValue] [decimal](18, 6) NULL,
	[TargetValue] [decimal](18, 6) NULL,
	[ThresholdViolation] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_WorkflowMetrics] PRIMARY KEY CLUSTERED 
(
	[MetricId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[WorkflowNotification]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [dbo].[WorkflowNotification](
	[NotificationId] [uniqueidentifier] NOT NULL,
	[InstanceId] [uniqueidentifier] NOT NULL,
	[TaskId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[NotificationType] [nvarchar](50) NOT NULL,
	[Channel] [nvarchar](50) NOT NULL,
	[Subject] [nvarchar](255) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[ScheduledSendTime] [datetime2](7) NULL,
	[SentAt] [datetime2](7) NULL,
	[DeliveredAt] [datetime2](7) NULL,
	[ReadAt] [datetime2](7) NULL,
	[RetryCount] [int] NOT NULL,
	[MaxRetries] [int] NOT NULL,
	[FailureReason] [nvarchar](max) NULL,
	[IsUrgent] [bit] NOT NULL,
	[ExpirationDate] [datetime2](7) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_WorkflowNotification] PRIMARY KEY CLUSTERED 
(
	[NotificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[WorkflowParameter]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [dbo].[WorkflowParameter](
	[ParameterId] [uniqueidentifier] NOT NULL,
	[WorkflowDefinitionId] [uniqueidentifier] NOT NULL,
	[ParameterName] [nvarchar](100) NOT NULL,
	[ParameterType] [nvarchar](50) NOT NULL,
	[ValidationRule] [nvarchar](255) NULL,
	[IsRequired] [bit] NOT NULL,
	[IsSensitive] [bit] NOT NULL,
	[IsSearchable] [bit] NOT NULL,
	[IsEditable] [bit] NOT NULL,
	[ResetApprovalOnEdit] [bit] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[ParameterConfiguration] [nvarchar](max) NULL,
	[UIComponent] [nvarchar](50) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_WorkflowParameter] PRIMARY KEY CLUSTERED 
(
	[ParameterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO