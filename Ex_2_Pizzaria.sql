CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
	id BIGINT AUTO_INCREMENT,
    num_mesa BIGINT,
    forma_pagamento VARCHAR(250),
    pagamento_efetuado BOOLEAN,
    PRIMARY KEY (id)
);
CREATE TABLE tb_pizza(
	id BIGINT AUTO_INCREMENT,
    sabor VARCHAR(250),
    preco DECIMAL(10,2),
    tamanho VARCHAR(250),
    quantidade BIGINT,
    bebida VARCHAR(250),
    fK_categoria BIGINT,
	PRIMARY KEY (id), 
    FOREIGN KEY (fK_categoria) REFERENCES tb_categoria(id)
);
INSERT INTO tb_categoria (num_mesa,forma_pagamento,pagamento_efetuado)
VALUES 
(1,"cartão débito", true),
(3,"cartão crédito", true),
(2,"dinheiro", true),
(4,"cartão crédito",true),
(5,"cartão débito",true);
INSERT INTO tb_pizza(sabor,preco,tamanho,quantidade,bebida,fk_categoria)
VALUES 
("marguerita",52.00,"grande",1,"coca-cola",1),
("mussarela",49.00,"grande",2,"guaraná",2),
("calabresa",49.00,"grande",1,"coca-cola",3),
("marguerita",35.00,"broto",1,"sprite",5),
("calabresa",32.00,"broto",1,"coca-cola",3),
("frango catupiri",35.00,"broto",1,"coca-cola",4),
("mussarela",49.00,"grande",2,"coca-cola",5),
("calabresa",49.00,"grande",1,"sprite",1);

SELECT tb_pizza.sabor, tb_pizza.preco FROM tb_pizza
WHERE preco > 45;

SELECT tb_pizza.sabor, tb_pizza.preco FROM tb_pizza
WHERE preco >= 29
AND preco <= 60;

SELECT*FROM tb_pizza WHERE tb_pizza.sabor LIKE "%c%";

SELECT*FROM tb_categoria
INNER JOIN tb_pizza ON  tb_categoria.id = tb_pizza.fK_categoria;

SELECT tb_pizza.sabor, tb_categoria.num_mesa FROM tb_pizza, tb_categoria 
	WHERE tb_pizza.sabor = "marguerita";










