
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/04/2020 19:32:00
-- Generated from EDMX file: D:\master\FIT5032\assignment\assignment\assignment\Models\assignment.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [aspnet-assignment-20201003084419];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_UserStaff]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK_UserStaff];
GO
IF OBJECT_ID(N'[dbo].[FK_UserTheoreticalClass]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TheoreticalClasses] DROP CONSTRAINT [FK_UserTheoreticalClass];
GO
IF OBJECT_ID(N'[dbo].[FK_UserTrainClass]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TrainClasses] DROP CONSTRAINT [FK_UserTrainClass];
GO
IF OBJECT_ID(N'[dbo].[FK_UserUserGame]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserGames] DROP CONSTRAINT [FK_UserUserGame];
GO
IF OBJECT_ID(N'[dbo].[FK_StaffStaffGame]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[StaffGames] DROP CONSTRAINT [FK_StaffStaffGame];
GO
IF OBJECT_ID(N'[dbo].[FK_StaffTheoreticalClass]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TheoreticalClasses] DROP CONSTRAINT [FK_StaffTheoreticalClass];
GO
IF OBJECT_ID(N'[dbo].[FK_StaffTrainClass]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TrainClasses] DROP CONSTRAINT [FK_StaffTrainClass];
GO
IF OBJECT_ID(N'[dbo].[FK_GameStaffGame]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[StaffGames] DROP CONSTRAINT [FK_GameStaffGame];
GO
IF OBJECT_ID(N'[dbo].[FK_GameUserGame]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserGames] DROP CONSTRAINT [FK_GameUserGame];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users];
GO
IF OBJECT_ID(N'[dbo].[Staffs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Staffs];
GO
IF OBJECT_ID(N'[dbo].[TheoreticalClasses]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TheoreticalClasses];
GO
IF OBJECT_ID(N'[dbo].[TrainClasses]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TrainClasses];
GO
IF OBJECT_ID(N'[dbo].[UserGames]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserGames];
GO
IF OBJECT_ID(N'[dbo].[StaffGames]', 'U') IS NOT NULL
    DROP TABLE [dbo].[StaffGames];
GO
IF OBJECT_ID(N'[dbo].[Games]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Games];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [PhoneNo] nvarchar(max)  NOT NULL,
    [Address] nvarchar(max)  NOT NULL,
    [BirthDate] datetime  NOT NULL,
    [UserId] nvarchar(max)  NOT NULL,
    [Staff_Id] int  NOT NULL
);
GO

-- Creating table 'Staffs'
CREATE TABLE [dbo].[Staffs] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [PhoneNo] nvarchar(max)  NOT NULL,
    [Address] nvarchar(max)  NOT NULL,
    [BirthDate] time  NULL,
    [UserId] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'TheoreticalClasses'
CREATE TABLE [dbo].[TheoreticalClasses] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Time] datetime  NOT NULL,
    [RoomNo] int  NOT NULL,
    [UserId] nvarchar(max)  NOT NULL,
    [UserId1] int  NOT NULL,
    [StaffId] int  NOT NULL
);
GO

-- Creating table 'TrainClasses'
CREATE TABLE [dbo].[TrainClasses] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Time] datetime  NOT NULL,
    [RoomNo] int  NOT NULL,
    [UserId] nvarchar(max)  NOT NULL,
    [Outcome] nvarchar(max)  NOT NULL,
    [UserId1] int  NOT NULL,
    [StaffId] int  NOT NULL
);
GO

-- Creating table 'UserGames'
CREATE TABLE [dbo].[UserGames] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [GameResult] nvarchar(max)  NOT NULL,
    [UserId] int  NOT NULL,
    [GameId] int  NOT NULL
);
GO

-- Creating table 'StaffGames'
CREATE TABLE [dbo].[StaffGames] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [GameResult] nvarchar(max)  NOT NULL,
    [StaffId] int  NOT NULL,
    [GameId] int  NOT NULL
);
GO

-- Creating table 'Games'
CREATE TABLE [dbo].[Games] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Time] datetime  NOT NULL,
    [Address] nvarchar(max)  NOT NULL,
    [UserId] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Staffs'
ALTER TABLE [dbo].[Staffs]
ADD CONSTRAINT [PK_Staffs]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TheoreticalClasses'
ALTER TABLE [dbo].[TheoreticalClasses]
ADD CONSTRAINT [PK_TheoreticalClasses]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TrainClasses'
ALTER TABLE [dbo].[TrainClasses]
ADD CONSTRAINT [PK_TrainClasses]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'UserGames'
ALTER TABLE [dbo].[UserGames]
ADD CONSTRAINT [PK_UserGames]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'StaffGames'
ALTER TABLE [dbo].[StaffGames]
ADD CONSTRAINT [PK_StaffGames]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Games'
ALTER TABLE [dbo].[Games]
ADD CONSTRAINT [PK_Games]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Staff_Id] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [FK_UserStaff]
    FOREIGN KEY ([Staff_Id])
    REFERENCES [dbo].[Staffs]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserStaff'
CREATE INDEX [IX_FK_UserStaff]
ON [dbo].[Users]
    ([Staff_Id]);
GO

-- Creating foreign key on [UserId1] in table 'TheoreticalClasses'
ALTER TABLE [dbo].[TheoreticalClasses]
ADD CONSTRAINT [FK_UserTheoreticalClass]
    FOREIGN KEY ([UserId1])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserTheoreticalClass'
CREATE INDEX [IX_FK_UserTheoreticalClass]
ON [dbo].[TheoreticalClasses]
    ([UserId1]);
GO

-- Creating foreign key on [UserId1] in table 'TrainClasses'
ALTER TABLE [dbo].[TrainClasses]
ADD CONSTRAINT [FK_UserTrainClass]
    FOREIGN KEY ([UserId1])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserTrainClass'
CREATE INDEX [IX_FK_UserTrainClass]
ON [dbo].[TrainClasses]
    ([UserId1]);
GO

-- Creating foreign key on [UserId] in table 'UserGames'
ALTER TABLE [dbo].[UserGames]
ADD CONSTRAINT [FK_UserUserGame]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserUserGame'
CREATE INDEX [IX_FK_UserUserGame]
ON [dbo].[UserGames]
    ([UserId]);
GO

-- Creating foreign key on [StaffId] in table 'StaffGames'
ALTER TABLE [dbo].[StaffGames]
ADD CONSTRAINT [FK_StaffStaffGame]
    FOREIGN KEY ([StaffId])
    REFERENCES [dbo].[Staffs]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_StaffStaffGame'
CREATE INDEX [IX_FK_StaffStaffGame]
ON [dbo].[StaffGames]
    ([StaffId]);
GO

-- Creating foreign key on [StaffId] in table 'TheoreticalClasses'
ALTER TABLE [dbo].[TheoreticalClasses]
ADD CONSTRAINT [FK_StaffTheoreticalClass]
    FOREIGN KEY ([StaffId])
    REFERENCES [dbo].[Staffs]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_StaffTheoreticalClass'
CREATE INDEX [IX_FK_StaffTheoreticalClass]
ON [dbo].[TheoreticalClasses]
    ([StaffId]);
GO

-- Creating foreign key on [StaffId] in table 'TrainClasses'
ALTER TABLE [dbo].[TrainClasses]
ADD CONSTRAINT [FK_StaffTrainClass]
    FOREIGN KEY ([StaffId])
    REFERENCES [dbo].[Staffs]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_StaffTrainClass'
CREATE INDEX [IX_FK_StaffTrainClass]
ON [dbo].[TrainClasses]
    ([StaffId]);
GO

-- Creating foreign key on [GameId] in table 'StaffGames'
ALTER TABLE [dbo].[StaffGames]
ADD CONSTRAINT [FK_GameStaffGame]
    FOREIGN KEY ([GameId])
    REFERENCES [dbo].[Games]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_GameStaffGame'
CREATE INDEX [IX_FK_GameStaffGame]
ON [dbo].[StaffGames]
    ([GameId]);
GO

-- Creating foreign key on [GameId] in table 'UserGames'
ALTER TABLE [dbo].[UserGames]
ADD CONSTRAINT [FK_GameUserGame]
    FOREIGN KEY ([GameId])
    REFERENCES [dbo].[Games]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_GameUserGame'
CREATE INDEX [IX_FK_GameUserGame]
ON [dbo].[UserGames]
    ([GameId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------