CREATE TABLE [dbo].[servicii] (
    [Id]       INT            IDENTITY (1, 1) NOT NULL,
    [TipServiciu]      NVARCHAR (MAX) NULL,
    [PretI]     NVARCHAR (MAX) NULL,
    [Durata] NVARCHAR (MAX) NULL,
    [TipRed]    NVARCHAR (MAX) NULL,
   [PretR] NCHAR(10) NULL, 
   [Prestator] NVARCHAR(50) NULL, 
    
    PRIMARY KEY CLUSTERED ([Id] ASC)
);