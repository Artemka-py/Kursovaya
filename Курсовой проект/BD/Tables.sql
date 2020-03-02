USE [master]
GO

IF DB_ID('Home') IS NOT NULL
BEGIN
  --ALTER DATABASE [Home] SET SINGLE_USER WITH ROLLBACK IMMEDIATE
  DROP DATABASE [Home]
END
GO

CREATE DATABASE Home
GO

USE Home
GO

CREATE TABLE dbo.Otdel (
  ID_Otdel INT IDENTITY
 ,Name_Otdel VARCHAR(20) NOT NULL
 ,Log_Del BIT NOT NULL DEFAULT (0)
 ,CONSTRAINT PK_ID_Otdel PRIMARY KEY CLUSTERED (ID_Otdel)
 ,CONSTRAINT UQ_Name_Otdle UNIQUE (Name_Otdel)
)
GO

CREATE TABLE Home.dbo.Package_Documents (
  ID_Package_Documents INT IDENTITY
 ,Passport VARCHAR(MAX) NOT NULL
 ,Trud_Kniga VARCHAR(MAX) NOT NULL
 ,Med_Kniga VARCHAR(MAX) NOT NULL
 ,INN VARCHAR(14) NOT NULL
 ,Spravka_Nesudimosti VARCHAR(MAX) NOT NULL
 ,Diplom_Obrazovanii VARCHAR(MAX) NOT NULL
 ,Rezume VARCHAR(MAX) NOT NULL
 ,Log_Del BIT NOT NULL DEFAULT (0)
 ,CONSTRAINT PK_ID_Package_Documents PRIMARY KEY CLUSTERED (ID_Package_Documents)
 ,CONSTRAINT UQ_INN UNIQUE (INN)
)
GO

CREATE TABLE Home.dbo.Role (
  ID_Role INT IDENTITY
 ,Name_Role VARCHAR(20) NOT NULL
 ,Dostup BIT NOT NULL
 ,Log_Del BIT NOT NULL DEFAULT (0)
 ,CONSTRAINT PK_ID_Role PRIMARY KEY CLUSTERED (ID_Role)
 ,CONSTRAINT UQ_Name_Role UNIQUE (Name_Role)
)
GO

CREATE TABLE Home.dbo.Rule_Sobstv (
  ID_Rule_Sobstv INT IDENTITY
 ,Name_Rule_Sobstv VARCHAR(30) NOT NULL
 ,Log_Del BIT NOT NULL DEFAULT (0)
 ,CONSTRAINT PK_ID_Rule_Sobstv PRIMARY KEY CLUSTERED (ID_Rule_Sobstv)
 ,CONSTRAINT UQ_Rule_Sobstv UNIQUE (Name_Rule_Sobstv)
)
GO

CREATE TABLE Home.dbo.Status_Nedvig (
  ID_Status_Nedvig INT IDENTITY
 ,Name_Status_Nedvig VARCHAR(30) NOT NULL
 ,Log_Del BIT NOT NULL DEFAULT (0)
 ,CONSTRAINT PK_ID_Status_Nedvig PRIMARY KEY CLUSTERED (ID_Status_Nedvig)
 ,CONSTRAINT UQ_Name_Status_Nedvig UNIQUE (Name_Status_Nedvig)
) ON [PRIMARY]
GO

CREATE TABLE Home.dbo.Status_Shtat_Ed (
  ID_Status_Shtat_Ed INT IDENTITY
 ,Name_Status VARCHAR(30) NOT NULL
 ,Log_Del BIT NOT NULL DEFAULT (0)
 ,CONSTRAINT PK_ID_Status_Shtat_Ed PRIMARY KEY CLUSTERED (ID_Status_Shtat_Ed)
 ,CONSTRAINT UQ_Name_Status UNIQUE (Name_Status)
) ON [PRIMARY]
GO

