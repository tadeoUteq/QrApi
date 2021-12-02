USE [master]
GO

CREATE DATABASE QTuber

USE [QTuber]
GO

CREATE TABLE [dbo].[Usuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Correo] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT INTO Usuario (Correo, Password)
VALUES ('admin@qt.com', '1234')
GO

CREATE TABLE [dbo].[Movies](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](150) NULL,
	[description] [varchar](150) NULL,
	[bgImageUrl] [varchar](150) NULL,
	[cardImageUrl] [varchar](150) NULL,
	[videoUrl] [varchar](150) NULL,
	[studio] [varchar](150) NULL,
PRIMARY KEY CLUSTERED       
(      
    [id] ASC      
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]      
) ON [PRIMARY] 
GO

INSERT INTO Movies (title, description, bgImageUrl, cardImageUrl, videoUrl, studio)
VALUES ('Cascada', 'Disfrutemos de la naturaleza y maravillemonos con ella!', 'https://as1.ftcdn.net/v2/jpg/02/86/72/18/1000_F_286721823_jX2eKauNsttWhIxKAzPYhHwYpSRTCdcm.jpg', 'https://as2.ftcdn.net/v2/jpg/01/31/89/13/1000_F_131891333_YtJeWozj269tpiWnwz4vBkCBe7h26qNU.jpg', 'https://static.videezy.com/system/resources/previews/000/004/199/original/A_large_rock_waterfall.mp4', 'Tribu de Agua')
GO

INSERT INTO Movies (title, description, bgImageUrl, cardImageUrl, videoUrl, studio)
VALUES ('En el bosque', 'Disfrutemos de la naturaleza y maravillemonos con ella!', 'https://as2.ftcdn.net/v2/jpg/02/55/17/43/1000_F_255174366_ojDuATz84e5h7lIlxh2moUJa9Kpd5wKk.jpg', 'https://as2.ftcdn.net/v2/jpg/02/01/80/31/1000_F_201803112_4DgiXEg8iiJT1QTQ9YN6dOdvaEai0N1v.jpg', 'https://static.videezy.com/system/resources/previews/000/004/277/original/1.mp4', 'Forest Cast')
GO

INSERT INTO Movies (title, description, bgImageUrl, cardImageUrl, videoUrl, studio)
VALUES ('Un par de flores y patos', 'Disfrutemos de la naturaleza y maravillemonos con ella!', 'https://as1.ftcdn.net/v2/jpg/03/66/00/46/1000_F_366004680_zLHFkndvJGXI78OltQ1KFRq53yPeRsdH.jpg', 'https://as1.ftcdn.net/v2/jpg/03/51/27/12/1000_F_351271224_MSXwv4oBRevrp8ECP0YS4VVhPTHl0GsC.jpg', 'https://static.videezy.com/system/resources/previews/000/044/061/original/Lotus_Flowers_and_Leaves_on_Water_and_Duck_1.mp4', 'Naturaleza Wild')
GO

INSERT INTO Movies (title, description, bgImageUrl, cardImageUrl, videoUrl, studio)
VALUES ('Si todas las flores', 'Disfrutemos de la naturaleza y maravillemonos con ella!', 'https://as1.ftcdn.net/v2/jpg/01/32/51/30/1000_F_132513093_ttwOz7oUQwN9rAhDeaPP2zSlEH5jWHbG.jpg', 'https://as2.ftcdn.net/v2/jpg/00/79/96/39/1000_F_79963955_y7v0AdHytQOnA95gGR5w330qdEZxBduz.jpg', 'https://static.videezy.com/system/resources/previews/000/007/468/original/flowers.mp4', 'Reino de Flores')
GO

INSERT INTO Movies (title, description, bgImageUrl, cardImageUrl, videoUrl, studio)
VALUES ('omo agua para relajar', 'Disfrutemos de la naturaleza y maravillemonos con ella!', 'https://as1.ftcdn.net/v2/jpg/01/54/15/30/1000_F_154153098_8s3pQS0OC9b64NUe7Km3eQuWf5Epk9Bj.jpg', 'https://as2.ftcdn.net/v2/jpg/00/79/96/39/1000_F_79963955_y7v0AdHytQOnA95gGR5w330qdEZxBduz.jpg', 'https://static.videezy.com/system/resources/previews/000/035/380/original/002_02.mp4', 'Charco Corp')
GO

CREATE TABLE [dbo].[Videos](
	[Id] [int] NOT NULL,
    [Duracion] [int] NULL,
	[Titulo] [nvarchar](50) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Temporada] [int] NULL,
	[Url] [nvarchar](max) NULL,
    [Poster] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

