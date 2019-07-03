SET NAMES UTF8;
DROP DATABASE IF EXISTS wy;
CREATE DATABASE wy CHARSET=UTF8;
USE wy;
#网站的基本信息
CREATE TABLE wy_site_info(
	site_name VARCHAR(16),
	logo VARCHAR(64),
	copyright VARCHAR(64)
);
INSERT INTO wy_site_info VALUES("网易","imges/logo.png","这里是填写版权信息");
#导航条目
CREATE TABLE wy_navbar_item(
	name VARCHAR(16),
	url VARCHAR(64),
	title VARCHAR(32)
);
#需要多少个复制多少个,这里我先写一个
INSERT INTO wy_navbar_item VALUES("网易首页","index.html","这里写提示文字");

#轮播图
CREATE TABLE wy_carousel_item(
	cid INT PRIMARY KEY AUTO_INCREMENT,
	pic VARCHAR(128),
	url VARCHAR(128),
	title VARCHAR(32)
);
#需要多少个复制多少个,这里我先写一个
INSERT INTO wy_carousel_item VALUES(NULL,"imges/图片地址","/m1.html","这里写提示文字");
#物品...等列表或其他信息
CREATE TABLE wy_new_product(
	pic INT NOT NULL,
	title VARCHAR(16),
	img VARCHAR(128),
#价格
	price DECIMAL(10,2)
);
#需要多少个复制多少个,这里我先写一个
INSERT INTO wy_new_product VALUES(
	"1","这里写名称","imges/图片地址","这里写价格数字"
);
#用户表
CREATE TABLE wy_user(
	uid INT PRIMARY KEY AUTO_INCREMENT,
	uname VARCHAR(32),
	upwd VARCHAR(32),
	email VARCHAR(64),
	phone VARCHAR(11),
#头像
	avatar VARCHAR(128),
	user_name VARCHAR(32),
	gender INT
);
INSERT INTO wy_user VALUES("1","yonghu","mima","邮箱","电话","imges/图片地址","大名","sex");





















