INSERT INTO `books` (`id`, `author`, `title`, `pages`, `publisher`, `created_at`, `updated_at`, `is_deleted`, `price`) VALUES
(1, 'Naval Ravikant', 'The Almanack of Naval Ravikant', 242, 'Harriman House', '2025-06-30 06:38:30', '2025-06-30 06:38:30', 0, 599),
(2, 'John Maxwell', 'The 21 Irrefutable Laws of Leadership', 336, 'HarperCollins', '2025-06-30 06:38:30', '2025-06-30 06:38:30', 0, 699),
(3, 'James Clear', 'Atomic Habits', 320, 'Penguin Random House', '2025-06-30 06:38:30', '2025-06-30 06:38:30', 0, 550),
(4, 'Mark Manson', 'The Subtle Art of Not Giving a F*ck', 224, 'Harper', '2025-06-30 06:38:30', '2025-06-30 06:38:30', 0, 499),
(5, 'Napoleon Hill', 'Think and Grow Rich', 238, 'The Ralston Society', '2025-06-30 06:38:30', '2025-06-30 06:38:30', 0, 450),
(6, 'Robin Sharma', 'The 5 AM Club', 336, 'HarperCollins', '2025-06-30 06:38:30', '2025-06-30 06:38:30', 0, 520),
(7, 'Simon Sinek', 'Start With Why', 256, 'Portfolio', '2025-06-30 06:38:30', '2025-06-30 06:38:30', 0, 480),
(8, 'Cal Newport', 'Deep Work', 304, 'Grand Central Publishing', '2025-06-30 06:38:30', '2025-06-30 06:38:30', 0, 540),
(9, 'Sahil Bloom', 'The Curiosity Chronicle', 220, 'Self-Published', '2025-06-30 06:38:30', '2025-06-30 06:38:30', 0, 410),
(10, 'Ryan Holiday', 'The Obstacle Is The Way', 224, 'Portfolio', '2025-06-30 06:38:30', '2025-06-30 06:38:30', 0, 460);

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `address`, `created_at`, `updated_at`, `is_deleted`) VALUES
(1, 'Alice Johnson', '9876543210', 'alice@example.com', '123 Green Street', '2025-06-30 06:39:04', '2025-06-30 06:39:04', 0),
(2, 'Bob Smith', '9123456780', 'bob@example.com', '456 Blue Avenue', '2025-06-30 06:39:04', '2025-06-30 06:39:04', 0),
(3, 'Charlie Brown', '9988776655', 'charlie@example.com', '789 Red Road', '2025-06-30 06:39:04', '2025-06-30 06:39:04', 0),
(4, 'Diana Prince', '9871203456', 'diana@example.com', '321 Yellow Lane', '2025-06-30 06:39:04', '2025-06-30 06:39:04', 0),
(5, 'Ethan Hunt', '9090909090', 'ethan@example.com', '654 Orange Boulevard', '2025-06-30 06:39:04', '2025-06-30 06:39:04', 0),
(6, 'Fiona Davis', '9112233445', 'fiona@example.com', '987 Violet Drive', '2025-06-30 06:39:04', '2025-06-30 06:39:04', 0);

INSERT INTO `book_instance` (`id`, `book_id`, `card_id`, `shelf_no`, `created_at`, `updated_at`, `is_deleted`) VALUES
(1, 1, 2, 5, '2025-06-30 06:38:40', '2025-06-30 06:38:40', 0),
(2, 1, 2, 6, '2025-06-30 06:38:40', '2025-06-30 06:38:40', 0),
(3, 2, 3, 1, '2025-06-30 06:38:40', '2025-06-30 06:38:40', 0),
(4, 3, 3, 2, '2025-06-30 06:38:40', '2025-06-30 06:38:40', 0),
(5, 4, 1, 4, '2025-06-30 06:38:40', '2025-06-30 06:38:40', 0),
(6, 5, 2, 3, '2025-06-30 06:38:40', '2025-06-30 06:38:40', 0),
(7, 6, 1, 2, '2025-06-30 06:38:40', '2025-06-30 06:38:40', 0),
(8, 7, 1, 3, '2025-06-30 06:38:40', '2025-06-30 06:38:40', 0),
(9, 8, 3, 4, '2025-06-30 06:38:40', '2025-06-30 06:38:40', 0),
(10, 9, 4, 1, '2025-06-30 06:38:40', '2025-06-30 06:38:40', 0);

INSERT INTO `card` (`id`, `user_id`, `card_number`) VALUES
(1, 1, 'CARD001'),
(2, 2, 'CARD002'),
(3, 3, 'CARD003'),
(4, 4, 'CARD004'),
(5, 5, 'CARD005'),
(6, 6, 'CARD006');

