USE [AdventureWorksDW2014]
GO

CREATE TABLE [dbo].[Language](
	[LanguageId] [varchar](10) NOT NULL,
	[EnglishName] [varchar](50) NOT NULL,
	[NativeName] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Language] PRIMARY KEY CLUSTERED 
  (
	[LanguageId] ASC
  ) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[Translation](
	[Language] [varchar](10) NOT NULL,
	[Key] [varchar](50) NOT NULL,
	[Value] [nvarchar](4000) NULL,
 CONSTRAINT [PK_Translation] PRIMARY KEY CLUSTERED 
  (
	[Language] ASC,
	[Key] ASC
   ) ON [PRIMARY]
) ON [PRIMARY]


GO
INSERT [dbo].[Language] ([LanguageId], [EnglishName], [NativeName]) VALUES (N'en-US', N'English', N'English')
INSERT [dbo].[Language] ([LanguageId], [EnglishName], [NativeName]) VALUES (N'es-MX', N'Spanish', N'Espagnol')
INSERT [dbo].[Language] ([LanguageId], [EnglishName], [NativeName]) VALUES (N'fr-CA', N'French', N'Français')
INSERT [dbo].[Translation] ([Language], [Key], [Value]) VALUES (N'en-US', N'price', N'List Price')
INSERT [dbo].[Translation] ([Language], [Key], [Value]) VALUES (N'en-US', N'product', N'Product')
INSERT [dbo].[Translation] ([Language], [Key], [Value]) VALUES (N'en-US', N'title', N'Product List')
INSERT [dbo].[Translation] ([Language], [Key], [Value]) VALUES (N'es-MX', N'price', N'precio')
INSERT [dbo].[Translation] ([Language], [Key], [Value]) VALUES (N'es-MX', N'product', N'Producto')
INSERT [dbo].[Translation] ([Language], [Key], [Value]) VALUES (N'es-MX', N'title', N'Lista de Productos')
INSERT [dbo].[Translation] ([Language], [Key], [Value]) VALUES (N'fr-CA', N'price', N'Prix')
INSERT [dbo].[Translation] ([Language], [Key], [Value]) VALUES (N'fr-CA', N'product', N'Produit')
INSERT [dbo].[Translation] ([Language], [Key], [Value]) VALUES (N'fr-CA', N'title', N'Liste de Produits')
