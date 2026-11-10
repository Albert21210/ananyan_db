-- Выбор базы клиентов
USE clients;

-- 1) Запросы на обновление данных в таблице клиентов

-- 1. Обновить даты рождения четырёх клиентов
SELECT * FROM clients WHERE id IN (782, 297, 240, 306);
SELECT COUNT(*) AS found_before FROM clients WHERE id IN (782, 297, 240, 306);
UPDATE clients SET dbirth = CASE id
    WHEN 782 THEN '1930-10-21'  -- Gary Harrison
    WHEN 297 THEN '1934-04-12'  -- Michael Atwood
    WHEN 240 THEN '1975-08-01'  -- Amy Majors
    WHEN 306 THEN '1959-09-22'  -- Katherine Smith
END
WHERE id IN (782, 297, 240, 306) LIMIT 4;
SELECT ROW_COUNT() AS changed_rows;

-- Найдено записей: 4
-- Изменено строк: 2

-- 2. Убрать телефоны у родившихся до 1933 года
SELECT * FROM clients WHERE dbirth < '1933-01-01';
SELECT COUNT(*) AS found_before FROM clients WHERE dbirth < '1933-01-01';
UPDATE clients SET phone = NULL WHERE dbirth < '1933-01-01' LIMIT 1000;
SELECT ROW_COUNT() AS changed_rows;

-- Найдено записей: 13
-- Изменено строк: 13

-- 3. John Ohara -> Johanna Ohara; пол -> женский
SELECT * FROM clients WHERE id = 570;
SELECT COUNT(*) AS found_before FROM clients WHERE id = 570;
UPDATE clients SET name = 'Johanna', gender = 'F' WHERE id = 570 LIMIT 1;
SELECT ROW_COUNT() AS changed_rows;

-- Найдено записей: 1
-- Изменено строк: 1

-- 4. Три разных номера телефона
SELECT * FROM clients WHERE id IN (673, 447, 293);
SELECT COUNT(*) AS found_before FROM clients WHERE id IN (673, 447, 293);
UPDATE clients SET phone = CASE id
    WHEN 673 THEN '1111111'  -- Humberto Hoosier
    WHEN 447 THEN '2222222'  -- Irene Schreiber
    WHEN 293 THEN '3333333'  -- Donna Wallace
END
WHERE id IN (673, 447, 293) LIMIT 3;
SELECT ROW_COUNT() AS changed_rows;

-- Найдено записей: 3
-- Изменено строк: 3

-- 5. Удалить клиентов по ID
SELECT * FROM clients WHERE id IN (215, 340, 449, 470, 607);
SELECT COUNT(*) AS found_before FROM clients WHERE id IN (215, 340, 449, 470, 607);
DELETE FROM clients WHERE id IN (215, 340, 449, 470, 607) LIMIT 5;
SELECT ROW_COUNT() AS deleted_rows;

-- Найдено записей: 4
-- Удалено строк: 4
-- Клиент с ID 470 отсутствует

-- 6. Удалить мужчин, родившихся в двух периодах
SELECT * FROM clients WHERE gender = 'M' AND
    (dbirth BETWEEN '1941-01-01' AND '1941-04-30'
     OR dbirth BETWEEN '1972-09-10' AND '1972-09-15');
SELECT COUNT(*) AS found_before FROM clients WHERE gender = 'M' AND
    (dbirth BETWEEN '1941-01-01' AND '1941-04-30'
     OR dbirth BETWEEN '1972-09-10' AND '1972-09-15');
DELETE FROM clients WHERE gender = 'M' AND
    (dbirth BETWEEN '1941-01-01' AND '1941-04-30'
     OR dbirth BETWEEN '1972-09-10' AND '1972-09-15') LIMIT 1000;
SELECT ROW_COUNT() AS deleted_rows;

-- Найдено записей: 2
-- Удалено строк: 2