INSERT INTO book_instance (id, book_id, rack_no, shelf_no, created_at, updated_at, is_deleted) VALUES
    (1, 1, 2, 5, NOW(), NOW(), 0),
    (2, 1, 2, 6, NOW(), NOW(), 0),
    (3, 2, 3, 1, NOW(), NOW(), 0),
    (4, 3, 3, 2, NOW(), NOW(), 0),
    (5, 4, 1, 4, NOW(), NOW(), 0),
    (6, 5, 2, 3, NOW(), NOW(), 0),
    (7, 6, 1, 2, NOW(), NOW(), 0),
    (8, 7, 1, 3, NOW(), NOW(), 0),
    (9, 8, 3, 4, NOW(), NOW(), 0),
    (10, 9, 4, 1, NOW(), NOW(), 0),
    (11, 10, 4, 2, NOW(), NOW(), 0),
    (16, 6, 10, 1, NOW(), NOW(), 0),   -- Additional copy of "The Almanack of Naval Ravikant"
    (17, 6, 11, 2, NOW(), NOW(), 0),
    (18, 7, 12, 1, NOW(), NOW(), 0),   -- Additional copy of "The 21 Irrefutable Laws of Leadership"
    (19, 7, 13, 3, NOW(), NOW(), 0),
    (20, 8, 14, 2, NOW(), NOW(), 0),   -- Additional copy of "Atomic Habits"
    (21, 8, 15, 1, NOW(), NOW(), 0),
    (22, 9, 16, 1, NOW(), NOW(), 0),   -- Additional copy of "The Subtle Art of Not Giving a F*ck"
    (23, 9, 17, 2, NOW(), NOW(), 0),
    (24, 2, 18, 1, NOW(), NOW(), 0),   -- Additional copy of "The 5 AM Club"
    (25, 1, 19, 3, NOW(), NOW(), 0),
    (26, 3, 20, 2, NOW(), NOW(), 0),   -- Additional copy of "The 5 Second Rule"
    (27, 1, 21, 1, NOW(), NOW(), 0),   -- Additional copy of "Start With Why"
    (28, 3, 22, 2, NOW(), NOW(), 0),   -- Additional copy of "Deep Work"
    (29, 4, 23, 3, NOW(), NOW(), 0),   -- Additional copy of "The Curiosity Chronicle"
    (30, 5, 24, 1, NOW(), NOW(), 0);   -- Additional copy of "The Obstacle Is The Way"

