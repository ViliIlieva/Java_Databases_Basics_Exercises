ALTER TABLE `products` 
ADD CONSTRAINT `fk`
  FOREIGN KEY (`category_id`)
  REFERENCES `categories` (`id`)
  ;
