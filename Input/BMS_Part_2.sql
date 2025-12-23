--  Object:  Table [dbo].[ALLFILENAMES]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[ALLFILENAMES](
	[WHICHPATH] [varchar](255) NULL,
	[WHICHFILE] [varchar](255) NULL
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[AmountRange]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[AmountRange](
	[RangeId] [uniqueidentifier] NOT NULL,
	[RuleSetId] [uniqueidentifier] NOT NULL,
	[StartAmount] [decimal](18, 2) NOT NULL,
	[EndAmount] [decimal](18, 2) NULL,
	[IsUnbounded] [bit] NOT NULL,
	[RangeOrder] [int] NOT NULL,
	[RangeDescription] [nvarchar](100) NULL,
	[CurrencyCode] [nvarchar](3) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_AmountRange] PRIMARY KEY CLUSTERED 
(
	[RangeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[APConfig]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[APConfig](
	[APConfigId] [uniqueidentifier] NOT NULL,
	[APAccrualChartOfAccountsId] [uniqueidentifier] NULL,
	[EntityId] [uniqueidentifier] NULL,
	[CustomerId] [uniqueidentifier] NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[APConfigId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[ApprovalConfiguration]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[ApprovalConfiguration](
	[ConfigurationId] [uniqueidentifier] NOT NULL,
	[WorkflowDefinitionId] [uniqueidentifier] NOT NULL,
	[ApprovalRuleId] [uniqueidentifier] NOT NULL,
	[ConfigurationType] [nvarchar](50) NOT NULL,
	[ConfigName] [nvarchar](100) NOT NULL,
	[CustomRuleName] [nvarchar](200) NULL,
	[RuleDescription] [nvarchar](500) NULL,
	[AmountField] [nvarchar](100) NULL,
	[RuleMetadata] [nvarchar](max) NULL,
	[IsDefaultConfiguration] [bit] NOT NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[EntityId] [uniqueidentifier] NULL,
	[EnterpriseId] [uniqueidentifier] NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_ApprovalConfiguration] PRIMARY KEY CLUSTERED 
(
	[ConfigurationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[ApprovalLimits]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[ApprovalLimits](
	[LimitId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[WorkflowDefinitionId] [uniqueidentifier] NOT NULL,
	[LimitCategory] [nvarchar](50) NOT NULL,
	[MaxAmount] [decimal](18, 2) NOT NULL,
	[CurrencyCode] [nvarchar](3) NOT NULL,
	[TimePeriod] [nvarchar](20) NULL,
	[CumulativeLimit] [decimal](18, 2) NULL,
	[VelocityLimit] [int] NULL,
	[EntityId] [uniqueidentifier] NULL,
	[EnterpriseId] [uniqueidentifier] NULL,
	[OverridePermissionId] [uniqueidentifier] NULL,
	[IsActive] [bit] NOT NULL,
	[RequiresAdditionalApproval] [bit] NOT NULL,
	[ThresholdPercentage] [decimal](5, 2) NULL,
	[LimitMetadata] [nvarchar](max) NULL,
	[EffectiveFrom] [datetime2](7) NOT NULL,
	[EffectiveTo] [datetime2](7) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_ApprovalLimits] PRIMARY KEY CLUSTERED 
(
	[LimitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[ApprovalRule]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[ApprovalRule](
	[ApprovalRuleId] [uniqueidentifier] NOT NULL,
	[RuleName] [nvarchar](200) NOT NULL,
	[RuleDescription] [nvarchar](500) NULL,
	[ModuleId] [uniqueidentifier] NOT NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[EnterpriseId] [uniqueidentifier] NULL,
	[EntityId] [uniqueidentifier] NULL,
	[RuleType] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Priority] [int] NOT NULL,
	[EffectiveFrom] [datetime2](7) NOT NULL,
	[EffectiveTo] [datetime2](7) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[BankAccountId] [uniqueidentifier] NULL,
	[ApprovalRuleScopeType] [int] NULL,
	[IsMarkedForDeletion] [bit] NOT NULL,
	[IsApprovalRequired] [bit] NULL,
	[ModulefunctionId] [uniqueidentifier] NULL,
	[Version] [int] NULL,
 CONSTRAINT [PK_ApprovalRule] PRIMARY KEY CLUSTERED 
(
	[ApprovalRuleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[ApprovalRuleScopeType]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[ApprovalRuleScopeType](
	[ApprovalRuleScopeTypeId] [int] NOT NULL,
	[ScopeCode] [varchar](100) NULL,
	[ScopeValue] [varchar](255) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK__ApprovalRuleScopeType] PRIMARY KEY CLUSTERED 
(
	[ApprovalRuleScopeTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[ApprovalStatus]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[ApprovalStatus](
	[ApprovalStatusId] [int] IDENTITY(1,1) NOT NULL,
	[ApprovalStatusTypeId] [int] NOT NULL,
	[StatusName] [nvarchar](100) NOT NULL,
	[StatusCode] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_ApprovalStatus] PRIMARY KEY CLUSTERED 
(
	[ApprovalStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[ApprovalStatusType]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[ApprovalStatusType](
	[ApprovalStatusTypeId] [int] IDENTITY(1,1) NOT NULL,
	[StatusTypeName] [nvarchar](100) NOT NULL,
	[StatusTypeCode] [nvarchar](50) NOT NULL,
	[ModuleFunctionId] [uniqueidentifier] NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_ApprovalStatusType] PRIMARY KEY CLUSTERED 
(
	[ApprovalStatusTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[ApprovalStep]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[ApprovalStep](
	[StepId] [uniqueidentifier] NOT NULL,
	[RangeId] [uniqueidentifier] NOT NULL,
	[StepOrder] [int] NOT NULL,
	[StepName] [nvarchar](100) NOT NULL,
	[ApprovalLogic] [nvarchar](10) NOT NULL,
	[MinApproversRequired] [int] NOT NULL,
	[TimeoutHours] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_ApprovalStep] PRIMARY KEY CLUSTERED 
(
	[StepId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[ApprovalStepVerticalGroup]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[ApprovalStepVerticalGroup](
	[VerticalGroupId] [uniqueidentifier] NOT NULL,
	[ApprovalStepId] [uniqueidentifier] NOT NULL,
	[ParentVerticalGroupId] [uniqueidentifier] NULL,
	[VerticalGroupName] [nvarchar](100) NOT NULL,
	[VerticalLogic] [nvarchar](10) NOT NULL,
	[VerticalOrder] [int] NOT NULL,
	[MinimumRequired] [int] NOT NULL,
	[GroupLevel] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_ApprovalStepVerticalGroup] PRIMARY KEY CLUSTERED 
(
	[VerticalGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_ApprovalStepVerticalGroup_Order] UNIQUE NONCLUSTERED 
(
	[ApprovalStepId] ASC,
	[ParentVerticalGroupId] ASC,
	[VerticalOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[ApprovalStepVerticalGroupMember]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[ApprovalStepVerticalGroupMember](
	[VerticalGroupMemberId] [uniqueidentifier] NOT NULL,
	[VerticalGroupId] [uniqueidentifier] NOT NULL,
	[HorizontalGroupId] [uniqueidentifier] NOT NULL,
	[MemberOrder] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_ApprovalStepVerticalGroupMember] PRIMARY KEY CLUSTERED 
(
	[VerticalGroupMemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_VerticalGroupMember_Unique] UNIQUE NONCLUSTERED 
(
	[VerticalGroupId] ASC,
	[HorizontalGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[ApprovalTask]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[ApprovalTask](
	[TaskId] [uniqueidentifier] NOT NULL,
	[InstanceId] [uniqueidentifier] NOT NULL,
	[StepId] [uniqueidentifier] NOT NULL,
	[TaskGroupId] [uniqueidentifier] NULL,
	[AssignedToId] [uniqueidentifier] NOT NULL,
	[OriginalAssigneeId] [uniqueidentifier] NOT NULL,
	[AssignmentReason] [nvarchar](255) NULL,
	[Status] [nvarchar](50) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[DueDate] [datetime2](7) NULL,
	[CompletedAt] [datetime2](7) NULL,
	[CompletedBy] [uniqueidentifier] NULL,
	[Priority] [int] NOT NULL,
	[TaskOrder] [int] NOT NULL,
	[CanDelegate] [bit] NOT NULL,
	[RequiresComment] [bit] NOT NULL,
	[IsEscalated] [bit] NOT NULL,
	[EscalationLevel] [int] NOT NULL,
	[DataVersionSnapshot] [int] NOT NULL,
	[TaskData] [nvarchar](max) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[IsDelegatedTask] [bit] NOT NULL,
	[DelegationActivationPeriodId] [uniqueidentifier] NULL,
	[OriginalUserId] [uniqueidentifier] NULL,
	[DelegationAssignedAt] [datetime2](7) NULL,
	[StatusId] [int] NULL,
 CONSTRAINT [PK_ApprovalTask] PRIMARY KEY CLUSTERED 
(
	[TaskId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--  Object:  Table [dbo].[ARConfig]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[ARConfig](
	[ARConfigId] [uniqueidentifier] NOT NULL,
	[EntityId] [uniqueidentifier] NULL,
	[CustomerId] [uniqueidentifier] NULL,
	[ARAccrualChartOfAccountsId] [uniqueidentifier] NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ARConfigId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[AuditLog_Outbox]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[AuditLog_Outbox](
	[AuditLogOutboxId] [bigint] IDENTITY(1,1) NOT NULL,
	[CorrelationId] [nvarchar](100) NOT NULL,
	[OperationId] [nvarchar](250) NOT NULL,
	[OperationName] [nvarchar](50) NOT NULL,
	[DatabaseName] [nvarchar](100) NOT NULL,
	[TableName] [nvarchar](100) NOT NULL,
	[FieldName] [nvarchar](100) NOT NULL,
	[OldValue] [nvarchar](250) NULL,
	[NewValue] [nvarchar](250) NULL,
	[SessionUserId] [uniqueidentifier] NULL,
	[EventDateTimeUtc] [datetime2](3) NOT NULL,
	[IsProcessed] [bit] NOT NULL,
	[ProcessedStatusCode] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[AuditLogOutboxId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[BankAccount]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[BankAccount](
	[BankAccountId] [uniqueidentifier] NOT NULL,
	[BankRTNId] [uniqueidentifier] NOT NULL,
	[BankAccountNumber] [varchar](18) NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[BankAccountType] [int] NULL,
	[EntityId] [uniqueidentifier] NULL,
	[Description] [varchar](256) NULL,
	[SameAsEntityAddress] [bit] NULL,
	[AccountNickName] [varchar](128) NULL,
	[CurrencyId] [uniqueidentifier] NULL,
	[NextCheckNumber] [int] NULL,
	[BankAccountStatusType] [int] NULL,
	[IsActive] [bit] NULL,
	[RowVersionNumber] [int] NULL,
	[BusinessPartyId] [uniqueidentifier] NULL,
	[IsValid] [bit] NULL,
	[ValidationMessage] [varchar](500) NULL,
	[GLCashAccount] [uniqueidentifier] NULL,
	[IsPrimaryBankAccount] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
	[FinancialInstitutionId] [uniqueidentifier] NULL,
	[BankName] [varchar](50) NULL,
	[BankId] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK__BankAccount] PRIMARY KEY CLUSTERED 
(
	[BankAccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[BankAccountEntitlement]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[BankAccountEntitlement](
	[BankAccountEntitlementId] [uniqueidentifier] NOT NULL,
	[FIEntitlementId] [uniqueidentifier] NOT NULL,
	[IsEntitled] [bit] NULL,
	[BankAccountId] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK__BankAccountEntitlement] PRIMARY KEY CLUSTERED 
(
	[BankAccountEntitlementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[BankAccountEntitlementHistory]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[BankAccountEntitlementHistory](
	[HistoryId] [uniqueidentifier] NOT NULL,
	[BankAccountEntitlementId] [uniqueidentifier] NOT NULL,
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
--  Object:  Table [dbo].[BankAccountEntitlementLimit]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[BankAccountEntitlementLimit](
	[BankAccountEntitlementLimitId] [uniqueidentifier] NOT NULL,
	[FIEntitlementId] [uniqueidentifier] NOT NULL,
	[BankAccountId] [uniqueidentifier] NOT NULL,
	[LimitType] [int] NULL,
	[TotalDebit] [decimal](18, 2) NULL,
	[TotalCredit] [decimal](18, 2) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK__BankAccountEntitlementLimit] PRIMARY KEY CLUSTERED 
(
	[BankAccountEntitlementLimitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [dbo].[BankAccountEntitlementLimitHistory]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE TABLE [dbo].[BankAccountEntitlementLimitHistory](
	[HistoryId] [uniqueidentifier] NOT NULL,
	[BankAccountEntitlementLimitId] [uniqueidentifier] NOT NULL,
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