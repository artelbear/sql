-- 1
-- Новый исполнитель данных

INSERT INTO `author` (`name`)
VALUES ('Kiselenka');


-- 2
-- 3 новых альбома

INSERT INTO `album` (`title`, `author_id`)
VALUES ('Kiselenka Classic', 10),
       ('Little pony', 10),
       ('My Ruby Rails', 10);


-- 3
-- По одной песне в каждый альбом

INSERT INTO `track` (`name`, `publish_date`, `rating`, `album_id`)
VALUES ('Violin Symphony №34', '2016-10-05', '1', '31'),
       ('Pony Drink My Blood', '2016-10-05', '1', '32'),
       ('Death Train', '2016-10-05', '1', '33');

/* ФУНКЦИИ
   НА ВЫВОД
   ВВЕДЕННЫХ
   ДАННЫХ */

SELECT `track`.`name` AS 'Track', `album`.`title` AS 'Album', `author`.`name` AS 'Author'
FROM `track`
LEFT JOIN `album` ON `track`.`album_id` = `album`.`id`
LEFT JOIN `author` ON `album`.`author_id` = `author`.`id`
WHERE `author`.`id` = 10
