SET NAMES UTF8;
DROP DATABASE IF EXISTS blue;
CREATE DATABASE blue CHARSET=UTF8;
USE blue;
#轮播图表
CREATE TABLE carousel(
  `cid` int(11) PRIMARY KEY NOT NULL auto_increment,
  `img` varchar(128) default NULL,
  `title` varchar(64) default NULL,
  `href` varchar(128) default NULL
);
INSERT INTO carousel VALUES(
   1,'img/banner/banner.jpg','轮播图1','greece.html?lid=1'
);
INSERT INTO carousel VALUES(
   2,'img/banner/banner2.jpg','轮播图2','destination1.html?lid=2'
);
INSERT INTO carousel VALUES(
   3,'img/banner/banner3.jpg','轮播图3','destination2.html?lid=3'
);
INSERT INTO carousel VALUES(
   4,'img/banner/banner4.jpg','轮播图4','destination1.html?lid=2'
);
INSERT INTO carousel VALUES(
   5,'img/banner/banner5.jpg','轮播图5','destination2.html?lid=3'
);
-- 目的地景点表
CREATE TABLE destination(
	did int(11) PRIMARY KEY NOT NULL auto_increment,
	pic varchar(128) default NULL,
	title varchar(128) default NULL, 
  	href varchar(128) default NULL
);

