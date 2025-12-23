SET ANSI_PADDING ON
GO
--  Object:  Index [IX_WorkflowNotification_Scheduled]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowNotification_Scheduled] ON [dbo].[WorkflowNotification]
(
	[ScheduledSendTime] ASC,
	[Status] ASC
)
WHERE ([ScheduledSendTime] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_WorkflowNotification_Urgent]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowNotification_Urgent] ON [dbo].[WorkflowNotification]
(
	[IsUrgent] ASC,
	[CreatedDate] ASC
)
WHERE ([IsUrgent]=(1))
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_WorkflowNotification_User]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowNotification_User] ON [dbo].[WorkflowNotification]
(
	[UserId] ASC,
	[Status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_WorkflowParameter_Required]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowParameter_Required] ON [dbo].[WorkflowParameter]
(
	[IsRequired] ASC,
	[IsEditable] ASC
)
WHERE ([IsRequired]=(1))
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_WorkflowParameter_WorkflowDefinition]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowParameter_WorkflowDefinition] ON [dbo].[WorkflowParameter]
(
	[WorkflowDefinitionId] ASC,
	[DisplayOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_WorkflowSourceEntity_BusinessKey]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowSourceEntity_BusinessKey] ON [dbo].[WorkflowSourceEntity]
(
	[BusinessKey] ASC
)
WHERE ([BusinessKey] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_WorkflowSourceEntity_RequestedBy]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowSourceEntity_RequestedBy] ON [dbo].[WorkflowSourceEntity]
(
	[RequestedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_WorkflowSourceEntity_SourceType]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowSourceEntity_SourceType] ON [dbo].[WorkflowSourceEntity]
(
	[WorkflowSourceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_WorkflowSourceEntity_Status]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowSourceEntity_Status] ON [dbo].[WorkflowSourceEntity]
(
	[Status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_WorkflowState_Type]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowState_Type] ON [dbo].[WorkflowState]
(
	[StateType] ASC,
	[DisplayOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_WorkflowTransition_SourceState]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowTransition_SourceState] ON [dbo].[WorkflowTransition]
(
	[SourceStateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_WorkflowTransition_WorkflowDefinition]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowTransition_WorkflowDefinition] ON [dbo].[WorkflowTransition]
(
	[WorkflowDefinitionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_WorkflowTrigger_ApprovalRule]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowTrigger_ApprovalRule] ON [dbo].[WorkflowTrigger]
(
	[ApprovalRuleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_WorkflowTrigger_ModuleFunction]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowTrigger_ModuleFunction] ON [dbo].[WorkflowTrigger]
(
	[ModuleFunctionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_WorkflowTrigger_WorkflowDefinition]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_WorkflowTrigger_WorkflowDefinition] ON [dbo].[WorkflowTrigger]
(
	[WorkflowDefinitionId] ASC
)
WHERE ([WorkflowDefinitionId] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO