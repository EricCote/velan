USE AdventureWorksDW2014
GO

CREATE TABLE dbo.Language
(
	LanguageId varchar(10) NOT NULL,
	EnglishName varchar(50) NOT NULL,
	NativeName nvarchar(150) NOT NULL,
        CONSTRAINT PK_Language PRIMARY KEY CLUSTERED (LanguageId) 

)

GO

CREATE TABLE dbo.Translation
(
	Language] varchar(10) NOT NULL,
	[Key] varchar(50) NOT NULL,
	LabelText nvarchar(4000) NULL,
 CONSTRAINT PK_Translation PRIMARY KEY CLUSTERED (Language, [Key] )
) 

GO


INSERT dbo.Language (LanguageId, EnglishName, NativeName) VALUES ('en-US', 'English', 'English')
INSERT dbo.Language (LanguageId, EnglishName, NativeName) VALUES ('es-ES', 'Spanish', 'Espagnol')
INSERT dbo.Language (LanguageId, EnglishName, NativeName) VALUES ('fr-CA', 'French', 'Français')
INSERT dbo.Translation (Language, [Key], LabelText) VALUES ('en-US', 'all', '[All]')
INSERT dbo.Translation (Language, [Key], LabelText) VALUES ('en-US', 'footer', 'Report generated on')
INSERT dbo.Translation (Language, [Key], LabelText) VALUES ('en-US', 'price', 'List Price')
INSERT dbo.Translation (Language, [Key], LabelText) VALUES ('en-US', 'product', 'Product')
INSERT dbo.Translation (Language, [Key], LabelText) VALUES ('en-US', 'title', 'Product List')
INSERT dbo.Translation (Language, [Key], LabelText) VALUES ('es-ES', 'all', '[Todos]')
INSERT dbo.Translation (Language, [Key], LabelText) VALUES ('es-ES', 'footer', 'Informe generado en el')
INSERT dbo.Translation (Language, [Key], LabelText) VALUES ('es-ES', 'price', 'Precio')
INSERT dbo.Translation (Language, [Key], LabelText) VALUES ('es-ES', 'product', 'Producto')
INSERT dbo.Translation (Language, [Key], LabelText) VALUES ('es-ES', 'title', 'Lista de Productos')
INSERT dbo.Translation (Language, [Key], LabelText) VALUES ('fr-CA', 'all', '[Tous]')
INSERT dbo.Translation (Language, [Key], LabelText) VALUES ('fr-CA', 'footer', 'Rapport généré le')
INSERT dbo.Translation (Language, [Key], LabelText) VALUES ('fr-CA', 'price', 'Prix')
INSERT dbo.Translation (Language, [Key], LabelText) VALUES ('fr-CA', 'product', 'Produit')
INSERT dbo.Translation (Language, [Key], LabelText) VALUES ('fr-CA', 'title', 'Liste de Produits')