INSERT INTO destination VALUES(
   1,'img/p_img_1.jpg','希腊','greece.html?lid=1'
);
INSERT INTO destination VALUES(
   2,'img/p_img_2.jpg','越南','destination2.html?lid=1'
);
INSERT INTO destination VALUES(
   3,'img/p_img_3.jpg','摩洛哥','greece.html?lid=1'
);
INSERT INTO destination VALUES(
   4,'img/p_img_4.jpg','意大利','destination1.html?lid=1'
);
INSERT INTO destination VALUES(
   5,'img/p_img_5.jpg','秘鲁','greece.html?lid=1'
);
INSERT INTO destination VALUES(
   6,'img/p_img_6.jpg','缅甸','destination2.html?lid=1'
);
INSERT INTO destination VALUES(
   7,'img/p_img_7.jpg','不丹','destination1.html?lid=1'
);
INSERT INTO destination VALUES(
   8,'img/p_img_8.jpg','冰岛','greece.html?lid=1'
);
#推荐景点表
CREATE TABLE recommend(
   rid INT PRIMARY KEY NOT NULL auto_increment,
   pic varchar(128) default NULL,
   title varchar(128) default NULL, 
   sub_title varchar(128) default NULL,
   price varchar(64) default NULL,
   href varchar(128) default NULL
);
INSERT INTO recommend VALUES(
   null,'img/t_img_1.jpg','托斯卡纳艳阳下托斯卡纳艳阳下托斯卡纳艳阳下托斯卡纳艳阳下托斯',
   '托斯卡纳位于意大利的中部，是意大利最美的大区，这里美丽的风景让人流连忘返...',
   'RMB 15800起','greece.html?lid=1'
);
INSERT INTO recommend VALUES(
   null,'img/t_img_2.jpg','西班牙八天阳光之旅西班牙八天阳光之旅西班牙八天阳光之旅',
   '带有哥特风格的古老建筑与高楼大厦交相辉映，共同构成了巴塞罗那令人迷醉的天际线',
   'RMB 15800起','destination1.html?lid=1'
);
INSERT INTO recommend VALUES(
   null,'img/t_img_3.jpg','九天希腊雅典+爱琴海之旅',
   '雅典壮观的历史建筑和现代优雅建筑的鲜明对比，圣托里尼的蓝顶教堂和壮丽火山...',
   'RMB 15800起','greece.html?lid=1'
);
INSERT INTO recommend VALUES(
   null,'img/t_img_4.jpg','七晚八天经典不丹幸福之旅',
   '托斯卡纳位于意大利的中部，是意大利最美的大区，这里美丽的风景让人流连忘返...',
   'RMB 15800起','greece.html?lid=1'
);
INSERT INTO recommend VALUES(
   null,'img/t_img_5.jpg','奥地利小镇',
   '托斯卡纳位于意大利的中部，是意大利最美的大区，这里美丽的风景让人流连忘返...',
   'RMB 15800起','destination2.html?lid=1'
);
INSERT INTO recommend VALUES(
   null,'img/t_img_6.jpg','六日老挝慢之旅',
   '托斯卡纳位于意大利的中部，是意大利最美的大区，这里美丽的风景让人流连忘返...',
   'RMB 15800起','destination1.html?lid=1'
);
#旅行类型表
CREATE TABLE travelType(
   tid INT PRIMARY KEY NOT NULL auto_increment,
   pic varchar(128) default NULL,
   title varchar(128) default NULL, 
   href varchar(128) default NULL
);
INSERT INTO travelType VALUES(
  null,'img/type_1.jpg','家庭出游','greece.html?tid=1'
);
INSERT INTO travelType VALUES(
  null,'img/type_2.jpg','个人旅游','destination1.html?tid=2'
);
INSERT INTO travelType VALUES(
  null,'img/type_3.jpg','探险','destination2.html?tid=3'
);
INSERT INTO travelType VALUES(
  null,'img/type_4.jpg','蜜月度假','greece.html?tid=4'
);
INSERT INTO travelType VALUES(
  null,'img/type_5.jpg','蜜月','destination1.html?tid=5'
);
INSERT INTO travelType VALUES(
  null,'img/type_6.jpg','城市','destination2.html?tid=6'
);
-- 底部总结表
CREATE TABLE sumary(
  sid INT PRIMARY KEY NOT NULL auto_increment,
  pic varchar(128) default NULL,
  title varchar(128) default NULL, 
  sub_title varchar(128) default NULL,
  href varchar(128) default NULL
);
INSERT INTO sumary VALUES(
  null,'img/still_1.jpg','豪华住宿','蓝精灵旅行用自己对旅行的独特见解和经验帮您定制完美的旅程...','hotel.html?sid=1'
);
INSERT INTO sumary VALUES(
  null,'img/still_2.jpg','舒适交通','蓝精灵旅行用自己对旅行的独特见解和经验帮您定制完美的旅程...','hotel.html?sid=2'
);
INSERT INTO sumary VALUES(
  null,'img/still_3.jpg','优秀团队','蓝精灵旅行用自己对旅行的独特见解和经验帮您定制完美的旅程...','hotel.html?sid=3'
);
INSERT INTO sumary VALUES(
  null,'img/still_4.jpg','客户评价','We loved our entire trip to Athens,Santorini and Crete.One of the best organized tours we ever had!','hotel.html?sid=4'
);

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `uid` int(11) NOT NULL auto_increment,
  `uname` varchar(32) default NULL,
  `upwd` varchar(32) default NULL,
  `email` varchar(64) default NULL,
  `phone` varchar(16) default NULL,
  `avatar` varchar(128) default NULL,
  `user_name` varchar(32) default NULL,
  `gender` int(11) default NULL,
  PRIMARY KEY  (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'dingding', '123456', 'ding@qq.com', '13511011000', 'img/avatar/default.png', '丁春秋', '0');
