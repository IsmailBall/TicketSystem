
USE [TicketSystem]
GO

/****** Object:  Table [dbo].[Categories]    Script Date: 29.05.2022 13:17:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 29.05.2022 13:17:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](100) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Surname] [nvarchar](100) NOT NULL,
	[Birthdate] [datetime2](7) NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Address] [nvarchar](500) NULL,
	[PhoneNumber] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 29.05.2022 13:17:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmpoyeeId] [int] IDENTITY(1,1) NOT NULL,
	[EmpUserName] [nvarchar](50) NOT NULL,
	[EmpPassword] [nvarchar](50) NOT NULL,
	[EmpName] [nvarchar](50) NOT NULL,
	[EmpSurname] [nvarchar](50) NOT NULL,
	[EmpAddress] [nvarchar](500) NULL,
	[EmpEmail] [nvarchar](100) NULL,
	[EmpBirthDate] [datetime2](7) NULL,
	[EmpPhoneNumber] [nvarchar](20) NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmpoyeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 29.05.2022 13:17:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[MovieId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[MovieName] [nvarchar](100) NOT NULL,
	[MovieVisionDate] [datetime2](7) NOT NULL,
	[MovieBanner] [varbinary](max) NULL,
	[MovieCategoryId] [int] NOT NULL,
	[MovieIMDB] [int] NULL,
	[MovieReview] [nvarchar](500) NULL,
	[MovieAgeLimit] [int] NULL,
 CONSTRAINT [PK_Movies] PRIMARY KEY CLUSTERED 
(
	[MovieId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Scenes]    Script Date: 29.05.2022 13:17:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Scenes](
	[SceneId] [int] IDENTITY(1,1) NOT NULL,
	[SceneType] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Scenes] PRIMARY KEY CLUSTERED 
(
	[SceneId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seats]    Script Date: 29.05.2022 13:17:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seats](
	[SeatId] [int] IDENTITY(1,1) NOT NULL,
	[SceneId] [int] NOT NULL,
	[SeatNumber] [int] NOT NULL,
	[SessionId] [int] NOT NULL,
 CONSTRAINT [PK_Seats] PRIMARY KEY CLUSTERED 
(
	[SeatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sessions]    Script Date: 29.05.2022 13:17:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sessions](
	[SessionId] [int] IDENTITY(1,1) NOT NULL,
	[MovieId] [int] NOT NULL,
	[SceneId] [int] NOT NULL,
	[SessionTime] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Sessions] PRIMARY KEY CLUSTERED 
(
	[SessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tickets]    Script Date: 29.05.2022 13:17:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tickets](
	[TicketId] [int] IDENTITY(1,1) NOT NULL,
	[SessionId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[Price] [money] NOT NULL,
	[SeatId] [int] NULL,
 CONSTRAINT [PK_Tickets] PRIMARY KEY CLUSTERED 
(
	[TicketId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (1, N'Science Fiction')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (2, N'Romantic')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (3, N'Comedy')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (4, N'Horror')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([CustomerId], [Username], [Password], [Name], [Surname], [Birthdate], [Email], [Address], [PhoneNumber]) VALUES (1, N'Unregistered', N'1234', N'unregistered', N'unregistered', NULL, N'unregister@gmail.com', N'sgdfgd', N'1234')
INSERT [dbo].[Customers] ([CustomerId], [Username], [Password], [Name], [Surname], [Birthdate], [Email], [Address], [PhoneNumber]) VALUES (2, N'ayd2@gmail.com', N'12345', N'Ayd2', N'ayd', CAST(N'2022-05-26T12:28:00.0000000' AS DateTime2), N'ayd2@gmail.com', N'dfjklsdjf', N'121415')
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([EmpoyeeId], [EmpUserName], [EmpPassword], [EmpName], [EmpSurname], [EmpAddress], [EmpEmail], [EmpBirthDate], [EmpPhoneNumber]) VALUES (1, N'Admin', N'Admin', N'Ismail', N'Bal', N'Ankara', N'sncr.@html.com', CAST(N'2022-06-25T22:54:54.9898638' AS DateTime2), N'0534543123')
INSERT [dbo].[Employees] ([EmpoyeeId], [EmpUserName], [EmpPassword], [EmpName], [EmpSurname], [EmpAddress], [EmpEmail], [EmpBirthDate], [EmpPhoneNumber]) VALUES (2, N'aydin', N'12345', N'Aydin', N'Baskara', N'Ankara', N'ayd@gmail.com', CAST(N'2022-05-26T22:54:54.9898638' AS DateTime2), N'5452939768')
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
SET IDENTITY_INSERT [dbo].[Movies] ON 

INSERT [dbo].[Movies] ([MovieId], [EmployeeId], [MovieName], [MovieVisionDate], [MovieBanner], [MovieCategoryId], [MovieIMDB], [MovieReview], [MovieAgeLimit]) VALUES (1, 2, N'Ejderham ve Ben', CAST(N'2022-05-25T10:00:00.0000000' AS DateTime2), NULL, 3, 7, NULL, 7)
INSERT [dbo].[Movies] ([MovieId], [EmployeeId], [MovieName], [MovieVisionDate], [MovieBanner], [MovieCategoryId], [MovieIMDB], [MovieReview], [MovieAgeLimit]) VALUES (3, 2, N'Top Gun: Maverick', CAST(N'2022-05-20T10:00:00.0000000' AS DateTime2), NULL, 2, 7,NULL, 10)
SET IDENTITY_INSERT [dbo].[Movies] OFF
GO
SET IDENTITY_INSERT [dbo].[Scenes] ON 

INSERT [dbo].[Scenes] ([SceneId], [SceneType]) VALUES (1, N'Three-D')
INSERT [dbo].[Scenes] ([SceneId], [SceneType]) VALUES (2, N'Normal')
SET IDENTITY_INSERT [dbo].[Scenes] OFF
GO
SET IDENTITY_INSERT [dbo].[Seats] ON 

INSERT [dbo].[Seats] ([SeatId], [SceneId], [SeatNumber], [SessionId]) VALUES (1, 2, 1, 3)
INSERT [dbo].[Seats] ([SeatId], [SceneId], [SeatNumber], [SessionId]) VALUES (2, 2, 2, 3)
INSERT [dbo].[Seats] ([SeatId], [SceneId], [SeatNumber], [SessionId]) VALUES (3, 1, 11, 1)
SET IDENTITY_INSERT [dbo].[Seats] OFF
GO
SET IDENTITY_INSERT [dbo].[Sessions] ON 

INSERT [dbo].[Sessions] ([SessionId], [MovieId], [SceneId], [SessionTime]) VALUES (1, 1, 1, CAST(N'2022-05-27T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Sessions] ([SessionId], [MovieId], [SceneId], [SessionTime]) VALUES (2, 1, 1, CAST(N'2022-05-27T12:00:00.0000000' AS DateTime2))
INSERT [dbo].[Sessions] ([SessionId], [MovieId], [SceneId], [SessionTime]) VALUES (5, 1, 2, CAST(N'2022-05-27T13:00:00.0000000' AS DateTime2))
INSERT [dbo].[Sessions] ([SessionId], [MovieId], [SceneId], [SessionTime]) VALUES (6, 1, 2, CAST(N'2022-05-28T10:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Sessions] OFF
GO
SET IDENTITY_INSERT [dbo].[Tickets] ON 

INSERT [dbo].[Tickets] ([TicketId], [SessionId], [CustomerId], [Price], [SeatId]) VALUES (9, 1, 1, 50.0000, 3)
INSERT [dbo].[Tickets] ([TicketId], [SessionId], [CustomerId], [Price], [SeatId]) VALUES (10, 6, 1, 50.0000, 2)
SET IDENTITY_INSERT [dbo].[Tickets] OFF
GO
/****** Object:  Index [IX_Movies_EmployeeId]    Script Date: 29.05.2022 13:17:49 ******/
CREATE NONCLUSTERED INDEX [IX_Movies_EmployeeId] ON [dbo].[Movies]
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Movies_MovieCategoryId]    Script Date: 29.05.2022 13:17:49 ******/
CREATE NONCLUSTERED INDEX [IX_Movies_MovieCategoryId] ON [dbo].[Movies]
(
	[MovieCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Seats_SceneId]    Script Date: 29.05.2022 13:17:49 ******/
CREATE NONCLUSTERED INDEX [IX_Seats_SceneId] ON [dbo].[Seats]
(
	[SceneId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Seats_SessionId_SeatNumber]    Script Date: 29.05.2022 13:17:49 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Seats_SessionId_SeatNumber] ON [dbo].[Seats]
(
	[SessionId] ASC,
	[SeatNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Sessions_MovieId]    Script Date: 29.05.2022 13:17:49 ******/
CREATE NONCLUSTERED INDEX [IX_Sessions_MovieId] ON [dbo].[Sessions]
(
	[MovieId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Sessions_SceneId]    Script Date: 29.05.2022 13:17:49 ******/
CREATE NONCLUSTERED INDEX [IX_Sessions_SceneId] ON [dbo].[Sessions]
(
	[SceneId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tickets_CustomerId]    Script Date: 29.05.2022 13:17:49 ******/
CREATE NONCLUSTERED INDEX [IX_Tickets_CustomerId] ON [dbo].[Tickets]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tickets_SessionId]    Script Date: 29.05.2022 13:17:49 ******/
CREATE NONCLUSTERED INDEX [IX_Tickets_SessionId] ON [dbo].[Tickets]
(
	[SessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Movies]  WITH CHECK ADD  CONSTRAINT [FK_Movies_Categories_MovieCategoryId] FOREIGN KEY([MovieCategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
GO
ALTER TABLE [dbo].[Movies] CHECK CONSTRAINT [FK_Movies_Categories_MovieCategoryId]
GO
ALTER TABLE [dbo].[Movies]  WITH CHECK ADD  CONSTRAINT [FK_Movies_Employees_EmployeeId] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employees] ([EmpoyeeId])
GO
ALTER TABLE [dbo].[Movies] CHECK CONSTRAINT [FK_Movies_Employees_EmployeeId]
GO
ALTER TABLE [dbo].[Seats]  WITH CHECK ADD  CONSTRAINT [FK_Seats_Scenes_SceneId] FOREIGN KEY([SceneId])
REFERENCES [dbo].[Scenes] ([SceneId])
GO
ALTER TABLE [dbo].[Seats] CHECK CONSTRAINT [FK_Seats_Scenes_SceneId]
GO
ALTER TABLE [dbo].[Sessions]  WITH CHECK ADD  CONSTRAINT [FK_Sessions_Movies_MovieId] FOREIGN KEY([MovieId])
REFERENCES [dbo].[Movies] ([MovieId])
GO
ALTER TABLE [dbo].[Sessions] CHECK CONSTRAINT [FK_Sessions_Movies_MovieId]
GO
ALTER TABLE [dbo].[Sessions]  WITH CHECK ADD  CONSTRAINT [FK_Sessions_Scenes_SceneId] FOREIGN KEY([SceneId])
REFERENCES [dbo].[Scenes] ([SceneId])
GO
ALTER TABLE [dbo].[Sessions] CHECK CONSTRAINT [FK_Sessions_Scenes_SceneId]
GO
ALTER TABLE [dbo].[Tickets]  WITH CHECK ADD  CONSTRAINT [FK_Tickets_Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([CustomerId])
GO
ALTER TABLE [dbo].[Tickets] CHECK CONSTRAINT [FK_Tickets_Customers_CustomerId]
GO
ALTER TABLE [dbo].[Tickets]  WITH CHECK ADD  CONSTRAINT [FK_Tickets_Sessions_SessionId] FOREIGN KEY([SessionId])
REFERENCES [dbo].[Sessions] ([SessionId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tickets] CHECK CONSTRAINT [FK_Tickets_Sessions_SessionId]
GO
USE [master]
GO
ALTER DATABASE [TicketSystem] SET  READ_WRITE 
GO
