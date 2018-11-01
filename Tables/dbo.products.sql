CREATE TABLE [dbo].[products]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[ProductNumber] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Price] [float] NOT NULL,
[DateCreated] [datetime] NOT NULL CONSTRAINT [DF_Products_DateCreated] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[products] ADD CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
