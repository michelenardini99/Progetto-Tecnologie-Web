CREATE TABLE `pokedb`.`members` (
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `username` VARCHAR(30) NOT NULL, 
  `email` VARCHAR(50) NOT NULL, 
  `password` CHAR(128) NOT NULL, 
  `salt` CHAR(128) NOT NULL
) ENGINE = InnoDB; 

CREATE TABLE `pokedb`.`login_attempts` (
  `user_id` INT(11) NOT NULL,
  `time` VARCHAR(30) NOT NULL 
) ENGINE=InnoDB;

CREATE TABLE `pokedb`.`order`(
  `id_order` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `username` VARCHAR(30),
  FOREIGN KEY (`username`) REFERENCES `pokedb`.`members`(`username`)
) ENGINE=InnoDB;

CREATE TABLE orders_pokemon(
	orderId INT(11),
    pokemonId INT(11),
    FOREIGN KEY(orderId) REFERENCES orders(orders.orderId),
    FOREIGN KEY(pokemonId) REFERENCES pokemon(id)
);

CREATE TABLE `pokedb`.`types_color` (
  `name` VARCHAR(30) NOT NULL,
  `color` VARCHAR(30) NOT NULL 
) ENGINE=InnoDB;

INSERT INTO `pokedb`.`types_color` (`name`,`color`) 
VALUES ("normal", "#f2f2f2"),
("fighting", "#d56722"),
("flying", "#f2f2f2"),
("poison", "#b97fc9"),
("ground", "#f6de3e"),
("rock", "#a38c22"),
("bug", "#729f40"),
("ghost", "#7a61a2"),
("steel", "#9eb8b9"), 
("fire", "#fd7d24"),
("water", "#4593c4"), 
("grass", "#9bcc4f"),
("electric", "#efd435"), 
("psychic", "#f466ba"),
("ice", "#52c4e8"), 
("dragon", "#f16f56"),
("dark", "#707070"), 
("fairy", "#fdb9ea")