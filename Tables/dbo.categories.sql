CREATE TABLE [dbo].[categories]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DateCreated_dtm] [datetime] NOT NULL CONSTRAINT [DF_Categories_DateCreated_dtm] DEFAULT (getdate()),
[code] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[description] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[categories] ADD CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
