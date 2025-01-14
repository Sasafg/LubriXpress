USE [CCIH_DB]
GO
/****** Object:  Table [dbo].[ActionLog]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActionLog](
	[LogId] [bigint] NULL,
	[DateAndTime] [datetime] NULL,
	[Message] [varchar](5000) NULL,
	[Origin] [varchar](5000) NULL,
	[UserId] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[CourseId] [bigint] IDENTITY(1,1) NOT NULL,
	[CourseCatalogId] [bigint] NULL,
	[DurationWeeks] [int] NULL,
	[Description] [varchar](250) NULL,
	[ModalityId] [bigint] NULL,
	[LevelCourseId] [bigint] NULL,
	[Image] [varchar](100) NULL,
	[Statusid] [bigint] NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseCatalog]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseCatalog](
	[CourseCatalogId] [bigint] IDENTITY(1,1) NOT NULL,
	[CourseName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CourseCatalog] PRIMARY KEY CLUSTERED 
(
	[CourseCatalogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeId] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NULL,
	[Salary] [bigint] NULL,
	[HireDate] [datetime] NULL,
	[StatusId] [bigint] NULL,
 CONSTRAINT [PK_EmployeeId] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ErrorLog]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ErrorLog](
	[LogId] [bigint] IDENTITY(1,1) NOT NULL,
	[DateAndTime] [datetime] NULL,
	[Message] [varchar](5000) NULL,
	[Origin] [varchar](5000) NULL,
	[UserId] [bigint] NULL,
 CONSTRAINT [PK_ErrorLog] PRIMARY KEY CLUSTERED 
(
	[LogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[GroupId] [bigint] IDENTITY(1,1) NOT NULL,
	[GroupName] [varchar](50) NULL,
	[StudentsNumber] [int] NULL,
	[MaxStudentNumber] [int] NULL,
	[CourseId] [bigint] NULL,
	[ScheduleId] [bigint] NULL,
	[TeacherId] [bigint] NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[StatusId] [bigint] NULL,
 CONSTRAINT [PK_GroupId] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupsUsers]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupsUsers](
	[UserId] [bigint] NOT NULL,
	[GroupId] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Identifications]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Identifications](
	[IdentificationsId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](20) NULL,
 CONSTRAINT [PK_IdentificationsId] PRIMARY KEY CLUSTERED 
(
	[IdentificationsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IncomeOutcome]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IncomeOutcome](
	[IncomeOutcomeId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](20) NULL,
 CONSTRAINT [PK_IncomeOutcomeId] PRIMARY KEY CLUSTERED 
(
	[IncomeOutcomeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LevelCourse]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LevelCourse](
	[LevelCourseId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_LevelCourseId] PRIMARY KEY CLUSTERED 
(
	[LevelCourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modality]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modality](
	[ModalityId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Modality] PRIMARY KEY CLUSTERED 
(
	[ModalityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Motive]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Motive](
	[id_Motive] [bigint] NOT NULL,
	[Name] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Motive] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Office_Log]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Office_Log](
	[Office_SH_ID] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NULL,
	[EntryTime] [datetime] NULL,
	[ExitTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Office_SH_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[PaymentsId] [bigint] IDENTITY(1,1) NOT NULL,
	[PersonalID] [varchar](20) NULL,
	[CustomName] [varchar](20) NULL,
	[CreationDate] [datetime] NULL,
	[Amount] [decimal](10, 2) NOT NULL,
	[PaymentTypeId] [bigint] NULL,
	[IncomeOutcomeId] [bigint] NULL,
	[id_Motive] [bigint] NULL,
	[Comentario] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentType]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentType](
	[PaymentTypeId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](20) NULL,
 CONSTRAINT [PK_PaymentTypeId] PRIMARY KEY CLUSTERED 
(
	[PaymentTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PreRegistration]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PreRegistration](
	[PreRegistrationId] [bigint] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](50) NULL,
	[Phone] [varchar](15) NULL,
	[Name] [varchar](15) NULL,
	[LastName] [varchar](15) NULL,
	[SecLastName] [varchar](15) NULL,
	[CourseId] [bigint] NULL,
	[ModalityId] [bigint] NULL,
	[LevelCourseId] [bigint] NULL,
	[StatusId] [bigint] NULL,
	[DatePreRegistration] [datetime] NULL,
 CONSTRAINT [PK_PreRegistrationId] PRIMARY KEY CLUSTERED 
(
	[PreRegistrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registration]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registration](
	[RegistrationId] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[CourseId] [bigint] NOT NULL,
	[ModalityId] [bigint] NOT NULL,
	[LevelCourseId] [bigint] NOT NULL,
	[ScheduleId] [bigint] NOT NULL,
	[Amount] [decimal](10, 2) NOT NULL,
	[RegistrationDate] [datetime] NOT NULL,
	[PaymentDay] [int] NOT NULL,
	[Comments] [varchar](500) NULL,
	[StatusId] [bigint] NULL,
 CONSTRAINT [PK_RegistrationId] PRIMARY KEY CLUSTERED 
(
	[RegistrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol](
	[IdRol] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](20) NULL,
	[UserIDModification] [bigint] NULL,
	[CreationDate] [datetime] NULL,
	[ModificationDate] [datetime] NULL,
 CONSTRAINT [PK_IdRol] PRIMARY KEY CLUSTERED 
(
	[IdRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Schedules]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedules](
	[ScheduleId] [bigint] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NULL,
 CONSTRAINT [PK_ScheduleId] PRIMARY KEY CLUSTERED 
(
	[ScheduleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[StatusId] [bigint] NOT NULL,
	[Name] [varchar](20) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [bigint] IDENTITY(1,1) NOT NULL,
	[PersonalID] [varchar](20) NULL,
	[Name] [varchar](15) NULL,
	[LastName] [varchar](15) NULL,
	[SecLastName] [varchar](15) NULL,
	[Email] [varchar](50) NULL,
	[BirthDate] [datetime] NULL,
	[Address] [varchar](100) NULL,
	[UserName] [varchar](15) NULL,
	[Phone] [varchar](15) NULL,
	[PwUsuario] [varchar](50) NULL,
	[IdRol] [bigint] NULL,
	[IdentificationsId] [bigint] NULL,
	[StatusId] [bigint] NULL,
	[CreationDate] [datetime] NULL,
	[LastActivity] [datetime] NULL,
 CONSTRAINT [PK_UserId] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UK_PersonalID] UNIQUE NONCLUSTERED 
(
	[PersonalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_PersonalID] UNIQUE NONCLUSTERED 
(
	[PersonalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_LastActivity]  DEFAULT ((0)) FOR [LastActivity]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Course] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([CourseId])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Course]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_CourseCatalog] FOREIGN KEY([CourseCatalogId])
REFERENCES [dbo].[CourseCatalog] ([CourseCatalogId])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_CourseCatalog]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_LevelCourse] FOREIGN KEY([LevelCourseId])
REFERENCES [dbo].[LevelCourse] ([LevelCourseId])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_LevelCourse]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Modality] FOREIGN KEY([ModalityId])
REFERENCES [dbo].[Modality] ([ModalityId])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Modality]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Status] FOREIGN KEY([Statusid])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Status]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Status] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Status]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Users]
GO
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD  CONSTRAINT [FK_Groups_Course] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([CourseId])
GO
ALTER TABLE [dbo].[Groups] CHECK CONSTRAINT [FK_Groups_Course]
GO
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD  CONSTRAINT [FK_Groups_Employee] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Employee] ([EmployeeId])
GO
ALTER TABLE [dbo].[Groups] CHECK CONSTRAINT [FK_Groups_Employee]
GO
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD  CONSTRAINT [FK_Groups_Schedules] FOREIGN KEY([ScheduleId])
REFERENCES [dbo].[Schedules] ([ScheduleId])
GO
ALTER TABLE [dbo].[Groups] CHECK CONSTRAINT [FK_Groups_Schedules]
GO
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD  CONSTRAINT [FK_Groups_Status] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[Groups] CHECK CONSTRAINT [FK_Groups_Status]
GO
ALTER TABLE [dbo].[GroupsUsers]  WITH CHECK ADD  CONSTRAINT [FK_GroupsUsers_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[GroupsUsers] CHECK CONSTRAINT [FK_GroupsUsers_Users]
GO
ALTER TABLE [dbo].[GroupsUsers]  WITH CHECK ADD  CONSTRAINT [FK_GroupsUsers_Users_Groups] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Groups] ([GroupId])
GO
ALTER TABLE [dbo].[GroupsUsers] CHECK CONSTRAINT [FK_GroupsUsers_Users_Groups]
GO
ALTER TABLE [dbo].[Office_Log]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[PreRegistration]  WITH CHECK ADD  CONSTRAINT [FK_PreRegistration_Course] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([CourseId])
GO
ALTER TABLE [dbo].[PreRegistration] CHECK CONSTRAINT [FK_PreRegistration_Course]
GO
ALTER TABLE [dbo].[PreRegistration]  WITH CHECK ADD  CONSTRAINT [FK_PreRegistration_LevelCourse] FOREIGN KEY([LevelCourseId])
REFERENCES [dbo].[LevelCourse] ([LevelCourseId])
GO
ALTER TABLE [dbo].[PreRegistration] CHECK CONSTRAINT [FK_PreRegistration_LevelCourse]
GO
ALTER TABLE [dbo].[PreRegistration]  WITH CHECK ADD  CONSTRAINT [FK_PreRegistration_Modality] FOREIGN KEY([ModalityId])
REFERENCES [dbo].[Modality] ([ModalityId])
GO
ALTER TABLE [dbo].[PreRegistration] CHECK CONSTRAINT [FK_PreRegistration_Modality]
GO
ALTER TABLE [dbo].[PreRegistration]  WITH CHECK ADD  CONSTRAINT [FK_PreRegistration_Status] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[PreRegistration] CHECK CONSTRAINT [FK_PreRegistration_Status]
GO
ALTER TABLE [dbo].[Registration]  WITH CHECK ADD  CONSTRAINT [FK_Registration_Course] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([CourseId])
GO
ALTER TABLE [dbo].[Registration] CHECK CONSTRAINT [FK_Registration_Course]
GO
ALTER TABLE [dbo].[Registration]  WITH CHECK ADD  CONSTRAINT [FK_Registration_LevelCourse] FOREIGN KEY([LevelCourseId])
REFERENCES [dbo].[LevelCourse] ([LevelCourseId])
GO
ALTER TABLE [dbo].[Registration] CHECK CONSTRAINT [FK_Registration_LevelCourse]
GO
ALTER TABLE [dbo].[Registration]  WITH CHECK ADD  CONSTRAINT [FK_Registration_Modality] FOREIGN KEY([ModalityId])
REFERENCES [dbo].[Modality] ([ModalityId])
GO
ALTER TABLE [dbo].[Registration] CHECK CONSTRAINT [FK_Registration_Modality]
GO
ALTER TABLE [dbo].[Registration]  WITH CHECK ADD  CONSTRAINT [FK_Registration_Schedules] FOREIGN KEY([ScheduleId])
REFERENCES [dbo].[Schedules] ([ScheduleId])
GO
ALTER TABLE [dbo].[Registration] CHECK CONSTRAINT [FK_Registration_Schedules]
GO
ALTER TABLE [dbo].[Registration]  WITH CHECK ADD  CONSTRAINT [FK_Registration_Status] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[Registration] CHECK CONSTRAINT [FK_Registration_Status]
GO
ALTER TABLE [dbo].[Registration]  WITH CHECK ADD  CONSTRAINT [FK_Registration_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Registration] CHECK CONSTRAINT [FK_Registration_Users]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Identifications] FOREIGN KEY([IdentificationsId])
REFERENCES [dbo].[Identifications] ([IdentificationsId])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Identifications]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Rol] FOREIGN KEY([IdRol])
REFERENCES [dbo].[Rol] ([IdRol])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Rol]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Status] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Status]
GO
/****** Object:  StoredProcedure [dbo].[AssignGroupToStudent]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[AssignGroupToStudent]
	@UserId BIGINT,
	@GroupId BIGINT
AS
BEGIN

	DECLARE @STUDENT INT;
	
	
	SELECT @STUDENT = IdRol	FROM Users	WHERE UserId = @UserId
				

	IF @STUDENT = 3
	BEGIN
		INSERT INTO [dbo].[GroupsUsers]
           ([UserId]
           ,[GroupId])
		 VALUES
			   (@UserId,
			   @GroupId)
		
	END
	ELSE
	BEGIN
		RETURN 0;
	END
	
END

GO
/****** Object:  StoredProcedure [dbo].[AssignTeacherToGroup]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[AssignTeacherToGroup]
	@TeacherId BIGINT,
	@GroupId BIGINT
AS
BEGIN

	UPDATE [dbo].[Groups]
	SET 
		[TeacherId] = @TeacherId
	WHERE GroupId = @GroupId
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[CreateCourse]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE     PROCEDURE [dbo].[CreateCourse]
	@CourseCatalogId bigINT,
	@DurationWeeks INT,
	@Description varchar(250),
	@ModalityId BIGINT,
	@LevelCourseId BIGINT,
	@Image varchar(100),
    @StatusId BIGINT
AS
BEGIN

	INSERT INTO [dbo].[Course]
           ([CourseCatalogId]
           ,[DurationWeeks]
           ,[Description]
           ,[ModalityId]
           ,[LevelCourseId]
           ,[Image]
           ,[Statusid])
     VALUES
           (
		   @CourseCatalogId,
           @DurationWeeks,
           @Description,
           @ModalityId,
           @LevelCourseId,
           @Image,
           @StatusId
		   )

END

GO
/****** Object:  StoredProcedure [dbo].[CreateCourseCatalog]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateCourseCatalog]
	@CourseName varchar(50)
AS
BEGIN

	INSERT INTO [dbo].[CourseCatalog]
           ([CourseName])
     VALUES
           (
		   @CourseName
		   )

END
GO
/****** Object:  StoredProcedure [dbo].[CreateGroup]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[CreateGroup]
	@StudentsNumber INT,
	@MaxStudentNumber INT,
	@CourseId BIGINT,
	@ScheduleId BIGINT,
	@TeacherId BIGINT,
	@StartDate Date,
    @EndDate Date,
	@StatusId BIGINT
AS
BEGIN

	DECLARE @GroupName varchar(50)
	DECLARE @NumeroAcumulativo INT

    -- Obtener las primeras letras de las tablas Modality y Nivel
    DECLARE @ModalityFirstLetter CHAR(1)
    SELECT @ModalityFirstLetter = SUBSTRING(M.Name, 1, 1) 
	FROM Modality AS M
	INNER JOIN Course AS C ON C.ModalityId = M.ModalityId
	AND C.CourseId = @CourseId;


	DECLARE @NivelFirstLetter CHAR(1)
    SELECT @NivelFirstLetter = SUBSTRING(LC.Name, 1, 1) 
	FROM LevelCourse AS LC
	INNER JOIN Course AS C ON C.LevelCourseId = LC.LevelCourseId
	AND C.CourseId = @CourseId;
	

    -- Obtener los primeros 3 caracteres de la tabla Schedule
    DECLARE @SchedulePrefix VARCHAR(5)
    SELECT @SchedulePrefix = SUBSTRING(dbo.Schedules.Description, 1, 5) FROM Schedules WHERE ScheduleId = @ScheduleId

    -- Obtener el número acumulativo
     
    SELECT @NumeroAcumulativo = COALESCE(COUNT(GroupName), 0) + 1
	FROM Groups
	WHERE LEFT(ISNULL(GroupName, 'EMPTY'), 8) = @ModalityFirstLetter + @NivelFirstLetter + '/' + @SchedulePrefix;
	

    -- Construir el GroupName
    SET @GroupName = @ModalityFirstLetter + @NivelFirstLetter + '/' + @SchedulePrefix + '/' + CONVERT(VARCHAR(10), @NumeroAcumulativo);



	INSERT INTO [dbo].[Groups]
           ([GroupName]
           ,[StudentsNumber]
           ,[MaxStudentNumber]
           ,[CourseId]
           ,[ScheduleId]
           ,[TeacherId]
           ,[StartDate]
           ,[EndDate]
           ,[StatusId])
     VALUES
           (
		    @GroupName,
            @StudentsNumber,
            @MaxStudentNumber,
            @CourseId,
            @ScheduleId,
            @TeacherId,
            @StartDate,
            @EndDate,
            @StatusId
		   )
END

GO
/****** Object:  StoredProcedure [dbo].[CreatePayment]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------- SP PARA CREAR-----------------------
CREATE   PROCEDURE [dbo].[CreatePayment]
	@PersonalID varchar(20),
	@CustomName varchar(20),
	@CreationDate datetime,
	@Amount decimal(10, 2),
	@PaymentTypeId bigint,
	@IncomeOutcomeId bigint,
	@id_Motive bigint,
	@Comentario varchar(100) 
	
AS
BEGIN
	INSERT INTO [dbo].[Payments]
		(
			[PersonalID],
			[CustomName],
			[CreationDate],
			[Amount],
			[PaymentTypeId],
			[IncomeOutcomeId],
			[id_Motive], 
			[Comentario]
			
		)
	VALUES
		(
			@PersonalID,
			@CustomName,
		    @CreationDate, 
			@Amount,
			@PaymentTypeId,
			@IncomeOutcomeId,
			@id_Motive,
			@Comentario 
			
		);
END
GO
/****** Object:  StoredProcedure [dbo].[CreatePreRegistration]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreatePreRegistration]
			@Email varchar(50),
			@Phone varchar(15),
			@Name varchar(15),
			@LastName varchar(15),
			@SecLastName varchar(15),
			@CourseId bigint,
			@ModalityId bigint,
			@LevelId bigint,
			@StatusId bigint
AS
BEGIN
	INSERT INTO PreRegistration
           ([Email]
           ,[Phone]
           ,[Name]
           ,[LastName]
           ,[SecLastName]
           ,[CourseId]
           ,[ModalityId]
           ,[LevelCourseId]
           ,[StatusId]
           ,[DatePreRegistration])
     VALUES(
           	@Email,
			@Phone,
			@Name,
			@LastName,
			@SecLastName,
			@CourseId,
			@ModalityId,
			@LevelId,
			@StatusId,
			GETDATE())
END
GO
/****** Object:  StoredProcedure [dbo].[CreateRegistration]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateRegistration]
		   @PersonalId varchar(20),
           @CourseId bigint,
           @ModalityId bigint,
           @LevelId bigint,
           @ScheduleId bigint,
           @Amount decimal(10,2),
           @RegistrationDate datetime,
           @PaymentDay int,
           @Comments varchar(500),
           @StatusId bigint
AS
BEGIN
	INSERT INTO [dbo].[Registration]
           ([UserId]
           ,[CourseId]
           ,[ModalityId]
           ,[LevelCourseId]
           ,[ScheduleId]
           ,[Amount]
           ,[RegistrationDate]
           ,[PaymentDay]
           ,[Comments]
           ,[StatusId])
     VALUES
           (
		   ( SELECT UserId
					FROM Users
					WHERE PersonalID = @PersonalId),
           @CourseId,
           @ModalityId,
           @LevelId,
           @ScheduleId,
           @Amount,
           @RegistrationDate,
           @PaymentDay,
           @Comments,
           @StatusId
		   );
END
GO
/****** Object:  StoredProcedure [dbo].[CreateRol]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateRol]
	@Name VARCHAR(20),
	@UserId BIGINT
AS
BEGIN
	INSERT INTO [dbo].[Rol]
           ([Name]
           ,[UserIDModification]
           ,[CreationDate]
           ,[ModificationDate])
     VALUES
           (@Name
           ,@UserId
           ,GETDATE()
           ,GETDATE())

END;
GO
/****** Object:  StoredProcedure [dbo].[CreateSchedules]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE     PROCEDURE [dbo].[CreateSchedules]
	@Description varchar(50)
AS
BEGIN
	INSERT INTO [dbo].[Schedules]
           ([Description])
     VALUES
           (@Description)
END
GO
/****** Object:  StoredProcedure [dbo].[CreateUser]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[CreateUser]
			@PersonalID varchar(20),
			@Name varchar(15),
			@LastName varchar(15),
			@SecLastName varchar(15),
			@Email varchar(50),
			@BirthDate datetime,
			@Address varchar(100),
			@UserName varchar(15),
			@Phone varchar(15),
			@PwUsuario varchar(50),
			@IdRol bigint,
			@IdentificationsId bigint,
			@StatusId bigint
AS
BEGIN
	
		INSERT INTO [dbo].[Users]
           (
			[PersonalID],
           [Name],
           [LastName],
           [SecLastName],
           [Email],
           [BirthDate],
           [Address],
           [UserName],
           [Phone],
           [PwUsuario],
           [IdRol],
		   [IdentificationsId],
           [StatusId],
           [CreationDate]
			)
     VALUES
           (
			@PersonalID,
			@Name,
			@LastName,
			@SecLastName,
			@Email,
			@BirthDate,
			@Address,
			@UserName,
			@Phone,
			@PwUsuario,
			@IdRol,
			@IdentificationsId,
			@StatusId,
			GETDATE()
			)
END
GO
/****** Object:  StoredProcedure [dbo].[DeletePayment]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



------------- ELIMINAR SOLO DEL FRONT------------------------

CREATE   PROCEDURE [dbo].[DeletePayment]
	@PaymentsId BIGINT

AS
BEGIN
DELETE FROM [dbo].[Payments]
	WHERE [PaymentsId] = @PaymentsId;

END;
GO
/****** Object:  StoredProcedure [dbo].[DeleteRol]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteRol]
	@IdRol BIGINT

AS
BEGIN
DELETE FROM [dbo].[Rol]
	WHERE [IdRol] = @IdRol;

END;
GO
/****** Object:  StoredProcedure [dbo].[DeleteSchedules]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create   PROCEDURE [dbo].[DeleteSchedules]
	@ScheduleId bigint 
AS
BEGIN
	
		DELETE FROM [dbo].[Schedules]
		WHERE ScheduleId = @ScheduleId

END
GO
/****** Object:  StoredProcedure [dbo].[DeleteUser]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteUser]
	@UserId BIGINT

AS
BEGIN
UPDATE Users
SET StatusId = 2
WHERE UserId = @UserId;
	

END;
GO
/****** Object:  StoredProcedure [dbo].[DisableGroups]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[DisableGroups]
	@GroupId bigint
AS
BEGIN
UPDATE [dbo].[Groups]
	SET 
		[StatusId] = 2
    WHERE GroupId = @GroupId
END

GO
/****** Object:  StoredProcedure [dbo].[EditCourse]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[EditCourse]
	@CourseId bigint,
	@CourseCatalogId bigINT,
	@DurationWeeks INT,
	@Description varchar(250),
	@ModalityId BIGINT,
	@LevelCourseId BIGINT,
	@Image varchar(100),
    @StatusId BIGINT
AS
BEGIN

UPDATE [dbo].[Course]
	SET 
	   [CourseCatalogId] = @CourseCatalogId,
       [DurationWeeks] = @DurationWeeks,
       [Description] = @Description,
       [ModalityId] = @ModalityId,
       [LevelCourseId] = @LevelCourseId,
       [Image] = @Image,
       [Statusid] = @StatusId
 WHERE [CourseId] = @CourseId
END
GO
/****** Object:  StoredProcedure [dbo].[EditCourseCatalog]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[EditCourseCatalog]
	@CourseCatalogId bigint,
	@CourseName varchar(50)
AS
BEGIN

	UPDATE [dbo].[CourseCatalog]
	   SET [CourseName] = @CourseName
	WHERE [CourseCatalogId] = @CourseCatalogId

END

GO
/****** Object:  StoredProcedure [dbo].[EditGroups]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[EditGroups]
	@GroupId bigint,
	@GroupName varchar (50),
	@StudentsNumber int,
	@MaxStudentNumber int,
	@CourseId bigint,
	@ScheduleId bigint,
	@Teacher bigint,
	@StartDate date,
	@EndDate date,
	@StatusId bigint
AS
BEGIN
UPDATE [dbo].[Groups]
	SET 
		[GroupName] = @GroupName,
		[StudentsNumber] = @StudentsNumber,
		[MaxStudentNumber] = @MaxStudentNumber,
		[CourseId] = @CourseId,
		[ScheduleId] = @ScheduleId,
		[TeacherId] = CASE WHEN @Teacher = 0 THEN NULL ELSE @Teacher END,
		[StartDate] = @StartDate,
		[EndDate] = @EndDate,
		[StatusId] = @StatusId
    WHERE GroupId = @GroupId
END

GO
/****** Object:  StoredProcedure [dbo].[EditPayment]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[EditPayment]
	@PersonalID varchar(20),
    @CustomName varchar(20),
	@Amount decimal(10,2),
	@CreationDate datetime,
	@PaymentTypeId bigint,
	@IncomeOutcomeId bigint,
	@id_Motive bigint,
	@Comentario varchar(100)
AS
BEGIN
	UPDATE [dbo].[Payments]
	SET 
	    [CustomName] = @CustomName,
		[Amount] = @Amount,
		[CreationDate] = @CreationDate, 
		[PaymentTypeId] = @PaymentTypeId,
		[IncomeOutcomeId] = @IncomeOutcomeId,
		[id_Motive] = @id_Motive,
		[Comentario] = @Comentario
	WHERE 
		[PersonalID] = (SELECT PersonalID FROM Payments WHERE PersonalID = @PersonalID);
END;
GO
/****** Object:  StoredProcedure [dbo].[EditRol]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EditRol]
	@IdRol BIGINT,
	@Name VARCHAR(20),
	@UserId BIGINT
AS
BEGIN
UPDATE [dbo].[Rol]
   SET [Name] = @Name
      ,[UserIDModification] = @UserId
      ,[ModificationDate] = GETDATE()
 WHERE [IdRol] = @IdRol;

END;
GO
/****** Object:  StoredProcedure [dbo].[EditSchedules]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create   PROCEDURE [dbo].[EditSchedules]
	@ScheduleId bigint ,
	@Description varchar(50)
AS
BEGIN
	
		UPDATE [dbo].[Schedules]
		   SET [Description] = @Description
		 WHERE ScheduleId = @ScheduleId

END
GO
/****** Object:  StoredProcedure [dbo].[EditUser]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[EditUser]
	@UserId BIGINT,
	@PersonalId  varchar(20),
	@Name varchar(15),
	@LastName varchar(15),
	@SecLastName varchar(15),
	@Email varchar(50),
	@BirthDate datetime,
	@Address VARCHAR(100),
	@Phone VARCHAR(15),
	@IdRol BIGINT,
	@IdentificationsId BIGINT,
	@StatusId BIGINT
AS
BEGIN
UPDATE [dbo].[Users]
   SET [PersonalID] = @PersonalId,
      [Name] = @Name,
      [LastName] = @LastName,
      [SecLastName] = @SecLastName,
      [Email] = @Email,
      [BirthDate] = @BirthDate,
      [Address] = @Address,
      [Phone] = @Phone,
      [IdRol] = @IdRol,
	  [IdentificationsId] = @IdentificationsId,
      [StatusId] = @StatusId
	  WHERE UserId = @UserId;
END;
GO
/****** Object:  StoredProcedure [dbo].[EnableDisableUser]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     PROCEDURE [dbo].[EnableDisableUser]
	@PersonalId varchar(50),
	@StatusId BIGINT
AS
BEGIN
UPDATE [dbo].[Users]
   SET 
	[StatusId] = @StatusId
   WHERE [UserId] = ( SELECT UserId
					FROM Users
					WHERE PersonalID = @PersonalId);
END;
GO
/****** Object:  StoredProcedure [dbo].[EnableGroups]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[EnableGroups]
	@GroupId bigint
AS
BEGIN
UPDATE [dbo].[Groups]
	SET 
		[StatusId] = 1
    WHERE GroupId = @GroupId
END

GO
/****** Object:  StoredProcedure [dbo].[EntryTime]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[EntryTime]
    @UserId Bigint,
    @EntryTime DATETIME
AS
BEGIN
    DECLARE @Office_SH_ID INT;

    INSERT INTO Office_Log (UserId, EntryTime)
    VALUES (@UserId, @EntryTime);

    SELECT @Office_SH_ID = SCOPE_IDENTITY();

    SELECT  @Office_SH_ID AS Office_SH_ID;
END;


GO
/****** Object:  StoredProcedure [dbo].[ExitMark]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ExitMark]
    @Office_SH_ID INT,
    @ExitMark DATETIME
AS
BEGIN
    UPDATE Office_Log
    SET ExitTime = @ExitMark
    WHERE Office_SH_ID = @Office_SH_ID;
END;

GO
/****** Object:  StoredProcedure [dbo].[GetMarks]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 CREATE PROCEDURE [dbo].[GetMarks]
    @UserId INT,
    @StartDate DATETIME,
    @EndDate DATETIME
AS
BEGIN
    SELECT
        UserId,
        EntryTime,
        ExitTime
    FROM
        Office_Log
    WHERE
        UserId = @UserId
        AND EntryTime >= @StartDate
        AND EntryTime <= @EndDate
END
GO
/****** Object:  StoredProcedure [dbo].[IncDecStudentGroups]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[IncDecStudentGroups]
	@GroupId bigint,
	@StudentsNumber int
AS
BEGIN
UPDATE [dbo].[Groups]
	SET [StudentsNumber] = @StudentsNumber
    WHERE GroupId = @GroupId
END
GO
/****** Object:  StoredProcedure [dbo].[InsertGroupUser]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[InsertGroupUser]
	@GroupId BIGINT,
	@UserId BIGINT
AS
BEGIN
	INSERT INTO [dbo].[GroupsUsers]
           ([GroupId],
            [UserId])
     VALUES
           (
			@GroupId,
			@UserId
		   )
END
GO
/****** Object:  StoredProcedure [dbo].[Login]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[Login]
    @UserName VARCHAR(50),
    @Password VARCHAR(50)
AS
BEGIN
    -- Verificar si el Users y contraseña coinciden en la tabla "Usuarios"
    IF EXISTS (
        SELECT 1
        FROM Users
        WHERE UserName = @UserName AND PwUsuario = @Password
    )
    BEGIN
        -- Si hay una coincidencia, retornar la información del Users
        SELECT U.UserId, U.UserName, U.StatusId, U.IdRol, R.Name
        FROM Users as U
		JOIN Rol as R ON U.IdRol = R.IdRol
        WHERE UserName = @UserName
		and U.StatusId = 1;

		UPDATE Users
			SET LastActivity = GETDATE()
			WHERE UserName = @UserName;

    END
END;
GO
/****** Object:  StoredProcedure [dbo].[MarkHistoryForAllTeachers]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MarkHistoryForAllTeachers]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        U.UserId,
        U.PersonalID,
        U.Name + ' ' + U.LastName AS FullName,
        O.EntryTime,
        O.ExitTime
    FROM Users U
    INNER JOIN Office_Log O ON U.UserId = O.UserId;
END;
GO
/****** Object:  StoredProcedure [dbo].[RemoveStudentFromGroup]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[RemoveStudentFromGroup]
	@UserId BIGINT,
	@GroupId BIGINT
AS
BEGIN


	DELETE FROM [dbo].[GroupsUsers]
      WHERE GroupsUsers.UserId = @UserId
	  AND GroupsUsers.GroupId = @GroupId;
	
END
GO
/****** Object:  StoredProcedure [dbo].[RemoveTeacherFromGroup]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[RemoveTeacherFromGroup]
	@GroupId BIGINT
AS
BEGIN

	UPDATE [dbo].[Groups]
	SET 
		[TeacherId] = NULL
	WHERE GroupId = @GroupId
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[RequestUserByRol]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RequestUserByRol]
	@IdRol bigint
AS
BEGIN
	SELECT *
	FROM Users
	where IdRol = @IdRol
	AND StatusId = 1;
END
GO
/****** Object:  StoredProcedure [dbo].[SeeAllPayments]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SeeAllPayments]
AS
BEGIN
    SELECT
        P.PaymentsId,
        P.CustomName,
        P.PersonalID,
        CONVERT(DATETIME, P.CreationDate) AS CreationDate,
        P.Amount,
        PT.Name AS PaymentTypeName,
        IO.Name AS IncomeOutcomeName,
        M.Name AS MotiveName,
        P.Comentario 
    FROM
        Payments P
    LEFT JOIN PaymentType PT ON P.PaymentTypeId = PT.PaymentTypeId
    LEFT JOIN IncomeOutcome IO ON P.IncomeOutcomeId = IO.IncomeOutcomeId
    LEFT JOIN Motive M ON P.id_Motive = M.id_Motive;
END;

GO
/****** Object:  StoredProcedure [dbo].[SeeAllTeachers]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SeeAllTeachers]
AS
    SET NOCOUNT ON;

    SELECT
	    u.PersonalID,
        U.Name,
		U.LastName,
        G.GroupId,
        CC.CourseName,
        G.StatusId,
		st.Name AS Status
    FROM Groups G
    INNER JOIN Course C ON G.CourseId = C.CourseId 
    INNER JOIN CourseCatalog CC ON C.CourseCatalogId = CC.CourseCatalogId
	INNER JOIN Groups p ON p.TeacherId = p.TeacherId
    INNER JOIN Users U ON u.IdRol = u.IdRol
    INNER JOIN Schedules S ON G.ScheduleId = S.ScheduleId
    INNER JOIN Status ST ON G.StatusId = ST.StatusId

    WHERE u.IdRol = 5;


EXEC SeeAllTeachers;
GO
/****** Object:  StoredProcedure [dbo].[SeeAllUserStudents]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SeeAllUserStudents]
    
AS
BEGIN
    SELECT
    U.UserId,
	U.PersonalID,
    U.Email,
    U.Name,
    U.LastName,
    U.SecLastName,
	U.BirthDate,
    U.Address,
	U.UserName,
	U.Phone,
	U.IdRol,
	U.IdentificationsId,
	U.StatusId,
	U.CreationDate,
	U.LastActivity
	FROM
		Users U
	WHERE
        U.IdRol = 3
	AND U.StatusId = 1;
END;
GO
/****** Object:  StoredProcedure [dbo].[SeeAllUserStudentsInGroup]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     PROCEDURE [dbo].[SeeAllUserStudentsInGroup]
    
AS
BEGIN
    SELECT
    U.UserId,
	U.PersonalID,
    U.Email,
    U.Name,
    U.LastName,
    U.SecLastName,
	U.BirthDate,
    U.Address,
	U.UserName,
	U.Phone,
	U.IdRol,
	U.IdentificationsId,
	U.StatusId,
	U.CreationDate,
	U.LastActivity
	FROM
		GroupsUsers AS GU
    INNER JOIN Users AS U ON U.UserId = GU.UserId
	WHERE
        U.IdRol = 3
	AND U.StatusId = 1;

END;
GO
/****** Object:  StoredProcedure [dbo].[SeeAllUserStudentsInGroupID]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SeeAllUserStudentsInGroupID]
    @GroupId Bigint
AS
BEGIN
    SELECT
    U.UserId,
	U.PersonalID,
    U.Email,
    U.Name,
    U.LastName,
    U.SecLastName,
	U.BirthDate,
    U.Address,
	U.UserName,
	U.Phone,
	U.IdRol,
	U.IdentificationsId,
	U.StatusId,
	U.CreationDate,
	U.LastActivity
	FROM
		GroupsUsers AS GU
    INNER JOIN Users AS U ON U.UserId = GU.UserId
	WHERE
        U.IdRol = 3
	AND U.StatusId = 1
	AND GU.GroupId = @GroupId;

END;
GO
/****** Object:  StoredProcedure [dbo].[SeeAllUserStudentsOutGroup]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     PROCEDURE [dbo].[SeeAllUserStudentsOutGroup]
    
AS
BEGIN
    

	SELECT
    U.UserId,
    U.PersonalID,
    U.Email,
    U.Name,
    U.LastName,
    U.SecLastName,
    U.BirthDate,
    U.Address,
    U.UserName,
    U.Phone,
    U.IdRol,
    U.IdentificationsId,
    U.StatusId,
    U.CreationDate,
    U.LastActivity
FROM
    Users AS U
WHERE
    U.IdRol = 3
    AND U.StatusId = 1
    AND NOT EXISTS (
        SELECT 1
        FROM GroupsUsers AS GU
        WHERE U.UserId = GU.UserId
    );

END;
GO
/****** Object:  StoredProcedure [dbo].[SeeAllUserTeacher]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SeeAllUserTeacher]
    
AS
BEGIN
    SELECT
    U.UserId,
	U.PersonalID,
    U.Email,
    U.Name,
    U.LastName,
    U.SecLastName,
	U.BirthDate,
    U.Address,
	U.UserName,
	U.Phone,
	U.IdRol,
	U.IdentificationsId,
	U.StatusId,
	U.CreationDate,
	U.LastActivity,
	E.EmployeeId
	FROM
		Users U
	INNER JOIN Employee AS E ON E.UserId = U.UserId
	WHERE
        U.IdRol = 5
	AND U.StatusId = 1;
END;
GO
/****** Object:  StoredProcedure [dbo].[SeeCourseCatalog]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     PROCEDURE [dbo].[SeeCourseCatalog]
AS
BEGIN
	select *
	from CourseCatalog
END
GO
/****** Object:  StoredProcedure [dbo].[SeeCourses]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SeeCourses]
AS
BEGIN
	select C.* , CC.CourseName,M.Name AS Modality, LC.Name as Level,S.Name as Status
	from Course C
	INNER JOIN CourseCatalog AS CC ON CC.CourseCatalogId = C.CourseCatalogId
	INNER JOIN Modality AS M ON M.ModalityId = C.ModalityId
	INNER JOIN LevelCourse AS LC ON LC.LevelCourseId = C.LevelCourseId
	INNER JOIN Status AS S ON S.StatusId = C.Statusid
	;
END
GO
/****** Object:  StoredProcedure [dbo].[SeeCoursesById]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SeeCoursesById]

	@CourseId bigint
AS
BEGIN
	select C.* , CC.CourseName,M.Name AS Modality, LC.Name as Level,S.Name as Status
	from Course C
	INNER JOIN CourseCatalog AS CC ON CC.CourseCatalogId = C.CourseCatalogId
	INNER JOIN Modality AS M ON M.ModalityId = C.ModalityId
	INNER JOIN LevelCourse AS LC ON LC.LevelCourseId = C.LevelCourseId
	INNER JOIN Status AS S ON S.StatusId = C.Statusid
	WHERE CourseId = @CourseId;

END
GO
/****** Object:  StoredProcedure [dbo].[SeeCoursesCatalogById]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SeeCoursesCatalogById]

	@CourseCatalogId bigint
AS
BEGIN
	select *
	from CourseCatalog
	WHERE CourseCatalogId = @CourseCatalogId;

END
GO
/****** Object:  StoredProcedure [dbo].[SeeCoursesCatalogByName]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SeeCoursesCatalogByName]

	@CourseCatalogName varchar(20)
AS
BEGIN
	select *
	from CourseCatalog
	WHERE CourseName = @CourseCatalogName;

END
GO
/****** Object:  StoredProcedure [dbo].[SeeCoursesFiltered]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     PROCEDURE [dbo].[SeeCoursesFiltered]
	@Name varchar(15)
AS
BEGIN
	select C.* , CC.CourseName,M.Name AS Modality, LC.Name as Level,S.Name as Status
	from Course C
	INNER JOIN CourseCatalog AS CC ON CC.CourseCatalogId = C.CourseCatalogId
	INNER JOIN Modality AS M ON M.ModalityId = C.ModalityId
	INNER JOIN LevelCourse AS LC ON LC.LevelCourseId = C.LevelCourseId
	INNER JOIN Status AS S ON S.StatusId = C.Statusid
	WHERE CC.CourseName LIKE '%' + @Name + '%';
END


;
GO
/****** Object:  StoredProcedure [dbo].[SeeGroupInfoByUserId]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SeeGroupInfoByUserId]
	@PersonalId BIGINT
AS
BEGIN


SELECT G.*,
	   CC.CourseName,
	   C.Description,
	   C.DurationWeeks,
	   C.Statusid AS CourseStatus,
	   CC.CourseName, U.Name + ' ' + U.LastName AS TeacherName , 
	   S.Description AS ScheduleDescription,
	   ST.Name AS StatusName
FROM GroupS AS G
INNER JOIN Course AS C ON C.CourseId = G.CourseId
INNER JOIN GroupsUsers AS GU ON GU.GroupId = G.GroupId
INNER JOIN CourseCatalog AS CC ON CC.CourseCatalogId = C.CourseCatalogId
INNER JOIN Employee AS E ON E.EmployeeId = G.TeacherId
INNER JOIN Schedules AS S ON S.ScheduleId = G.ScheduleId
INNER JOIN Users AS U ON U.UserId = E.UserId
INNER JOIN Status AS ST ON ST.StatusId = G.StatusId
WHERE GU.UserId = (SELECT UserId
						FROM Users
						WHERE PersonalID = @PersonalId)
END
GO
/****** Object:  StoredProcedure [dbo].[SeeGroups]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[SeeGroups]
AS
BEGIN
	select
  G.*,
  CC.CourseName,
  COALESCE(U.Name + ' ' + U.LastName, 'Sin Profesor') AS TeacherName,
  S.Description AS ScheduleDescription,
  ST.Name AS StatusName
	from
	  Groups AS G
	INNER JOIN
	  Course AS C ON C.CourseId = G.CourseId
	INNER JOIN
	  CourseCatalog AS CC ON CC.CourseCatalogId = C.CourseCatalogId
	LEFT JOIN
	  Employee AS E ON E.EmployeeId = G.TeacherId
	LEFT JOIN
	  Users AS U ON U.UserId = E.UserId
	INNER JOIN
	  Schedules AS S ON S.ScheduleId = G.ScheduleId
	INNER JOIN
	  Status AS ST ON ST.StatusId = G.StatusId
	;
END


GO
/****** Object:  StoredProcedure [dbo].[SeeGroupsByCourse]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE     PROCEDURE [dbo].[SeeGroupsByCourse]
	@CourseId BIGINT
AS
BEGIN
	select
	  G.*,
	  CC.CourseName,
	  COALESCE(U.Name + ' ' + U.LastName, 'Sin Profesor') AS TeacherName,
	  S.Description AS ScheduleDescription,
	  ST.Name AS StatusName
		from
		  Groups AS G
		INNER JOIN
		  Course AS C ON C.CourseId = G.CourseId
		INNER JOIN
		  CourseCatalog AS CC ON CC.CourseCatalogId = C.CourseCatalogId
		LEFT JOIN
		  Employee AS E ON E.EmployeeId = G.TeacherId
		LEFT JOIN
		  Users AS U ON U.UserId = E.UserId
		INNER JOIN
		  Schedules AS S ON S.ScheduleId = G.ScheduleId
		INNER JOIN
		  Status AS ST ON ST.StatusId = G.StatusId
	WHERE C.CourseId = @CourseId;

END
GO
/****** Object:  StoredProcedure [dbo].[SeeGroupsByGroupId]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[SeeGroupsByGroupId]
	@GroupId BIGINT
AS
BEGIN
	select
	  G.*,
	  CC.CourseName,
	  COALESCE(U.Name + ' ' + U.LastName, 'Sin Profesor') AS TeacherName,
	  S.Description AS ScheduleDescription,
	  ST.Name AS StatusName
		from
		  Groups AS G
		INNER JOIN
		  Course AS C ON C.CourseId = G.CourseId
		INNER JOIN
		  CourseCatalog AS CC ON CC.CourseCatalogId = C.CourseCatalogId
		LEFT JOIN
		  Employee AS E ON E.EmployeeId = G.TeacherId
		LEFT JOIN
		  Users AS U ON U.UserId = E.UserId
		INNER JOIN
		  Schedules AS S ON S.ScheduleId = G.ScheduleId
		INNER JOIN
		  Status AS ST ON ST.StatusId = G.StatusId
	WHERE G.GroupId = @GroupId;

END
GO
/****** Object:  StoredProcedure [dbo].[SeeGroupsByStudentUserId]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[SeeGroupsByStudentUserId]
	@UserId BIGINT
AS
BEGIN
	SELECT G.*,CC.CourseName, COALESCE(U.Name + ' ' + U.LastName, 'Sin Profesor') AS TeacherName, S.Description AS ScheduleDescription, ST.Name AS StatusName
	FROM GroupsUsers GU
	INNER JOIN Groups G ON G.GroupId = GU.GroupId
	INNER JOIN Course AS C ON C.CourseId = G.CourseId
	INNER JOIN CourseCatalog AS CC ON CC.CourseCatalogId = C.CourseCatalogId
	LEFT JOIN Employee AS E ON E.EmployeeId = G.TeacherId
    LEFT JOIN Users AS U ON U.UserId = E.UserId
	INNER JOIN Schedules AS S ON S.ScheduleId = G.ScheduleId
											 
	INNER JOIN Status AS ST ON ST.StatusId = G.StatusId
	AND 3 = (
				SELECT R.IdRol
				FROM Users U
				INNER JOIN Rol R ON R.IdRol = U.IdRol
				WHERE U.UserId = @UserId
			)
	AND GU.UserId = @UserId
	
END
GO
/****** Object:  StoredProcedure [dbo].[SeeGroupsByTeacher]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[SeeGroupsByTeacher]
	@TeacherId BIGINT
AS
BEGIN
	SELECT
		G.*,
	  CC.CourseName,
	  COALESCE(U.Name + ' ' + U.LastName, 'Sin Profesor') AS TeacherName,
	  S.Description AS ScheduleDescription,
	  ST.Name AS StatusName
  FROM Groups G
	INNER JOIN Course AS C ON C.CourseId = G.CourseId
	INNER JOIN CourseCatalog AS CC ON CC.CourseCatalogId = C.CourseCatalogId
	INNER JOIN Employee AS E ON E.EmployeeId = G.TeacherId
	INNER JOIN Schedules AS S ON S.ScheduleId = G.ScheduleId
	INNER JOIN Users AS U ON U.UserId = E.UserId
	INNER JOIN Status AS ST ON ST.StatusId = G.StatusId
	WHERE G.TeacherId = @TeacherId;
END


	
GO
/****** Object:  StoredProcedure [dbo].[SeeIdentifications]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE PROCEDURE [dbo].[SeeIdentifications]
	
AS
BEGIN
	SELECT * FROM Identifications

END;
GO
/****** Object:  StoredProcedure [dbo].[SeeIncomeOutcome]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE PROCEDURE [dbo].[SeeIncomeOutcome]
	
AS
BEGIN
	SELECT * FROM IncomeOutcome

END;
GO
/****** Object:  StoredProcedure [dbo].[SeeLevels]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SeeLevels]
AS
BEGIN
	select * from LevelCourse;
END
GO
/****** Object:  StoredProcedure [dbo].[SeeLevelsById]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SeeLevelsById]
	@LevelCourseId bigint
AS
BEGIN
	select * from LevelCourse
	WHERE LevelCourse.LevelCourseId = @LevelCourseId;
END
GO
/****** Object:  StoredProcedure [dbo].[SeeModality]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SeeModality]
AS
BEGIN
	select * from Modality;
END
GO
/****** Object:  StoredProcedure [dbo].[SeeModalityById]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SeeModalityById]
	@ModalityId BIGINT
AS
BEGIN
	select * from Modality
	WHERE Modality.ModalityId = @ModalityId;
END
GO
/****** Object:  StoredProcedure [dbo].[SeeOfficeLoByTeacher]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   PROCEDURE [dbo].[SeeOfficeLoByTeacher]
	@UserId bigint
AS
BEGIN
    SET NOCOUNT ON;

    SELECT *
	from Office_Log
	where UserId = @UserId
        
END
GO
/****** Object:  StoredProcedure [dbo].[SeePaymentsById]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[SeePaymentsById]
	@PaymentsId bigint
AS
BEGIN
	Select * from Payments
	where PaymentsId = @PaymentsId;
END
GO
/****** Object:  StoredProcedure [dbo].[SeePaymentType]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE PROCEDURE [dbo].[SeePaymentType]
	
AS
BEGIN
	SELECT * FROM PaymentType

END;
GO
/****** Object:  StoredProcedure [dbo].[SeePaymetsMotive]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SeePaymetsMotive]

As
begin 
 select id_Motive, Name
 from Motive
 end
GO
/****** Object:  StoredProcedure [dbo].[SeePreRegistrations]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SeePreRegistrations]
AS
BEGIN

SELECT PreRegistration.PreRegistrationId, PreRegistration.Email, PreRegistration.Phone, PreRegistration.DatePreRegistration as DatePreRegistration,
		PreRegistration.Name, PreRegistration.LastName, PreRegistration.SecLastName,Course.CourseId,CourseCatalog.CourseCatalogId ,CourseCatalog.CourseName as CourseName, 
		Modality.Name as Modality, LevelCourse.Name as Nivel, Status.Name as Status
FROM PreRegistration
JOIN Course ON Course.CourseId = PreRegistration.CourseId
JOIN Modality ON Modality.ModalityId = PreRegistration.ModalityId
JOIN LevelCourse ON LevelCourse.LevelCourseId = PreRegistration.LevelCourseId
JOIN Status ON Status.StatusId = PreRegistration.StatusId
JOIN CourseCatalog ON CourseCatalog.CourseCatalogId = Course.CourseCatalogId
where PreRegistration.StatusId = 1;
END
GO
/****** Object:  StoredProcedure [dbo].[SeeRegistration]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SeeRegistration]
	@RegistrationId BIGINT
AS
BEGIN
	SELECT M.RegistrationId,M.UserId, U.PersonalID, U.Name, M.CourseId,CC.CourseCatalogId,CC.CourseName, M.ModalityId, M.LevelCourseId, M.ScheduleId, M.Amount, M.RegistrationDate, M.PaymentDay, M.Comments, M.StatusId
	FROM Registration as M
	INNER JOIN Users as U on U.PersonalID = ( SELECT PersonalId
										FROM Users
										WHERE UserId = M.UserId)
	INNER JOIN Course as C on C.CourseId = M.CourseId
	INNER JOIN Modality as X on X.ModalityId = M.ModalityId
	INNER JOIN Schedules as H on H.ScheduleId = M.ScheduleId
	INNER JOIN LevelCourse as N on N.LevelCourseId = M.LevelCourseId
	INNER JOIN CourseCatalog AS CC ON CC.CourseCatalogId = C.CourseCatalogId
	where M.RegistrationId = @RegistrationId
		OR @RegistrationId = ( SELECT PersonalId
										FROM Users
										WHERE UserId = M.UserId
										AND Users.IdRol = 3);
END
GO
/****** Object:  StoredProcedure [dbo].[SeeRegistrations]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SeeRegistrations]
	
AS
BEGIN
	SELECT M.RegistrationId,M.UserId, U.PersonalID, U.Name, U.Phone,C.CourseId,C.CourseCatalogId, CC.CourseName as CourseName, X.Name as Modality, N.Name as Nivel, M.Amount, M.RegistrationDate as Fecha, E.Name as Status
	FROM Registration as M
	INNER JOIN Users as U on U.PersonalID = ( SELECT PersonalId
										FROM Users
										WHERE UserId = M.UserId)
	INNER  JOIN Course as C on C.CourseId = M.CourseId
	INNER JOIN Modality as X on X.ModalityId = M.ModalityId
	INNER JOIN LevelCourse as N on N.LevelCourseId = M.LevelCourseId
	INNER JOIN Status as E on E.StatusId = M.StatusId
	INNER JOIN CourseCatalog AS CC ON CC.CourseCatalogId = C.CourseCatalogId

END
GO
/****** Object:  StoredProcedure [dbo].[SeeRols]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE PROCEDURE [dbo].[SeeRols]
	
AS
BEGIN
	SELECT * FROM Rol

END;
GO
/****** Object:  StoredProcedure [dbo].[SeeScheduleById]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[SeeScheduleById]
	@ScheduleId bigint
AS
BEGIN
	select * from Schedules
	where ScheduleId = @ScheduleId;
END
GO
/****** Object:  StoredProcedure [dbo].[SeeSchedules]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[SeeSchedules]
AS
BEGIN
	select * from Schedules;
END
GO
/****** Object:  StoredProcedure [dbo].[SeeSchedulesByDescription]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREAte   PROCEDURE [dbo].[SeeSchedulesByDescription]
	@Description varchar(20)
AS
BEGIN
	select * 
	from Schedules
	where Description = @Description;
END
GO
/****** Object:  StoredProcedure [dbo].[SeeSchudleTeachers]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SeeSchudleTeachers]
AS
BEGIN
    SELECT
        U.PersonalID,
        COALESCE(U.Name, '') + ' ' + COALESCE(U.LastName, '') AS FullName,
        S.Description AS Schedule
    FROM
        Groups AS G
    INNER JOIN
        Course AS C ON C.CourseId = G.CourseId
    INNER JOIN
        CourseCatalog AS CC ON CC.CourseCatalogId = C.CourseCatalogId
    LEFT JOIN
        Employee AS E ON E.EmployeeId = G.TeacherId
    LEFT JOIN
        Users AS U ON U.UserId = E.UserId
    INNER JOIN
        Schedules AS S ON S.ScheduleId = G.ScheduleId
    INNER JOIN
        Status AS ST ON ST.StatusId = G.StatusId
    WHERE
        U.IdRol = 5; 
END;

GO
/****** Object:  StoredProcedure [dbo].[SeeStatus]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SeeStatus]
AS
BEGIN
	Select * from Status;
END
GO
/****** Object:  StoredProcedure [dbo].[SeeStatusById]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[SeeStatusById]
	@StatusId bigint
AS
BEGIN
	Select * from Status
	where StatusId = @StatusId;
END
GO
/****** Object:  StoredProcedure [dbo].[SeeTeachers]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SeeTeachers]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT *
	from Users
	where IdRol = 5
        
END
GO
/****** Object:  StoredProcedure [dbo].[SeeTeachersSummary]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SeeTeachersSummary]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        U.PersonalID,
        COALESCE(U.Name + ' ' + U.LastName, 'Sin Profesor') AS FullName,
        G.GroupId AS Groups,
        CC.CourseName AS Course,
        ST.Name AS Status
    FROM
        Groups AS G
    INNER JOIN
        Course AS C ON C.CourseId = G.CourseId
    INNER JOIN
        CourseCatalog AS CC ON CC.CourseCatalogId = C.CourseCatalogId
    LEFT JOIN
        Employee AS E ON E.EmployeeId = G.TeacherId
    LEFT JOIN
        Users AS U ON U.UserId = E.UserId
    INNER JOIN
        Schedules AS S ON S.ScheduleId = G.ScheduleId
    INNER JOIN
        Status AS ST ON ST.StatusId = G.StatusId
    WHERE
        U.IdRol = 5; -- Considerando que 5 es el ID del rol correspondiente a profesores
END
GO
/****** Object:  StoredProcedure [dbo].[SeeUser]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SeeUser]
    @UserId BIGINT
AS
BEGIN
    SELECT
    U.UserId,
	U.PersonalID,
    U.Email,
    U.Name,
    U.LastName,
    U.SecLastName,
	U.BirthDate,
    U.Address,
	U.UserName,
	U.Phone,
	U.IdRol,
	U.IdentificationsId,
	U.StatusId,
	U.CreationDate,
	U.LastActivity
	FROM
		Users U
	WHERE
        U.UserId = @UserId;
END;
GO
/****** Object:  StoredProcedure [dbo].[SeeUserByPersonalId]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SeeUserByPersonalId]
    @PersonalId varchar(20)
AS
BEGIN
    SELECT
	U.UserId,
    U.PersonalID,
    U.Email,
    U.Name,
    U.LastName,
    U.SecLastName,
	U.BirthDate,
    U.Address,
	U.UserName,
	U.Phone,
	U.IdRol,
	U.IdentificationsId,
	U.StatusId,
	U.CreationDate,
	U.LastActivity
	FROM
		Users U
	WHERE
        U.PersonalID = @PersonalId;
END;
GO
/****** Object:  StoredProcedure [dbo].[SeeUsers]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SeeUsers]
AS
BEGIN
	
	SELECT
    U.UserId,
	U.PersonalID,
    U.Email,
    U.Name,
    U.LastName,
    U.SecLastName,
	U.BirthDate,
    U.Address,
	U.UserName,
	U.Phone,
	U.PwUsuario,
	U.IdRol,
	U.IdentificationsId,
	U.StatusId,
	U.CreationDate,
	U.LastActivity
	FROM
		Users U
	WHERE
        U.StatusId = 1;
END
GO
/****** Object:  StoredProcedure [dbo].[SeeUsersForMarks]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SeeUsersForMarks]
AS
BEGIN
    SELECT
        U.PersonalID,
        COALESCE(U.Name + ' ' + U.LastName, '') AS FullName,
        R.Name AS RolName
    FROM
        Users AS U
    INNER JOIN
        Rol AS R ON U.IdRol = R.IdRol
    WHERE
        U.IdRol IN (1, 5);
END;



GO
/****** Object:  StoredProcedure [dbo].[SeeUserTeacher]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SeeUserTeacher]
    @UserId BIGINT
AS
BEGIN
    SELECT
    U.UserId,
	U.PersonalID,
    U.Email,
    U.Name,
    U.LastName,
    U.SecLastName,
	U.BirthDate,
    U.Address,
	U.UserName,
	U.Phone,
	U.IdRol,
	U.IdentificationsId,
	U.StatusId,
	U.CreationDate,
	U.LastActivity
	FROM
		Users U
	WHERE
        U.UserId = @UserId
	AND U.IdRol = 5;
END;
GO
/****** Object:  StoredProcedure [dbo].[TotalHours]    Script Date: 9/8/2024 3:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[TotalHours]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        U.UserId,
        U.PersonalID,
        U.Name + ' ' + U.LastName AS FullName,
        O.EntryTime,
        O.ExitTime,
        FORMAT(SUM(DATEDIFF(SECOND, O.EntryTime, O.ExitTime)) OVER (PARTITION BY O.Office_SH_ID) / 3600, '00') + ':' +
        FORMAT(SUM(DATEDIFF(SECOND, O.EntryTime, O.ExitTime)) OVER (PARTITION BY O.Office_SH_ID) % 3600 / 60, '00') + ':' +
        FORMAT(SUM(DATEDIFF(SECOND, O.EntryTime, O.ExitTime)) OVER (PARTITION BY O.Office_SH_ID) % 60, '00') AS TotalHours
    FROM
        Users U
    INNER JOIN
        Office_Log O ON U.UserId = O.UserId
 
END;
GO
