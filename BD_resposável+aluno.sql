create table contasresposAGV (
  cpf_respos integer PRIMARY key,
  nome text,
  gmail text,
  senha text );

CREATE TABLE contasalunosAGV (
  cpf_aluno integer PRIMARY key,
  nome text,
  gmail text,
  senha text,
  turma text,
  telefone text,
  respos integer,
  FOREIGN key (respos) REFERENCES contasresposAGV(cpf_respos) 
	);
  
  insert into contasresposAGV (cpf_respos, nome, gmail, senha)
VALUES (12345678910, 'Poliana', 'polianapgua@gmail.com', '456def');
INSERT into contasalunosAGV (cpf_aluno, nome, gmail, senha, turma, telefone, respos)
values (01987654321, 'Felipe', 'felipe.felix.mendes@gmail', '123abc', '2ds', 41988739960, 12345678910);
insert into contasresposAGV (cpf_respos, nome, gmail, senha)
VALUES (92639410789, 'Cleide', 'clidebom@gmail.com', '567ygt');
INSERT into contasalunosAGV (cpf_aluno, nome, gmail, senha, turma, telefone, respos)
values (93518456092, 'João', 'joãojorgesantos@gmail', '16389yhd', '3adm', 41977650098, 92639410789);
insert into contasresposAGV (cpf_respos, nome, gmail, senha)
VALUES (83018364561, 'Jorge', 'jorgebao67@gmail.com', '676767');
INSERT into contasalunosAGV (cpf_aluno, nome, gmail, senha, turma, telefone, respos)
values (93619567890, 'Ana', 'anaarrastoules@gmail', 'gang8721', '1bio', 41988654009, 83018364561);
insert into contasresposAGV (cpf_respos, nome, gmail, senha)
VALUES (93710984561, 'Pericles', 'periclesdamassa@gmail.com', '763nds');
INSERT into contasalunosAGV (cpf_aluno, nome, gmail, senha, turma, telefone, respos)
values (90837132345, 'Julia', 'juliagoncalves@gmail', 'pericles', '2adm', 41990835134, 93710984561);
insert into contasresposAGV (cpf_respos, nome, gmail, senha)
VALUES (93714624456, 'Karlos', 'karlosgames@gmail.com', 'gamesaregood');
INSERT into contasalunosAGV (cpf_aluno, nome, gmail, senha, turma, telefone, respos)
values (39319048324, 'Preponcio', 'prepuncio@gmail', '1256ytr', '1ds', 41939013456, 93714624456);
INSERT into contasalunosAGV (cpf_aluno, nome, gmail, senha, turma, telefone, respos)
values (30495810384, 'Karla', 'Karlaamagames@gmail', 'gamesomg', '2ds', 41988037455, 93714624456);
insert into contasresposAGV (cpf_respos, nome, gmail, senha)
VALUES (29013471345, 'Luciana', 'lucianagote@gmail.com', '39491fgh');
INSERT into contasalunosAGV (cpf_aluno, nome, gmail, senha, turma, telefone, respos)
values (90949551678, 'Homero', 'homerobritto@gmail', 'ilovehomerobritto', '3ds', 41988459415, 29013471345);
insert into contasresposAGV (cpf_respos, nome, gmail, senha)
VALUES (87491734566, 'Sanji', 'lek@gmail.com', '456deo');
INSERT into contasalunosAGV (cpf_aluno, nome, gmail, senha, turma, telefone, respos)
values (38400750345, 'Limpolio', 'limpoliodamssa@gmail', '123a0945', '3portos', 41930481956, 87491734566);
INSERT into contasalunosAGV (cpf_aluno, nome, gmail, senha, turma, telefone, respos)
values (98387654321, 'Kamila', 'meupaideverdadeeokarlos@gmail', '345oip', '1portos', 41903919456, 87491734566);
INSERT into contasalunosAGV (cpf_aluno, nome, gmail, senha, turma, telefone, respos)
values (93087654321, 'Acabou', 'termineiatabelagraçasaDeus@gmail', 'Godisgood', '8ds', 41989031056, 87491734566);

SELECT 
    a.nome AS aluno,
    a.turma,
    a.gmail AS gmail_aluno,
    a.telefone AS contato_aluno,
    r.nome AS responsavel,
    r.gmail AS email_responsavel
FROM contasalunosAGV a
LEFT JOIN contasresposAGV r ON a.respos = r.cpf_respos -- Relaciona os nomes dos alunos aos seus responsáveis;