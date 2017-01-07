CREATE TABLE [dbo].[Usuario] (
    [id]    INT           IDENTITY (1, 1) NOT NULL,
    [nome]  VARCHAR (MAX) NULL,
    [cpf]   VARCHAR (MAX) NULL,
    [senha] VARCHAR (MAX) NULL,
    CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED ([id] ASC)
);

