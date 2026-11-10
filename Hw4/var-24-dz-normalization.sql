-- Создаем исходную таблицу
CREATE TABLE subjects (
    subject_id INT PRIMARY KEY,
    department_id INT,
    subject_name VARCHAR(100),
    department_name VARCHAR(100)
);

-- Заполняем таблицу
INSERT INTO subjects VALUES
(1, 1, 'Математика', 'Математики'),
(2, 2, 'Программирование', 'Информатики'),
(3, 1, 'Алгебра', 'Математики'),
(4, 2, 'Базы данных', 'Информатики'),
(5, 3, 'Физика', 'Физики');

-- Создаем таблицу кафедр
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

-- Переносим кафедры без повторений
INSERT INTO departments
SELECT DISTINCT department_id, department_name
FROM subjects;

-- Удаляем лишний столбец
ALTER TABLE subjects
DROP COLUMN department_name;

-- Проверяем результат
SELECT * FROM subjects; -- Предметы
SELECT * FROM departments; -- Кафедры