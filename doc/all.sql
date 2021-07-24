# 选择使用数据库
use wikidev;

# 添加test数据表
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
        `id` BIGINT NOT NULL COMMENT 'id',
        `name` VARCHAR(50) COMMENT '名称',
        `password` VARCHAR(50) COMMENT '密码',
        PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='测试';
INSERT INTO `test` (id, NAME, PASSWORD) VALUES (1, '测试', 'password');
select * from test;

# 添加demo数据表
DROP TABLE IF EXISTS `demo`;
CREATE TABLE `demo` (
        `id` BIGINT NOT NULL COMMENT 'id',
        `name` VARCHAR(50) COMMENT '名称',
        PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='测试';
INSERT INTO `demo` (id, NAME) VALUES (1, '测试');
select * from demo;

# 添加电子书表
DROP TABLE IF EXISTS `ebook`;
CREATE TABLE `ebook` (
         `id` BIGINT NOT NULL COMMENT 'id',
         `name` VARCHAR(50) COMMENT '名称',
         `category1_id` BIGINT COMMENT '分类1',
         `category2_id` BIGINT COMMENT '分类2',
         `description` VARCHAR(200) COMMENT '描述',
         `cover` VARCHAR(200) COMMENT '封面',
         `doc_count` INT NOT NULL DEFAULT 0 COMMENT '文档数',
         `view_count` INT NOT NULL DEFAULT 0 COMMENT '阅读数',
         `vote_count` INT NOT NULL DEFAULT 0 COMMENT '点赞数',
         PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='电子书';
INSERT INTO `ebook` (id, NAME, description) VALUES (1, 'Spring Boot 入门教程', '零基础入门 Java 开发，企业级应用开发最佳首选框架');
INSERT INTO `ebook` (id, NAME, description) VALUES (2, 'Vue 入门教程', '零基础入门 Vue 开发，企业级应用开发最佳首选框架');
INSERT INTO `ebook` (id, NAME, description) VALUES (3, 'Python 入门教程', '零基础入门 Python 开发，企业级应用开发最佳首选框架');
INSERT INTO `ebook` (id, NAME, description) VALUES (4, 'Mysql 入门教程', '零基础入门 Mysql 开发，企业级应用开发最佳首选框架');
INSERT INTO `ebook` (id, NAME, description) VALUES (5, 'Oracle 入门教程', '零基础入门 Oracle 开发，企业级应用开发最佳首选框架');
select * from ebook;