INSERT INTO `users` VALUES ('2', 'dangdang', '123456', 'dang@qq.com', '13501234568', 'img/avatar/default.png', '当当喵', '1');
INSERT INTO `users` VALUES ('3', 'doudou', '123456', 'dou@qq.com', '13501234569', 'img/avatar/default.png', '窦志强', '1');
INSERT INTO `users` VALUES ('4', 'yaya', '123456', 'ya@qq.com', '13501234560', 'img/avatar/default.png', '秦小雅', '0');
INSERT INTO `users` VALUES ('5', '1111', '111111', '441977193@qq.com', '18357100796', null, null, null);
INSERT INTO `users` VALUES ('6', 'ABCD', '123456', '123@qq.com', '13538894495', null, null, null);
INSERT INTO `users` VALUES ('7', 'mohk', '123456', '11@qq.com', '13512312312', null, null, null);
INSERT INTO `users` VALUES ('8', '121123', 'w13945128995', '491000888@qq.com', '13213389258', null, null, null);
INSERT INTO `users` VALUES ('9', '555555', '5555555', '55555555@163.com', '13400000000', null, null, null);
INSERT INTO `users` VALUES ('10', 'xuyong', '123456', '123456789@qq.com', '15525623622', null, null, null);
INSERT INTO `users` VALUES ('11', 'admin', 'cxy930123', 'mail@xingyu1993.cn', '13580510164', null, null, null);
INSERT INTO `users` VALUES ('12', 'siyongbo', '900427', '616188545@qq.com', '18447103998', null, null, null);
INSERT INTO `users` VALUES ('13', 'qwerty', '123456', '1091256014@qq.com', '15617152367', null, null, null);
INSERT INTO `users` VALUES ('14', 'dingziqiang', '456456', '996534706@qq.com', '15567502520', null, null, null);
INSERT INTO `users` VALUES ('15', 'hdb2264068', 'huang123', '471062503@qq.com', '18898405759', null, null, null);
INSERT INTO `users` VALUES ('16', 'wenhua', '654321', 'liwenhua@tedu.cn', '15012345678', null, null, null);
INSERT INTO `users` VALUES ('17', '<img>', 'cxy930123', 'mail@xingyu1993.cn.1', '11111111111', null, null, null);
INSERT INTO `users` VALUES ('18', '</body>', 'cxy930123', 'mail@xingyu1993.cn.2', '22222222222', null, null, null);
INSERT INTO `users` VALUES ('19', '<img src=@>', 'cxy930123', 'mail@xingyu1993.cn.3', '33333333333', null, null, null);
INSERT INTO `users` VALUES ('20', '气航航', 'wyh961130', '1419591926@qq.com', '15927204115', null, null, null);
INSERT INTO `users` VALUES ('21', 'Jessy', 'ac210921', '123456@qq.com', '13523456789', null, null, null);
INSERT INTO `users` VALUES ('22', 'yuanxf', '123456', 'yuanxf@tedu.cn', '13537763301', null, null, null);
INSERT INTO `users` VALUES ('23', '查安军', '025520', '27514172112@qq.com', '18158899905', null, null, null);
INSERT INTO `users` VALUES ('24', '123456', '123456', '123456@1.com', '13815668132', null, null, null);
INSERT INTO `users` VALUES ('25', '1234', '111111', '734713428@qq.com', '18061920422', null, null, null);
INSERT INTO `users` VALUES ('26', 'qwe12345', '123123', '1191769510@qq.com', '15234010643', null, null, null);
INSERT INTO `users` VALUES ('27', '海贼王', '5124457', 'hxxcrocky@qq.com', '18826450879', null, null, null);
INSERT INTO `users` VALUES ('28', 'hanrufuyun00', 'hanrufuyun11', '458205630@qq.com', '13853114827', null, null, null);
INSERT INTO `users` VALUES ('29', 'li999999', 'li999999', 'limingdir@163.com', '18557512341', null, null, null);
INSERT INTO `users` VALUES ('30', '111111111111', '123456', '1057631733@qq.com', '15275106677', null, null, null);
INSERT INTO `users` VALUES ('31', 'tom', '123456', 'tom@tedu.cn', '13801234568', null, null, null);
INSERT INTO `users` VALUES ('32', 'zhouzhi', '123456', '2206344145@qq.com', '17600587478', null, null, null);
INSERT INTO `users` VALUES ('33', 'juleck', '123456', 'wuhaofushan@sina.com', '12345678901', null, null, null);
INSERT INTO `users` VALUES ('34', 'yangtao', '123456', '250737026@qq.com', '18256953222', null, null, null);
INSERT INTO `users` VALUES ('35', 'tarena', '123456', '783664829@qq.com', '17711625897', null, null, null);
INSERT INTO `users` VALUES ('36', 'xiaobai', 'xx527603', '1196465493@qq.com', '13980312111', null, 'lulu', '0');
INSERT INTO `users` VALUES ('37', '璐璐lu', '546521ll', '1273447080@qq.com', '15892761793', null, null, null);
INSERT INTO `users` VALUES ('38', '胖王二二', 'woaidoubi1.', '1179524522@qq.com', '13269195181', null, '', '0');
INSERT INTO `users` VALUES ('39', 'Yeye ', '123456', '1610608370@qq.com', '15062394551', null, null, null);
INSERT INTO `users` VALUES ('40', 'lsj', '123456', '11324564879@qq.com', '13156467891', null, null, null);
INSERT INTO `users` VALUES ('41', 'lsj', '123456', '11324564879@qq.com', '13156467891', null, null, null);
INSERT INTO `users` VALUES ('42', 'lsj', '123456', '11324564879@qq.com', '13156467891', null, null, null);
INSERT INTO `users` VALUES ('43', 'lsj', '123456', '11324564879@qq.com', '13156467891', null, null, null);
INSERT INTO `users` VALUES ('44', 'lsj', '123456', '11324564879@qq.com', '13156467891', null, null, null);
INSERT INTO `users` VALUES ('45', 'hjh', '958030', 'hjh@126.com', '17812344567', null, null, null);
INSERT INTO `users` VALUES ('46', 'ewq', '123456', '1234567890@qq.com', '12345678909', null, null, null);
INSERT INTO `users` VALUES ('47', 'pipi', '123456', '78@qq.com', '12367889993', null, null, null);
INSERT INTO `users` VALUES ('48', 'Lovica', '309418727', '1684707021@qq.com', '18435130456', null, null, null);
INSERT INTO `users` VALUES ('49', 'htt0908', '19920908', '418720482@qq.com', '15244691033', null, null, null);
INSERT INTO `users` VALUES ('50', 'SUXUEMEI', '123456', 'SUXUEMEI@qq.com', '15817338974', null, null, null);
INSERT INTO `users` VALUES ('51', 'zhong', '123456', '123456789@126.com', '13120211111', null, null, null);
INSERT INTO `users` VALUES ('52', '金豆豆', '123456789', '1170363143@qq.com', '15738619097', null, null, null);
INSERT INTO `users` VALUES ('53', 'wangjunfei', '123456', '396225880@qq.com', '13205935797', null, null, null);
INSERT INTO `users` VALUES ('54', 'gijhglkhglkh', '123456', 'sjksfj@fjdh.com', '15698765423', null, null, null);
INSERT INTO `users` VALUES ('55', 'zuiyd1314', 'zuiyh1994', '528396697@qq.com', '15927843908', null, null, null);
INSERT INTO `users` VALUES ('56', 'xiaoming123', '123456', '54646@qq.com', '13553688534', null, null, null);
INSERT INTO `users` VALUES ('57', 'yuanzhi', '123456', '270096123@qq.com', '15962573639', null, null, null);
INSERT INTO `users` VALUES ('58', 'fengkuang11', 'fengkuang113', '1135779768@qq.com', '18559132247', null, null, null);
INSERT INTO `users` VALUES ('59', 'fengkuang', '123456', '113577976@qq.com', '18559132248', null, null, null);
INSERT INTO `users` VALUES ('60', 'yxzaaa', '123456', '2280517552@qq.com', '13716225357', null, null, null);
INSERT INTO `users` VALUES ('61', 'linlei0001', '58874439', '876056078@qq.com', '13390922939', null, null, null);
INSERT INTO `users` VALUES ('62', 'superman', '1314520', '904202099@qq.com', '12345678910', null, null, null);
INSERT INTO `users` VALUES ('63', 'tom222', '123456', '1@163.com', '13456789012', null, null, null);
INSERT INTO `users` VALUES ('64', 'tom1234', '123456', '2@163.com', '13423456789', null, null, null);
INSERT INTO `users` VALUES ('65', 'Liyu123', 'asd8520', '812544715@qq.com', '18911743412', null, '左天', '1');
INSERT INTO `users` VALUES ('66', 'Liyu123', 'asd8520', '812544715@qq.com', '18911743412', null, null, null);
INSERT INTO `users` VALUES ('67', '李白李白', '123456', '125365@163.com', '13986273022', null, null, null);
INSERT INTO `users` VALUES ('68', 'dingdong', '123456', '15194898156@qq.com', '15112316516', null, null, null);
INSERT INTO `users` VALUES ('69', 'wenjinhua', '236239', '461677613@qq.com', '13516574786', null, null, null);
INSERT INTO `users` VALUES ('70', 'thebigleg', '1a4b2c8d5e7f', '1352951609@qq.com', '13572508752', null, null, null);
INSERT INTO `users` VALUES ('71', 'zhangsan', 'add123456', 'add@qq.com', '12234324223', null, null, null);
INSERT INTO `users` VALUES ('72', '高渐离', '123456', '935263676@qq.com', '18352501250', null, null, null);
INSERT INTO `users` VALUES ('73', 'lifan', '123456', '18092034652@163.com', '18092933456', null, null, null);
INSERT INTO `users` VALUES ('74', 'zhangsan99', '123456zs', '876987366@qq.com', '13934721892', null, null, null);
INSERT INTO `users` VALUES ('75', 'tingDING', '123456', '12345678@qq.com', '13548525468', null, null, null);
INSERT INTO `users` VALUES ('76', 'dongdong', '123456', 'wenhua@taqobao.com', '13946585968', null, null, null);
INSERT INTO `users` VALUES ('77', 'weiyiwei', '123456', '598475405@qq.com', '15923741956', null, '韦祎伟', '1');
INSERT INTO `users` VALUES ('78', '落英缤纷赋酒诗', 'sAberTime050', '857464657@qq.com', '17727420979', null, null, null);
INSERT INTO `users` VALUES ('79', 'xiaoming1234', '123456', '4564564564@qq.com', '15269188535', null, null, null);
INSERT INTO `users` VALUES ('80', 'loonchao', '123456', '850248873@qq.com', '13548729051', null, null, null);
INSERT INTO `users` VALUES ('81', 'hushuang', '123456', '850248813@qq.com', '15802507525', null, null, null);
INSERT INTO `users` VALUES ('82', 'test713', '2017713', '12458148@qq.com', '13596542654', null, null, null);
INSERT INTO `users` VALUES ('83', 'fhr9588', '000009588', '111111111@qq.com', '12345666666', null, null, null);
INSERT INTO `users` VALUES ('84', 'baibaidexue', '13809024377', '408130701@qq.com', '18301973827', null, null, null);
INSERT INTO `users` VALUES ('85', 'tom10', '123456', '123@163.com', '12323456', null, null, null);
INSERT INTO `users` VALUES ('86', '12121', '121212', '516898@qq.com', '15163222922', null, null, null);
INSERT INTO `users` VALUES ('87', 'qwer', 'qwer123', '519808982@qq.com', '15163222923', null, null, null);
INSERT INTO `users` VALUES ('88', '芳芳。。', '111111', '627265@qq.com', '17704622223', null, null, null);
INSERT INTO `users` VALUES ('89', 'smm123456', '963852741', '974255093@qq.com', '15098807312', null, null, null);
INSERT INTO `users` VALUES ('90', 'Wenhua.Li', 'libenka', 'wenhua.li@tedu.cn', '13912345678', null, null, null);
