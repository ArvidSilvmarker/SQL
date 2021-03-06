USE [Förening]
GO
/****** Object:  Table [dbo].[ÅterkommandeInfo]    Script Date: 2018-04-05 15:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ÅterkommandeInfo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Namn] [nvarchar](50) NULL,
 CONSTRAINT [PK_ÅterkommandeInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeltagarLista]    Script Date: 2018-04-05 15:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeltagarLista](
	[MöteID] [int] NULL,
	[KontaktID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dokument]    Script Date: 2018-04-05 15:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dokument](
	[DokumentID] [int] IDENTITY(1,1) NOT NULL,
	[Titel] [nvarchar](50) NULL,
	[SkapadDatum] [date] NULL,
	[SenastÄndradDatum] [date] NULL,
	[DokumentTyp] [int] NULL,
	[Ansvarig] [int] NULL,
 CONSTRAINT [PK_Dokument] PRIMARY KEY CLUSTERED 
(
	[DokumentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DokumentTyp]    Script Date: 2018-04-05 15:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DokumentTyp](
	[DokumentTyp] [int] IDENTITY(1,1) NOT NULL,
	[Namn] [nvarchar](50) NULL,
 CONSTRAINT [PK_DokumentTyp] PRIMARY KEY CLUSTERED 
(
	[DokumentTyp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Event]    Script Date: 2018-04-05 15:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[EventID] [int] IDENTITY(1,1) NOT NULL,
	[EventTyp] [int] NULL,
	[Lokal] [int] NULL,
	[StartDatum] [date] NULL,
	[SlutDatum] [date] NULL,
	[Ansvarig] [int] NULL,
	[ÅterkommandeInfo] [int] NULL,
 CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED 
(
	[EventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventTyp]    Script Date: 2018-04-05 15:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventTyp](
	[EventTypID] [int] IDENTITY(1,1) NOT NULL,
	[Namn] [nvarchar](50) NULL,
 CONSTRAINT [PK_EventTyp] PRIMARY KEY CLUSTERED 
(
	[EventTypID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExternPerson]    Script Date: 2018-04-05 15:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExternPerson](
	[ExternID] [int] IDENTITY(1,1) NOT NULL,
	[PersonNr] [char](12) NULL,
	[Förnamn] [nvarchar](50) NULL,
	[Efternamn] [nvarchar](50) NULL,
	[KontaktTyp] [int] NULL,
 CONSTRAINT [PK_ExternPerson] PRIMARY KEY CLUSTERED 
(
	[ExternID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Förtroendevalda]    Script Date: 2018-04-05 15:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Förtroendevalda](
	[FörtroendevaldID] [int] IDENTITY(1,1) NOT NULL,
	[KontaktID] [int] NULL,
	[ValdFörÅr] [int] NULL,
	[Roll] [int] NULL,
 CONSTRAINT [PK_Förtroendevalda] PRIMARY KEY CLUSTERED 
(
	[FörtroendevaldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kontakter]    Script Date: 2018-04-05 15:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kontakter](
	[KontaktID] [int] NOT NULL,
	[Gatuadress] [nvarchar](50) NULL,
	[Postnummer] [char](5) NULL,
	[Postort] [nvarchar](50) NULL,
	[Epostadress] [nvarchar](50) NULL,
	[Telefonnummer_mobil] [nvarchar](50) NULL,
	[Telefonnummer_hem] [nvarchar](50) NULL,
	[Telefonnummer_arbete] [nvarchar](50) NULL,
	[KontaktTyp] [int] NULL,
 CONSTRAINT [PK_Kontaktuppgifter] PRIMARY KEY CLUSTERED 
(
	[KontaktID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kontakttyp]    Script Date: 2018-04-05 15:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kontakttyp](
	[KontakttypID] [int] IDENTITY(1,1) NOT NULL,
	[Namn] [nvarchar](50) NULL,
 CONSTRAINT [PK_Kontakttyp] PRIMARY KEY CLUSTERED 
(
	[KontakttypID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lokaler]    Script Date: 2018-04-05 15:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lokaler](
	[LokalID] [int] IDENTITY(1,1) NOT NULL,
	[Gatuadress] [nvarchar](50) NULL,
	[Postnummer] [char](5) NULL,
	[Postort] [nvarchar](50) NULL,
	[Telefonnummer] [nvarchar](50) NULL,
	[Beskrivning] [nvarchar](max) NULL,
	[Namn] [nvarchar](50) NULL,
	[Ansvarig] [int] NULL,
	[Nyckellista] [int] NULL,
 CONSTRAINT [PK_Lokaler] PRIMARY KEY CLUSTERED 
(
	[LokalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medlemmar]    Script Date: 2018-04-05 15:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medlemmar](
	[MedlemsNr] [int] IDENTITY(1,1) NOT NULL,
	[PersonNr] [char](12) NULL,
	[Förnamn] [nvarchar](50) NULL,
	[Efternamn] [nvarchar](50) NULL,
	[BlevMedlemDatum] [date] NULL,
	[MedlemskapAvslutadesDatum] [date] NULL,
	[KontaktTyp] [int] NULL,
 CONSTRAINT [PK_Medlemmar] PRIMARY KEY CLUSTERED 
(
	[MedlemsNr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medlemskapslista]    Script Date: 2018-04-05 15:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medlemskapslista](
	[MedlemsID] [int] NULL,
	[StatusID] [int] NULL,
	[År] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medlemsstatus]    Script Date: 2018-04-05 15:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medlemsstatus](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[Titel] [nvarchar](50) NULL,
	[Avgift] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Medlemsstatus] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Möte]    Script Date: 2018-04-05 15:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Möte](
	[MöteID] [int] IDENTITY(1,1) NOT NULL,
	[DeltagarLista] [int] NULL,
 CONSTRAINT [PK_Möte] PRIMARY KEY CLUSTERED 
(
	[MöteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nyckellista]    Script Date: 2018-04-05 15:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nyckellista](
	[LokalID] [int] NOT NULL,
	[KontaktID] [int] NOT NULL,
	[NyckelNr] [nvarchar](50) NULL,
	[UtkvitteradDatum] [date] NULL,
	[UtkvitteradAv] [int] NULL,
	[InlämnadDatum] [date] NULL,
	[MottagenAv] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organisation]    Script Date: 2018-04-05 15:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organisation](
	[OrganisationsID] [int] IDENTITY(1,1) NOT NULL,
	[OrganisationsNr] [int] NULL,
	[Namn] [nvarchar](50) NULL,
	[Beskrivning] [nvarchar](50) NULL,
	[KontaktTyp] [int] NULL,
 CONSTRAINT [PK_Organisation] PRIMARY KEY CLUSTERED 
(
	[OrganisationsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roll]    Script Date: 2018-04-05 15:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roll](
	[RollID] [int] IDENTITY(1,1) NOT NULL,
	[Titel] [nvarchar](50) NULL,
 CONSTRAINT [PK_Roll] PRIMARY KEY CLUSTERED 
(
	[RollID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tillgångar]    Script Date: 2018-04-05 15:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tillgångar](
	[TillgångsID] [int] IDENTITY(1,1) NOT NULL,
	[Namn] [nvarchar](max) NULL,
	[Ansvarig] [int] NULL,
	[Inköpsdatum] [date] NULL,
	[Värde] [decimal](18, 2) NULL,
	[Utgångsdatum] [date] NULL,
	[UtlåningsID] [int] NULL,
	[LokalID] [int] NULL,
 CONSTRAINT [PK_Tillgångar] PRIMARY KEY CLUSTERED 
(
	[TillgångsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TillgångarIEttLån]    Script Date: 2018-04-05 15:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TillgångarIEttLån](
	[TillgångsID] [int] NOT NULL,
	[UtlåningsID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Utlåning]    Script Date: 2018-04-05 15:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Utlåning](
	[UtlåningsID] [int] IDENTITY(1,1) NOT NULL,
	[Utlåningsdatum] [date] NULL,
	[Återlämningsdatum] [date] NULL,
	[Återlämnat] [bit] NULL,
	[ÄrLånadAvMedlem] [bit] NULL,
	[MedlemsNr] [int] NULL,
	[KontaktID] [int] NOT NULL,
 CONSTRAINT [PK_Utlåning] PRIMARY KEY CLUSTERED 
(
	[UtlåningsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VerksamhetsÅr]    Script Date: 2018-04-05 15:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VerksamhetsÅr](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Namn] [nvarchar](50) NULL,
	[StartDatum] [date] NULL,
	[SlutDatum] [date] NULL,
 CONSTRAINT [PK_VerksamhetsÅr] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DeltagarLista]  WITH CHECK ADD  CONSTRAINT [FK_DeltagarLista_Kontakter] FOREIGN KEY([KontaktID])
REFERENCES [dbo].[Kontakter] ([KontaktID])
GO
ALTER TABLE [dbo].[DeltagarLista] CHECK CONSTRAINT [FK_DeltagarLista_Kontakter]
GO
ALTER TABLE [dbo].[DeltagarLista]  WITH CHECK ADD  CONSTRAINT [FK_DeltagarLista_Möte] FOREIGN KEY([MöteID])
REFERENCES [dbo].[Möte] ([MöteID])
GO
ALTER TABLE [dbo].[DeltagarLista] CHECK CONSTRAINT [FK_DeltagarLista_Möte]
GO
ALTER TABLE [dbo].[Dokument]  WITH CHECK ADD  CONSTRAINT [FK_Dokument_DokumentTyp] FOREIGN KEY([DokumentTyp])
REFERENCES [dbo].[DokumentTyp] ([DokumentTyp])
GO
ALTER TABLE [dbo].[Dokument] CHECK CONSTRAINT [FK_Dokument_DokumentTyp]
GO
ALTER TABLE [dbo].[Dokument]  WITH CHECK ADD  CONSTRAINT [FK_Dokument_Kontakter] FOREIGN KEY([Ansvarig])
REFERENCES [dbo].[Kontakter] ([KontaktID])
GO
ALTER TABLE [dbo].[Dokument] CHECK CONSTRAINT [FK_Dokument_Kontakter]
GO
ALTER TABLE [dbo].[Event]  WITH CHECK ADD  CONSTRAINT [FK_Event_ÅterkommandeInfo] FOREIGN KEY([ÅterkommandeInfo])
REFERENCES [dbo].[ÅterkommandeInfo] ([ID])
GO
ALTER TABLE [dbo].[Event] CHECK CONSTRAINT [FK_Event_ÅterkommandeInfo]
GO
ALTER TABLE [dbo].[Event]  WITH CHECK ADD  CONSTRAINT [FK_Event_EventTyp] FOREIGN KEY([EventTyp])
REFERENCES [dbo].[EventTyp] ([EventTypID])
GO
ALTER TABLE [dbo].[Event] CHECK CONSTRAINT [FK_Event_EventTyp]
GO
ALTER TABLE [dbo].[Event]  WITH CHECK ADD  CONSTRAINT [FK_Event_Kontakter] FOREIGN KEY([Ansvarig])
REFERENCES [dbo].[Kontakter] ([KontaktID])
GO
ALTER TABLE [dbo].[Event] CHECK CONSTRAINT [FK_Event_Kontakter]
GO
ALTER TABLE [dbo].[EventTyp]  WITH CHECK ADD  CONSTRAINT [FK_EventTyp_Möte] FOREIGN KEY([EventTypID])
REFERENCES [dbo].[Möte] ([MöteID])
GO
ALTER TABLE [dbo].[EventTyp] CHECK CONSTRAINT [FK_EventTyp_Möte]
GO
ALTER TABLE [dbo].[ExternPerson]  WITH CHECK ADD  CONSTRAINT [FK_ExternPerson_Kontakttyp] FOREIGN KEY([KontaktTyp])
REFERENCES [dbo].[Kontakttyp] ([KontakttypID])
GO
ALTER TABLE [dbo].[ExternPerson] CHECK CONSTRAINT [FK_ExternPerson_Kontakttyp]
GO
ALTER TABLE [dbo].[Förtroendevalda]  WITH CHECK ADD  CONSTRAINT [FK_Förtroendevalda_Kontakter] FOREIGN KEY([KontaktID])
REFERENCES [dbo].[Kontakter] ([KontaktID])
GO
ALTER TABLE [dbo].[Förtroendevalda] CHECK CONSTRAINT [FK_Förtroendevalda_Kontakter]
GO
ALTER TABLE [dbo].[Förtroendevalda]  WITH CHECK ADD  CONSTRAINT [FK_Förtroendevalda_Roll] FOREIGN KEY([Roll])
REFERENCES [dbo].[Roll] ([RollID])
GO
ALTER TABLE [dbo].[Förtroendevalda] CHECK CONSTRAINT [FK_Förtroendevalda_Roll]
GO
ALTER TABLE [dbo].[Förtroendevalda]  WITH CHECK ADD  CONSTRAINT [FK_Förtroendevalda_VerksamhetsÅr] FOREIGN KEY([ValdFörÅr])
REFERENCES [dbo].[VerksamhetsÅr] ([ID])
GO
ALTER TABLE [dbo].[Förtroendevalda] CHECK CONSTRAINT [FK_Förtroendevalda_VerksamhetsÅr]
GO
ALTER TABLE [dbo].[Kontakter]  WITH CHECK ADD  CONSTRAINT [FK_Kontakter_Kontakttyp] FOREIGN KEY([KontaktTyp])
REFERENCES [dbo].[Kontakttyp] ([KontakttypID])
GO
ALTER TABLE [dbo].[Kontakter] CHECK CONSTRAINT [FK_Kontakter_Kontakttyp]
GO
ALTER TABLE [dbo].[Medlemmar]  WITH CHECK ADD  CONSTRAINT [FK_Medlemmar_Kontakttyp] FOREIGN KEY([KontaktTyp])
REFERENCES [dbo].[Kontakttyp] ([KontakttypID])
GO
ALTER TABLE [dbo].[Medlemmar] CHECK CONSTRAINT [FK_Medlemmar_Kontakttyp]
GO
ALTER TABLE [dbo].[Medlemskapslista]  WITH CHECK ADD  CONSTRAINT [FK_Medlemskapslista_Medlemmar] FOREIGN KEY([MedlemsID])
REFERENCES [dbo].[Medlemmar] ([MedlemsNr])
GO
ALTER TABLE [dbo].[Medlemskapslista] CHECK CONSTRAINT [FK_Medlemskapslista_Medlemmar]
GO
ALTER TABLE [dbo].[Medlemskapslista]  WITH CHECK ADD  CONSTRAINT [FK_Medlemskapslista_Medlemsstatus] FOREIGN KEY([StatusID])
REFERENCES [dbo].[Medlemsstatus] ([StatusID])
GO
ALTER TABLE [dbo].[Medlemskapslista] CHECK CONSTRAINT [FK_Medlemskapslista_Medlemsstatus]
GO
ALTER TABLE [dbo].[Medlemskapslista]  WITH CHECK ADD  CONSTRAINT [FK_Medlemskapslista_VerksamhetsÅr] FOREIGN KEY([År])
REFERENCES [dbo].[VerksamhetsÅr] ([ID])
GO
ALTER TABLE [dbo].[Medlemskapslista] CHECK CONSTRAINT [FK_Medlemskapslista_VerksamhetsÅr]
GO
ALTER TABLE [dbo].[Nyckellista]  WITH CHECK ADD  CONSTRAINT [FK_Nyckellista_Kontakter] FOREIGN KEY([KontaktID])
REFERENCES [dbo].[Kontakter] ([KontaktID])
GO
ALTER TABLE [dbo].[Nyckellista] CHECK CONSTRAINT [FK_Nyckellista_Kontakter]
GO
ALTER TABLE [dbo].[Nyckellista]  WITH CHECK ADD  CONSTRAINT [FK_Nyckellista_Lokaler] FOREIGN KEY([LokalID])
REFERENCES [dbo].[Lokaler] ([LokalID])
GO
ALTER TABLE [dbo].[Nyckellista] CHECK CONSTRAINT [FK_Nyckellista_Lokaler]
GO
ALTER TABLE [dbo].[Organisation]  WITH CHECK ADD  CONSTRAINT [FK_Organisation_Kontakttyp] FOREIGN KEY([KontaktTyp])
REFERENCES [dbo].[Kontakttyp] ([KontakttypID])
GO
ALTER TABLE [dbo].[Organisation] CHECK CONSTRAINT [FK_Organisation_Kontakttyp]
GO
ALTER TABLE [dbo].[Tillgångar]  WITH CHECK ADD  CONSTRAINT [FK_Tillgångar_Kontakter] FOREIGN KEY([Ansvarig])
REFERENCES [dbo].[Kontakter] ([KontaktID])
GO
ALTER TABLE [dbo].[Tillgångar] CHECK CONSTRAINT [FK_Tillgångar_Kontakter]
GO
ALTER TABLE [dbo].[Tillgångar]  WITH CHECK ADD  CONSTRAINT [FK_Tillgångar_Lokaler] FOREIGN KEY([LokalID])
REFERENCES [dbo].[Lokaler] ([LokalID])
GO
ALTER TABLE [dbo].[Tillgångar] CHECK CONSTRAINT [FK_Tillgångar_Lokaler]
GO
ALTER TABLE [dbo].[TillgångarIEttLån]  WITH CHECK ADD  CONSTRAINT [FK_TillgångarIEttLån_Tillgångar] FOREIGN KEY([TillgångsID])
REFERENCES [dbo].[Tillgångar] ([TillgångsID])
GO
ALTER TABLE [dbo].[TillgångarIEttLån] CHECK CONSTRAINT [FK_TillgångarIEttLån_Tillgångar]
GO
ALTER TABLE [dbo].[TillgångarIEttLån]  WITH CHECK ADD  CONSTRAINT [FK_TillgångarIEttLån_Utlåning] FOREIGN KEY([UtlåningsID])
REFERENCES [dbo].[Utlåning] ([UtlåningsID])
GO
ALTER TABLE [dbo].[TillgångarIEttLån] CHECK CONSTRAINT [FK_TillgångarIEttLån_Utlåning]
GO
ALTER TABLE [dbo].[Utlåning]  WITH CHECK ADD  CONSTRAINT [FK_Utlåning_Kontakter] FOREIGN KEY([KontaktID])
REFERENCES [dbo].[Kontakter] ([KontaktID])
GO
ALTER TABLE [dbo].[Utlåning] CHECK CONSTRAINT [FK_Utlåning_Kontakter]
GO
