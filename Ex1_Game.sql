CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;
CREATE TABLE tb_classe(
	id BIGINT AUTO_INCREMENT,
    pontos BIGINT(250) NOT NULL,
    fase BIGINT(250) NOT NULL,
    vidas BIGINT(250) NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE tb_personagem(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR (250) NOT NULL,
    genero VARCHAR(250) NOT NULL,
    poder_ataque BIGINT NOT NULL,
    poder_defesa BIGINT NOT NULL,
    habilidade VARCHAR(250) NOT NULL,
    fk_classe BIGINT , 
    PRIMARY KEY (id),
    FOREIGN KEY (fk_classe) REFERENCES tb_classe(id)    
);
INSERT INTO tb_classe(pontos,fase,vidas) 
VALUES 
(2000,2,5),
(5000,1,3),
(4000,5,2),
(2500,2,3),
(3200,3,1);

INSERT INTO tb_personagem(nome,genero,poder_ataque,poder_defesa,habilidade,fk_classe) 
VALUES 
('Blade', 'masculino', 5000, 3000, 'chute', 1),
('Sakura','feminino',4000, 5000, 'velocidade',2),
('Kratos', 'masculino', 4000, 4000, 'força',3),
('Era', 'feminino',5000, 4000,'sabedoria',4),
('Morfeu','masculino',5000,4000,'perseverança',5),
('Atena','feminino',4000,5000, 'atenção aos detalhes',1),
('Zeus','masculino',4000,5000,'mentalidade de crescimento',2),
('Luna','feminino',5000,3000,'honestidade',3);

SELECT tb_personagem.nome, tb_personagem.poder_ataque FROM tb_personagem 
WHERE poder_ataque > 2000;

SELECT tb_personagem.nome, tb_personagem.poder_defesa FROM tb_personagem 
WHERE poder_defesa >= 1000
AND poder_defesa <= 2000;

SELECT*FROM tb_personagem WHERE tb_personagem.nome LIKE "% C %";

SELECT*FROM tb_personagem
INNER JOIN tb_classe ON  tb_classe.id = tb_personagem.fk_classe;

SELECT tb_personagem.nome, tb_classe.fase FROM tb_classe, tb_personagem 
	WHERE tb_classe.fase = 2












