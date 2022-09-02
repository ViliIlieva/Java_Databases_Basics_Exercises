ALTER TABLE `minions`
ADD COLUMN `town_id` INT;

ALTER TABLE `minions`
ADD CONSTRAINT `fk`
FOREIGN KEY `minions`(`town_id`)
REFERENCES `towns`(`id`)
;
