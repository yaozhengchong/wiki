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

# 分类
drop table if exists `category`;
create table `category` (
        `id` bigint not null comment 'id',
        `parent` bigint not null default 0 comment '父id',
        `name` varchar(50) not null comment '名称',
        `sort` int comment '顺序',
        primary key (`id`)
) engine=innodb default charset=utf8mb4 comment='分类';

insert into `category` (id, parent, name, sort) values (100, 000, '前端开发', 100);
insert into `category` (id, parent, name, sort) values (101, 100, 'Vue', 101);
insert into `category` (id, parent, name, sort) values (102, 100, 'HTML & CSS', 102);
insert into `category` (id, parent, name, sort) values (200, 000, 'Java', 200);
insert into `category` (id, parent, name, sort) values (201, 200, '基础应用', 201);
insert into `category` (id, parent, name, sort) values (202, 200, '框架应用', 202);
insert into `category` (id, parent, name, sort) values (300, 000, 'Python', 300);
insert into `category` (id, parent, name, sort) values (301, 300, '基础应用', 301);
insert into `category` (id, parent, name, sort) values (302, 300, '进阶方向应用', 302);
insert into `category` (id, parent, name, sort) values (400, 000, '数据库', 400);
insert into `category` (id, parent, name, sort) values (401, 400, 'MySQL', 401);
insert into `category` (id, parent, name, sort) values (500, 000, '其它', 500);
insert into `category` (id, parent, name, sort) values (501, 500, '服务器', 501);
insert into `category` (id, parent, name, sort) values (502, 500, '开发工具', 502);
insert into `category` (id, parent, name, sort) values (503, 500, '热门服务端语言', 503);

-- 文档表
DROP TABLE IF EXISTS `doc`;
CREATE TABLE `doc` (
       `id` BIGINT NOT NULL COMMENT 'id',
       `ebook_id` BIGINT NOT NULL DEFAULT 0 COMMENT '电子书id',
       `parent` BIGINT NOT NULL DEFAULT 0 COMMENT '父id',
       `name` VARCHAR(50) NOT NULL COMMENT '名称',
       `sort` INT COMMENT '顺序',
       `view_count` INT DEFAULT 0 COMMENT '阅读数',
       `vote_count` INT DEFAULT 0 COMMENT '点赞数',
       PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='文档';

INSERT INTO `doc` (id, ebook_id, parent, NAME, sort, view_count, vote_count) VALUES (1, 1, 0, '文档1', 1, 0, 0);
INSERT INTO `doc` (id, ebook_id, parent, NAME, sort, view_count, vote_count) VALUES (2, 1, 1, '文档1.1', 1, 0, 0);
INSERT INTO `doc` (id, ebook_id, parent, NAME, sort, view_count, vote_count) VALUES (3, 1, 0, '文档2', 2, 0, 0);
INSERT INTO `doc` (id, ebook_id, parent, NAME, sort, view_count, vote_count) VALUES (4, 1, 3, '文档2.1', 1, 0, 0);
INSERT INTO `doc` (id, ebook_id, parent, NAME, sort, view_count, vote_count) VALUES (5, 1, 3, '文档2.2', 2, 0, 0);
INSERT INTO `doc` (id, ebook_id, parent, NAME, sort, view_count, vote_count) VALUES (6, 1, 5, '文档2.2.1', 1, 0, 0);

-- 文档内容
DROP TABLE IF EXISTS `content`;
CREATE TABLE `content` (
       `id` BIGINT NOT NULL COMMENT '文档id',
       `content` MEDIUMTEXT NOT NULL COMMENT '内容',
       PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='文档内容';