CREATE TABLE Home.dbo.StatusZakaza (
  ID_Status_Zakaza INT IDENTITY
 ,Name_Status_Zakaza VARCHAR(30) NOT NULL
 ,Log_Del BIT NOT NULL DEFAULT (0)
 ,CONSTRAINT PK_Status_Zakaza PRIMARY KEY CLUSTERED (ID_Status_Zakaza)
 ,CONSTRAINT UQ_Name_Zakaz UNIQUE (Name_Status_Zakaza)
) ON [PRIMARY]
GO

CREATE TABLE Home.dbo.Svidetelstvo_Rule_Sobstv (
  ID_Svidetelstvo_Rule_Sobstv INT IDENTITY
 ,Kvartira_Number VARCHAR(5) NOT NULL
 ,Chislo VARCHAR(2) NOT NULL
 ,Mesyac VARCHAR(2) NOT NULL
 ,Yaer VARCHAR(4) NOT NULL
 ,Registr_Number VARCHAR(21) NOT NULL
 ,Log_Del BIT NOT NULL DEFAULT (0)
 ,CONSTRAINT PK_ID_Svidetelstvo_Rule_Sobstv PRIMARY KEY CLUSTERED (ID_Svidetelstvo_Rule_Sobstv)
 ,CONSTRAINT UQ_Registr_Number UNIQUE (Registr_Number)
) ON [PRIMARY]
GO

CREATE TABLE Home.dbo.Type_Buy (
  ID_Type_Buy INT IDENTITY
 ,Name_Type_Buy VARCHAR(30) NOT NULL
 ,Log_Del BIT NOT NULL DEFAULT (0)
 ,CONSTRAINT PK_Type_Buy_ID_Type_Buy PRIMARY KEY CLUSTERED (ID_Type_Buy)
 ,CONSTRAINT UQ_Name_Type_Buy UNIQUE (Name_Type_Buy)
) ON [PRIMARY]
GO

CREATE TABLE Home.dbo.Type_Dogovora (
  ID_Type_Dogovora INT IDENTITY
 ,Name_Type_Dogovor VARCHAR(30) NOT NULL
 ,Log_Del BIT NOT NULL DEFAULT (0)
 ,CONSTRAINT PK_ID_Type_Dogovora PRIMARY KEY CLUSTERED (ID_Type_Dogovora)
 ,CONSTRAINT UQ_Name_Type_Dogovor UNIQUE (Name_Type_Dogovor)
) ON [PRIMARY]
GO

CREATE TABLE Home.dbo.Type_Fiz_Lic (
  ID_Type_Fiz_Lic INT IDENTITY
 ,Name_Type_Fiz_Lic VARCHAR(30) NOT NULL
 ,Log_Del BIT NOT NULL DEFAULT (0)
 ,CONSTRAINT PK_Type_Fiz_Lic_ID_Type_Fiz_Lic PRIMARY KEY CLUSTERED (ID_Type_Fiz_Lic)
 ,CONSTRAINT UQ_Name_Type_Fiz_Lic UNIQUE (Name_Type_Fiz_Lic)
) ON [PRIMARY]
GO

CREATE TABLE Home.dbo.Type_Kvartiry (
  ID_Type_Kvartiry INT IDENTITY
 ,Name_Type_Kvartiry VARCHAR(30) NOT NULL
 ,Log_Del BIT NOT NULL DEFAULT (0)
 ,CONSTRAINT PK_ID_Type_Kvartiry PRIMARY KEY CLUSTERED (ID_Type_Kvartiry)
 ,CONSTRAINT UQ_Name_Type_Kvartiry UNIQUE (Name_Type_Kvartiry)
) ON [PRIMARY]
GO

CREATE TABLE Home.dbo.Type_Price (
  ID_Type_Price INT IDENTITY
 ,Name_Type_Price VARCHAR(30) NOT NULL
 ,Log_Del BIT NOT NULL DEFAULT (0)
 ,CONSTRAINT PK_ID_Type_Price PRIMARY KEY CLUSTERED (ID_Type_Price)
 ,CONSTRAINT UQ_Type_Price UNIQUE (Name_Type_Price)
) ON [PRIMARY]
GO

