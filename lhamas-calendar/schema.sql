DROP TABLE IF EXISTS compromisso;
DROP TABLE IF EXISTS indisponibilidade;
DROP TABLE IF EXISTS pessoa_posicao;
DROP TABLE IF EXISTS pessoa;
DROP TABLE IF EXISTS evento;
DROP TABLE IF EXISTS posicao;
DROP TABLE IF EXISTS servico;

CREATE TABLE servico (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  descricao TEXT UNIQUE NOT NULL,
  hora_inicio TEXT NOT NULL,
  hora_fim TEXT NOT NULL
);

CREATE TABLE posicao (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  servico_id INTEGER NOT NULL,
  descricao TEXT UNIQUE NOT NULL,
  obrigatorio INTEGER NOT NULL,
  FOREIGN KEY (servico_id) REFERENCES servico (id)
);

CREATE TABLE evento (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  servico_id INTEGER NOT NULL,
  dia TEXT NOT NULL,
  FOREIGN KEY (servico_id) REFERENCES servico (id)
);

CREATE TABLE pessoa (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nome TEXT NOT NULL,
  email TEXT UNIQUE NOT NULL
);

CREATE TABLE pessoa_posicao (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  pessoa_id INTEGER NOT NULL,
  posicao_id INTEGER NOT NULL,
  FOREIGN KEY (pessoa_id) REFERENCES pessoa (id),
  FOREIGN KEY (posicao_id) REFERENCES posicao (id)
);

CREATE TABLE indisponibilidade (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  pessoa_id INTEGER NOT NULL,
  datahora_inicio TEXT NOT NULL,
  datahora_fim TEXT NOT NULL,
  FOREIGN KEY (pessoa_id) REFERENCES pessoa (id)
);

CREATE TABLE compromisso (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  pessoa_id INTEGER NOT NULL,
  posicao_id INTEGER NOT NULL,
  evento_id INTEGER NOT NULL,
  FOREIGN KEY (pessoa_id) REFERENCES pessoa (id),
  FOREIGN KEY (evento_id) REFERENCES evento (id),
  FOREIGN KEY (posicao_id) REFERENCES posicao (id)
);