USE [Ebook]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 5/22/2024 2:02:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](255) NULL,
	[author] [nvarchar](255) NULL,
	[Category] [nvarchar](255) NULL,
	[page] [int] NULL,
	[image] [nvarchar](255) NULL,
	[description] [nvarchar](1000) NULL,
	[linkbook] [nvarchar](255) NULL,
	[user_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 5/22/2024 2:02:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[id] [int] NOT NULL,
	[name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 5/22/2024 2:02:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[username] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[password] [nvarchar](255) NULL,
	[role_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Book] ON 

INSERT [dbo].[Book] ([id], [title], [author], [Category], [page], [image], [description], [linkbook], [user_id]) VALUES (1, N'Đời ngắn đừng ngủ dài', N'Robin Sharma', N'Self-help', 122, N'doi.jpg', N'Sách bao gồm 100 mẩu truyện ngắn, mỗi câu chuyện lại là một bài học cuộc sống ngắn gọn, xúc tích và vô cùng ý nghĩa. Mỗi câu chuyện chia sẻ một góc nhìn khác nhau, song tựu chung lại, sách gồm 3 chủ đề chính: Gia đình – Sức khỏe – Giá trị bản thân. Đó cũng là 3 thứ quan trọng nhất trong cuộc đời mỗi con người.', N'https://nguyennamthang.com/wp-content/uploads/2022/04/EbookHay.net-Doi-ngan-dung-ngu-dai.pdf', 2)
INSERT [dbo].[Book] ([id], [title], [author], [Category], [page], [image], [description], [linkbook], [user_id]) VALUES (2, N'Gian Nan Chồng Chất Gian Nan', N'Ben Horowitz', N'Self-help', 232, N'Ebook-Gian-nan-chong-chat-gian-nan.jpg', N'Trong biển khơi cuộc đời, “Gian Nan Chồng Chất Gian Nan” là một bộ lưu giữ hùng hồn về kinh doanh của Ben Horowitz, một hành trình doanh nhân đầy nhiệt huyết và mạo hiểm. Từ trang sách, những cánh cửa vào thế giới kỳ diệu của doanh nghiệp khởi nghiệp được mở ra rộng lớn, mời gọi bạn tham gia cuộc phiêu lưu táo bạo và thách thức mọi giới hạn.', N'https://tiemsach.org/reader/?bookPath=https%3A%2F%2Ftiemsach.org%2Febook%2FGian%20Nan%20Chong%20Chat%20Gian%20Nan%20-%20Ben%20Horowitz.epub#epubcfi(/6/116[page0060.xhtml]!/4/2/2/1:0)', 2)
INSERT [dbo].[Book] ([id], [title], [author], [Category], [page], [image], [description], [linkbook], [user_id]) VALUES (3, N'Đắc Nhân Tâm', N'Dale Carnegie', N'Self-help', 300, N'Ebook-Dac-nhan-tam.jpg', N'Cuốn sách này không chỉ đơn thuần là một cuốn sách, mà là một kho tàng tri thức về cách xây dựng mối quan hệ, thấu hiểu tâm lý con người và thành công trong cuộc sống. Với việc chuyển ngữ bởi Nguyễn Hiến Lê, “Đắc Nhân Tâm” đã trở thành một biểu tượng trong thế giới sách tự lực và phát triển cá nhân.', N'https://tiemsach.org/reader/?bookPath=https%3A%2F%2Ftiemsach.org%2Febook%2FDac%20Nhan%20Tam%20-%20Dale%20Carnegie.epub#epubcfi(/6/72[id91]!/4/2/2[UGI04-a3dc3424d71c4af3bdaac206eb148bc5]/2[calibre_pb_0]/1:0)', 2)
INSERT [dbo].[Book] ([id], [title], [author], [Category], [page], [image], [description], [linkbook], [user_id]) VALUES (4, N'Anh Có Thích Nước Mỹ Không', N'Tân Di Ổ', N'Tiểu thuyết', 150, N'nuocmi.png', N'Cuốn tiểu thuyết tình cảm “Anh Có Thích Nước Mỹ Không” của nhà văn Tân Di Ổ không chỉ là một câu chuyện tình yêu đơn thuần, mà là hành trình đầy cảm xúc và hấp dẫn về sự kiên trì và lòng dũng cảm. Được chia thành ba phần, mỗi giai đoạn trong cuộc đời của Trịnh Vy và Lâm Tịnh là một bức tranh sống động về tình yêu, mất mát, và hạnh phúc.', N'https://tiemsach.org/reader/?bookPath=https%3A%2F%2Ftiemsach.org%2Febook%2FAnh%20Co%20Thich%20Nuoc%20My%20Khong%20-%20Tan%20Di%20O.epub#epubcfi(/6/2[titlepage]!/4/1:0)', 2)
INSERT [dbo].[Book] ([id], [title], [author], [Category], [page], [image], [description], [linkbook], [user_id]) VALUES (5, N'Tết ở làng Địa Ngục', N'Thảo Trang', N'Kinh dị', 130, N'Tet-o-lang-dia-nguc.jpg', N'Trong cuốn sách Tết ở làng Địa Ngục, tác giả Thảo Trang đưa chúng ta vào một thế giới huyền bí nằm sâu trong một ngôi làng xa xôi trên đỉnh ngọn núi hoang vu. Trong không khí của ngày Tết, làng Địa Ngục đón chào một lễ hội đầy kinh hãi, đánh dấu sự bắt đầu của một chuỗi bi kịch đen tối.', N'https://tiemsach.org/reader/?bookPath=https%3A%2F%2Ftiemsach.org%2Febook%2FTet%20o%20lang%20Dia%20Nguc%20-%20Thao%20Trang.epub', 1)
INSERT [dbo].[Book] ([id], [title], [author], [Category], [page], [image], [description], [linkbook], [user_id]) VALUES (6, N'Chim Cổ Đỏ', N'Author 3', N'Trinh thám', 218, N'cbx91tlm.png', N'Cuốn tiểu thuyết kịch tính “Chim Cổ Đỏ” của nhà văn Jo Nesbo không chỉ là một cuộc hành trình đến tội ác và bí ẩn mà còn là một vẻ nhìn sâu sắc vào tâm lý con người, qua chân dung của thanh tra cảnh sát tài năng – Harry Hole.“Chim Cổ Đỏ” không chỉ thu hút độc giả bởi cốt truyện ly kỳ và hấp dẫn mà còn bởi sức mạnh của thông điệp mà Nesbo truyền tải qua từng trang sách. Cuốn sách là một lời nhắc nhở rằng đằng sau vẻ bề ngoài, cuộc sống luôn kín chứa những bí ẩn kinh hoàng, và kẻ ác có thể ẩn nấp ở bất cứ nơi đâu, thậm chí là trong những người mà ta tin tưởng nhất.', N'https://tiemsach.org/reader/?bookPath=https%3A%2F%2Ftiemsach.org%2Febook%2FChim%20Co%20Do%20-%20Jo%20Nesbo.epub#epubcfi(/6/2[titlepage.xhtml]!/4/1:0)', 2)
INSERT [dbo].[Book] ([id], [title], [author], [Category], [page], [image], [description], [linkbook], [user_id]) VALUES (11, N'Dao Giau Vang', N'rock johnson', N'adventure', 350, N'Screenshot 2023-12-13 140143.png', N'dao giau vang ', N'https://tiemsach.org/reader/?bookPath=https%3A%2F%2Ftiemsach.org%2Febook%2FGian%20Nan%20Chong%20Chat%20Gian%20Nan%20-%20Ben%20Horowitz.epub#epubcfi(/6/116[page0060.xhtml]!/4/2/2/1:0)', 2)
SET IDENTITY_INSERT [dbo].[Book] OFF
GO
INSERT [dbo].[Role] ([id], [name]) VALUES (1, N'Reader')
INSERT [dbo].[Role] ([id], [name]) VALUES (2, N'Admin')
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id], [name], [username], [email], [password], [role_id]) VALUES (1, N'John Doe', N'johndoe', N'johndoe@gmail.com', N'123', 1)
INSERT [dbo].[Users] ([id], [name], [username], [email], [password], [role_id]) VALUES (2, N'Jane Smith', N'janesmith', N'janesmith@gmail.com', N'456', 2)
INSERT [dbo].[Users] ([id], [name], [username], [email], [password], [role_id]) VALUES (3, N'Peter123', N'Karl Peter', N'KarlPeter@gmail.com', N'123', 2)
INSERT [dbo].[Users] ([id], [name], [username], [email], [password], [role_id]) VALUES (4, N'thanh dung', N'dung', N'dung123@gmail.com', N'123', 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([id])
GO