CREATE TABLE Home.dbo.Type_Ur_Lic (
  ID_Type_Ur_Lic INT IDENTITY
 ,Name_Type_Ur_Lic VARCHAR(30) NOT NULL
 ,Log_Del BIT NOT NULL DEFAULT (0)
 ,CONSTRAINT PK_ID_Type_Ur_Lic PRIMARY KEY CLUSTERED (ID_Type_Ur_Lic)
 ,CONSTRAINT UQ_Name_Type_Ur_Lic UNIQUE (Name_Type_Ur_Lic)
) ON [PRIMARY]
GO

CREATE TABLE Home.dbo.Zanyatost (
  ID_Zanyatost INT IDENTITY
 ,Name_Zanyatost VARCHAR(20) NOT NULL
 ,Udalenka BIT NOT NULL
 ,Log_Del BIT NOT NULL DEFAULT (0)
 ,CONSTRAINT PK_Zanyatost_ID_Zanyatost PRIMARY KEY CLUSTERED (ID_Zanyatost)
 ,CONSTRAINT UQ_Name_Zanyatost UNIQUE (Name_Zanyatost)
) ON [PRIMARY]
GO

CREATE TABLE dbo.Dolgnost (
  ID_Dolgnost INT IDENTITY
 ,Name_Dolgnost VARCHAR(30) NOT NULL
 ,Salary DECIMAL(32, 2) NOT NULL
 ,ID_Otdel INT NOT NULL
 ,Log_Del BIT NOT NULL DEFAULT (0)
 ,CONSTRAINT PK_ID_Dolgnost PRIMARY KEY CLUSTERED (ID_Dolgnost)
 ,CONSTRAINT UQ_Name_Dolgnost UNIQUE (Name_Dolgnost)
 ,CONSTRAINT CH_Salary CHECK ([Salary] > (0))
)
GO

CREATE TABLE dbo.Treb_Vacation (
  ID_Treb_Vacation INT IDENTITY
 ,ID_Zanyatost INT NOT NULL
 ,Doxod_Ot INT NOT NULL
 ,Doxod_Do INT NOT NULL
 ,Obyazonnosti VARCHAR(500) NOT NULL
 ,Trebovania VARCHAR(500) NOT NULL
 ,Uslovia VARCHAR(500) NOT NULL
 ,Log_Del BIT NOT NULL DEFAULT (0)
 ,CONSTRAINT PK_ID_Treb_Vacation PRIMARY KEY CLUSTERED (ID_Treb_Vacation)
 ,CONSTRAINT FK_ID_Zanyatost_Vacation FOREIGN KEY (ID_Zanyatost) REFERENCES dbo.Zanyatost (ID_Zanyatost)
 ,CONSTRAINT CH_Doxod CHECK (Doxod_Ot > 0 AND Doxod_Do > 0)
)
GO

CREATE TABLE dbo.Vacation (
  ID_Vacation INT IDENTITY
 ,ID_Doljnost INT NOT NULL
 ,ID_Treb_Vacation INT NOT NULL
 ,Log_Del BIT NOT NULL DEFAULT (0)
 ,CONSTRAINT PK_ID_Vacation PRIMARY KEY CLUSTERED (ID_Vacation)
 ,CONSTRAINT FK_ID_Doljnost_Vacation FOREIGN KEY (ID_Doljnost) REFERENCES dbo.Dolgnost (ID_Dolgnost)
 ,CONSTRAINT FK_ID_Treb_Vacation_Vacation FOREIGN KEY (ID_Treb_Vacation) REFERENCES dbo.Treb_Vacation (ID_Treb_Vacation)
)
GO

