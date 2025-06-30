CREATE TABLE books (
  id INT NOT NULL,
  author VARCHAR(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  name VARCHAR(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  pages INT DEFAULT NULL,
  publication VARCHAR(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  created_on TIMESTAMP NULL DEFAULT NULL,
  updated_on TIMESTAMP NULL DEFAULT NULL,
  is_deleted TINYINT(1) DEFAULT NULL,
  price FLOAT DEFAULT NULL,
  PRIMARY KEY (id)
);


CREATE TABLE book_instance (
  id INT NOT NULL,
  book_id INT DEFAULT NULL,
  rack_no INT DEFAULT NULL,
  shelf_no INT DEFAULT NULL,
  created_at TIMESTAMP NULL DEFAULT NULL,
  updated_at TIMESTAMP NULL DEFAULT NULL,
  is_deleted TINYINT(1) DEFAULT NULL,
  PRIMARY KEY (id),
  KEY fk_book_id (book_id),
  CONSTRAINT fk_book_id FOREIGN KEY (book_id) REFERENCES books (id)
);

CREATE TABLE users (
  id INT NOT NULL,
  name VARCHAR(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  phone VARCHAR(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  email VARCHAR(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  address VARCHAR(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  created_at TIMESTAMP NULL DEFAULT NULL,
  updated_at TIMESTAMP NULL DEFAULT NULL,
  is_deleted TINYINT(1) DEFAULT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE card (
  id INT NOT NULL,
  user_id INT DEFAULT NULL,
  card_no VARCHAR(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (id),
  KEY fk_user_id (user_id),
  CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES users (id)
);

CREATE TABLE borrows (
  id INT NOT NULL,
  card_id INT DEFAULT NULL,
  book_id INT DEFAULT NULL,
  issue_date TIMESTAMP NULL DEFAULT NULL,
  return_date TIMESTAMP NULL DEFAULT NULL,
  is_damaged TINYINT(1) DEFAULT NULL,
  damage_charges FLOAT DEFAULT NULL,
  created_at TIMESTAMP NULL DEFAULT NULL,
  updated_at TIMESTAMP NULL DEFAULT NULL,
  is_deleted TINYINT(1) DEFAULT NULL,
  PRIMARY KEY (id),
  KEY fk_card_id (card_id),
  KEY fk_book_2_id (book_id),
  CONSTRAINT fk_book_2_id FOREIGN KEY (book_id) REFERENCES books (id),
  CONSTRAINT fk_card_id FOREIGN KEY (card_id) REFERENCES card (id)
);
select * from borrows;
