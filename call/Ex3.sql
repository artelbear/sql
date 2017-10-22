-- 1
-- Список исполнителей в обратном порядке

SELECT `name`
FROM `author`
ORDER BY `name` DESC;


-- 2
-- Список альбомов конкретного испонителя

SELECT `title`
FROM `album`
WHERE `author_id` = 1;


-- 3
-- Описание всех жанров в обратном порядке

SELECT `description`
FROM `genre`
ORDER BY `id` DESC;


-- 4
-- Первые и последние 3 песни по дате

SELECT `name`
FROM `track`
ORDER BY `publish_date` ASC
LIMIT 0, 3;

SELECT `name`
FROM `track`
ORDER BY `publish_date` DESC
LIMIT 0, 3;
