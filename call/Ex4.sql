-- 1
-- Список исполнителей у которых есть композиции старше 2013 года

SELECT `author`.`name`
FROM `track`
LEFT JOIN `album` ON `album`.`id` = `track`.`album_id`
LEFT JOIN `author` ON `author`.`id` = `album`.`author_id`
WHERE `publish_date` > 2013
GROUP BY `author`.`name`


-- 2
-- Музыкальные альбомы в котрых есть больше одной песни

SELECT `album`.`title`
FROM `track`
LEFT JOIN `album` ON `album`.`id` = `track`.`album_id`
GROUP BY `album`.`title`
HAVING COUNT(`track`.`id`) > 1


-- 3
-- Имена исполнителей, песни которых имееют низкий рейтинг

SELECT `author`.`name`
FROM `track`
LEFT JOIN `album` ON `album`.`id` = `track`.`album_id`
LEFT JOIN `author` ON `author`.`id` = `album`.`author_id`
WHERE `track`.`rating` < 3
GROUP BY `author`.`name`
