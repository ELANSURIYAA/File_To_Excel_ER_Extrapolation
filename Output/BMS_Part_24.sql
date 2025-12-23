--  Object:  Index [IX_ChartOfAccounts_IsActive]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_ChartOfAccounts_IsActive] ON [dbo].[ChartOfAccounts]
(
	[IsActive] ASC
)
INCLUDE([AccountNumber],[AccountShortName]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_ChartOfAccounts_ParentAccountId]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_ChartOfAccounts_ParentAccountId] ON [dbo].[ChartOfAccounts]
(
	[ParentAccountId] ASC
)
WHERE ([ParentAccountId] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_ChartOfAccounts_Search]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_ChartOfAccounts_Search] ON [dbo].[ChartOfAccounts]
(
	[CustomerId] ASC,
	[IsActive] ASC
)
INCLUDE([AccountNumber],[AccountShortName],[Description]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_Customer_CustomerNumber]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_Customer_CustomerNumber] ON [dbo].[Customer]
(
	[CustomerNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_Customer_OneZenithCustomer]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE UNIQUE NONCLUSTERED INDEX [IX_Customer_OneZenithCustomer] ON [dbo].[Customer]
(
	[IsZenithCustomer] ASC
)
WHERE ([IsZenithCustomer]=(1) AND [IsActive]=(1))
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_DepositDistribution_ChartOfAccounts]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_DepositDistribution_ChartOfAccounts] ON [dbo].[DepositDistribution]
(
	[ChartOfAccountsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_DepositDistribution_CommissionRule]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_DepositDistribution_CommissionRule] ON [dbo].[DepositDistribution]
(
	[AppliedCommissionRuleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_DepositDistribution_Customer_Entity]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_DepositDistribution_Customer_Entity] ON [dbo].[DepositDistribution]
(
	[CustomerId] ASC,
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_DepositDistribution_Deposit]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_DepositDistribution_Deposit] ON [dbo].[DepositDistribution]
(
	[DepositId] ASC,
	[LineNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_DepositDistribution_GlAccount]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_DepositDistribution_GlAccount] ON [dbo].[DepositDistribution]
(
	[GlAccountNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_DepositHeader_BankAccount]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_DepositHeader_BankAccount] ON [dbo].[DepositHeader]
(
	[BankAccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_DepositHeader_CommissionProcessed]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_DepositHeader_CommissionProcessed] ON [dbo].[DepositHeader]
(
	[CommissionProcessed] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_DepositHeader_Customer_Entity]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_DepositHeader_Customer_Entity] ON [dbo].[DepositHeader]
(
	[CustomerId] ASC,
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_DepositHeader_DepositDate]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_DepositHeader_DepositDate] ON [dbo].[DepositHeader]
(
	[DepositDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
--  Object:  Index [IX_DepositHeader_PayorName]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_DepositHeader_PayorName] ON [dbo].[DepositHeader]
(
	[PayorName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_DepositHeader_Status]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_DepositHeader_Status] ON [dbo].[DepositHeader]
(
	[DepositStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--  Object:  Index [IX_DocumentProcessingQueue_CreatedDate]    Script Date: 11/19/2025 9:13:21 PM *****
CREATE NONCLUSTERED INDEX [IX_DocumentProcessingQueue_CreatedDate] ON [dbo].[DocumentProcessingQueue]
(
	[CreatedDate] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO