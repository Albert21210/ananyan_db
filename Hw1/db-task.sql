-- 1. Поиск по именам (name)

-- а) Robert
SELECT * FROM clients WHERE name = 'Robert';

-- б) Jeffrey
SELECT * FROM clients WHERE name = 'Jeffrey';

-- в) John
SELECT * FROM clients WHERE name = 'John';

-- г) Richard
SELECT * FROM clients WHERE name = 'Richard';

-- д) David
SELECT * FROM clients WHERE name = 'David';

-- е) По всем этим значениям в одном запросе
SELECT * FROM clients WHERE name IN ('Robert', 'Jeffrey', 'John', 'Richard', 'David');


-- 2. Выборка всех женщин и мужчин (gender)

-- а) Женщины ('F')
SELECT * FROM clients WHERE gender = 'F';

-- б) Мужчины ('M')
SELECT * FROM clients WHERE gender = 'M';


-- 3. Определение имени (name) и телефона (phone) по фамилии (lastname)

-- а) Williams
SELECT name, phone FROM clients WHERE lastname = 'Williams';

-- б) Jones
SELECT name, phone FROM clients WHERE lastname = 'Jones';

-- в) Brown
SELECT name, phone FROM clients WHERE lastname = 'Brown';

-- г) Miller
SELECT name, phone FROM clients WHERE lastname = 'Miller';

-- д) По всем этим значениям в одном запросе
SELECT name, phone, lastname FROM clients WHERE lastname IN ('Williams', 'Jones', 'Brown', 'Miller');


-- 4. Определение даты рождения (dbirth) и пола (gender) 
-- пользователей с именем или фамилией

-- а) Kelly
SELECT dbirth, gender FROM clients WHERE name = 'Kelly' OR lastname = 'Kelly';

-- б) Thomas
SELECT dbirth, gender FROM clients WHERE name = 'Thomas' OR lastname = 'Thomas';

-- в) Clark
SELECT dbirth, gender FROM clients WHERE name = 'Clark' OR lastname = 'Clark';

-- г) Joseph
SELECT dbirth, gender FROM clients WHERE name = 'Joseph' OR lastname = 'Joseph';


-- 5. Определение пола (gender), даты рождения (dbirth) и телефона (phone)
-- пользователей с точным совпадением имени и фамилии

-- а) Tom Brown
SELECT gender, dbirth, phone FROM clients WHERE name = 'Tom' AND lastname = 'Brown';

-- б) Janet Silberstein
SELECT gender, dbirth, phone FROM clients WHERE name = 'Janet' AND lastname = 'Silberstein';

-- в) John Foster
SELECT gender, dbirth, phone FROM clients WHERE name = 'John' AND lastname = 'Foster';