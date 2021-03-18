DROP
DATABASE IF EXISTS movie;
CREATE
DATABASE movie;
USE
movie;

DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin`
(
    `id`       varchar(255) NOT NULL,
    `username` varchar(255) NOT NULL,
    `password` varchar(255) NOT NULL,
    `avatar`   varchar(255) DEFAULT 'https://cube.elemecdn.com/0/88/03b0d39583f48206768a7534e55bcpng.png',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO t_admin
VALUES ('77cc5dc7-b769-4983-a555-0a0d37e3d9b3', '@admin', '@admin', '');

DROP TABLE IF EXISTS `t_worker`;
CREATE TABLE `t_worker`
(
    `id`         varchar(255) NOT NULL,
    `username`   varchar(255) NOT NULL,
    `password`   varchar(255) NOT NULL,
    `nickname`   varchar(255) NOT NULL,
    `phone`      varchar(255) NOT NULL,
    `entry`      tinyint      NOT NULL,
    `department` varchar(255) NOT NULL,
    `gender`     varchar(255) NOT NULL,
    `avatar`     varchar(255) DEFAULT 'https://cube.elemecdn.com/0/88/03b0d39583f48206768a7534e55bcpng.png',
    `create_at`  varchar(255) NOT NULL,
    `update_at`  varchar(255) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`
(
    `id`        varchar(50)  NOT NULL,
    `username`  varchar(255) NOT NULL,
    `password`  varchar(255) NOT NULL,
    `avatar`    varchar(255) DEFAULT 'https://cube.elemecdn.com/0/88/03b0d39583f48206768a7534e55bcpng.png',
    `nickname`  varchar(255) DEFAULT 'User',
    `email`     varchar(255) DEFAULT NULL,
    `birthday`  varchar(255) DEFAULT NULL,
    `gender`    varchar(2)   DEFAULT NULL,
    `info`      varchar(255) DEFAULT NULL,
    `create_at` varchar(50)  NOT NULL,
    `update_at` varchar(50)  NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_upload`;
CREATE TABLE `t_upload`
(
    `id`    varchar(255) NOT NULL,
    `bytes` longblob     NOT NULL,
    `md5`   varchar(255) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role`
(
    `id`        varchar(50)  NOT NULL,
    `wid`       varchar(50)  NOT NULL,
    `value`     varchar(255) NOT NULL,
    `create_at` varchar(255) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_arrangement`;
CREATE TABLE `t_arrangement`
(
    `id`          varchar(255)   NOT NULL,
    `fid`         varchar(255)   NOT NULL,
    `name`        varchar(255)   NOT NULL,
    `seat_number` int            NOT NULL,
    `box_office`  int            NOT NULL,
    `price`       decimal(10, 2) NOT NULL,
    `type`        varchar(255)   NOT NULL,
    `date`        varchar(255)   NOT NULL,
    `start_time`  varchar(255)   NOT NULL,
    `end_time`    varchar(255)   NOT NULL,
    `founder`     varchar(255)   NOT NULL,
    `create_at`   varchar(255)   NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_cart`;
CREATE TABLE `t_cart`
(
    `id`     varchar(255)   NOT NULL,
    `uid`    varchar(255)   NOT NULL,
    `aid`    varchar(255)   NOT NULL,
    `phone`  varchar(11)    Not NULL,
    `status` int DEFAULT NULL,
    `seats`  varchar(255)   NOT NULL,
    `price`  decimal(10, 2) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_film`;
CREATE TABLE `t_film`
(
    `id`           varchar(255) NOT NULL,
    `name`         varchar(255) NOT NULL,
    `release_time` varchar(255) NOT NULL,
    `type`         varchar(255) NOT NULL,
    `status`       tinyint      NOT NULL,
    `region`       varchar(255) NOT NULL,
    `hot`          int          NOT NULL,
    `introduction` varchar(255) NOT NULL,
    `cover`        varchar(255) NOT NULL,
    `duration`     int          NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_film_evaluate`;
CREATE TABLE `t_film_evaluate`
(
    `id`        varchar(255) NOT NULL,
    `fid`       varchar(255) NOT NULL,
    `uid`       varchar(255) NOT NULL,
    `star`      int          NOT NULL,
    `comment`   text,
    `create_at` varchar(255) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_leaving_message`;
CREATE TABLE `t_leaving_message`
(
    `id`        varchar(255) NOT NULL,
    `uid`       varchar(255) NOT NULL,
    `content`   text         NOT NULL,
    `reply`     text DEFAULT NULL,
    `create_at` varchar(255) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order`
(
    `id`        varchar(255)   NOT NULL,
    `uid`       varchar(255)   NOT NULL,
    `phone`     varchar(11)    NOT NULL,
    `aid`       varchar(255)   NOT NULL,
    `seats`     varchar(255)   NOT NULL,
    `price`     decimal(10, 2) NOT NULL,
    `status`    int            NOT NULL,
    `create_at` varchar(255)   NOT NULL,
    `pay_at`    varchar(255) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_worker_evaluate`;
CREATE TABLE `t_worker_evaluate`
(
    `id`        varchar(255) NOT NULL,
    `wid`       varchar(255) NOT NULL,
    `uid`       varchar(255) NOT NULL,
    `content`   varchar(255) DEFAULT NULL,
    `type`      varchar(255) NOT NULL,
    `create_at` varchar(255) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_activity`;
CREATE TABLE `t_activity`
(
    `id`         varchar(255) NOT NULL,
    `content`    varchar(255) NOT NULL,
    `number`     int DEFAULT 0,
    `start_time` varchar(255) NOT NULL,
    `end_time`   varchar(255) NOT NULL,
    `create_at`  varchar(255) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_daily_work`;
CREATE TABLE `t_daily_work`
(
    `id`        varchar(255) NOT NULL,
    `type`      int          NOT NULL,
    `content`   varchar(255) NOT NULL,
    `create_at` varchar(255) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_order_exception`;
CREATE TABLE `t_order_exception`
(
    `id`        varchar(255) NOT NULL,
    `oid`       varchar(255) NOT NULL,
    `reason`    varchar(255) NOT NULL,
    `status`    tinyint      NOT NULL,
    `result`    varchar(255) DEFAULT NULL,
    `reviewer`  varchar(255) NOT NULL,
    `create_at` varchar(255) NOT NULL,
    `end_at`    varchar(255) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_poster`;
CREATE TABLE `t_poster`
(
    `id`        varchar(255) NOT NULL,
    `title`     varchar(255) NOT NULL,
    `url`       varchar(255) NOT NULL,
    `status`    tinyint      NOT NULL,
    `create_at` varchar(255) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_registration`;
CREATE TABLE `t_registration`
(
    `id`        varchar(255) NOT NULL,
    `aid`       varchar(255) NOT NULL,
    `uid`       varchar(255) NOT NULL,
    `create_at` varchar(255) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;