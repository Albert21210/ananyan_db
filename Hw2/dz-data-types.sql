CREATE DATABASE media_catalog;
USE media_catalog;

CREATE TABLE media_items (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(150),
    media_type VARCHAR(50),
    genre VARCHAR(100),
    release_year INT,
    rating DECIMAL(3,1),
    status VARCHAR(50),
    is_favorite BOOLEAN,
    added_date DATE
);

INSERT INTO media_items (title, media_type, genre, release_year, rating, status, is_favorite, added_date) VALUES
('Автостопом по галактике', 'Книга', 'Фантастика', 1979, 4.8, 'Прочитано', TRUE, '2026-01-15'),
('Интерстеллар', 'Фильм', 'Фантастика', 2014, 4.9, 'Просмотрено', TRUE, '2026-02-10'),
('Time (Pink Floyd)', 'Музыка', 'Рок', 1973, 5.0, 'В ротации', TRUE, '2026-03-01'),
('Чистый код', 'Книга', 'Программирование', 2008, 4.6, 'В процессе', FALSE, '2026-03-15'),
('Начало', 'Фильм', 'Фантастика', 2010, 4.7, 'Просмотрено', TRUE, '2026-02-18');

SELECT * FROM media_items;