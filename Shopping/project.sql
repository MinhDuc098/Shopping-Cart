USE [project]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 19/07/2022 2:45:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [varchar](255) NULL,
	[pass] [varchar](255) NULL,
	[isAdmin] [int] NULL,
	[isUser] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 19/07/2022 2:45:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[address] [varchar](200) NULL,
	[City] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[ZipCode] [varchar](150) NULL,
	[telephone] [varchar](20) NULL,
	[uID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 19/07/2022 2:45:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[AccountID] [int] NULL,
	[ProductID] [int] NULL,
	[Amount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 19/07/2022 2:45:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cid] [int] NOT NULL,
	[cname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderLine]    Script Date: 19/07/2022 2:45:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderLine](
	[pID] [int] NULL,
	[uID] [int] NULL,
	[quantity] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 19/07/2022 2:45:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [money] NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NULL,
	[sell_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[review]    Script Date: 19/07/2022 2:45:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[review](
	[uName] [varchar](50) NULL,
	[uEmail] [varchar](200) NULL,
	[review] [varchar](1000) NOT NULL,
	[rate] [int] NOT NULL,
	[pID] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([uID], [user], [pass], [isAdmin], [isUser]) VALUES (3, N'minh', N'hello', 1, N'0')
INSERT [dbo].[Account] ([uID], [user], [pass], [isAdmin], [isUser]) VALUES (5, N'germany', N'777', 0, N'1')
INSERT [dbo].[Account] ([uID], [user], [pass], [isAdmin], [isUser]) VALUES (6, N'thedead098', N'0986', 0, N'1')
INSERT [dbo].[Account] ([uID], [user], [pass], [isAdmin], [isUser]) VALUES (10, N'an', N'yuamikami', 0, N'1')
INSERT [dbo].[Account] ([uID], [user], [pass], [isAdmin], [isUser]) VALUES (12, N'trung', N'123', 0, N'1')
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
INSERT [dbo].[Bill] ([FirstName], [LastName], [address], [City], [Country], [ZipCode], [telephone], [uID]) VALUES (N'Ð?c', N'Nguy?n', N'd?i h?c fpt co s? hòa l?c', N'th?ch hòa, th?ch th?t, hà n?i', N'vietnam', N'123456', N'0814494436', 1)
INSERT [dbo].[Bill] ([FirstName], [LastName], [address], [City], [Country], [ZipCode], [telephone], [uID]) VALUES (N'an', N'nguyen', N'd?i h?c fpt co s? hòa l?c', N'th?ch hòa, th?ch th?t, hà n?i', N'Vi?t Nam', N'253654', N'123456789', 10)
INSERT [dbo].[Bill] ([FirstName], [LastName], [address], [City], [Country], [ZipCode], [telephone], [uID]) VALUES (N'an', N'nguyen', N'd?i h?c fpt co s? hòa l?c', N'th?ch hòa, th?ch th?t, hà n?i', N'Vi?t Nam', N'253654', N'123456789', 2)
INSERT [dbo].[Bill] ([FirstName], [LastName], [address], [City], [Country], [ZipCode], [telephone], [uID]) VALUES (N'minh anh', N'pham', N'hanoi', N'hanoi', N'vietnam', N'253654', N'1234567', 4)
INSERT [dbo].[Bill] ([FirstName], [LastName], [address], [City], [Country], [ZipCode], [telephone], [uID]) VALUES (N'trung', N'pham', N'hoa lac', N'hanoi', N'vietnam', N'000', N'123', 12)
GO
INSERT [dbo].[Category] ([cid], [cname]) VALUES (1, N'laptop')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (2, N'  Accessories')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (3, N'smartPhone')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (4, N'Cameras')
GO
INSERT [dbo].[OrderLine] ([pID], [uID], [quantity]) VALUES (5, 10, 1)
INSERT [dbo].[OrderLine] ([pID], [uID], [quantity]) VALUES (4, 10, 1)
INSERT [dbo].[OrderLine] ([pID], [uID], [quantity]) VALUES (1013, 10, 1)
INSERT [dbo].[OrderLine] ([pID], [uID], [quantity]) VALUES (4, 4, 2)
INSERT [dbo].[OrderLine] ([pID], [uID], [quantity]) VALUES (5, 4, 1)
INSERT [dbo].[OrderLine] ([pID], [uID], [quantity]) VALUES (1015, 1, 3)
INSERT [dbo].[OrderLine] ([pID], [uID], [quantity]) VALUES (1016, 1, 2)
INSERT [dbo].[OrderLine] ([pID], [uID], [quantity]) VALUES (1013, 4, 1)
INSERT [dbo].[OrderLine] ([pID], [uID], [quantity]) VALUES (4, 12, 5)
INSERT [dbo].[OrderLine] ([pID], [uID], [quantity]) VALUES (1013, 12, 1)
INSERT [dbo].[OrderLine] ([pID], [uID], [quantity]) VALUES (1011, 10, 1)
INSERT [dbo].[OrderLine] ([pID], [uID], [quantity]) VALUES (4, 10, 5)
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (3, N'macbook air m2', N'./img/product03.png', 1300.0000, NULL, N'Macbook Air 2022 is designed to be thin and light with a weight of 1.24 kg. The entire shell is still kept the sturdy and durable aluminum material, so it still shows the luxury and class. Besides, the soft rounded edges and thin bevels bring a beautiful and extremely neat overall.
', 1, NULL)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (4, N'Galaxy Tab A7 ', N'./img/product04.png', 869.0000, NULL, N'Ultra thin and light design
Galaxy Tab A7 Lite owns the typical design of the Galaxy Tab A7 series. The device uses aluminum material with a monolithic design that makes the device more advanced even though it is only in the cheap mid-range segment.

Although finished from monolithic aluminum, the Galaxy Tab A7 Lite is still impressively thin and light when it weighs only 371 g and is only 8 mm thick, providing comfort when holding for a long time.

With the size only equivalent to a notebook, the Galaxy Tab A7 Lite will be extremely compact so you can carry it around when needed.

Big screen shows more, clearer
Galaxy Tab A7 Lite tablet has an 8.7-inch screen, a high resolution of 800 x 1340 pixels, for good display quality, bright colors, a large screen that will help you view more content, comfortably. drag and drop roof, edit images, text easily.', 3, NULL)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (5, N'jaDareU EH416 RGB ', N'https://storage.googleapis.com/teko-gae.appspot.com/media/image/2021/5/5/20210505_5e9419f9-2440-4c0a-83af-b382486cd629.png', 89.0000, NULL, NULL, 2, NULL)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (7, N'Samsung GALAXY A51', N'./img/product07.png', 217.0000, NULL, N'The device has a thin and light design among the top in the segment, only 7.9 mm. The back with a striking multi-color diamond-cut pattern, comes with 3 stylish color options: Blue Crush Multicolor, White Crush Sparkling, Black Crush Diamond.
The screen of the Galaxy A51 phone promises to bring a great visual experience thanks to the 6.5-inch Infinity-O Infinity-O screen. FullHD + resolution reproduces sharp and clear images. Besides, Super AMOLED panels for deep black, have bright or standard color options according to user preferences.', 3, NULL)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (8, N'Asus TUF Gaming FX506LH', N'./img/product03.png', 869.0000, NULL, N'Owning an Intel Core i5 Comet Lake 10300H chip and a 4 GB GeForce GTX 1650 card from NVIDIA house perfectly handle all needs from the office to heavy graphics or even support you to fight attractive games: CS: GO, Fifa Online 4, GTA V,...
', 1, NULL)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (9, N'Canon EOS 2000D', N'./img/product09.png', 521.0000, NULL, N'The Canon 2000D is a DSLR with versatile imaging capabilities and a useful set of features. It has a new 24.1 MP APS-C sensor with ISO 100-6400 sensitivity. In addition, you can create vivid Full HD movies with this device.
', 4, NULL)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (10, N'GoPro Hero 10 Black', N'./img/GoPro Hero 10 Black.jpg', 526.0000, NULL, N'The GoPro Hero 10 Black is the most powerful GoPro yet, delivering a high-speed experience and optimized operation. Powered by an all-new GP2 processor, Hero 10 Black delivers 5.3K video recording at twice the frame rate, 23MP photo capture, enhanced low-light performance, and HyperSmooth 4.0 video stabilization that surpasses all previous GoPro series. Best of all, Hero 10 connects to the cloud, so all your data will be automatically updated to the cloud as soon as you plug in the charger. Stronger than ever, water resistant up to 10m. Flexible compatibility with Mod accessories to expand the capabilities of your device and your experience.
', 4, NULL)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (11, N'Sony HXR-NX1000', N'./img/Sony HXR-NX1000.jpg', 1717.3900, NULL, N'The Sony HXR-NX100 camcorder is a compact, affordable camcorder that delivers impressive results. The camcorder features a large 1-inch image sensor that ensures sharp and clear images with a large depth of field. The 12x optical zoom lens is great for almost any subject.
', 4, NULL)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (12, N'Blackmagic Pocket Cinema Camera ', N'./img/blackmagic-6k-pro-2-345x345.jpg', 3132.6080, NULL, N'is a compact Super35 camcorder with more features than previous generations. This powerful camcorder uses an HDR touch screen with a high resolution of 6144x3456, an ISO speed of up to 25600. Besides, it also has the ability to stream or export images via USB-C, Built-in ND filter, optional OLED display viewfinder for movie recording. In addition, the camcorder has a large battery that allows extended recording time.
', 4, NULL)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1011, N'iPhone 13 Pro Max 128GB', N'https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-gold-1-600x600.jpg', 1.0990, NULL, NULL, 3, NULL)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1013, N'asus tuf gaming', N'./img/product01.png', 675.0000, NULL, NULL, 1, NULL)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1015, N'oppo x3 pro', N'https://cdn.tgdd.vn/Products/Images/42/232190/oppo-find-x3-pro-xanh-1-org.jpg', 217.3000, NULL, N'If you look at the back of OPPO Find X3 Pro 5G, you will be immediately surprised with the rear camera cluster, shaped like a crater, this design has consumed a lot of time and effort of the manufacturer to bring to you. give users a novel difference.', 3, NULL)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1016, N'pocox3 pro', N'https://www.viettablet.com/images/thumbnails/480/516/detailed/48/xiaomi-poco-x3-pro-128-256gb-chinh-hang.jpg', 500.0000, NULL, N'very good', 3, NULL)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1017, N'Samsung Galaxy A51', N'https://vietmobile.net/wp-content/uploads/2020/11/1473924350.jpeg', 100.0000, NULL, N'The device has a thin and light design among the top in the segment, only 7.9 mm. The back has a striking multi-color diamond cut pattern, accompanied by 3 stylish color options: Blue Crush Multicolor, White Crush Sparkling, Black Crush Diamond.', 3, NULL)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1018, N'Samsung Galaxy A23', N'https://vietmobile.net/wp-content/uploads/2022/06/174044003.jpeg', 101.0000, NULL, NULL, 1, NULL)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1019, N'Laptop Asus TUF Gaming FA506IHR-HN019W', N'https://cdn2.cellphones.com.vn/358x/media/catalog/product/l/a/laptop-asus-tuf-gaming-fa506ihr-hn019w-6.jpg', 695.0000, NULL, NULL, 1, NULL)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1025, N'OPPO A55 ', N'https://cdn.tgdd.vn/Products/Images/42/249944/oppo-a55-4g-1-5.jpg', 200.0000, NULL, N'that is the best product in that price', 3, NULL)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1031, N'yua mikami', N'https://sextop1.lol/images/2022/01/idol-quoc-dan-yua-mikami-sung-suong-ban-nuoc-tung-toe-410x300.jpg', 999.0000, NULL, N'haha', 4, NULL)
SET IDENTITY_INSERT [dbo].[product] OFF
GO
INSERT [dbo].[review] ([uName], [uEmail], [review], [rate], [pID]) VALUES (N'Nguyenminhduc', N'kingofthedeath098@gmail.com', N'dsad', 2, NULL)
INSERT [dbo].[review] ([uName], [uEmail], [review], [rate], [pID]) VALUES (N'hao', N'kingofthedeath098@gmail.com', N'hello world', 3, NULL)
INSERT [dbo].[review] ([uName], [uEmail], [review], [rate], [pID]) VALUES (N'Nguy?n Minh Ð?c', N'kingofthedeath098@gmail.com', N'dámkdsa', 3, NULL)
INSERT [dbo].[review] ([uName], [uEmail], [review], [rate], [pID]) VALUES (N'thien', N'kingofthedeath098@gmail.com', N'hang ngon vc', 2, NULL)
INSERT [dbo].[review] ([uName], [uEmail], [review], [rate], [pID]) VALUES (N'Nguy?n Minh Ð?c', N'kingofthedeath098@gmail.com', N'sda', 3, NULL)
INSERT [dbo].[review] ([uName], [uEmail], [review], [rate], [pID]) VALUES (N'Nguy?n Minh Ð?c', N'kingofthedeath098@gmail.com', N'dsaas', 3, NULL)
INSERT [dbo].[review] ([uName], [uEmail], [review], [rate], [pID]) VALUES (N'duc', N'kingofthedeath098@gmail.com', N'goood', 3, NULL)
INSERT [dbo].[review] ([uName], [uEmail], [review], [rate], [pID]) VALUES (N'Nguy?n Minh Ð?c', N'kingofthedeath098@gmail.com', N'hello wotld', 4, 3)
INSERT [dbo].[review] ([uName], [uEmail], [review], [rate], [pID]) VALUES (N'trung', N'trungpxhs461623@fpt.edu.vn', N'hay vcl', 3, 3)
INSERT [dbo].[review] ([uName], [uEmail], [review], [rate], [pID]) VALUES (N'Nguy?n Minh Ð?c', N'kingofthedeath098@gmail.com', N'good ipad', 4, 4)
INSERT [dbo].[review] ([uName], [uEmail], [review], [rate], [pID]) VALUES (N'duc', N'ducnm098@gmail.com', N'helllo ', 5, 3)
INSERT [dbo].[review] ([uName], [uEmail], [review], [rate], [pID]) VALUES (N'hoag anh', N'kingofthedeath098@gmail.com', N'that''s a good product', 5, 4)
INSERT [dbo].[review] ([uName], [uEmail], [review], [rate], [pID]) VALUES (N'duc', N'kingofthedeath098@gmail.com', N'too expensive', 1, 1015)
INSERT [dbo].[review] ([uName], [uEmail], [review], [rate], [pID]) VALUES (N'Nguy?n Minh Ð?c', N'kingofthedeath098@gmail.com', N'good', 5, 1019)
INSERT [dbo].[review] ([uName], [uEmail], [review], [rate], [pID]) VALUES (N'duc', N'ntthanh76c1dv@hanam.edu.vn', N'this product is not good', 1, 4)
INSERT [dbo].[review] ([uName], [uEmail], [review], [rate], [pID]) VALUES (N'an nguyen', N'anhpmhe161347@fpt.edu.vn', N'not a good phone', 1, 1025)
INSERT [dbo].[review] ([uName], [uEmail], [review], [rate], [pID]) VALUES (N'hoang anh', N'kingofthedeath098@gmail.com', N'goood', 2, 3)
INSERT [dbo].[review] ([uName], [uEmail], [review], [rate], [pID]) VALUES (N'an nguyen', N'kingofthedeath098@gmail.com', N'good', 3, 5)
INSERT [dbo].[review] ([uName], [uEmail], [review], [rate], [pID]) VALUES (N'duc', N'kingofthedeath098@gmail.com', N'tesst program', 3, 3)
INSERT [dbo].[review] ([uName], [uEmail], [review], [rate], [pID]) VALUES (N'Nguy?n Minh Ð?c', N'kingofthedeath098@gmail.com', N'hello', 1, 3)
INSERT [dbo].[review] ([uName], [uEmail], [review], [rate], [pID]) VALUES (N'quang', N'kingofthedeath098@gmail.com', N'hello', 4, 4)
GO
