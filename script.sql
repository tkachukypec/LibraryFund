USE [db]
GO
/****** Object:  Table [dbo].[authors]    Script Date: 20.02.2023 7:37:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[authors](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Author] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bbk]    Script Date: 20.02.2023 7:37:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bbk](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](20) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_BBK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[librarians]    Script Date: 20.02.2023 7:37:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[librarians](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[login] [nvarchar](20) NOT NULL,
	[password] [nvarchar](100) NOT NULL,
	[surname] [nvarchar](30) NOT NULL,
	[name] [nvarchar](30) NOT NULL,
	[patronymic] [nvarchar](30) NOT NULL,
	[salary] [int] NOT NULL,
	[image_path] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Librarian] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lost_pubs]    Script Date: 20.02.2023 7:37:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lost_pubs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[librarian_id] [int] NULL,
	[client_id] [int] NOT NULL,
	[pub_id] [int] NOT NULL,
	[count] [int] NOT NULL,
 CONSTRAINT [PK_PublicationLost] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[publication_author]    Script Date: 20.02.2023 7:37:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[publication_author](
	[pub_id] [int] NOT NULL,
	[author_id] [int] NOT NULL,
 CONSTRAINT [PK_Publication_Author] PRIMARY KEY CLUSTERED 
(
	[pub_id] ASC,
	[author_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[publications]    Script Date: 20.02.2023 7:37:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[publications](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NOT NULL,
	[annotation] [nvarchar](1000) NOT NULL,
	[publisher_id] [int] NOT NULL,
	[bbk_id] [int] NULL,
	[ydk_id] [int] NULL,
	[year] [int] NOT NULL,
	[pages] [int] NOT NULL,
	[ISBN] [nchar](50) NOT NULL,
	[record] [nvarchar](250) NOT NULL,
	[left] [int] NOT NULL,
	[image_path] [nchar](100) NOT NULL,
 CONSTRAINT [PK_Publication] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[publishers]    Script Date: 20.02.2023 7:37:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[publishers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Publisher] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rented_pubs]    Script Date: 20.02.2023 7:37:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rented_pubs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[librarian_id] [int] NULL,
	[client_id] [int] NOT NULL,
	[pub_id] [int] NOT NULL,
	[count_issued] [int] NOT NULL,
	[count_return] [int] NOT NULL,
	[date_issued] [datetime] NOT NULL,
	[date_expired] [datetime] NOT NULL,
 CONSTRAINT [PK_PublicationRent] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ydk]    Script Date: 20.02.2023 7:37:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ydk](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](20) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_YDK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[lost_pubs]  WITH CHECK ADD  CONSTRAINT [FK_LostPublications_Librarian] FOREIGN KEY([librarian_id])
REFERENCES [dbo].[librarians] ([id])
GO
ALTER TABLE [dbo].[lost_pubs] CHECK CONSTRAINT [FK_LostPublications_Librarian]
GO
ALTER TABLE [dbo].[lost_pubs]  WITH CHECK ADD  CONSTRAINT [FK_LostPublications_Publications] FOREIGN KEY([pub_id])
REFERENCES [dbo].[publications] ([id])
GO
ALTER TABLE [dbo].[lost_pubs] CHECK CONSTRAINT [FK_LostPublications_Publications]
GO
ALTER TABLE [dbo].[publication_author]  WITH CHECK ADD  CONSTRAINT [FK_Publication_Author_authors] FOREIGN KEY([author_id])
REFERENCES [dbo].[authors] ([id])
GO
ALTER TABLE [dbo].[publication_author] CHECK CONSTRAINT [FK_Publication_Author_authors]
GO
ALTER TABLE [dbo].[publication_author]  WITH CHECK ADD  CONSTRAINT [FK_Publication_Author_Publications] FOREIGN KEY([pub_id])
REFERENCES [dbo].[publications] ([id])
GO
ALTER TABLE [dbo].[publication_author] CHECK CONSTRAINT [FK_Publication_Author_Publications]
GO
ALTER TABLE [dbo].[publications]  WITH CHECK ADD  CONSTRAINT [FK_Publications_BBK] FOREIGN KEY([bbk_id])
REFERENCES [dbo].[bbk] ([id])
GO
ALTER TABLE [dbo].[publications] CHECK CONSTRAINT [FK_Publications_BBK]
GO
ALTER TABLE [dbo].[publications]  WITH CHECK ADD  CONSTRAINT [FK_Publications_Publisher] FOREIGN KEY([publisher_id])
REFERENCES [dbo].[publishers] ([id])
GO
ALTER TABLE [dbo].[publications] CHECK CONSTRAINT [FK_Publications_Publisher]
GO
ALTER TABLE [dbo].[publications]  WITH CHECK ADD  CONSTRAINT [FK_Publications_YDK] FOREIGN KEY([ydk_id])
REFERENCES [dbo].[ydk] ([id])
GO
ALTER TABLE [dbo].[publications] CHECK CONSTRAINT [FK_Publications_YDK]
GO
ALTER TABLE [dbo].[rented_pubs]  WITH CHECK ADD  CONSTRAINT [FK_RentedPublications_Librarian] FOREIGN KEY([librarian_id])
REFERENCES [dbo].[librarians] ([id])
GO
ALTER TABLE [dbo].[rented_pubs] CHECK CONSTRAINT [FK_RentedPublications_Librarian]
GO
ALTER TABLE [dbo].[rented_pubs]  WITH CHECK ADD  CONSTRAINT [FK_RentedPublications_Publications] FOREIGN KEY([pub_id])
REFERENCES [dbo].[publications] ([id])
GO
ALTER TABLE [dbo].[rented_pubs] CHECK CONSTRAINT [FK_RentedPublications_Publications]
GO
