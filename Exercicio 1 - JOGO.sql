CREATE DATABASE db_generation_game_online;

CREATE TABLE tb_classes(

id BIGINT AUTO_INCREMENT,
classe VARCHAR(255),
arma VARCHAR(255), 
PRIMARY KEY (id)

);

CREATE TABLE tb_personagens(

id BIGINT AUTO_INCREMENT,

nick VARCHAR(255),

nivel INT,

defesa VARCHAR(255),

poder BIGINT,

classes_id BIGINT,

PRIMARY KEY (id),

FOREIGN KEY (classes_id) REFERENCES tb_classes(id)

);

-- INTO tb_classes (classe, arma)
-- VALUES ("Espadachim", "Espada")

SELECT * FROM tb_personagens;

SELECT * FROM tb_classes;

INSERT INTO tb_personagens(nick, nivel, defesa, poder, classes_id)
VALUES("Vicky", 300, 1000, 3000, 4);

SELECT * FROM tb_personagens WHERE poder >= 2000;

SELECT * FROM tb_personagens WHERE defesa >= 1000 AND defesa <= 2000;

SELECT * FROM tb_personagens WHERE nick LIKE "%C%";

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classes_id = tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classes_id = tb_classes.id
WHERE tb_personagens.classes_id=1;




