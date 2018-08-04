SET NAMES UTF8;
DROP DATABASE IF EXISTS fashion;
CREATE DATABASE fashion CHARSET=UTF8;
USE fashion;

#轮播广告表
CREATE TABLE carousel(
    cid INT(11) PRIMARY KEY NOT NULL auto_increment,
    img VARCHAR(128) default NULL,
    href VARCHAR(128) default NULL,
    title  VARCHAR(128) default NULL,
    created_at timestamp,
    updated_at timestamp
);
INSERT INTO carousel VALUES(
    NULL,'images/banner1.jpg','product.html?pid=1','轮播广告商品1','CURRENT_TIMESTAMP','CURRENT_TIMESTAMP'
);
INSERT INTO carousel VALUES(
    NULL,'images/banner2.jpg','product.html?pid=2','轮播广告商品1','CURRENT_TIMESTAMP','CURRENT_TIMESTAMP'
);
INSERT INTO carousel VALUES(
    NULL,'images/banner3.jpg','product.html?pid=3','轮播广告商品1','CURRENT_TIMESTAMP','CURRENT_TIMESTAMP'
);
INSERT INTO carousel VALUES(
    NULL,'images/banner4.jpg','product.html?pid=4','轮播广告商品1','CURRENT_TIMESTAMP','CURRENT_TIMESTAMP'
);