INSERT INTO `borrows` 
(id, user_id, book_instance_id, borrow_date, return_date, is_returned, fine_amount, created_at, updated_at, is_deleted) 
VALUES
(1, 1, 1, '2024-03-31 18:30:00', '2024-04-14 18:30:00', 0, 0, '2025-06-30 06:51:23', '2025-06-30 06:51:23', 0),
(2, 2, 2, '2024-04-04 18:30:00', '2024-04-19 18:30:00', 0, 0, '2025-06-30 06:51:23', '2025-06-30 06:51:23', 0),
(3, 3, 3, '2024-04-09 18:30:00', '2024-04-24 18:30:00', 1, 10, '2025-06-30 06:51:23', '2025-06-30 06:51:23', 0),
(4, 1, 4, '2024-04-14 18:30:00', '2024-04-29 18:30:00', 0, 0, '2025-06-30 06:51:23', '2025-06-30 06:51:23', 0),
(5, 2, 5, '2024-04-19 18:30:00', '2024-05-04 18:30:00', 0, 0, '2025-06-30 06:51:23', '2025-06-30 06:51:23', 0),
(6, 3, 1, '2024-04-24 18:30:00', '2024-05-09 18:30:00', 1, 5, '2025-06-30 06:51:23', '2025-06-30 06:51:23', 0),
(7, 1, 2, '2024-04-30 18:30:00', '2024-05-14 18:30:00', 0, 0, '2025-06-30 06:51:23', '2025-06-30 06:51:23', 0),
(8, 2, 3, '2024-05-04 18:30:00', '2024-05-19 18:30:00', 0, 0, '2025-06-30 06:51:23', '2025-06-30 06:51:23', 0),
(9, 3, 4, '2024-05-09 18:30:00', '2024-05-24 18:30:00', 1, 15, '2025-06-30 06:51:23', '2025-06-30 06:51:23', 0),
(10, 1, 5, '2024-05-14 18:30:00', '2024-05-29 18:30:00', 0, 0, '2025-06-30 06:51:23', '2025-06-30 06:51:23', 0),
(11, 2, 1, '2024-05-19 18:30:00', '2024-06-04 18:30:00', 0, 0, '2025-06-30 06:51:23', '2025-06-30 06:51:23', 0),
(12, 3, 2, '2024-05-24 18:30:00', '2024-06-09 18:30:00', 0, 0, '2025-06-30 06:51:23', '2025-06-30 06:51:23', 0),
(13, 1, 3, '2024-05-31 18:30:00', '2024-06-14 18:30:00', 1, 20, '2025-06-30 06:51:23', '2025-06-30 06:51:23', 0),
(14, 2, 4, '2024-06-04 18:30:00', '2024-06-19 18:30:00', 0, 0, '2025-06-30 06:51:23', '2025-06-30 06:51:23', 0),
(15, 3, 5, '2024-06-09 18:30:00', '2024-06-24 18:30:00', 0, 0, '2025-06-30 06:51:23', '2025-06-30 06:51:23', 0),
(16, 1, 1, '2024-06-14 18:30:00', '2024-06-29 18:30:00', 0, 0, '2025-06-30 06:51:23', '2025-06-30 06:51:23', 0),
(17, 2, 2, '2024-06-19 18:30:00', '2024-07-04 18:30:00', 0, 0, '2025-06-30 06:51:23', '2025-06-30 06:51:23', 0),
(18, 3, 3, '2024-06-24 18:30:00', '2024-07-09 18:30:00', 0, 0, '2025-06-30 06:51:23', '2025-06-30 06:51:23', 0),
(19, 1, 4, '2024-06-30 18:30:00', '2024-07-14 18:30:00', 0, 0, '2025-06-30 06:51:23', '2025-06-30 06:51:23', 0),
(20, 2, 5, '2024-07-04 18:30:00', '2024-07-19 18:30:00', 1, 8, '2025-06-30 06:51:23', '2025-06-30 06:51:23', 0),
(31, 1, 1, '2024-03-31 18:30:00', '2024-04-09 18:30:00', 0, 0, '2025-06-30 06:39:15', '2025-06-30 06:39:15', 0),
(32, 2, 2, '2024-04-04 18:30:00', '2024-04-14 18:30:00', 0, 0, '2025-06-30 06:39:15', '2025-06-30 06:39:15', 0),
(33, 3, 3, '2024-04-09 18:30:00', '2024-04-19 18:30:00', 1, 50, '2025-06-30 06:39:15', '2025-06-30 06:39:15', 0),
(34, 4, 4, '2024-04-30 18:30:00', '2024-05-09 18:30:00', 0, 0, '2025-06-30 06:39:15', '2025-06-30 06:39:15', 0),
(35, 5, 5, '2024-05-02 18:30:00', NULL, 0, 0, '2025-06-30 06:39:15', '2025-06-30 06:39:15', 0),
(36, 6, 6, '2024-05-06 18:30:00', '2024-05-16 18:30:00', 0, 0, '2025-06-30 06:39:15', '2025-06-30 06:39:15', 0),
(37, 1, 7, '2024-05-09 18:30:00', NULL, 0, 0, '2025-06-30 06:39:15', '2025-06-30 06:39:15', 0),
(38, 2, 8, '2024-05-31 18:30:00', '2024-06-09 18:30:00', 0, 0, '2025-06-30 06:39:15', '2025-06-30 06:39:15', 0),
(39, 3, 9, '2024-06-04 18:30:00', NULL, 0, 0, '2025-06-30 06:39:15', '2025-06-30 06:39:15', 0),
(40, 4, 10, '2024-06-06 18:30:00', '2024-06-16 18:30:00', 0, 0, '2025-06-30 06:39:15', '2025-06-30 06:39:15', 0),
(41, 5, 1, '2024-06-09 18:30:00', '2024-06-19 18:30:00', 0, 0, '2025-06-30 06:39:15', '2025-06-30 06:39:15', 0),
(42, 6, 2, '2024-06-10 18:30:00', NULL, 0, 0, '2025-06-30 06:39:15', '2025-06-30 06:39:15', 0),
(43, 1, 3, '2024-06-11 18:30:00', NULL, 0, 0, '2025-06-30 06:39:15', '2025-06-30 06:39:15', 0),
(44, 2, 4, '2024-06-12 18:30:00', NULL, 0, 0, '2025-06-30 06:39:15', '2025-06-30 06:39:15', 0),
(45, 3, 5, '2024-06-13 18:30:00', NULL, 0, 0, '2025-06-30 06:39:15', '2025-06-30 06:39:15', 0);
