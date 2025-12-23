--  Object:  Table [tag].[Entity]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [tag].[Entity](
	[EntityId] [uniqueidentifier] NOT NULL,
	[TagId] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC,
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [tag].[GLJournalEntryDetail]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [tag].[GLJournalEntryDetail](
	[GLJournalEntryDetailId] [uniqueidentifier] NOT NULL,
	[TagId] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[GLJournalEntryDetailId] ASC,
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [tag].[GLJournalEntryHeader]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [tag].[GLJournalEntryHeader](
	[GLJournalEntryHeaderId] [uniqueidentifier] NOT NULL,
	[TagId] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[GLJournalEntryHeaderId] ASC,
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [tag].[Vendor]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [tag].[Vendor](
	[VendorId] [uniqueidentifier] NOT NULL,
	[TagId] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[TagId] ASC,
	[VendorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Table [tag].[VendorAccount]    Script Date: 11/19/2025 9:13:21 PM *****
GO
CREATE TABLE [tag].[VendorAccount](
	[VendorAccountId] [uniqueidentifier] NOT NULL,
	[TagId] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[TagId] ASC,
	[VendorAccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--  Object:  Index [IX_AddressDetailHistory_AddressDetailId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_AddressDetailHistory_AddressDetailId] ON [dbo].[AddressDetailHistory]
(
	[AddressDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_AddressDetailHistory_ChangedDate]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_AddressDetailHistory_ChangedDate] ON [dbo].[AddressDetailHistory]
(
	[ChangedDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_AddressDetailHistory_ChangeType]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_AddressDetailHistory_ChangeType] ON [dbo].[AddressDetailHistory]
(
	[ChangeType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_AddressDetailHistory_CustomerId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_AddressDetailHistory_CustomerId] ON [dbo].[AddressDetailHistory]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_AmountRange_Amount]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_AmountRange_Amount] ON [dbo].[AmountRange]
(
	[StartAmount] ASC,
	[EndAmount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_AmountRange_RuleSet]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_AmountRange_RuleSet] ON [dbo].[AmountRange]
(
	[RuleSetId] ASC,
	[RangeOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_ApprovalConfiguration_ApprovalRule]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_ApprovalConfiguration_ApprovalRule] ON [dbo].[ApprovalConfiguration]
(
	[ApprovalRuleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_ApprovalConfiguration_Customer_Entity]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_ApprovalConfiguration_Customer_Entity] ON [dbo].[ApprovalConfiguration]
(
	[CustomerId] ASC,
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_ApprovalConfiguration_WorkflowDefinition]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_ApprovalConfiguration_WorkflowDefinition] ON [dbo].[ApprovalConfiguration]
(
	[WorkflowDefinitionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO