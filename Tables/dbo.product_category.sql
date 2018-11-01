CREATE TABLE [dbo].[product_category]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Id_product] [int] NOT NULL,
[id_category] [int] NOT NULL,
[DateCreated] [datetime] NOT NULL CONSTRAINT [DF_product_category_DateCreated] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[product_category] ADD CONSTRAINT [PK_product_category] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[product_category] ADD CONSTRAINT [FK_product_category_categories] FOREIGN KEY ([id_category]) REFERENCES [dbo].[categories] ([Id])
GO
ALTER TABLE [dbo].[product_category] ADD CONSTRAINT [FK_product_category_products] FOREIGN KEY ([Id_product]) REFERENCES [dbo].[products] ([Id])
GO
