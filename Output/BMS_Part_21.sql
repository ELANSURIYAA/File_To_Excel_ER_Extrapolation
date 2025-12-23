--  Object:  Index [IX_BankAccountEntitlementHistory_BankAccountEntitlementId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BankAccountEntitlementHistory_BankAccountEntitlementId] ON [dbo].[BankAccountEntitlementHistory]
(
	[BankAccountEntitlementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BankAccountEntitlementHistory_ChangedDate]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BankAccountEntitlementHistory_ChangedDate] ON [dbo].[BankAccountEntitlementHistory]
(
	[ChangedDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_BankAccountEntitlementHistory_ChangeType]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BankAccountEntitlementHistory_ChangeType] ON [dbo].[BankAccountEntitlementHistory]
(
	[ChangeType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BankAccountEntitlementHistory_CustomerId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BankAccountEntitlementHistory_CustomerId] ON [dbo].[BankAccountEntitlementHistory]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BankAccountEntitlementLimitHistory_BankAccountEntitlementLimitId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BankAccountEntitlementLimitHistory_BankAccountEntitlementLimitId] ON [dbo].[BankAccountEntitlementLimitHistory]
(
	[BankAccountEntitlementLimitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BankAccountEntitlementLimitHistory_ChangedDate]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BankAccountEntitlementLimitHistory_ChangedDate] ON [dbo].[BankAccountEntitlementLimitHistory]
(
	[ChangedDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_BankAccountEntitlementLimitHistory_ChangeType]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BankAccountEntitlementLimitHistory_ChangeType] ON [dbo].[BankAccountEntitlementLimitHistory]
(
	[ChangeType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BankAccountEntitlementLimitHistory_CustomerId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BankAccountEntitlementLimitHistory_CustomerId] ON [dbo].[BankAccountEntitlementLimitHistory]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BankAccountHistory_BankAccountId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BankAccountHistory_BankAccountId] ON [dbo].[BankAccountHistory]
(
	[BankAccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BankAccountHistory_ChangedDate]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BankAccountHistory_ChangedDate] ON [dbo].[BankAccountHistory]
(
	[ChangedDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_BankAccountHistory_ChangeType]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BankAccountHistory_ChangeType] ON [dbo].[BankAccountHistory]
(
	[ChangeType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BankAccountHistory_CustomerId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BankAccountHistory_CustomerId] ON [dbo].[BankAccountHistory]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BankAccountHolderHistory_BankAccountHolderId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BankAccountHolderHistory_BankAccountHolderId] ON [dbo].[BankAccountHolderHistory]
(
	[BankAccountHolderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BankAccountHolderHistory_ChangedDate]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BankAccountHolderHistory_ChangedDate] ON [dbo].[BankAccountHolderHistory]
(
	[ChangedDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_BankAccountHolderHistory_ChangeType]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BankAccountHolderHistory_ChangeType] ON [dbo].[BankAccountHolderHistory]
(
	[ChangeType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_BankAccountHolderHistory_CustomerId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_BankAccountHolderHistory_CustomerId] ON [dbo].[BankAccountHolderHistory]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO