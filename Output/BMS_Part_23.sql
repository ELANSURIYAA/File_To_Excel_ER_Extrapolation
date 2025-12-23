SET ANSI_PADDING ON
GO
--  Object:  Index [IX_BillHeaderDocument_Status]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BillHeaderDocument_Status] ON [dbo].[BillHeaderDocument]
(
	[Status] ASC,
	[IsStaged] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BillTemplate_Currency]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BillTemplate_Currency] ON [dbo].[BillTemplate]
(
	[CurrencyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BillTemplate_Customer_Entity]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BillTemplate_Customer_Entity] ON [dbo].[BillTemplate]
(
	[CustomerId] ASC,
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_BillTemplate_Status]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BillTemplate_Status] ON [dbo].[BillTemplate]
(
	[TemplateStatus] ASC,
	[IsActive] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BillTemplate_Vendor]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BillTemplate_Vendor] ON [dbo].[BillTemplate]
(
	[VendorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BillTemplateCustomDate_Date]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BillTemplateCustomDate_Date] ON [dbo].[BillTemplateCustomDate]
(
	[ScheduledDate] ASC,
	[IsActive] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BillTemplateCustomDate_Schedule]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BillTemplateCustomDate_Schedule] ON [dbo].[BillTemplateCustomDate]
(
	[BillTemplateRecurrenceScheduleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BillTemplateDistribution_ChartOfAccounts]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BillTemplateDistribution_ChartOfAccounts] ON [dbo].[BillTemplateDistribution]
(
	[ChartOfAccountsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BillTemplateDistribution_Customer_Entity]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BillTemplateDistribution_Customer_Entity] ON [dbo].[BillTemplateDistribution]
(
	[CustomerId] ASC,
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_BillTemplateDistribution_GlAccount]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BillTemplateDistribution_GlAccount] ON [dbo].[BillTemplateDistribution]
(
	[GlAccountNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BillTemplateDistribution_Template]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BillTemplateDistribution_Template] ON [dbo].[BillTemplateDistribution]
(
	[BillTemplateId] ASC,
	[LineNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BillTemplateRecurrenceSchedule_Template]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BillTemplateRecurrenceSchedule_Template] ON [dbo].[BillTemplateRecurrenceSchedule]
(
	[BillTemplateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_ChartOfAccounts_AccountNumber]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_ChartOfAccounts_AccountNumber] ON [dbo].[ChartOfAccounts]
(
	[AccountNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_ChartOfAccounts_AccountType]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_ChartOfAccounts_AccountType] ON [dbo].[ChartOfAccounts]
(
	[AccountType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_ChartOfAccounts_ChartOfAccountsNameId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_ChartOfAccounts_ChartOfAccountsNameId] ON [dbo].[ChartOfAccounts]
(
	[ChartOfAccountsNameId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_ChartOfAccounts_CustomerId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_ChartOfAccounts_CustomerId] ON [dbo].[ChartOfAccounts]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO