use trezemaio_db;

INSERT INTO usuario(id,email,senha,tipo)
VALUES(UUID_TO_BIN(UUID()),'gmail@gmail.com','123','ADMINISTRADOR');

INSERT INTO usuario(id,email,senha,tipo)
VALUES(UUID_TO_BIN(UUID()),'123@gmail.com','1233','USUARIO');

UPDATE usuario SET nome = 'Usuário' WHERE nome IS NULL;

DESCRIBE usuario;

DESCRIBE item_acervo;

select * from usuario;

ALTER TABLE item_acervo ADD COLUMN editora VARCHAR(255);
-- 1. Livros
INSERT INTO item_acervo (id, nome, descricao_breve, tipo, ativo, autor, isbn, edicao, editora, numero_paginas, data_publicacao) 
VALUES (UUID_TO_BIN(UUID()), 'O Senhor dos Anéis: A Sociedade do Anel', 'A jornada de Frodo para destruir o Um Anel.', 'LIVRO', 1, 'J.R.R. Tolkien', '978-8533613409', '1ª Edição', 'Martins Fontes', 576, '1954-07-29');

INSERT INTO item_acervo (id, nome, descricao_breve, tipo, ativo, autor, isbn, edicao, editora, numero_paginas, data_publicacao) 
VALUES (UUID_TO_BIN(UUID()), 'Dom Casmurro', 'O clássico de Machado de Assis sobre o ciúme de Bentinho.', 'LIVRO', 1, 'Machado de Assis', '978-8508151240', 'Edição Comentada', 'Ática', 208, '1899-01-01');

INSERT INTO item_acervo (id, nome, descricao_breve, tipo, ativo, autor, isbn, edicao, editora, numero_paginas, data_publicacao) 
VALUES (UUID_TO_BIN(UUID()), 'Sapiens: Uma Breve História da Humanidade', 'Uma análise sobre a evolução da espécie humana.', 'LIVRO', 1, 'Yuval Noah Harari', '978-8525061614', 'Edição de Bolso', 'Companhia das Letras', 464, '2011-09-04');

-- 2. Revistas
INSERT INTO item_acervo (id, nome, descricao_breve, tipo, ativo, autor, isbn, edicao, editora, numero_paginas, data_publicacao) 
VALUES (UUID_TO_BIN(UUID()), 'National Geographic', 'Vida selvagem na Amazônia.', 'REVISTA', 1, 'Equipe NatGeo', NULL, 'Edição 150', 'Editora Abril', 100, '2024-03-01');

INSERT INTO item_acervo (id, nome, descricao_breve, tipo, ativo, autor, isbn, edicao, editora, numero_paginas, data_publicacao) 
VALUES (UUID_TO_BIN(UUID()), 'Superinteressante', 'Dossiê sobre viagens no tempo.', 'REVISTA', 1, 'Redação Super', NULL, 'Edição 450', 'Editora Abril', 80, '2024-05-01');

-- 3. Jornais
INSERT INTO item_acervo (id, nome, descricao_breve, tipo, ativo, autor, isbn, edicao, editora, numero_paginas, data_publicacao) 
VALUES (UUID_TO_BIN(UUID()), 'Folha de S.Paulo', 'Edição de domingo com notícias políticas.', 'JORNAL', 1, 'Redação Folha', NULL, 'Edição Diária', 'Grupo Folha', 60, '2024-06-25');

-- 1. LIVROS (Técnicos e Clássicos)
INSERT INTO item_acervo (id, nome, descricao_breve, tipo, ativo, autor, isbn, edicao, editora, numero_paginas, data_publicacao) 
VALUES (UUID_TO_BIN(UUID()), 'Clean Code: Habilidades Práticas do Agile Software', 'Dicas essenciais para escrever código limpo e sustentável.', 'LIVRO', 1, 'Robert C. Martin', '978-8576082675', '1ª Edição', 'Alta Books', 425, '2009-08-01');

