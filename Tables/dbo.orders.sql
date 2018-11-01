CREATE TABLE [dbo].[orders]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Description] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Quantity] [int] NOT NULL,
[OrderDate] [datetime] NOT NULL CONSTRAINT [DF_Orders_OrderDate] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[orders] ADD CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
