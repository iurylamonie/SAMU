CREATE TABLE [dbo].[Ocorrencia] (
    [id]                  INT           IDENTITY (1, 1) NOT NULL,
    [usuario_id]          INT           NULL,
    [tipo]                VARCHAR (MAX) NULL,
    [nomeSolicitante]     VARCHAR (MAX) NULL,
    [nomeVitima]          VARCHAR (MAX) NULL,
    [quantidadeVitimas]   INT			NULL,
    [endereco]            VARCHAR (MAX) NULL,
    [cep]                 VARCHAR (MAX) NULL,
    [informacaoAdicional] VARCHAR (MAX) NULL,
    [situacao]            VARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_Ocorrencia] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [atendente] FOREIGN KEY ([usuario_id]) REFERENCES [dbo].[Usuario] ([id])
);

