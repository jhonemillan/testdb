CREATE TABLE [dbo].[customer_orders]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[Id_customer] [int] NOT NULL,
[Id_Order] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[customer_orders] ADD CONSTRAINT [PK_customer_orders] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[customer_orders] ADD CONSTRAINT [FK_customer_orders_customer] FOREIGN KEY ([Id_customer]) REFERENCES [dbo].[customer] ([Id])
GO
ALTER TABLE [dbo].[customer_orders] ADD CONSTRAINT [FK_customer_orders_orders] FOREIGN KEY ([Id_Order]) REFERENCES [dbo].[orders] ([Id])
GO
