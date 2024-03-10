-- Schema for product table

CREATE TABLE product (
  id INT PRIMARY KEY AUTO_INCREMENT,  
  name VARCHAR(255) NOT NULL,
  desc TEXT,
  SKU VARCHAR(255) UNIQUE,  -- Assuming SKU is unique for each product
  category_id INT NOT NULL,
  inventory_id INT DEFAULT NULL, 
  price DECIMAL(10,2) NOT NULL, 
  discount_id INT DEFAULT NULL,  
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  modified_at DATETIME DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  deleted_at DATETIME DEFAULT NULL,
  FOREIGN KEY (category_id) REFERENCES product_category(id), 
  FOREIGN KEY (inventory_id) REFERENCES product_inventory(id), 
  FOREIGN KEY (discount_id) REFERENCES discount(id)  
);

-- Schema for product_category table

CREATE TABLE product_category (
  id INT PRIMARY KEY AUTO_INCREMENT,  
  name VARCHAR(255) NOT NULL,
  desc TEXT,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  modified_at DATETIME DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  deleted_at DATETIME DEFAULT NULL
);