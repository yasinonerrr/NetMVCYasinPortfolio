USE [CvDb]
GO
/****** Object:  Table [dbo].[Abouts]    Script Date: 28-Sep-23 16:32:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abouts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [nvarchar](400) NULL,
	[JobTitle] [nvarchar](400) NULL,
	[Description] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 28-Sep-23 16:32:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Email] [nvarchar](250) NULL,
	[Subject] [nvarchar](250) NULL,
	[Message] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerReviews]    Script Date: 28-Sep-23 16:32:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerReviews](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [nvarchar](250) NULL,
	[Comment] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 28-Sep-23 16:32:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skills]    Script Date: 28-Sep-23 16:32:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skills](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NULL,
	[Rate] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slogans]    Script Date: 28-Sep-23 16:32:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slogans](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Sectionname] [nvarchar](250) NULL,
	[Title] [nvarchar](150) NULL,
	[Description] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Abouts] ON 

INSERT [dbo].[Abouts] ([Id], [Fullname], [JobTitle], [Description], [ImagePath]) VALUES (1, N'Yasin ÖNER', N'Software Developer', N'Yazılım alanında yeni bir yolculuğa başlamış olmama rağmen, sürekli değişen teknolojik trendleri yakından takip ediyorum. Aldığım eğitimleri ve edineceğim bilgileri, sektörde yenilikçi ve etkileyici projeler oluşturmak için kullanmayı hedefliyorum. Öğrenme azmim ve adaptasyon yeteneğimle, yazılım dünyasında sürdürülebilir başarılara imza atmayı planlıyorum', N'images/linkedin.jpg')
SET IDENTITY_INSERT [dbo].[Abouts] OFF
GO
SET IDENTITY_INSERT [dbo].[Contacts] ON 

INSERT [dbo].[Contacts] ([Id], [Name], [Email], [Subject], [Message]) VALUES (1, N'test', N'test@mail.com', N'abc', N'abc')
INSERT [dbo].[Contacts] ([Id], [Name], [Email], [Subject], [Message]) VALUES (2, N'qwe', N'werw@gmail.com', N'wqewqeqwewqe', N'qwewqe')
INSERT [dbo].[Contacts] ([Id], [Name], [Email], [Subject], [Message]) VALUES (3, N'Yavuz Selim', N'yskahraman@gmail.com', N'Bir web sayfası', N'Bir web sayfası yaptırmak istiyorum.')
SET IDENTITY_INSERT [dbo].[Contacts] OFF
GO
SET IDENTITY_INSERT [dbo].[CustomerReviews] ON 

INSERT [dbo].[CustomerReviews] ([Id], [Fullname], [Comment], [ImagePath]) VALUES (1, N'AnatoliaCode', N'Yazılım projemizde gösterdiğiniz uzmanlık ve çözüm odaklı yaklaşımınız sayesinde başarılı bir sonuç elde ettik. Sergilediğiniz profesyonellik ve hızlı geri dönüşleriniz için minnettarız. Bir sonraki projede tekrar birlikte çalışmayı umuyorum.', N'images/firm_AC.png')
INSERT [dbo].[CustomerReviews] ([Id], [Fullname], [Comment], [ImagePath]) VALUES (2, N'BosphorusBits', N'Yeni web sitemizin tasarımı ve fonksiyonelliği konusundaki beklentilerimizi aşan bir iş çıkardınız. Özellikle kullanıcı arayüzündeki detaylara verdiğiniz önem ve mobil uyumluluğu mükemmel şekilde sağlamanız takdire şayan. Ekip olarak hızlı, etkili ve yaratıcı çözümler sunmanız bizi gerçekten etkiledi.Yakın zamanda tekrar bir araya gelmeyi dilerim.', N'images/firm_BB.png')
SET IDENTITY_INSERT [dbo].[CustomerReviews] OFF
GO
SET IDENTITY_INSERT [dbo].[Services] ON 

INSERT [dbo].[Services] ([Id], [Title]) VALUES (1, N'Web Geliştirme')
INSERT [dbo].[Services] ([Id], [Title]) VALUES (2, N'Mobil Uygulama Geliştirme')
INSERT [dbo].[Services] ([Id], [Title]) VALUES (3, N'Masaüstü Uygulama Geliştirme')
INSERT [dbo].[Services] ([Id], [Title]) VALUES (4, N'Veri Tabanı Tassarımı ve Yönetimi')
SET IDENTITY_INSERT [dbo].[Services] OFF
GO
SET IDENTITY_INSERT [dbo].[Skills] ON 

INSERT [dbo].[Skills] ([Id], [Title], [Rate]) VALUES (1, N'CSharp', 80)
INSERT [dbo].[Skills] ([Id], [Title], [Rate]) VALUES (2, N'SQL', 90)
INSERT [dbo].[Skills] ([Id], [Title], [Rate]) VALUES (3, N'HTML', 90)
INSERT [dbo].[Skills] ([Id], [Title], [Rate]) VALUES (4, N'CSS', 90)
INSERT [dbo].[Skills] ([Id], [Title], [Rate]) VALUES (5, N'React', 75)
INSERT [dbo].[Skills] ([Id], [Title], [Rate]) VALUES (6, N'JavaScript', 70)
SET IDENTITY_INSERT [dbo].[Skills] OFF
GO
SET IDENTITY_INSERT [dbo].[Slogans] ON 

INSERT [dbo].[Slogans] ([Id], [Sectionname], [Title], [Description]) VALUES (1, N'Services', N'Hizmetler', N'<span>Markanızı oluşturun</span> ve işinizi büyütün')
INSERT [dbo].[Slogans] ([Id], [Sectionname], [Title], [Description]) VALUES (2, N'Skills', N'Yetenekler', N'Başlıca yeteneklerim')
SET IDENTITY_INSERT [dbo].[Slogans] OFF
GO
/****** Object:  StoredProcedure [dbo].[ap_CreateContact]    Script Date: 28-Sep-23 16:32:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ap_CreateContact]
@name nvarchar(250), 
@email nvarchar(250), 
@subject nvarchar(250),
@message nvarchar(MAX)
as
begin
insert into Contacts values(@name,@email,@subject,@message)
end
GO
/****** Object:  StoredProcedure [dbo].[ap_ListCustomerReviews]    Script Date: 28-Sep-23 16:32:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ap_ListCustomerReviews]
as 
begin
select * from CustomerReviews  
end
GO
/****** Object:  StoredProcedure [dbo].[ap_ListSkill]    Script Date: 28-Sep-23 16:32:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ap_ListSkill]
as
begin
select * from Skills
end
GO
/****** Object:  StoredProcedure [dbo].[ap_ListSlogan]    Script Date: 28-Sep-23 16:32:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ap_ListSlogan]
@sectionName nvarchar(120)
as
begin
select * from Slogans where Sectionname =@sectionName
end
GO
/****** Object:  StoredProcedure [dbo].[ap_ListSlogan2]    Script Date: 28-Sep-23 16:32:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ap_ListSlogan2]
@sectionName nvarchar(120) = 'Services'
as
begin
select * from Slogans where Sectionname =@sectionName
end
GO
/****** Object:  StoredProcedure [dbo].[ap_ListSlogans]    Script Date: 28-Sep-23 16:32:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ap_ListSlogans]
@sectionName nvarchar(120)
as
begin
select * from Slogans where SectionName=@sectionname
end
GO
