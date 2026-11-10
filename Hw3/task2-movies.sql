-- Выбор базы медиакаталога
USE media_catalog;

-- 1. Изменить рейтинг книги «Автостопом по галактике»
SELECT * FROM media_items WHERE id = 1;
SELECT COUNT(*) AS found_before FROM media_items WHERE id = 1;
UPDATE media_items SET rating = 5.0 WHERE id = 1 LIMIT 1;
SELECT ROW_COUNT() AS changed_rows;

-- Найдено записей: 1
-- Изменено строк: 1

-- 2. Изменить рейтинг фильма «Интерстеллар»
SELECT * FROM media_items WHERE id = 2;
SELECT COUNT(*) AS found_before FROM media_items WHERE id = 2;
UPDATE media_items SET rating = 4.8 WHERE id = 2 LIMIT 1;
SELECT ROW_COUNT() AS changed_rows;

-- Найдено записей: 1
-- Изменено строк: 1

-- 3. Изменить статус композиции Time (Pink Floyd)
SELECT * FROM media_items WHERE id = 3;
SELECT COUNT(*) AS found_before FROM media_items WHERE id = 3;
UPDATE media_items SET status = 'Прослушано' WHERE id = 3 LIMIT 1;
SELECT ROW_COUNT() AS changed_rows;

-- Найдено записей: 1
-- Изменено строк: 1

-- 4. Отметить книгу «Чистый код» прочитанной
SELECT * FROM media_items WHERE id = 4;
SELECT COUNT(*) AS found_before FROM media_items WHERE id = 4;
UPDATE media_items SET status = 'Прочитано' WHERE id = 4 LIMIT 1;
SELECT ROW_COUNT() AS changed_rows;

-- Найдено записей: 1
-- Изменено строк: 1

-- 5. Убрать фильм «Начало» из избранного
SELECT * FROM media_items WHERE id = 5;
SELECT COUNT(*) AS found_before FROM media_items WHERE id = 5;
UPDATE media_items SET is_favorite = FALSE WHERE id = 5 LIMIT 1;
SELECT ROW_COUNT() AS changed_rows;

-- Найдено записей: 1
-- Изменено строк: 1
