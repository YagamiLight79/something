USE [ABSD]
GO
/****** Object:  Table [dbo].[ReferenceData]    Script Date: 12/27/2017 14:42:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReferenceData](
	[RefID] [int] IDENTITY(1,1) NOT NULL,
	[RefCode] [int] NULL,
	[RefValue] [nvarchar](50) NULL,
 CONSTRAINT [PK_ReferenceData] PRIMARY KEY CLUSTERED 
(
	[RefID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 12/27/2017 14:42:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Account] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Role] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 12/27/2017 14:42:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 12/27/2017 14:42:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[ManagerID] [int] NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organisation]    Script Date: 12/27/2017 14:42:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organisation](
	[OrgID] [int] IDENTITY(1,1) NOT NULL,
	[OrgName] [nvarchar](50) NULL,
	[ContactID] [int] NULL,
 CONSTRAINT [PK_Organisation] PRIMARY KEY CLUSTERED 
(
	[OrgID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrustRegion]    Script Date: 12/27/2017 14:42:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrustRegion](
	[TrustRegionID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
	[CountryID] [int] NULL,
 CONSTRAINT [PK_TrustRegion] PRIMARY KEY CLUSTERED 
(
	[TrustRegionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[County]    Script Date: 12/27/2017 14:42:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[County](
	[CountyID] [int] IDENTITY(1,1) NOT NULL,
	[CountryID] [int] NULL,
	[CountyName] [nchar](10) NULL,
 CONSTRAINT [PK_County] PRIMARY KEY CLUSTERED 
(
	[CountyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Programme]    Script Date: 12/27/2017 14:42:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Programme](
	[ProgrammeID] [int] IDENTITY(1,1) NOT NULL,
	[ContactID] [int] NULL,
 CONSTRAINT [PK_Programme] PRIMARY KEY CLUSTERED 
(
	[ProgrammeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 12/27/2017 14:42:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[ServiceID] [int] IDENTITY(1,1) NOT NULL,
	[ContactID] [int] NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[ServiceID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SupportingMaterial]    Script Date: 12/27/2017 14:42:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupportingMaterial](
	[SupportingMaterialID] [int] IDENTITY(1,1) NOT NULL,
	[OrgID] [int] NULL,
	[UserID] [int] NULL,
 CONSTRAINT [PK_SupportingMaterial] PRIMARY KEY CLUSTERED 
(
	[SupportingMaterialID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Premise]    Script Date: 12/27/2017 14:42:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Premise](
	[PremiseID] [int] IDENTITY(1,1) NOT NULL,
	[ServiceID] [int] NULL,
 CONSTRAINT [PK_Premise] PRIMARY KEY CLUSTERED 
(
	[PremiseID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrustDistrict]    Script Date: 12/27/2017 14:42:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrustDistrict](
	[TrustDistrictID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](150) NULL,
	[TrustRegionID] [int] NULL,
 CONSTRAINT [PK_TrustDistrict] PRIMARY KEY CLUSTERED 
(
	[TrustDistrictID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Town]    Script Date: 12/27/2017 14:42:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Town](
	[TownID] [int] IDENTITY(1,1) NOT NULL,
	[CountyID] [int] NULL,
	[CountryID] [int] NULL,
	[TownName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Town] PRIMARY KEY CLUSTERED 
(
	[TownID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GovOfficeRegion]    Script Date: 12/27/2017 14:42:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GovOfficeRegion](
	[GovOfficeRegionID] [int] IDENTITY(1,1) NOT NULL,
	[GovOfficeRegionName] [nvarchar](50) NULL,
	[CountyID] [int] NULL,
	[CountryID] [int] NULL,
 CONSTRAINT [PK_GovOfficeRegion] PRIMARY KEY CLUSTERED 
(
	[GovOfficeRegionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Directorate]    Script Date: 12/27/2017 14:42:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Directorate](
	[DirectorateID] [int] IDENTITY(1,1) NOT NULL,
	[OrgID] [int] NULL,
	[ContactID] [int] NULL,
 CONSTRAINT [PK_Directorate] PRIMARY KEY CLUSTERED 
(
	[DirectorateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 12/27/2017 14:42:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[DirectorateID] [int] NULL,
	[ContactID] [int] NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 12/27/2017 14:42:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[AddressID] [int] IDENTITY(1,1) NOT NULL,
	[PostCode] [nvarchar](50) NULL,
	[TownID] [int] NULL,
	[CountyID] [int] NULL,
	[CountryID] [int] NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Team]    Script Date: 12/27/2017 14:42:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Team](
	[TeamID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentID] [int] NULL,
	[ContactID] [int] NULL,
 CONSTRAINT [PK_Team] PRIMARY KEY CLUSTERED 
(
	[TeamID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Address_Town]    Script Date: 12/27/2017 14:42:03 ******/
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_Town] FOREIGN KEY([TownID])
REFERENCES [dbo].[Town] ([TownID])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_Town]
GO
/****** Object:  ForeignKey [FK_Contact_Contact]    Script Date: 12/27/2017 14:42:03 ******/
ALTER TABLE [dbo].[Contact]  WITH CHECK ADD  CONSTRAINT [FK_Contact_Contact] FOREIGN KEY([ManagerID])
REFERENCES [dbo].[Contact] ([ContactID])
GO
ALTER TABLE [dbo].[Contact] CHECK CONSTRAINT [FK_Contact_Contact]
GO
/****** Object:  ForeignKey [FK_County_Country]    Script Date: 12/27/2017 14:42:03 ******/
ALTER TABLE [dbo].[County]  WITH CHECK ADD  CONSTRAINT [FK_County_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([CountryID])
GO
ALTER TABLE [dbo].[County] CHECK CONSTRAINT [FK_County_Country]
GO
/****** Object:  ForeignKey [FK_Department_Contact]    Script Date: 12/27/2017 14:42:03 ******/
ALTER TABLE [dbo].[Department]  WITH CHECK ADD  CONSTRAINT [FK_Department_Contact] FOREIGN KEY([ContactID])
REFERENCES [dbo].[Contact] ([ContactID])
GO
ALTER TABLE [dbo].[Department] CHECK CONSTRAINT [FK_Department_Contact]
GO
/****** Object:  ForeignKey [FK_Department_Directorate]    Script Date: 12/27/2017 14:42:03 ******/
ALTER TABLE [dbo].[Department]  WITH CHECK ADD  CONSTRAINT [FK_Department_Directorate] FOREIGN KEY([DirectorateID])
REFERENCES [dbo].[Directorate] ([DirectorateID])
GO
ALTER TABLE [dbo].[Department] CHECK CONSTRAINT [FK_Department_Directorate]
GO
/****** Object:  ForeignKey [FK_Directorate_Contact]    Script Date: 12/27/2017 14:42:03 ******/
ALTER TABLE [dbo].[Directorate]  WITH CHECK ADD  CONSTRAINT [FK_Directorate_Contact] FOREIGN KEY([ContactID])
REFERENCES [dbo].[Contact] ([ContactID])
GO
ALTER TABLE [dbo].[Directorate] CHECK CONSTRAINT [FK_Directorate_Contact]
GO
/****** Object:  ForeignKey [FK_Directorate_Organisation]    Script Date: 12/27/2017 14:42:03 ******/
ALTER TABLE [dbo].[Directorate]  WITH CHECK ADD  CONSTRAINT [FK_Directorate_Organisation] FOREIGN KEY([OrgID])
REFERENCES [dbo].[Organisation] ([OrgID])
GO
ALTER TABLE [dbo].[Directorate] CHECK CONSTRAINT [FK_Directorate_Organisation]
GO
/****** Object:  ForeignKey [FK_GovOfficeRegion_County]    Script Date: 12/27/2017 14:42:03 ******/
ALTER TABLE [dbo].[GovOfficeRegion]  WITH CHECK ADD  CONSTRAINT [FK_GovOfficeRegion_County] FOREIGN KEY([CountyID])
REFERENCES [dbo].[County] ([CountyID])
GO
ALTER TABLE [dbo].[GovOfficeRegion] CHECK CONSTRAINT [FK_GovOfficeRegion_County]
GO
/****** Object:  ForeignKey [FK_Organisation_Contact]    Script Date: 12/27/2017 14:42:03 ******/
ALTER TABLE [dbo].[Organisation]  WITH CHECK ADD  CONSTRAINT [FK_Organisation_Contact] FOREIGN KEY([ContactID])
REFERENCES [dbo].[Contact] ([ContactID])
GO
ALTER TABLE [dbo].[Organisation] CHECK CONSTRAINT [FK_Organisation_Contact]
GO
/****** Object:  ForeignKey [FK_Premise_Service]    Script Date: 12/27/2017 14:42:03 ******/
ALTER TABLE [dbo].[Premise]  WITH CHECK ADD  CONSTRAINT [FK_Premise_Service] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Service] ([ServiceID])
GO
ALTER TABLE [dbo].[Premise] CHECK CONSTRAINT [FK_Premise_Service]
GO
/****** Object:  ForeignKey [FK_Programme_Contact]    Script Date: 12/27/2017 14:42:03 ******/
ALTER TABLE [dbo].[Programme]  WITH CHECK ADD  CONSTRAINT [FK_Programme_Contact] FOREIGN KEY([ContactID])
REFERENCES [dbo].[Contact] ([ContactID])
GO
ALTER TABLE [dbo].[Programme] CHECK CONSTRAINT [FK_Programme_Contact]
GO
/****** Object:  ForeignKey [FK_Service_Contact]    Script Date: 12/27/2017 14:42:03 ******/
ALTER TABLE [dbo].[Service]  WITH CHECK ADD  CONSTRAINT [FK_Service_Contact] FOREIGN KEY([ContactID])
REFERENCES [dbo].[Contact] ([ContactID])
GO
ALTER TABLE [dbo].[Service] CHECK CONSTRAINT [FK_Service_Contact]
GO
/****** Object:  ForeignKey [FK_SupportingMaterial_Organisation]    Script Date: 12/27/2017 14:42:03 ******/
ALTER TABLE [dbo].[SupportingMaterial]  WITH CHECK ADD  CONSTRAINT [FK_SupportingMaterial_Organisation] FOREIGN KEY([OrgID])
REFERENCES [dbo].[Organisation] ([OrgID])
GO
ALTER TABLE [dbo].[SupportingMaterial] CHECK CONSTRAINT [FK_SupportingMaterial_Organisation]
GO
/****** Object:  ForeignKey [FK_SupportingMaterial_User]    Script Date: 12/27/2017 14:42:03 ******/
ALTER TABLE [dbo].[SupportingMaterial]  WITH CHECK ADD  CONSTRAINT [FK_SupportingMaterial_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[SupportingMaterial] CHECK CONSTRAINT [FK_SupportingMaterial_User]
GO
/****** Object:  ForeignKey [FK_Team_Contact]    Script Date: 12/27/2017 14:42:03 ******/
ALTER TABLE [dbo].[Team]  WITH CHECK ADD  CONSTRAINT [FK_Team_Contact] FOREIGN KEY([ContactID])
REFERENCES [dbo].[Contact] ([ContactID])
GO
ALTER TABLE [dbo].[Team] CHECK CONSTRAINT [FK_Team_Contact]
GO
/****** Object:  ForeignKey [FK_Team_Department]    Script Date: 12/27/2017 14:42:03 ******/
ALTER TABLE [dbo].[Team]  WITH CHECK ADD  CONSTRAINT [FK_Team_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([DepartmentID])
GO
ALTER TABLE [dbo].[Team] CHECK CONSTRAINT [FK_Team_Department]
GO
/****** Object:  ForeignKey [FK_Town_County]    Script Date: 12/27/2017 14:42:03 ******/
ALTER TABLE [dbo].[Town]  WITH CHECK ADD  CONSTRAINT [FK_Town_County] FOREIGN KEY([CountyID])
REFERENCES [dbo].[County] ([CountyID])
GO
ALTER TABLE [dbo].[Town] CHECK CONSTRAINT [FK_Town_County]
GO
/****** Object:  ForeignKey [FK_TrustDistrict_TrustRegion]    Script Date: 12/27/2017 14:42:03 ******/
ALTER TABLE [dbo].[TrustDistrict]  WITH CHECK ADD  CONSTRAINT [FK_TrustDistrict_TrustRegion] FOREIGN KEY([TrustRegionID])
REFERENCES [dbo].[TrustRegion] ([TrustRegionID])
GO
ALTER TABLE [dbo].[TrustDistrict] CHECK CONSTRAINT [FK_TrustDistrict_TrustRegion]
GO
/****** Object:  ForeignKey [FK_TrustRegion_Country]    Script Date: 12/27/2017 14:42:03 ******/
ALTER TABLE [dbo].[TrustRegion]  WITH CHECK ADD  CONSTRAINT [FK_TrustRegion_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([CountryID])
GO
ALTER TABLE [dbo].[TrustRegion] CHECK CONSTRAINT [FK_TrustRegion_Country]
GO