#推荐商品表
CREATE TABLE index_recommend(
    pid INT(11) PRIMARY KEY auto_increment,
    title VARCHAR(128) default null,
    details VARCHAR(128) default null,
    pic VARCHAR(128) default null,
    href VARCHAR(128) DEFAULT NULL,
    price DECIMAL(10,2) DEFAULT NULL,
    seq_recommend tinyint(4) default null,
    seq_new_arrival tinyint(4) default null,
    seq_top_sale tinyint(4) default null,
    created_at timestamp,
    updated_at timestamp
);
INSERT INTO index_recommend VALUES(
    null,'长T恤','长款条纹T恤 搭配格子衬衫',
    'images/bb1.jpg',
    'womenClothing.html',
    59,
    1,1,1,
    'CURRENT_TIMESTAMP','CURRENT_TIMESTAMP'
);
INSERT INTO index_recommend VALUES(
    null,'跑鞋','时尚轻盈的运动跑鞋',
    'images/bb2.jpg',
    'shoes.html',
    499,
    1,2,1,
    'CURRENT_TIMESTAMP','CURRENT_TIMESTAMP'
);
INSERT INTO index_recommend VALUES(
    null,'手表','经典男士名贵高端手表',
    'images/bb3.jpg',
    'watches.html',
    988,
    1,2,1,
    'CURRENT_TIMESTAMP','CURRENT_TIMESTAMP'
);
INSERT INTO index_recommend VALUES(
    null,'项链','高贵典雅钻石项链',
    'images/bb4.jpg',
    'jewellery.html',
    39998,
    1,3,1,
    'CURRENT_TIMESTAMP','CURRENT_TIMESTAMP'
);
INSERT INTO index_recommend VALUES(
    null,'包包','漂亮百搭皮包',
    'images/bb5.jpg',
    'handbags.html',
    39998,
    1,3,1,
    'CURRENT_TIMESTAMP','CURRENT_TIMESTAMP'
);
#首页商品分类表
CREATE TABLE index_top(
    pid INT(11) PRIMARY KEY auto_increment,
    title VARCHAR(128) default null,
    details VARCHAR(128) default null,
    pic VARCHAR(128) default null,
    href VARCHAR(128) DEFAULT NULL,
    price DECIMAL(10,2) DEFAULT NULL,
    type VARCHAR(64) default null,
    seq_recommend tinyint(4) default null,
    seq_new_arrival tinyint(4) default null,
    seq_top_sale tinyint(4) default null,
    created_at timestamp,
    updated_at timestamp
);
INSERT INTO index_top VALUES(
    null,'皮鞋','尖头的皮鞋',
    'images/tp1.jpg',
    'details.html',
    220,'man',
    2,0,0,
    'CURRENT_TIMESTAMP','CURRENT_TIMESTAMP'
);
INSERT INTO index_top VALUES(
    null,'短衬衫','藏青色短衬衫',
    'images/tp2.jpg',
    'details.html',
    190,'man',
    2,0,0,
    'CURRENT_TIMESTAMP','CURRENT_TIMESTAMP'
);
INSERT INTO index_top VALUES(
    null,'马甲','西装式马甲',
    'images/tp3.jpg',
    'details.html',
    160,'man',
    2,0,0,
    'CURRENT_TIMESTAMP','CURRENT_TIMESTAMP'
);
INSERT INTO index_top VALUES(
    null,'布鞋','白底蓝邦白布鞋',
    'images/tp4.jpg',
    'details.html',
    250,'man',
    2,0,0,
    'CURRENT_TIMESTAMP','CURRENT_TIMESTAMP'
);
INSERT INTO index_top VALUES(
    null,'背心','个性拼接背心',
    'images/tp5.jpg',
    'details.html',
    50,'man',
    2,0,0,
    'CURRENT_TIMESTAMP','CURRENT_TIMESTAMP'
);
INSERT INTO index_top VALUES(
    null,'皮鞋','厚底皮鞋',
    'images/tp6.jpg',
    'details.html',
    150,'man',
    2,0,0,
    'CURRENT_TIMESTAMP','CURRENT_TIMESTAMP'
);
INSERT INTO index_top VALUES(
    null,'衬衫','长袖点点衬衫',
    'images/tp7.jpg',
    'details.html',
    100,'man',
    2,0,0,
    'CURRENT_TIMESTAMP','CURRENT_TIMESTAMP'
);
INSERT INTO index_top VALUES(
    null,'手表','皮带手表',
    'images/tp8.jpg',
    'details.html',
    200,'man',
    2,0,0,
    'CURRENT_TIMESTAMP','CURRENT_TIMESTAMP'
);
INSERT INTO index_top VALUES(
    null,'长袖','漏肩长袖',
    'images/tp9.jpg',
    'details.html',
    220,'woman',
    2,0,0,
    'CURRENT_TIMESTAMP','CURRENT_TIMESTAMP'
);
INSERT INTO index_top VALUES(
    null,'长T','灰色漏肩长袖',
    'images/tp10.jpg',
    'details.html',
    190,'woman',
    2,0,0,
    'CURRENT_TIMESTAMP','CURRENT_TIMESTAMP'
);
INSERT INTO index_top VALUES(
    null,'长衫','酒红色长衫',
    'images/tp11.jpg',
    'details.html',
    160,'woman',
    2,0,0,
    'CURRENT_TIMESTAMP','CURRENT_TIMESTAMP'
);
INSERT INTO index_top VALUES(
    null,'长袖','黑色内搭',
    'images/tp12.jpg',
    'details.html',
    250,'woman',
    2,0,0,
    'CURRENT_TIMESTAMP','CURRENT_TIMESTAMP'
);
INSERT INTO index_top VALUES(
    null,'长袖','漏肩长袖',
    'images/tp9.jpg',
    'details.html',
    220,'woman',
    2,0,0,
    'CURRENT_TIMESTAMP','CURRENT_TIMESTAMP'
);
INSERT INTO index_top VALUES(
    null,'长T','灰色漏肩长袖',
    'images/tp10.jpg',
    'details.html',
    190,'woman',
    2,0,0,
    'CURRENT_TIMESTAMP','CURRENT_TIMESTAMP'
);
INSERT INTO index_top VALUES(
    null,'长衫','酒红色长衫',
    'images/tp11.jpg',
    'details.html',
    160,'woman',
    2,0,0,
    'CURRENT_TIMESTAMP','CURRENT_TIMESTAMP'
);
INSERT INTO index_top VALUES(
    null,'长袖','黑色内搭',
    'images/tp12.jpg',
    'details.html',
    250,'woman',
    2,0,0,
    'CURRENT_TIMESTAMP','CURRENT_TIMESTAMP'
);
CREATE TABLE `products` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '商品名称',
  `detial` varchar(255) NOT NULL DEFAULT '' COMMENT '商品描述',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '商品详情',
  `add_info` varchar(255) NOT NULL DEFAULT '' COMMENT '商品额外信息',
  `mainpic` varchar(255) NOT NULL DEFAULT '' COMMENT '商品图片',
  `pic1` varchar(255) NOT NULL DEFAULT '' COMMENT '商品图片1',
  `pic2` varchar(255) NOT NULL COMMENT '商品图片2',
  `pic3` varchar(255) NOT NULL DEFAULT '' COMMENT '商品图片3',
  `type` varchar(255) NOT NULL DEFAULT '' COMMENT '商品类别',
  `category` varchar(255) NOT NULL DEFAULT '' COMMENT '商品小类',
  `color` varchar(255) NOT NULL DEFAULT '' COMMENT '商品颜色',
  `size` varchar(255) NOT NULL DEFAULT '' COMMENT '商品尺码',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `discount` decimal(10,2) NOT NULL DEFAULT '1.00' COMMENT '商品打折',
  `endtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '商品打折截止时间',
  `count` int(11) NOT NULL DEFAULT '0' COMMENT '商品销售量',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间时间',
  `is_delete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '删除状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'token',
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '密码',
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '重置密码token',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '邮箱',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_delete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '删除状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
