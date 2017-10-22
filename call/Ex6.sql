-- 1
-- Новый музыкальный жанр

INSERT INTO `genre` (`name`, `description`)
VALUES ('Hop-Hey-La-La-Granny-Step', 'Just like a granny, but way more better');


-- 2
-- Новая запись о привязке жанров к песне

INSERT INTO `track_has_genre` (`track_id`, `genre_id`)
VALUES (15, 8),
       (16, 3),
       (16, 8),
       (17, 8);


/* ФУНКЦИИ
   НА ВЫВОД
   ВВЕДЕННЫХ
   ДАННЫХ */

SELECT `track`.`name` AS 'Track', `genre`.`name` AS 'Genre'
FROM `track_has_genre`
LEFT JOIN `track` ON `track`.`id` = `track_has_genre`.`track_id`
LEFT JOIN `genre` ON `genre`.`id` = `track_has_genre`.`genre_id`
WHERE `track`.`id` > 14
