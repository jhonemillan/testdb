CREATE TABLE [dbo].[customer]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Address] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Email] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DateCreated] [datetime] NOT NULL CONSTRAINT [DF_Customer_DateCreated] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[customer] ADD CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
