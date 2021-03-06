USE [BlogWebDB]
GO
/****** Object:  Table [dbo].[TBL_ADMIN]    Script Date: 17.12.2019 19:28:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_ADMIN](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[KULLANICI] [varchar](20) NULL,
	[SIFRE] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_DENEYIM]    Script Date: 17.12.2019 19:28:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_DENEYIM](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[BASLIK] [varchar](50) NULL,
	[ALTBASLIK] [varchar](50) NULL,
	[ACIKLAMA] [varchar](max) NULL,
	[TARIH_BAS] [varchar](20) NULL,
	[TARIH_SON] [varchar](20) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_EGITIM]    Script Date: 17.12.2019 19:28:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_EGITIM](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[BASLIK] [varchar](100) NULL,
	[ALTBASLIK] [varchar](50) NULL,
	[ACIKLAMA] [varchar](250) NULL,
	[GNOT] [varchar](15) NULL,
	[TARIH] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_HAKKIMDA]    Script Date: 17.12.2019 19:28:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_HAKKIMDA](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[AD] [varchar](30) NULL,
	[SOYAD] [varchar](30) NULL,
	[ADRES] [varchar](150) NULL,
	[MAIL] [varchar](50) NULL,
	[TELEFON] [varchar](20) NULL,
	[KISANOT] [varchar](1000) NULL,
	[FOTOGRAF] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_HOBILER]    Script Date: 17.12.2019 19:28:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_HOBILER](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[HOBI] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_PROJELER]    Script Date: 17.12.2019 19:28:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_PROJELER](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[PROJELER] [varchar](100) NULL,
	[ACIKLAMALAR] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_YETENEKLER]    Script Date: 17.12.2019 19:28:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_YETENEKLER](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[YETENEK] [varchar](50) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TBL_ADMIN] ON 

INSERT [dbo].[TBL_ADMIN] ([ID], [KULLANICI], [SIFRE]) VALUES (1, N'onyor', N'123asd')
SET IDENTITY_INSERT [dbo].[TBL_ADMIN] OFF
SET IDENTITY_INSERT [dbo].[TBL_DENEYIM] ON 

INSERT [dbo].[TBL_DENEYIM] ([ID], [BASLIK], [ALTBASLIK], [ACIKLAMA], [TARIH_BAS], [TARIH_SON]) VALUES (1, N'Dizayn Org. Bilgisayar Ltd. Şti.', N'Intern', N'Staj süresi boyunca C# .NET'' de Xaf Framework kullanarak Win & Web tabanlı otomasyonlar kodladım.
Projem: Personel Görev Takip & Şirket Otomasyonu', N'Temmuz 2019', N'Ağustos 2019')
INSERT [dbo].[TBL_DENEYIM] ([ID], [BASLIK], [ALTBASLIK], [ACIKLAMA], [TARIH_BAS], [TARIH_SON]) VALUES (2, N'Çankaya Belediyesi', N'Teaching Assistant / Intern', N'Stajın ilk haftasında .Net MVC mimarisinde proje geliştirmekte iken, sonrasında ki haftalarda başka bir birime transfer oldum. Yeni transfer olduğum birim Çankaya Teknoloji Evinde belirli yaş guruplarındaki (8-14 yaş) çocuklara yazılım ve robot eğitimleri verdim. ', N'Haziran 2018', N'Temmuz 2018')
INSERT [dbo].[TBL_DENEYIM] ([ID], [BASLIK], [ALTBASLIK], [ACIKLAMA], [TARIH_BAS], [TARIH_SON]) VALUES (3, N'Batınet Bilgisayar', N'Donanım / Teknik Servis', N'Teknik sorunların tadilatı. Bilgisayar donanımına ait parçaların, temini teçhizatı. İşletim sistemi kurulumu vs. Daha teknik bir deneyim kazanıldı.', N'Haziran 2015', N'Ağustos 2015')
INSERT [dbo].[TBL_DENEYIM] ([ID], [BASLIK], [ALTBASLIK], [ACIKLAMA], [TARIH_BAS], [TARIH_SON]) VALUES (4, N'ONYORE', N'ONYOREsadasda', N'', N'1994', N'2019')
SET IDENTITY_INSERT [dbo].[TBL_DENEYIM] OFF
SET IDENTITY_INSERT [dbo].[TBL_EGITIM] ON 

INSERT [dbo].[TBL_EGITIM] ([ID], [BASLIK], [ALTBASLIK], [ACIKLAMA], [GNOT], [TARIH]) VALUES (1, N'Çiğdemtepe Şehit Mehmet Coşkun Kılıç
 Mesleki ve Teknik Anadolu Lisesi, ANKARA', N'Bilişim Teknolojileri Alanı', N'Anadolu Teknik Lisesi (ETÖGM) - Bilgisayar Teknisyeni', N'66.80 / 100', N'09.2008 – 06.2012')
INSERT [dbo].[TBL_EGITIM] ([ID], [BASLIK], [ALTBASLIK], [ACIKLAMA], [GNOT], [TARIH]) VALUES (2, N'Süleyman Demirel Üniversitesi / Senirkent MYO, ISPARTA', N'Bilgisayar Programcılığı Ön Lisans Derecesi', N'Tekniker', N'3.17 / 4.00', N'09.2013 – 08.2015')
INSERT [dbo].[TBL_EGITIM] ([ID], [BASLIK], [ALTBASLIK], [ACIKLAMA], [GNOT], [TARIH]) VALUES (3, N'Sivas Cumhuriyet Üniversitesi, SİVAS', N'Bilgisayar Mühendisliği Lisans Derecesi', N'Mühendis', N'2.73 / 4.00', N'09.2015 – 09.2019')
SET IDENTITY_INSERT [dbo].[TBL_EGITIM] OFF
SET IDENTITY_INSERT [dbo].[TBL_HAKKIMDA] ON 

INSERT [dbo].[TBL_HAKKIMDA] ([ID], [AD], [SOYAD], [ADRES], [MAIL], [TELEFON], [KISANOT], [FOTOGRAF]) VALUES (1, N'Onur', N'Yıldız', N'Ergazi Mah. Demiröz Sit. Blok: 4/20 Daire No: 4 1832/1 Sk.Batıkent Yenimahalle/ANKARA', N'onuryldz008@gmail.com', N'+90 531 587 56 31', N'1994 yılında Artvin'' in Arhavi ilçesinde doğdum. Eğitim hayatım boyuncada, gerek lise, gerekse üniversitede Bilgisayar bir parçam oldu. Şimdi gene aynı işle uğraşıyorum. Benim işim Bilgisayar. Teşekkürler...', N'https://i.hizliresim.com/nb3Ng5.jpg')
SET IDENTITY_INSERT [dbo].[TBL_HAKKIMDA] OFF
SET IDENTITY_INSERT [dbo].[TBL_HOBILER] ON 

INSERT [dbo].[TBL_HOBILER] ([ID], [HOBI]) VALUES (1, N'Kesinlikle Bilgisayar hobilerim arasında en üst sıradadır.')
INSERT [dbo].[TBL_HOBILER] ([ID], [HOBI]) VALUES (2, N'Sosyal ilişkilerde, daha etkili olabilmek için bir dönem Tiyatro ile uğraştım.')
INSERT [dbo].[TBL_HOBILER] ([ID], [HOBI]) VALUES (3, N'Sosyal yardım dernek faaliyetleri.')
INSERT [dbo].[TBL_HOBILER] ([ID], [HOBI]) VALUES (4, N'Yalın olarak da kitap okumak, spor yapmak, sinema izlemek gibi aktivetleri de yapmaktayım.')
SET IDENTITY_INSERT [dbo].[TBL_HOBILER] OFF
SET IDENTITY_INSERT [dbo].[TBL_PROJELER] ON 

INSERT [dbo].[TBL_PROJELER] ([ID], [PROJELER], [ACIKLAMALAR]) VALUES (1, N'C# ile DevExpress’ de SQL Tabanlı Ticari Otomasyon', N'• DevExpress ile stok takip, fatura, cari, raporlama, grafiksel analiz gibi başlıkları
modüler halde kullanıcıya sunan, bir ticari otomasyon.')
INSERT [dbo].[TBL_PROJELER] ([ID], [PROJELER], [ACIKLAMALAR]) VALUES (2, N'DevExpress Framework ile .NET’ de Win ve Web Tabanlı Şirket Otomasyonu', N'• Personel görev takip sistemi beraberinde, şirket içi bir çok alanda işlevsel bir
otomasyon.
• Personel Maaşları, Personel Takip Sistemi, Toplantılar, Finansal İşlemler, Projeler,
Kullanıcı Yetkinlikleri, Müşteriler, Satış-Alış İşlemleri gibi alanlar da geliştirilmiş
bir otomasyon program.')
INSERT [dbo].[TBL_PROJELER] ([ID], [PROJELER], [ACIKLAMALAR]) VALUES (3, N'Raspberry Pi’ Teknolojisi ile Görüntü Duvarı (Video Wall System) – Bitirme Projesi', N'• Birbirine bitişik ve üst üste gelecek şekilde döşenmiş ekran setlerinden oluşan, büyük
bir ekran oluşturulması amaçlanan çoklu bir monitor kurulumu.
• Raspberry Pi Teknolojisi ve Python programlama dili kullanarak yazılımının
ve donanımın bize ait olduğu, kullanıcılara yüksek kalitede görsel bir haz yaşatmayı
amaçlayan bir görüntü sistemi.')
INSERT [dbo].[TBL_PROJELER] ([ID], [PROJELER], [ACIKLAMALAR]) VALUES (4, N'3D Yazıcı & Arduino & DVD Writer', N'• Arduino teknolojisi ve Dvd Sürüceleri kullanarak tasarlanan 3D Yazıcı.
• 3 boyutlu bir düzlem için 3 adet Dvd Sürücüsü, Arduino Mega, Ramps Motor Sürücüsü,
A4 Tech Motor, 3D Kalem ve Güç kaynağı kullanarak gerçekleştirdiğimiz proje.')
INSERT [dbo].[TBL_PROJELER] ([ID], [PROJELER], [ACIKLAMALAR]) VALUES (5, N'C# WinForms', N'• C# da 100’ u geçkin uygulamalar ve bu uygulamalarda Veri Tabanı işlemleri, Entity
Framework, Xml, Json ve DevExpress kullanıldı.')
SET IDENTITY_INSERT [dbo].[TBL_PROJELER] OFF
SET IDENTITY_INSERT [dbo].[TBL_YETENEKLER] ON 

INSERT [dbo].[TBL_YETENEKLER] ([ID], [YETENEK]) VALUES (1, N'Yazılım süreç modellemeleri.')
INSERT [dbo].[TBL_YETENEKLER] ([ID], [YETENEK]) VALUES (2, N'İş akış diyagramları.')
INSERT [dbo].[TBL_YETENEKLER] ([ID], [YETENEK]) VALUES (3, N'Veri tabanı yönetim sistemi oluşturma.')
INSERT [dbo].[TBL_YETENEKLER] ([ID], [YETENEK]) VALUES (4, N'Back-End tarafında kodlama.')
INSERT [dbo].[TBL_YETENEKLER] ([ID], [YETENEK]) VALUES (5, N'Kurumsal mimariler ile proje geliştirme.')
SET IDENTITY_INSERT [dbo].[TBL_YETENEKLER] OFF
