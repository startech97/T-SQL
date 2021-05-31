USE [COIKKO]
GO

/****** Object:  Table [dbo].[ege2020]    Script Date: 19.03.2021 10:59:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ege2020](
	[F1] [float] NULL,
	[Код предмета] [float] NULL,
	[Дата экзамена] [nvarchar](255) NULL,
	[Статус обработки] [float] NULL,
	[Код ППЭ] [float] NULL,
	[Код аудитории] [float] NULL,
	[Код варианта] [float] NULL,
	[Штрихкод БР] [float] NULL,
	[Код ОУ] [float] NULL,
	[Наименование ОУ] [nvarchar](255) NULL,
	[Тип ОУ] [float] NULL,
	[Вид ОУ] [float] NULL,
	[Форма собственности ОУ] [float] NULL,
	[Код участника] [float] NULL,
	[Категория] [nvarchar](255) NULL,
	[Класс] [nvarchar](255) NULL,
	[Пол] [nvarchar](255) NULL,
	[ОВЗ] [nvarchar](255) NULL,
	[Муниципальный район] [nvarchar](255) NULL,
	[Город-село] [nvarchar](255) NULL,
	[Форма обучения] [nvarchar](255) NULL,
	[Профиль] [nvarchar](255) NULL,
	[Первичный балл] [float] NULL,
	[Балл] [float] NULL,
	[Зачет] [float] NULL,
	[TestResultA] [nvarchar](255) NULL,
	[TestResultB] [nvarchar](255) NULL,
	[TestResultC] [nvarchar](255) NULL,
	[TestResultD] [nvarchar](255) NULL,
	[Кластер] [int] NULL
) ON [PRIMARY]
GO

