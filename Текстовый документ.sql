-- 1 Задание:


SELECT * FROM fruct.vegetablesandfruits;
INSERT INTO VegetablesAndFruits (Name, Type, Color, CalorieContent, ShortDescription) 
VALUES
('Carrot', 'Vegetable', 'Orange', 41, 'Богат бетакаротином.'),
('Cabbage', 'Vegetable', 'Green', 25, 'Содержит витамин К.'),
('Apple', 'Fruit', 'Red', 52, 'С высоким содержанием клетчатки.'),
('Banana', 'Fruit', 'Yellow', 89, 'Хороший источник калия.'),
('Tomato', 'Vegetable', 'Red', 18, 'Богат ликопином.'),
('Lemon', 'Fruit', 'Yellow', 29, 'Высокое содержание витамина С.'),
('Pumpkin', 'Vegetable', 'Orange', 26, 'В нем мало калорий, много питательных веществ ликопином.');

-- Отображение всех овощей с калорийностью меньше, указанной калорийности;
SELECT * FROM fruct.vegetablesandfruits
WHERE Type = 'Vegetable' AND CalorieContent < 41;
 
-- Отображение всех фруктов с калорийностью в указанном диапазоне;
SELECT * FROM fruct.vegetablesandfruits
WHERE Type = 'Fruit' AND CalorieContent BETWEEN 18 AND 89; 

-- Отображение всех овощей в названии, которых есть указанное слово.
SELECT * FROM fruct.vegetablesandfruits
WHERE Type = 'Vegetable' AND Name LIKE '%cabbage%';

-- Отображение всех овощей и фруктов в кратком описании, которых есть указанное слово.
SELECT * FROM fruct.vegetablesandfruits
WHERE ShortDescription LIKE '%Содержит витамин К.%';

-- Показать все овощи и фрукты, у которых цвет желтый или красный.
SELECT * FROM fruct.vegetablesandfruits
WHERE Color IN ('Yellow', 'Red');


-- 2 Задание:


INSERT INTO products (id, name, type, color, calories) VALUES
(1, 'Яблоко', 'fruit', 'красный', 52),
(2, 'Брокколи', 'vegetable', 'зеленый', 55),
(3, 'Морковь', 'vegetable', 'оранжевый', 41),
(4, 'Клубника', 'fruit', 'красный', 32),
(5, 'Цуккини', 'vegetable', 'зеленый', 17),
(6, 'Груша', 'fruit', 'желтый', 57),
(7, 'Помидор', 'fruit', 'красный', 18),
(8, 'Капуста', 'vegetable', 'белый', 25);



SELECT * FROM fruct.vegetablesandfruits;

--Показать количество овощей:
SELECT COUNT(*) AS count_vegetables FROM products WHERE type = 'vegetable';

--Показать количество фруктов:
SELECT COUNT(*) AS count_fruits FROM products WHERE type = 'fruit';

--Показать количество овощей и фруктов заданного цвета:
SELECT COUNT(*) AS count FROM products WHERE color = 'красный';

--Показать количество овощей и фруктов каждого цвета:
SELECT color, COUNT(*) AS count FROM products GROUP BY color;

--Показать цвет с минимальным количеством овощей и фруктов:
SELECT color FROM products GROUP BY color ORDER BY COUNT(*) ASC LIMIT 1;

--Показать цвет с максимальным количеством овощей и фруктов:
SELECT color FROM products GROUP BY color ORDER BY COUNT(*) DESC LIMIT 1;

--Показать минимальную калорийность овощей и фруктов:
SELECT MIN(calories) AS min_calories FROM products;

--Показать максимальную калорийность овощей и фруктов:
select max(calories) AS max_calories from products;

--Показать среднюю калорийность овощей и фруктов:
SELECT AVG(calories) AS avg_calories FROM products;

--Показать фрукты с минимальной калорийностью:
SELECT * FROM products WHERE type = 'fruit' ORDER BY calories ASC LIMIT 1;

--Показать фрукты с максимальной калорийностью:
SELECT * FROM products WHERE type = 'fruit' ORDER BY calories DESC LIMIT 1;
  