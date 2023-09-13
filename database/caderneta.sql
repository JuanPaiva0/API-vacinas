CREATE DATABASE caderneta_vacinas

--Criação do banco de dados

CREATE TABLE vacina_idosoAdulto(
  id_vacinaIdosoAdulto int NOT NULL AUTO_INCREMENT,
  nome_vacina varchar(100) NOT NULL,
  protecao_contra varchar(100),
  composicao varchar(100),
  num_doses varchar(200),
  idade_recomendada varchar(100),
  intervalo_doses varchar(200),
  primary key (id_vacinaIdosoAdulto);
)
--Criação da tabela de vacinas para idosos e adultos

INSERT INTO vacina_idosoAdulto (nome_vacina, protecao_contra, composicao, num_doses, idade_recomendada, intervalo_doses) VALUES
('Hepatite B recombinante',
 'Hepatite B',
'Antigeno recombinante de superficie do virus purificado',
'3 doses (iniciar ou completar o esquema, de acordo com a situacao vacinal)',
' ',
 'Recomendado: 2 dose, 1 mes apos primeira dois. 
  3 dose, 6 meses apos primeira dose.
  Minimo: 2 dose, 1 mes apos primeira dose. 
  3 dose, 4 meses apos primeira dose');

--inserção de dados na tabela de vacinas de idoso e adultos

-- dados vacina Hepatite B

INSERT INTO vacina_idosoAdulto (nome_vacina, protecao_contra, composicao, num_doses, idade_recomendada, intervalo_doses) VALUES
('Difteria e Tetano (dt)',
 'Dfiteria e Tetano',
'Toxoides diftérico etetânico purificados,inativada',
'Esquema Basico: 3 doses (iniciar ou completar o esquema, de acordo com situação  vacinal. 
Reforço: A cada 10 anos. Em casos de ferimentos graves a cada 5 anos)',
' ', 
'Recomendado: 60 dias. 
Minino: 30 dias');

-- dados vacina Difteria e Tétano (dT)

INSERT INTO vacina_idosoAdulto (nome_vacina, protecao_contra, composicao, num_doses, idade_recomendada, intervalo_doses) VALUES
('Febre Amarela (Atenuada)',
 'Febre amarela',
 'Virus vivo atenuado',
 'Esquema basico: Dose unica, para pessoa que nunca foramm vacinadas ou sem comprovante de vacinção. 
  Reforço: Reforço, caso a pessoa tenha recebido uma dose da vacina antes de completar 5 anos de idade até 59 anos de idade.',
 'Dose única para pessoas até 59 anos de idade, não vacinada',
 ' ');

-- dados vacina Febre Amarela

INSERT INTO vacina_idosoAdulto (nome_vacina, protecao_contra, composicao, num_doses, idade_recomendada, intervalo_doses) VALUES
('Sarampo, Caxumba e Rubéola(SCR) (1) (2',
 'Sarampo, Caxumba e Rubéola',
 'Viús vivo atenuado', 
 '2 doses (20 a 29 anos) 1 dose (30 a 59 anos) (verificar situação vacinal anterior)', 
 ' ', 
 'Minino: 30 dias');

-- dados vacina Sarampo, Caxumba e Rubéola

INSERT INTO vacina_idosoAdulto (nome_vacina, protecao_contra, composicao, num_doses, idade_recomendada, intervalo_doses) VALUES
('Pneumocócica 23-valente (PPV 23) (3)',
 'Meningite, Sepse Pneumonias, Sinusite, Otite e Bronquite', 'Polissacarídeo capsular de 23 sorotipos pneumococos', 
 'Esquema Básico: 1 dose. 
  Reforço: 1 dose deve ser feita 5 anos após a primeira dose', 
  '60 anos (acamados ou institucionalizados)', 
  ' ');

-- dados vacina meningite e pneumonia

-- Fim dos dados de vacinas para adultos e idosos

CREATE TABLE vacina_criancas(
  id_vacinaCriancas int NOT NULL AUTO_INCREMENT,
  nome_vacina varchar(100) NOT NULL,
  protecao_contra varchar(100),
  composicao varchar(150),
  num_doses varchar(255),
  idade_recomendada varchar(100),
  intervalo_doses varchar(200),
  primary key (id_vacinaCriancas)
);

-- Criação da tebela de vacinas para crianças

INSERT INTO vacina_criancas(nome_vacina, protecao_contra, composicao, num_doses, idade_recomendada, intervalo_doses) VALUES
('BCG(1)',
'Formas graves de tuberculose, meníngea e miliar',
'Bactéria viva atenuada',
'Esquema Básico: Dose única',
'Ao Nascer',
' '  
);

-- dados vacina BCG

INSERT INTO vacina_criancas(nome_vacina, protecao_contra, composicao, num_doses, idade_recomendada, intervalo_doses) VALUES
('Hepatite B recombinante (2)',
'Hepatite B',
'Antígeno recombinantede superfície do vírus purificado',
'Esquema Básico: ao nascer',
'Ao nascer',
' '
);

-- dados vacina hepatite B

INSERT INTO vacina_criancas(nome_vacina, protecao_contra, composicao, num_doses, idade_recomendada, intervalo_doses) VALUES
('Poliomielite 1,2,3 (VIP - inativada)',
'Poliomielite',
'Vírus inativado tipos 1,2, e 3',
'Esquema Básico: 3 doses. Reforço: 2 reforços com a vacina VOP',
'1ª dose: 2 meses. 2ª dose: 4 meses. 3ª dose: 6 meses',
'Recomendado: 60 dias. Minimo: 30 dias');

-- dados vacina poliomelite VIP

INSERT INTO vacina_criancas(nome_vacina, protecao_contra, composicao, num_doses, idade_recomendada, intervalo_doses) VALUES
('Poliomielite 1 e 3 (VOP - atenuada)',
'Poliomielite ',
'Vírus vivo atenuadotipos 1 e 3',
'Reforço: 2 reforços', 
'1° Reforço: 15 meses. 2° Reforço: 4 anos de idade',
'Minimmo: 1º reforço: 6 meses após 3ª dose da VIP.
2º reforço: 6 meses após 1º reforço '
);

-- dados vacinas poliomelite VOP

INSERT INTO vacina_criancas(nome_vacina, protecao_contra, composicao, num_doses, idade_recomendada, intervalo_doses) VALUES
('Rotavírus humano G1P1 (VRH) (3)',
'Diarreia por Rotavírus',
'Vírus vivo atenuado',
'Esquema Básico: 2 doses',
'1ª dose: 2 meses
2ª dose: 4 meses',
'Recomendado: 60 dias.
Minimo: 30 dias');

-- dados vacinas rotavírus

INSERT INTO vacina_criancas(nome_vacina, protecao_contra, composicao, num_doses, idade_recomendada, intervalo_doses) VALUES
('DTP+Hib+HB (Penta)',
'Difteria, Tétano, Coqueluche, Haemophilus influenzae B e Hepatite B',
'Toxoides diftérico e tetânico purificados e bactéria da coquelucheinativada.
Oligossacarídeos conjugados do HiB, antígeno de superfíciede HB',
'Esquema Básico: 3 doses.
Reforço: 2 reforços com a vacina DTP',
'1ª dose: 2 meses
2ª dose: 4meses
3ª dose: 6 meses',
'Recomendado: 60 dias.
Minimo: 30 dias');

-- dados vacina DTP+Hib+HB (Penta)

INSERT INTO vacina_criancas(nome_vacina, protecao_contra, composicao, num_doses, idade_recomendada, intervalo_doses) VALUES
('Pneumocócica 10-valente (PCV 10) (4',
'Pneumonias, Meningites, Otites,Sinusites pelos sorotipos que compõem a vacina',
'Polissacarídeo capsularde 10 sorotipos pneumococos',
'Esquema Básico: 2 doses.
Reforço: reforço',
'1ª dose: 2 meses
2ª dose: 4meses
Reforço: 12meses',
'Recomendado: 60 dias.
Minino: 30 dias da 1ª para2ª dose e de 60 dias da 2ª dose para o 1º reforço');

-- dados vacina Pneumocócica

INSERT INTO vacina_criancas(nome_vacina, protecao_contra, composicao, num_doses, idade_recomendada, intervalo_doses) VALUES
('Meningocócica C (Conjugada) (4)',
'Meningite meningocócica tipo C',
'Polissacarídeos capsulares purificadosda Neisseria meningitidis do sorogrupo C',
'Esquema Básico: 2 doses.
Reforço: reforço',
'1ª dose:3 meses
2ª dose: 5 meses
Reforço: 12 meses',
'Recomendado: 60 dias.
Mínimo: 30 dias da 1ª para2ª dose e de 60 dias da 2ª dose para o 1º reforço');

--dados vacina Meningite tipo C

INSERT INTO vacina_criancas(nome_vacina, protecao_contra, composicao, num_doses, idade_recomendada, intervalo_doses) VALUES
('Febre Amarela (Atenuada) (5)',
'Febre Amarela',
'Vírus vivo atenuado',
'Esquema Básico: 1 dose.
Reforço: reforço',
'Dose: 9 meses
Reforço: 4 anos de idade',
'Mínino: 30 dias');

-- dados vacina Febre Amarela

INSERT INTO vacina_criancas(nome_vacina, protecao_contra, composicao, num_doses, idade_recomendada, intervalo_doses) VALUES
('Sarampo, Caxumba e Rubéola (SCR) (6)',
'Sarampo, Caxumba e Rubéola',
'Vírus vivos atenuados',
'Esquema Básico: 2 doses (primeira dose com SCR e segunda dose com SCRV)',
'12 meses',
'Mínino: 30 dias');

-- dados vacina Sarampo, Caxumba e Rubéola

INSERT INTO vacina_criancas(nome_vacina, protecao_contra, composicao, num_doses, idade_recomendada, intervalo_doses) VALUES
('Sarampo, Caxumba, Rubéola e Varicela (SCRV) (4) (7)',
'Sarampo, Caxumba, Rubéola e Varicela',
'Vírus vivos atenuados',
'Esquema Básico: 2 doses (segunda dose da SCR e primeira devaricela)',
'15 meses',
'Mínimo: 30 dias entre a dose de tríplice viral e a dose de tetraviral');

-- dados vacina Sarampo, Caxumba, Rubéola e Varicela

INSERT INTO vacina_criancas(nome_vacina, protecao_contra, composicao, num_doses, idade_recomendada, intervalo_doses) VALUES
('Hepatite A (HA) (4)',
'Hepatite A',
'Antígeno do vírus da hepatite A, inativada',
'Esquema Básico: 1 dose',
'15 meses',
' ');

-- dados vacina Hepatite A

INSERT INTO vacina_criancas(nome_vacina, protecao_contra, composicao, num_doses, idade_recomendada, intervalo_doses) VALUES
('Difteria, Tétano e Pertussis (DTP)',
'Difteria Tétanoe Coqueluche',
'Toxoides diftérico e tetânico purificados e bactéria da coqueluche, inativada',
'Esquema Básico: Considerar doses anteriores com o penta e DTP.
Reforço: 2 reforços',
'1º reforço: 15 meses
2º reforço: 4 anos de idade',
'Recomendado: 1º ref. 9 meses após 3ª dose
2º ref. 3 anos após 1º reforço.
Minimo: 1º reforço: 6 meses após 3ª dose
2ºreforço: 6 meses após 1º reforço');

-- dados vacina Difteria, Tétano e Pertussis (DTP)

INSERT INTO vacina_criancas (nome_vacina, protecao_contra, composicao, num_doses, idade_recomendada, intervalo_doses) VALUES
('Difteria e Tétano (dT)',
'Difteria e Tétano',
'Toxoides diftérico e tetânico purificados, inativada',
'Esquema Básico: 3 doses (Considerar doses anteriores com penta e DTP)
Reforço: A cada 10 anos. Em caso de ferimentos graves a cada 5 anos',
'A partir dos 7 anos de idade',
'Recomendado: 60 dias.
Mínino: 30 dias');

-- dados vacina Difteria e Tétano (dT)

INSERT INTO vacina_criancas(nome_vacina, protecao_contra, composicao, num_doses, idade_recomendada, intervalo_doses) VALUES
('Papilomavírus humano (HPV)',
'Papilomavírus Humano 6, 11, 16 e 18 (recombinante)',
'Partícula da cápsula dovírus antígeno de superfície',
'Recomendado: 2 doses',
'9 a 14 anos para meninas e meninos',
'Recomendado: 2ª dose: 6 meses após 1ª dose');

-- dados vacina HPV 

INSERT INTO vacina_criancas(nome_vacina,protecao_contra, composicao, num_doses, idade_recomendada, intervalo_doses) VALUES
('Pneumocócica 23-valente (PPV 23) (8)',
'Meningite, Sepse Pneumonias, Sinusite, Otite e Bronquite',
'Polissacarídeo capsularde 23 sorotipos pneumococos',
'Esquema Básico: 1 dose',
'A partir de 5 anos de idade para os povos indígenas, sem comprovação da vacina PCV 10',
' ');

-- dados vacina Pneumocócica 23-valente (PPV 23) (8)

INSERT INTO vacina_criancas(nome_vacina, protecao_contra, composicao, num_doses, idade_recomendada, intervalo_doses) VALUES
('Varicela (9)',
'Varicela',
'Vírus vivo atenuado',
'Esquema Básico: 1 dose (corresponde à segunda dose da varicela)',
'4 anos',
'Mínino: 30 dias');

-- dados vacina Varicela

-- Fim dos dados de vacinas para crianças

-- tabela de vacina para gestante

CREATE TABLE vacina_gestante(
  id_vacinaGestante int NOT NULL AUTO_INCREMENT,
  nome_vacina varchar(100) NOT NULL,
  protecao_contra varchar(100),
  composicao varchar(150),
  num_doses varchar(255),
  idade_recomendada varchar(100),
  intervalo_doses varchar(200),
  primary key (id_vacinaGestante)
);

-- Criação da tebela de vacinas para gestantes

INSERT INTO vacina_gestante(nome_vacina, protecao_contra, composicao, num_doses, idade_recomendada, intervalo_doses) VALUES
('Hepatite B recombinante (1)',
'Hepatite B',
'Antígeno recombinante de superfície do vírus purificado',
'Esquema Básico: 3 doses (iniciar ou completar o esquema, de acordo com situação vacinal, independentemente da idade gestacional)',
' ',
'Recomendado: 2ª dose: 1 mês após 1ª dose 
3ª dose: 6 meses após 1ª dose.
Mínino: 2ª dose: 1 mês após 1ª dose
3ª dose: 4 meses após 1ª dose');

-- dados vacina Hepatite B recombinante (1)

INSERT INTO vacina_gestante(nome_vacina, protecao_contra, composicao, num_doses, idade_recomendada, intervalo_doses) VALUES
('Difteria e Tétano (dT)',
'Difteria e Tétano',
'Toxoides diftérico e tetânico',
'Esquema Básico: 3 doses (iniciar ou completar o esquema, de acordo com situação vacinal)
Reforço: A cada 10 anos. Em caso de ferimentos graves a cada 5 anos',
' ',
'Recomendado: 60 dias.
Mínino: 30 dias');

-- dados vacina Difteria e Tétano (dT)

INSERT INTO vacina_gestante(nome_vacina, protecao_contra, composicao, num_doses, idade_recomendada, intervalo_doses) VALUES
('Difteria, Tétano e Pertussis acelular (dTpa) (2)',
'Difteria, Tétano e Coqueluche',
'Toxoides diftérico e tetânico purificados e bactéria da coqueluche, inativada',
'Esquema Básico:1 dose para gestantes a partir da 20ª semana de gravidez.
Reforço: 1 dose a cada gestação',
' ',
'Recomendado: 60 dias após dT.
Mínino: 30 dias após dT');

-- dados vacina Difteria, Tétano e Pertussis acelular (dTpa) (2)

-- fim dos dados de vacinas para gestantes

CREATE TABLE vacina_adolescente(
  id_vacinaAdolescente int NOT NULL AUTO_INCREMENT,
  nome_vacina varchar(100) NOT NULL,
  protecao_contra varchar(100),
  composicao varchar(150),
  num_doses varchar(255),
  idade_recomendada varchar(100),
  intervalo_doses varchar(200),
  primary key (id_vacinaAdolescente)
);

-- Criação da tabela de vacina para adolescente

INSERT INTO vacina_adolescente(nome_vacina, protecao_contra, composicao, num_doses, idade_recomendada, intervalo_doses) VALUES
('Hepatite B recombinante',
'Hepatite B',
'Antígeno recombinante de superfície do vírus purificado',
'Esquema Básico: 3 doses (iniciar ou completar o esquema, de acordo com situação vacinal)',
' ',
'Recomendado: 2ª dose: 1 mês após 1ª dose
3ª dose: 6 meses após 1ª dose.
Mínino: 2ª dose: 1 mês após 1ª dose
3ª dose: 4 meses após 1ª dose');

-- dados vacina Hepatite B

INSERT INTO vacina_adolescente(nome_vacina, protecao_contra, composicao, num_doses, idade_recomendada, intervalo_doses) VALUES
('Difteria e Tétano (dT)',
'Difteria e Tétano',
'Toxoides diftérico e tetânico purificados, inativada',
'Esquema Básico: 3 doses (iniciar ou completar o esquema, de acordo com situação vacinal).
Reforço: A cada 10 anos. Em caso de ferimentos graves a cada 5 anos',
' ',
'Recomendado: 60 dias.
Mínino: 30 dias');

-- dados vacina Difteria e Tétano (dT)

INSERT INTO vacina_adolescente(nome_vacina, protecao_contra, composicao, num_doses, idade_recomendada, intervalo_doses) VALUES
('Febre amarela (Atenuada)',
'Febre Amarela',
'Vírus vivo atenuado',
'Esquema Básico: Dose única, para pessoas que nunca foram vacinadas ou sem comprovante de vacinação.
Reforço: Reforço, caso a pessoa tenha recebido uma dose da vacina antes de completar 5 anos de idade',
'Dose única para pessoas que nunca foram vacinadas ou sem comprovante de vacinação',
' ');

-- dados vacina Febre Amarela

INSERT INTO vacina_adolescente(nome_vacina, protecao_contra, composicao, num_doses, idade_recomendada, intervalo_doses) VALUES
('Sarampo, Caxumba e Rubéola (SCR) (1) (2)',
'Sarampo, Caxumba e Rubéola',
'Vírus vivos atenuados',
'Esquema Básico: Iniciar ou completar 2 doses, de acordo com situação vacinal',
' ',
'Mínino: 30 dias');

-- dados vacina Sarampo, Caxumba e Rubéola (SCR) (1) (2)

INSERT INTO vacina_adolescente(nome_vacina, protecao_contra, composicao, num_doses, idade_recomendada, intervalo_doses) VALUES
('Papilomavírus humano(HPV) (3)',
'Papilomavírus humano 6, 11, 16 e 18 (recombinante)',
'Partícula da cápsulado vírus antígeno de superfície',
'Esquema Básico: Iniciar ou completar 2 doses, de acordo com situação vacinal',
'9 a 14 anos para Meninas e Meninos',
'Recomendado: 2ª dose: 6 meses após 1ª dose');

-- dados vacina Papilomavírus humano(HPV) (3)

INSERT INTO vacina_adolescente(nome_vacina, protecao_contra, composicao, num_doses, idade_recomendada, intervalo_doses) VALUES
('Pneumocócica 23-valente (PPV 23) (4)',
'Meningite, Sepse Pneumonias, Sinusite, Otite e Bronquite',
'Polissacarídeo capsular de 23 sorotipos pneumococos',
'Esquema Básico: 1 dose',
'A partir de 5 anos de idade para os povos indígenas, sem comprovação da vacina PCV 10',
' ');

-- dados vacina Pneumocócica 23-valente (PPV 23) (4)

INSERT INTO vacina_adolescente(nome_vacina, protecao_contra, composicao, num_doses, idade_recomendada, intervalo_doses) VALUES
('Meningocócica ACWY (Conjugada)',
'Meningite meningocócica sorogrupos A, C, W e Y',
'Polissacarídeos capsulares purificados da Neisseria meningitidis dossorogrupos A, C, W e Y',
'Esquema Básico: 1 dose',
'11 e 14 anos',
' ');

-- dados vacina Meningocócica ACWY (Conjugada)

-- Fim dos dados de vacina para adolescente