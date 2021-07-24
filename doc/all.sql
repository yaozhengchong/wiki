DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
    `id` BIGINT NOT NULL COMMENT 'id',
    `name` VARCHAR(50) COMMENT '名称',
    `password` VARCHAR(50) COMMENT '密码',
    PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='测试';

INSERT INTO `test` (id, NAME, PASSWORD) VALUES (1, '测试', 'password');

select * from test;
