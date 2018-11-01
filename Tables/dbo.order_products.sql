CREATE TABLE [dbo].[order_products]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[id_order] [int] NOT NULL,
[id_product] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[order_products] ADD CONSTRAINT [PK_order_products] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[order_products] ADD CONSTRAINT [FK_order_products_orders] FOREIGN KEY ([id_order]) REFERENCES [dbo].[orders] ([Id])
GO
ALTER TABLE [dbo].[order_products] ADD CONSTRAINT [FK_order_products_products] FOREIGN KEY ([id_product]) REFERENCES [dbo].[products] ([Id])
GO