INSERT INTO item_acervo (id, nome, descricao_breve, tipo, ativo, autor, isbn, edicao, editora, numero_paginas, data_publicacao) 
VALUES (UUID_TO_BIN(UUID()), '1984', 'Uma distopia sobre vigilância e controle social.', 'LIVRO', 1, 'George Orwell', '978-8535914849', 'Edição Econômica', 'Companhia das Letras', 416, '1949-06-08');

INSERT INTO item_acervo (id, nome, descricao_breve, tipo, ativo, autor, isbn, edicao, editora, numero_paginas, data_publicacao) 
VALUES (UUID_TO_BIN(UUID()), 'O Pequeno Príncipe', 'Uma fábula sobre a importância de ver com o coração.', 'LIVRO', 1, 'Antoine de Saint-Exupéry', '978-8522018864', 'Edição Ilustrada', 'Agir', 96, '1943-04-06');

INSERT INTO item_acervo (id, nome, descricao_breve, tipo, ativo, autor, isbn, edicao, editora, numero_paginas, data_publicacao) 
VALUES (UUID_TO_BIN(UUID()), 'A Arte da Guerra', 'Estratégias milenares de conflito e liderança.', 'LIVRO', 1, 'Sun Tzu', '978-8576800644', 'Edição de Bolso', 'Martins Fontes', 160, '2006-01-01');

-- 2. REVISTAS (Negócios e Tecnologia)
INSERT INTO item_acervo (id, nome, descricao_breve, tipo, ativo, autor, isbn, edicao, editora, numero_paginas, data_publicacao) 
VALUES (UUID_TO_BIN(UUID()), 'Exame', 'Análise profunda sobre o mercado financeiro e carreira.', 'REVISTA', 1, 'Redação Exame', NULL, 'Edição 1250', 'Editora Exame', 70, '2026-06-01');

INSERT INTO item_acervo (id, nome, descricao_breve, tipo, ativo, autor, isbn, edicao, editora, numero_paginas, data_publicacao) 
VALUES (UUID_TO_BIN(UUID()), 'Época Negócios', 'Tendências de empreendedorismo e gestão.', 'REVISTA', 1, 'Redação Época', NULL, 'Edição 200', 'Editora Globo', 85, '2026-05-15');

INSERT INTO item_acervo (id, nome, descricao_breve, tipo, ativo, autor, isbn, edicao, editora, numero_paginas, data_publicacao) 
VALUES (UUID_TO_BIN(UUID()), 'Mundo Estranho', 'Curiosidades científicas e fatos bizarros.', 'REVISTA', 1, 'Redação ME', NULL, 'Especial 2026', 'Editora Abril', 50, '2026-06-10');

-- 3. JORNAIS (Notícias Regionais e Nacionais)
INSERT INTO item_acervo (id, nome, descricao_breve, tipo, ativo, autor, isbn, edicao, editora, numero_paginas, data_publicacao) 
VALUES (UUID_TO_BIN(UUID()), 'Zero Hora', 'Notícias do Rio Grande do Sul e do Brasil.', 'JORNAL', 1, 'Equipe ZH', NULL, 'Edição do Dia', 'Grupo RBS', 40, '2026-06-28');

INSERT INTO item_acervo (id, nome, descricao_breve, tipo, ativo, autor, isbn, edicao, editora, numero_paginas, data_publicacao) 
VALUES (UUID_TO_BIN(UUID()), 'Correio do Povo', 'Jornalismo factual e regional.', 'JORNAL', 1, 'Equipe Correio', NULL, 'Edição Matutina', 'Grupo Record', 35, '2026-06-28');

INSERT INTO item_acervo (id, nome, descricao_breve, tipo, ativo, autor, isbn, edicao, editora, numero_paginas, data_publicacao) 
VALUES (UUID_TO_BIN(UUID()), 'Gazeta do Povo', 'Cobertura nacional com foco em política.', 'JORNAL', 1, 'Redação Gazeta', NULL, 'Edição Diária', 'Gazeta do Povo', 30, '2026-06-28');