CREATE TABLE dbo.Fiz_Lic (
  ID_Fiz_Lic INT IDENTITY
 ,Middle_Name VARCHAR(30) NOT NULL
 ,Name VARCHAR(30) NOT NULL
 ,Last_Name VARCHAR(30) NULL DEFAULT ('-')
 ,Series_Passp VARCHAR(4) NOT NULL
 ,Number_Passp VARCHAR(6) NOT NULL
 ,ID_Type_Fiz_Lic INT NOT NULL
 ,Log_Del BIT NOT NULL DEFAULT (0)
 ,CONSTRAINT PK_ID_Fiz_Lic PRIMARY KEY CLUSTERED (ID_Fiz_Lic)
 ,CONSTRAINT FK_ID_Type_Fiz_Lic_Fiz_Lic FOREIGN KEY (ID_Type_Fiz_Lic) REFERENCES dbo.Type_Fiz_Lic (ID_Type_Fiz_Lic)
)
GO

CREATE TABLE dbo.Shtat_Edinic (
  ID_Fiz_Lic INT NOT NULL
 ,Date_of_Birthday DATETIME NOT NULL
 ,ID_Status_Shtat_Ed INT NOT NULL
 ,ID_Package_Documents INT NOT NULL
 ,Log_Del BIT NOT NULL DEFAULT (0)
 ,CONSTRAINT PKFK_ID_Fiz_Lic_Shat FOREIGN KEY (ID_Fiz_Lic) REFERENCES dbo.Fiz_Lic (ID_Fiz_Lic)
 ,CONSTRAINT FK_ID_Status_Shtat_Ed_Status_Shat FOREIGN KEY (ID_Status_Shtat_Ed) REFERENCES dbo.Status_Shtat_Ed (ID_Status_Shtat_Ed)
 ,CONSTRAINT FK_ID_Package_Documents_Pack_Doc FOREIGN KEY (ID_Package_Documents) REFERENCES dbo.Package_Documents (ID_Package_Documents)
 ,CONSTRAINT CH_Date_of_Birthday CHECK (Date_of_Birthday != GETDATE() AND Date_of_Birthday < GETDATE())
)
GO

CREATE TABLE dbo.Accounts (
  ID_Fiz_Lic INT NOT NULL
 ,Login VARCHAR(20) NOT NULL
 ,Password VARCHAR(20) NOT NULL
 ,ID_Role INT NOT NULL
 ,Log_Del BIT NOT NULL DEFAULT (0)
 ,CONSTRAINT PKFK_ID_Fiz_Lic_Acc FOREIGN KEY (ID_Fiz_Lic) REFERENCES dbo.Fiz_Lic (ID_Fiz_Lic)
 ,CONSTRAINT UQ_Login UNIQUE (Login)
 ,CONSTRAINT FK_ID_Role_Acc FOREIGN KEY (ID_Role) REFERENCES dbo.Role (ID_Role)
)
GO

CREATE TABLE dbo.Ur_Lic (
  ID_Fiz_Lic INT NOT NULL
 ,Name_Company VARCHAR(30) NOT NULL
 ,INN VARCHAR(10) NOT NULL
 ,KPP VARCHAR(9) NOT NULL
 ,Name_Bank VARCHAR(30) NOT NULL
 ,Bik VARCHAR(9) NOT NULL
 ,Raschetni_Schet VARCHAR(20) NOT NULL
 ,Ur_Address VARCHAR(50) NOT NULL
 ,ID_Type_Ur_Lic INT NOT NULL
 ,Log_Del BIT NOT NULL DEFAULT (0)
 ,CONSTRAINT PKFK_ID_Fiz_Lic_Ur_Lic FOREIGN KEY (ID_Fiz_Lic) REFERENCES dbo.Fiz_Lic (ID_Fiz_Lic)
 ,CONSTRAINT FK_ID_Type_Ur_Lic_Ur_Lic FOREIGN KEY (ID_Type_Ur_Lic) REFERENCES dbo.Type_Ur_Lic (ID_Type_Ur_Lic)
)
GO
