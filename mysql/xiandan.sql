#设置客户端连接的编码kk
SET NAMES UTF8;
#丢弃数据库
DROP DATABASE IF EXISTS xiandan;
#创建数据库
CREATE DATABASE xiandan CHARSET=UTF8;
#进入该数据库
USE xiandan;



###################################################################################################

#创建用户数据表  个人中心
CREATE TABLE users(
	id INT AUTO_INCREMENT UNIQUE,
	uname VARCHAR(20),    #没有写，用户昵称
	upwd CHAR(32),   # md5()  单向加密没有解密算法 32位
	phone CHAR(11),
  bolr VARCHAR(30), 
  sex  TINYINT   
);

#往用户数据表插入数据（定义向前台传递的接口）
INSERT INTO users VALUES('1','www178430166@qq.com','waf182dd545','13533870622','2019-08-06','男');
INSERT INTO users VALUES(NULL,'www1254877418@qq.com','2c41fa56b6aedf44ed290ebf16dce214','18320006077','2019-08-06','男');
INSERT INTO users VALUES(NULL,'www178430166@qq.com','w1111111111','18320006057','2019-08-06','男');
INSERT INTO users VALUES(NULL,'tom','123456a','18320006057','2019-08-06','男');



########################################################################################################

/****购物车11****/
CREATE TABLE wy_cart(
  sid INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
  id INT,   /*用户id*/
  lid INT,   /*商品id*/
  model  VARCHAR(255),
  model2 VARCHAR(255),
  price DECIMAL(10,2),   
  details_img VARCHAR(255),
  title VARCHAR(255),
  numcart INT,    /*购买商品数量*/
  model_title1 VARCHAR(255),
  model_title2 VARCHAR(255),
  details VARCHAR(255)   /*跳转地址*/
);
INSERT INTO wy_cart VALUES(null,1,2,'35','全自动','256','detct.png','wee',5,'端口','速度','dett?lid=1');





##################################################################################################


#首页轮播广告商品   首页
CREATE TABLE wy_index_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  seq_recommended TINYINT,
  href VARCHAR(128)
);

#首页轮播广告商品
INSERT INTO wy_index_carousel VALUES
(NULL,'img/index/banner1.png','轮播广告商品1',1,'./message/break6.jpg'),
(NULL,'img/index/banner2.png','轮播广告商品2',2,'./message/break2.jpg'),
(NULL,'img/index/banner3.png','轮播广告商品3',3,'./message/break3.jpg'),
(NULL,'img/index/banner4.png','轮播广告商品4',4,'./message/break4.jpg'),
(NULL,'img/index/banner4.png','轮播广告商品5',5,'./message/break5.jpg'),
(NULL,'img/index/banner4.png','轮播广告商品6',0,'./message/break1.jpg');



#首页品牌制造商 
CREATE TABLE brand_manufacturer(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  seq_recommended TINYINT,
  href VARCHAR(128),
  price DECIMAL(10,2)
);

/****首页品牌制造商****/
INSERT INTO brand_manufacturer VALUES
(NULL,'img/index/banner1.png','海外制造商',1,'./message/1131323.jpg','9.9'),
(NULL,'img/index/banner2.png','CK制造商',2,'./message/d1f21d3.png','25'),
(NULL,'img/index/banner3.png','新秀丽制造商',3,'./message/break3.jpg','34.9'),
(NULL,'img/index/banner4.png','MUJI制造商',4,'./message/break4.jpg','35'),
(NULL,'img/index/banner4.png','轮播广告商品5',0,'./message/break5.jpg','102'),
(NULL,'img/index/banner4.png','轮播广告商品6',0,'./message/break1.jpg','105');

#首页导航栏轮播广告商品列表
CREATE TABLE wy_nav_carouse(
  nav INT PRIMARY KEY AUTO_INCREMENT,
  laptop_id INT,    #每个导航栏产品应用所属的编号
  img VARCHAR(128),  #图片名称
  title VARCHAR(64),  #图片标题
  seq_recommended TINYINT,  #商品的排名
  href VARCHAR(128)   #图片地址
);

#首页导航栏商品轮播广告商品列表
INSERT INTO wy_nav_carouse VALUES
(NULL,1,'message/nav1/nav1.1.jpg','轮播广告商品1',1,'./message/nav1/nav1.1.jpg'),
(NULL,1,'message/nav1/nav1.2.jpg','轮播广告商品2',2,'./message/nav1/nav1.2.jpg'),
(NULL,1,'img/index/banner3.png','轮播广告商品3',3,'./message/nav1/nav1.3.jpg'),
(NULL,2,'img/index/banner4.png','轮播广告商品4',4,'./message/nav1/nav2.1.jpg'),
(NULL,2,'img/index/banner4.png','轮播广告商品5',5,'./message/nav1/nav2.2.jpg'),
(NULL,2,'img/index/banner4.png','轮播广告商品6',0,'./message/nav1/nav2.3.jpg'),
(NULL,2,'img/index/banner4.png','轮播广告商品7',0,'./message/nav1/nav2.4.jpg');



/*首页商品数据第一页和第三页共用*/
CREATE TABLE index_shangpin(
id INT PRIMARY KEY AUTO_INCREMENT,
img_url VARCHAR(60),
title1 VARCHAR(40),
title2 VARCHAR(40),
amount INT
);
INSERT INTO index_shangpin VALUES(null,"http://huiwww.applinzi.com/img/appimg/shangpin/article_1.jpg","99封顶","这么便宜不来看看吗",1);
INSERT INTO index_shangpin VALUES(null,"http://huiwww.applinzi.com/img/appimg/shangpin/article_2.jpg","99封顶","这么便宜不来看看吗",1);
INSERT INTO index_shangpin VALUES(null,"http://huiwww.applinzi.com/img/appimg/shangpin/article_3.jpg","99封顶","这么便宜不来看看吗",1);
INSERT INTO index_shangpin VALUES(null,"http://huiwww.applinzi.com/img/appimg/shangpin/article_4.jpg","99封顶","这么便宜不来看看吗",1);
INSERT INTO index_shangpin VALUES(null,"http://huiwww.applinzi.com/img/appimg/shangpin/article_5.jpg","99封顶","这么便宜不来看看吗",1);
INSERT INTO index_shangpin VALUES(null,"http://huiwww.applinzi.com/img/appimg/shangpin/article_6.jpg","99封顶","这么便宜不来看看吗",1);
INSERT INTO index_shangpin VALUES(null,"http://huiwww.applinzi.com/img/appimg/shangpin/article_7.jpg","99封顶","这么便宜不来看看吗",1);
INSERT INTO index_shangpin VALUES(null,"http://huiwww.applinzi.com/img/appimg/temai/temai1.png","99封顶","这么便宜呢",2);
INSERT INTO index_shangpin VALUES(null,"http://huiwww.applinzi.com/img/appimg/temai/temai2.png","99封顶","这么便宜呢",2);
INSERT INTO index_shangpin VALUES(null,"http://huiwww.applinzi.com/img/appimg/temai/temai3.png","99封顶","这么便宜呢",2);
INSERT INTO index_shangpin VALUES(null,"http://huiwww.applinzi.com/img/appimg/temai/temai4.png","99封顶","这么便宜呢",2);
INSERT INTO index_shangpin VALUES(null,"http://huiwww.applinzi.com/img/appimg/temai/temai5.png","99封顶","这么便宜呢",2);
INSERT INTO index_shangpin VALUES(null,"http://huiwww.applinzi.com/img/appimg/temai/temai6.png","99封顶","这么便宜呢",2);
INSERT INTO index_shangpin VALUES(null,"http://huiwww.applinzi.com/img/appimg/temai/temai7.png","99封顶","这么便宜呢",2);
INSERT INTO index_shangpin VALUES(null,"http://huiwww.applinzi.com/img/appimg/temai/temai8.png","99封顶","这么便宜呢",2);
INSERT INTO index_shangpin VALUES(null,"http://huiwww.applinzi.com/img/appimg/shangpin/article_1.jpg","99封顶","这么便宜不来看看吗",3);
INSERT INTO index_shangpin VALUES(null,"http://huiwww.applinzi.com/img/appimg/shangpin/article_2.jpg","99封顶","这么便宜不来看看吗",3);
INSERT INTO index_shangpin VALUES(null,"http://huiwww.applinzi.com/img/appimg/shangpin/article_3.jpg","99封顶","这么便宜不来看看吗",3);
INSERT INTO index_shangpin VALUES(null,"http://huiwww.applinzi.com/img/appimg/shangpin/article_4.jpg","99封顶","这么便宜不来看看吗",3);
INSERT INTO index_shangpin VALUES(null,"http://huiwww.applinzi.com/img/appimg/shangpin/article_5.jpg","99封顶","这么便宜不来看看吗",3);
INSERT INTO index_shangpin VALUES(null,"http://huiwww.applinzi.com/img/appimg/shangpin/article_6.jpg","99封顶","这么便宜不来看看吗",3);
INSERT INTO index_shangpin VALUES(null,"http://huiwww.applinzi.com/img/appimg/shangpin/article_7.jpg","99封顶","这么便宜不来看看吗",3);
INSERT INTO index_shangpin VALUES(null,"http://huiwww.applinzi.com/img/appimg/temai/temai1.png","99封顶","这么便宜呢",4);
INSERT INTO index_shangpin VALUES(null,"http://huiwww.applinzi.com/img/appimg/temai/temai2.png","99封顶","这么便宜呢",4);
INSERT INTO index_shangpin VALUES(null,"http://huiwww.applinzi.com/img/appimg/temai/temai3.png","99封顶","这么便宜呢",4);
INSERT INTO index_shangpin VALUES(null,"http://huiwww.applinzi.com/img/appimg/temai/temai4.png","99封顶","这么便宜呢",4);
INSERT INTO index_shangpin VALUES(null,"http://huiwww.applinzi.com/img/appimg/temai/temai5.png","99封顶","这么便宜呢",4);
INSERT INTO index_shangpin VALUES(null,"http://huiwww.applinzi.com/img/appimg/temai/temai6.png","99封顶","这么便宜呢",4);
INSERT INTO index_shangpin VALUES(null,"http://huiwww.applinzi.com/img/appimg/temai/temai7.png","99封顶","这么便宜呢",4);
INSERT INTO index_shangpin VALUES(null,"http://huiwww.applinzi.com/img/appimg/temai/temai8.png","99封顶","这么便宜呢",4);
INSERT INTO index_shangpin VALUES(null,"http://huiwww.applinzi.com/img/appimg/shangpin/article_1.jpg","99封顶","这么便宜不来看看吗",5);
INSERT INTO index_shangpin VALUES(null,"http://huiwww.applinzi.com/img/appimg/shangpin/article_2.jpg","99封顶","这么便宜不来看看吗",5);
INSERT INTO index_shangpin VALUES(null,"http://huiwww.applinzi.com/img/appimg/shangpin/article_3.jpg","99封顶","这么便宜不来看看吗",5);
INSERT INTO index_shangpin VALUES(null,"http://huiwww.applinzi.com/img/appimg/shangpin/article_4.jpg","99封顶","这么便宜不来看看吗",5);
INSERT INTO index_shangpin VALUES(null,"http://huiwww.applinzi.com/img/appimg/shangpin/article_5.jpg","99封顶","这么便宜不来看看吗",5);
INSERT INTO index_shangpin VALUES(null,"http://huiwww.applinzi.com/img/appimg/shangpin/article_6.jpg","99封顶","这么便宜不来看看吗",5);
INSERT INTO index_shangpin VALUES(null,"http://huiwww.applinzi.com/img/appimg/shangpin/article_7.jpg","99封顶","这么便宜不来看看吗",5);


/*分类列表*/
CREATE TABLE index_fenlei(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(90),
  title  VARCHAR(40),
  brand  VARCHAR(30),
  biaoji INT(50) 
);
/*查询分类的时候，用分类的表来查询商品的品牌和类别*/
INSERT INTO index_fenlei VALUES(null,"http://huiwww.applinzi.com/img/appimg/minImg/xie/yundong1.jpg","鸿星尔克","杂牌",1);
INSERT INTO index_fenlei VALUES(null,"http://huiwww.applinzi.com/img/appimg/minImg/xie/yundong2.png","三叶草","杂牌",1);
INSERT INTO index_fenlei VALUES(null,"http://huiwww.applinzi.com/img/appimg/minImg/xie/yundong3.jpg","特步","杂牌",1);
INSERT INTO index_fenlei VALUES(null,"http://huiwww.applinzi.com/img/appimg/minImg/xie/yundong4.jpg","耐克","杂牌",1);
INSERT INTO index_fenlei VALUES(null,"http://huiwww.applinzi.com/img/appimg/minImg/xie/yundong5.jpg","阿迪达斯","杂牌",1);
INSERT INTO index_fenlei VALUES(null,"http://huiwww.applinzi.com/img/appimg/minImg/xie/yundong6.jpg","亚瑟士","鸿星尔克",1);
INSERT INTO index_fenlei VALUES(null,"http://huiwww.applinzi.com/img/appimg/minImg/xie/yundong7.jpg","索康尼","鸿星尔克",1);
INSERT INTO index_fenlei VALUES(null,"http://huiwww.applinzi.com/img/appimg/minImg/xie/yundong8.jpg","361","鸿星尔克",1);
INSERT INTO index_fenlei VALUES(null,"http://huiwww.applinzi.com/img/appimg/minImg/xie/yundong9.jpg","李宁","鸿星尔克",1);
INSERT INTO index_fenlei VALUES(null,"http://huiwww.applinzi.com/img/appimg/minImg/xie/yundong10.jpg","安德玛","鸿星尔克",1);
INSERT INTO index_fenlei VALUES(null,"http://huiwww.applinzi.com/img/appimg/minImg/xie/yundong11.jpg","乔丹","外星人",1);
INSERT INTO index_fenlei VALUES(null,"http://huiwww.applinzi.com/img/appimg/minImg/xie/yundong12.jpg","布鲁克斯","外星人",1);
INSERT INTO index_fenlei VALUES(null,"http://huiwww.applinzi.com/img/appimg/minImg/xie/yundong12.jpg","花花公子","外星人",1);
INSERT INTO index_fenlei VALUES(null,"http://huiwww.applinzi.com/img/appimg/minImg/yifu/yifu1.jpg","布鞋","外星人",2);
INSERT INTO index_fenlei VALUES(null,"http://huiwww.applinzi.com/img/appimg/minImg/yifu/yifu2.jpg","布鞋","外星人",2);
INSERT INTO index_fenlei VALUES(null,"http://huiwww.applinzi.com/img/appimg/minImg/yifu/yifu3.jpg","布鞋","外星人",2);
INSERT INTO index_fenlei VALUES(null,"http://huiwww.applinzi.com/img/appimg/minImg/yifu/yifu4.png","布鞋","杂牌",2);
INSERT INTO index_fenlei VALUES(null,"http://huiwww.applinzi.com/img/appimg/minImg/yifu/yifu5.png","布鞋","杂牌",2);
INSERT INTO index_fenlei VALUES(null,"http://huiwww.applinzi.com/img/appimg/minImg/yifu/yifu6.png","布鞋","杂牌",2);
INSERT INTO index_fenlei VALUES(null,"http://huiwww.applinzi.com/img/appimg/minImg/yifu/yifu7.jpg","布鞋","杂牌",2);
INSERT INTO index_fenlei VALUES(null,"http://huiwww.applinzi.com/img/appimg/minImg/yifu/yifu8.png","布鞋","杂牌",2);

/*商品列表*/
CREATE TABLE shangpin_list(
  id INT PRIMARY KEY AUTO_INCREMENT,
  title  VARCHAR(40),
  brand  VARCHAR(30),
  img_url VARCHAR(90),
  title1  VARCHAR(40),
  title2  VARCHAR(50),
  price1   DECIMAL(10,2),
  price2   DECIMAL(1,1),
  paixu  INT(100),
  biaoji INT(50)
);
INSERT INTO shangpin_list VALUES(null,"休闲鞋","鸿星尔克","http://huiwww.applinzi.com/img/appimg/shangpinlist/xie/xiezi1.jpg","杂牌女式EPIC REACT FLYKNIT柔软回弹跑步鞋","休闲鞋5.5折封顶",319,4,1,1);
INSERT INTO shangpin_list VALUES(null,"休闲鞋","鸿星尔克","http://huiwww.applinzi.com/img/appimg/shangpinlist/xie/xiezi2.jpg","男士休闲便捷鞋，清爽透气","杂牌6.5折封顶",119,4,2,1);
/*循环测试数据*/
INSERT INTO shangpin_list VALUES(null,"休闲鞋","鸿星尔克","http://huiwww.applinzi.com/img/appimg/shangpinlist/xie/xiezi3.jpg","又酷又帅，穿了没人爱","某知名品牌3.5折封顶",819,4,3,1);
INSERT INTO shangpin_list VALUES(null,"休闲鞋","鸿星尔克","http://huiwww.applinzi.com/img/appimg/shangpinlist/xie/xiezi1.png","高仿跑步鞋，便宜耐穿","杂牌8.5折封顶",19,4,4,1);
INSERT INTO shangpin_list VALUES(null,"休闲鞋","鸿星尔克","http://huiwww.applinzi.com/img/appimg/shangpinlist/xie/xiezi2.png","Nike耐克女式EPIC REACT FLYKNIT柔软回弹跑步鞋","耐克6.5折封顶",519,4,5,1);
INSERT INTO shangpin_list VALUES(null,"休闲鞋","鸿星尔克","http://huiwww.applinzi.com/img/appimg/shangpinlist/xie/xiezi2.png","Nike耐克女式EPIC REACT FLYKNIT柔软回弹跑步鞋","耐克6.5折封顶",519,4,6,1);
INSERT INTO shangpin_list VALUES(null,"休闲鞋","鸿星尔克","http://huiwww.applinzi.com/img/appimg/shangpinlist/xie/xiezi2.png","Nike耐克女式EPIC REACT FLYKNIT柔软回弹跑步鞋","耐克6.5折封顶",519,4,7,1);
INSERT INTO shangpin_list VALUES(null,"布鞋","三叶草","http://huiwww.applinzi.com/img/appimg/shangpinlist/xie/xiezi2.png","Nike耐克女式EPIC REACT FLYKNIT柔软回弹跑步鞋","耐克6.5折封顶",519,4,8,1);
INSERT INTO shangpin_list VALUES(null,"布鞋","三叶草","http://huiwww.applinzi.com/img/appimg/shangpinlist/xie/xiezi2.png","Nike耐克女式EPIC REACT FLYKNIT柔软回弹跑步鞋","耐克6.5折封顶",519,4,9,1);
INSERT INTO shangpin_list VALUES(null,"布鞋","三叶草","http://huiwww.applinzi.com/img/appimg/shangpinlist/xie/xiezi2.png","Nike耐克女式EPIC REACT FLYKNIT柔软回弹跑步鞋","耐克6.5折封顶",519,4,10,1);
INSERT INTO shangpin_list VALUES(null,"布鞋","三叶草","http://huiwww.applinzi.com/img/appimg/shangpinlist/xie/xiezi2.png","Nike耐克女式EPIC REACT FLYKNIT柔软回弹跑步鞋","耐克6.5折封顶",519,4,11,1);
INSERT INTO shangpin_list VALUES(null,"跑步鞋","特步","http://huiwww.applinzi.com/img/appimg/shangpinlist/xie/xiezi2.png","Nike耐克女式EPIC REACT FLYKNIT柔软回弹跑步鞋","耐克6.5折封顶",519,4,12,1);
INSERT INTO shangpin_list VALUES(null,"跑步鞋","特步","http://huiwww.applinzi.com/img/appimg/shangpinlist/xie/xiezi2.png","Nike耐克女式EPIC REACT FLYKNIT柔软回弹跑步鞋","耐克6.5折封顶",519,4,13,1);
INSERT INTO shangpin_list VALUES(null,"跑步鞋","特步","http://huiwww.applinzi.com/img/appimg/shangpinlist/xie/xiezi2.png","Nike耐克女式EPIC REACT FLYKNIT柔软回弹跑步鞋","耐克6.5折封顶",519,4,14,1);
INSERT INTO shangpin_list VALUES(null,"跑步鞋","特步","http://huiwww.applinzi.com/img/appimg/shangpinlist/xie/xiezi2.png","Nike耐克女式EPIC REACT FLYKNIT柔软回弹跑步鞋","耐克6.5折封顶",519,4,15,1);
INSERT INTO shangpin_list VALUES(null,"跑步鞋","特步","http://huiwww.applinzi.com/img/appimg/shangpinlist/xie/xiezi2.png","Nike耐克女式EPIC REACT FLYKNIT柔软回弹跑步鞋","耐克6.5折封顶",519,4,16,1);
INSERT INTO shangpin_list VALUES(null,"跑步鞋","特步","http://huiwww.applinzi.com/img/appimg/shangpinlist/xie/xiezi2.png","Nike耐克女式EPIC REACT FLYKNIT柔软回弹跑步鞋","耐克6.5折封顶",519,4,17,1);
INSERT INTO shangpin_list VALUES(null,"皮鞋","鳄鱼牌","http://huiwww.applinzi.com/img/appimg/shangpinlist/xie/xiezi2.png","Nike耐克女式EPIC REACT FLYKNIT柔软回弹跑步鞋","耐克6.5折封顶",519,4,18,1);
INSERT INTO shangpin_list VALUES(null,"皮鞋","鳄鱼牌","http://huiwww.applinzi.com/img/appimg/shangpinlist/xie/xiezi2.png","Nike耐克女式EPIC REACT FLYKNIT柔软回弹跑步鞋","耐克6.5折封顶",519,4,19,1);
INSERT INTO shangpin_list VALUES(null,"皮鞋","鳄鱼牌","http://huiwww.applinzi.com/img/appimg/shangpinlist/xie/xiezi2.png","Nike耐克女式EPIC REACT FLYKNIT柔软回弹跑步鞋","耐克6.5折封顶",519,4,20,1);
INSERT INTO shangpin_list VALUES(null,"皮鞋","鳄鱼牌","http://huiwww.applinzi.com/img/appimg/shangpinlist/xie/xiezi2.png","Nike耐克女式EPIC REACT FLYKNIT柔软回弹跑步鞋","耐克6.5折封顶",519,4,21,1);
INSERT INTO shangpin_list VALUES(null,"皮鞋","鳄鱼牌","http://huiwww.applinzi.com/img/appimg/shangpinlist/xie/xiezi2.png","Nike耐克女式EPIC REACT FLYKNIT柔软回弹跑步鞋","耐克6.5折封顶",519,4,22,1);
INSERT INTO shangpin_list VALUES(null,"皮鞋","鳄鱼牌","http://huiwww.applinzi.com/img/appimg/shangpinlist/xie/xiezi2.png","Nike耐克女式EPIC REACT FLYKNIT柔软回弹跑步鞋","耐克6.5折封顶",519,4,23,1);
INSERT INTO shangpin_list VALUES(null,"皮鞋","鳄鱼牌","http://huiwww.applinzi.com/img/appimg/shangpinlist/xie/xiezi2.png","Nike耐克女式EPIC REACT FLYKNIT柔软回弹跑步鞋","耐克6.5折封顶",519,4,24,1);
INSERT INTO shangpin_list VALUES(null,"人字拖","未知品牌","http://huiwww.applinzi.com/img/appimg/shangpinlist/xie/xiezi2.png","Nike耐克女式EPIC REACT FLYKNIT柔软回弹跑步鞋","耐克6.5折封顶",519,4,25,1);
INSERT INTO shangpin_list VALUES(null,"人字拖","未知品牌","http://huiwww.applinzi.com/img/appimg/shangpinlist/xie/xiezi2.png","Nike耐克女式EPIC REACT FLYKNIT柔软回弹跑步鞋","耐克6.5折封顶",519,4,26,1);
INSERT INTO shangpin_list VALUES(null,"人字拖","未知品牌","http://huiwww.applinzi.com/img/appimg/shangpinlist/xie/xiezi2.png","Nike耐克女式EPIC REACT FLYKNIT柔软回弹跑步鞋","耐克6.5折封顶",519,4,27,1);
INSERT INTO shangpin_list VALUES(null,"人字拖","未知品牌","http://huiwww.applinzi.com/img/appimg/shangpinlist/xie/xiezi2.png","Nike耐克女式EPIC REACT FLYKNIT柔软回弹跑步鞋","耐克6.5折封顶",519,4,28,1);
INSERT INTO shangpin_list VALUES(null,"人字拖","未知品牌","http://huiwww.applinzi.com/img/appimg/shangpinlist/xie/xiezi2.png","Nike耐克女式EPIC REACT FLYKNIT柔软回弹跑步鞋","耐克6.5折封顶",519,4,29,1);
/*筛选分类列表*/








#########################################################################################################

/**商品图片列表  轮播图         商品列表页**/
CREATE TABLE wy_laptop_pic(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  laptop_id INT,              #商品编号
  img VARCHAR(128),            #图片路径
  href VARCHAR(128),            #商品详情地址
  lg VARCHAR(128)             #大图片路径
);

/**商品图片列表   轮播图**/
INSERT INTO wy_laptop_pic VALUES
(NULL, 1, 'http://huiwww.applinzi.com/img/lunbotu/1.jpg','img/product/md/57b12a31N8f4f75a3.jpg','img/product/lg/57b12a31N8f4f75a3.jpg'),
(NULL, 1, 'http://huiwww.applinzi.com/img/lunbotu/2.jpg','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 1, 'http://huiwww.applinzi.com/img/lunbotu/3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 1, 'http://huiwww.applinzi.com/img/lunbotu/1.jpg','img/product/md/57b12a31N8f4f75a3.jpg','img/product/lg/57b12a31N8f4f75a3.jpg'),
(NULL, 2, './message/nav1/nav2.1.jpg','img/product/md/57b12a31N8f4f75a3.jpg','img/product/lg/57b12a31N8f4f75a3.jpg'),
(NULL, 2, './message/nav1/nav2.2.jpg','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 2, './message/nav1/nav2.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 2, './message/nav1/nav2.4.jpg','img/product/md/57b12a31N8f4f75a3.jpg','img/product/lg/57b12a31N8f4f75a3.jpg'),
(NULL, 3, './message/nav1/nav3.1.jpg','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 3, './message/nav1/nav3.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 4, './message/nav1/nav4.1.jpg','img/product/md/57b12a31N8f4f75a3.jpg','img/product/lg/57b12a31N8f4f75a3.jpg'),
(NULL, 4, './message/nav1/nav4.2.jpg','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 4, './message/nav1/nav4.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 5, './message/nav1/nav3.1.jpg','img/product/md/57e3b072N661cd00d.jpg','img/product/lg/57e3b072N661cd00d.jpg'),
(NULL, 5, './message/nav1/nav3.2.jpg','img/product/md/57e1ff09Nf610fea3.jpg','img/product/lg/57e1ff09Nf610fea3.jpg'),
(NULL, 5, './message/nav1/nav1.3.jpg','img/product/md/57e1ff17N286390a9.jpg','img/product/lg/57e1ff17N286390a9.jpg'),
(NULL, 5, './message/nav1/nav2.4.jpg','img/product/md/57e1ff2fN8a36d0fe.jpg','img/product/lg/57e1ff2fN8a36d0fe.jpg'),
(NULL, 5, './message/nav1/nav3.1.jpg','img/product/md/57e52dffNa4d8ce2c.jpg','img/product/lg/57e52dffNa4d8ce2c.jpg'),
(NULL, 5, './message/nav1/nav2.2.jpg','img/product/md/57e52e03N4ec367dd.jpg','img/product/lg/57e52e03N4ec367dd.jpg'),
(NULL, 6, './message/nav1/nav4.2.jpg','img/product/md/57e3b072N661cd00d.jpg','img/product/lg/57e3b072N661cd00d.jpg'),
(NULL, 6, './message/nav1/nav3.1.jpg','img/product/md/57e1ff09Nf610fea3.jpg','img/product/lg/57e1ff09Nf610fea3.jpg'),
(NULL, 6, './message/nav1/nav1.2.jpg','img/product/md/57e1ff2fN8a36d0fe.jpg','img/product/lg/57e1ff2fN8a36d0fe.jpg'),
(NULL, 6, './message/nav1/nav3.2.jpg','img/product/md/57e52dffNa4d8ce2c.jpg','img/product/lg/57e52dffNa4d8ce2c.jpg'),
(NULL, 6, './message/nav1/nav4.2.jpg','img/product/md/57e52e03N4ec367dd.jpg','img/product/lg/57e52e03N4ec367dd.jpg'),
(NULL, 6, './message/nav1/nav4.1.jpg','img/product/md/57e52e06N116974f7.jpg','img/product/lg/57e52e06N116974f7.jpg'),
(NULL, 7, './message/nav1/nav2.4.jpg','img/product/md/57e3b072N661cd00d.jpg','img/product/lg/57e3b072N661cd00d.jpg'),
(NULL, 7, './message/nav1/nav2.1.jpg','img/product/md/57e1ff17N286390a9.jpg','img/product/lg/57e1ff17N286390a9.jpg'),
(NULL, 7, './message/nav1/nav3.1.jpg','img/product/md/57e1ff2fN8a36d0fe.jpg','img/product/lg/57e1ff2fN8a36d0fe.jpg'),
(NULL, 7, './message/nav1/nav4.1.jpg','img/product/md/57e52dffNa4d8ce2c.jpg','img/product/lg/57e52dffNa4d8ce2c.jpg'),
(NULL, 7, './message/nav1/nav2.4.jpg','img/product/md/57e52e03N4ec367dd.jpg','img/product/lg/57e52e03N4ec367dd.jpg'),
(NULL, 8, './message/nav1/nav1.1.jpg','img/product/md/57e1ff2fN8a36d0fe.jpg','img/product/lg/57e1ff2fN8a36d0fe.jpg'),
(NULL, 8, './message/nav1/nav4.1.jpg','img/product/md/57e52dffNa4d8ce2c.jpg','img/product/lg/57e52dffNa4d8ce2c.jpg'),
(NULL, 8, './message/nav1/nav2.4.jpg','img/product/md/57e52e03N4ec367dd.jpg','img/product/lg/57e52e03N4ec367dd.jpg'),
(NULL, 9, './message/nav1/nav3.1.jpg','img/product/md/57e1ff2fN8a36d0fe.jpg','img/product/lg/57e1ff2fN8a36d0fe.jpg'),
(NULL, 9, './message/nav1/nav2.1.jpg','img/product/md/57e52dffNa4d8ce2c.jpg','img/product/lg/57e52dffNa4d8ce2c.jpg'),
(NULL, 9, './message/nav1/nav3.1.jpg','img/product/md/57e52e03N4ec367dd.jpg','img/product/lg/57e52e03N4ec367dd.jpg'),
(NULL, 10, './message/nav1/nav2.1.jpg','img/product/md/57e1ff2fN8a36d0fe.jpg','img/product/lg/57e1ff2fN8a36d0fe.jpg'),
(NULL, 10, './message/nav1/nav2.2.jpg','img/product/md/57e52dffNa4d8ce2c.jpg','img/product/lg/57e52dffNa4d8ce2c.jpg'),
(NULL, 10, './message/nav1/nav3.2.jpg','img/product/md/57e52e03N4ec367dd.jpg','img/product/lg/57e52e03N4ec367dd.jpg');



/****产品列表商品****/
CREATE TABLE wy_index_product(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),   #标题
  details VARCHAR(128),  #副标题
  log_t VARCHAR(64),   #标签码 橙色的提示
  product_title VARCHAR(64),  #商品名称
  pic VARCHAR(128),  #商品图片
  price DECIMAL(10,2),  
  href VARCHAR(128),
  seq_recommended TINYINT,
  seq_new_arrival TINYINT,
  seq_top_sale TINYINT,
  original DECIMAL(10,2),
  product_msg VARCHAR(128),
  laptop_list INT            #商品编号
);

/****商品列表商品****/
INSERT INTO wy_index_product VALUES
(NULL, '夏季新品', '夏季热力爆品 抢先预览','限时购','男式运动弹力T桖','./message/nav2/summer/summer1.png', 6988, 'product.html?lid=1', 1, 1, 1,197,'舒适透气，弹力拉伸',1),
(NULL, '小米Air 金属超轻薄', '夏季热力爆品 抢先预览','7月画册特惠','拉拉杯 无螺纹玻璃随行杯','./message/nav2/summer/summer2.png', 89, 'product.html?lid=2', 2, 2, 2,88,'量身定做，弹力拉伸',1),
(NULL, '联想E480C 轻薄系列', '夏季热力爆品 抢先预览','特价','男式运动弹力T桖','./message/nav2/summer/summer3.png', 5399, 'product.html?lid=3', 3, 3, 3,97,'家的感觉，超薄避孕套',1),
(NULL, '华硕RX310 金属超极本', '夏季热力爆品 抢先预览','7月画册特惠','男式运动弹力T桖','./message/nav2/summer/summer4.png', 55, 'product.html?lid=4', 4, 4, 4,64,'特价游，弹力拉伸',1),
(NULL, '联想小新700 电竞版游戏本', '夏季热力爆品 抢先预览','好货内部价','男式运动弹力T桖','./message/nav2/summer/summer5.png', 85, 'product.html?lid=5', 5, 5, 5,97,'舒适透气，弹力拉伸',1),
(NULL, '戴尔灵越燃7000 轻薄窄边', '夏季热力爆品 抢先预览','特价','男式运动弹力T桖','./message/nav2/summer/summer6.png', 5199, 'product.html?lid=6', 6, 6, 6,97,'三指一扣，一秒即开',1),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer1.png', 46, 'product.html?lid=7', 0, 0, 0,97,'舒适透气，弹力拉伸',1),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer5.png', 46, 'product.html?lid=8', 0, 0, 0,97,'舒适透气，弹力拉伸',1),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer4.png', 46, 'product.html?lid=9', 0, 0, 0,97,'舒适透气，弹力拉伸',1),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer6.png', 46, 'product.html?lid=10', 0, 0, 0,97,'舒适透气，弹力拉伸',1),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer5.png', 46, 'product.html?lid=11', 0, 0, 0,97,'舒适透气，弹力拉伸',1),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer1.png', 46, 'product.html?lid=12', 0, 0, 0,97,'舒适透气，弹力拉伸',1),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer7.png', 46, 'product.html?lid=13', 0, 0, 0,97,'舒适透气，弹力拉伸',1),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer5.png', 46, 'product.html?lid=14', 0, 0, 0,97,'舒适透气，弹力拉伸',1),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer7.png', 46, 'product.html?lid=15', 0, 0, 0,97,'舒适透气，弹力拉伸',1),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer2.png', 46, 'product.html?lid=16', 0, 0, 0,97,'舒适透气，弹力拉伸',2),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer5.png', 46, 'product.html?lid=17', 0, 0, 0,97,'舒适透气，弹力拉伸',2),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer7.png', 46, 'product.html?lid=18', 0, 0, 0,97,'舒适透气，弹力拉伸',2),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer7.png', 46, 'product.html?lid=19', 0, 0, 0,97,'舒适透气，弹力拉伸',2),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer4.png', 46, 'product.html?lid=20', 0, 0, 0,97,'舒适透气，弹力拉伸',2),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer9.png', 46, 'product.html?lid=21', 0, 0, 0,97,'舒适透气，弹力拉伸',2),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer7.png', 46, 'product.html?lid=22', 0, 0, 0,97,'舒适透气，弹力拉伸',2),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer7.png', 46, 'product.html?lid=23', 0, 0, 0,97,'舒适透气，弹力拉伸',2),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer10.png', 46, 'product.html?lid=24', 0, 0, 0,97,'舒适透气，弹力拉伸',2),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer8.png', 46, 'product.html?lid=25', 0, 0, 0,97,'舒适透气，弹力拉伸',2),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer7.png', 46, 'product.html?lid=26', 0, 0, 0,97,'舒适透气，弹力拉伸',2),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer6.png', 46, 'product.html?lid=27', 0, 0, 0,97,'舒适透气，弹力拉伸',3),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer5.png', 46, 'product.html?lid=28', 0, 0, 0,97,'舒适透气，弹力拉伸',3),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer7.png', 46, 'product.html?lid=29', 0, 0, 0,97,'舒适透气，弹力拉伸',3),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer1.png', 46, 'product.html?lid=30', 0, 0, 0,97,'舒适透气，弹力拉伸',3),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer7.png', 46, 'product.html?lid=31', 0, 0, 0,97,'舒适透气，弹力拉伸',3),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer4.png', 46, 'product.html?lid=32', 0, 0, 0,97,'舒适透气，弹力拉伸',3),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer7.png', 46, 'product.html?lid=33', 0, 0, 0,97,'舒适透气，弹力拉伸',3),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer5.png', 46, 'product.html?lid=1', 0, 0, 0,97,'舒适透气，弹力拉伸',3),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer7.png', 46, 'product.html?lid=1', 0, 0, 0,97,'舒适透气，弹力拉伸',3),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer6.png', 46, 'product.html?lid=1', 0, 0, 0,97,'舒适透气，弹力拉伸',3),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer7.png', 46, 'product.html?lid=1', 0, 0, 0,97,'舒适透气，弹力拉伸',3),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer8.png', 46, 'product.html?lid=1', 0, 0, 0,97,'舒适透气，弹力拉伸',3),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer6.png', 46, 'product.html?lid=1', 0, 0, 0,97,'舒适透气，弹力拉伸',4),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer7.png', 46, 'product.html?lid=1', 0, 0, 0,97,'舒适透气，弹力拉伸',4),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer8.png', 46, 'product.html?lid=1', 0, 0, 0,97,'舒适透气，弹力拉伸',4),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer6.png', 46, 'product.html?lid=1', 0, 0, 0,97,'舒适透气，弹力拉伸',4),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer7.png', 46, 'product.html?lid=1', 0, 0, 0,97,'舒适透气，弹力拉伸',4),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer8.png', 46, 'product.html?lid=1', 0, 0, 0,97,'舒适透气，弹力拉伸',4),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer4.png', 46, 'product.html?lid=1', 0, 0, 0,97,'舒适透气，弹力拉伸',4),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer7.png', 46, 'product.html?lid=1', 0, 0, 0,97,'舒适透气，弹力拉伸',4),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer8.png', 46, 'product.html?lid=1', 0, 0, 0,97,'舒适透气，弹力拉伸',4),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer2.png', 46, 'product.html?lid=1', 0, 0, 0,97,'舒适透气，弹力拉伸',4),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer7.png', 46, 'product.html?lid=1', 0, 0, 0,97,'舒适透气，弹力拉伸',4),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer1.png', 46, 'product.html?lid=1', 0, 0, 0,97,'舒适透气，弹力拉伸',4),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer5.png', 46, 'product.html?lid=1', 0, 0, 0,97,'舒适透气，弹力拉伸',5),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer7.png', 46, 'product.html?lid=1', 0, 0, 0,97,'舒适透气，弹力拉伸',5),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer4.png', 46, 'product.html?lid=1', 0, 0, 0,97,'舒适透气，弹力拉伸',5),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer7.png', 46, 'product.html?lid=1', 0, 0, 0,97,'舒适透气，弹力拉伸',5),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer5.png', 46, 'product.html?lid=1', 0, 0, 0,97,'舒适透气，弹力拉伸',5),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer7.png', 46, 'product.html?lid=1', 0, 0, 0,97,'舒适透气，弹力拉伸',6),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer10.png', 46, 'product.html?lid=1', 0, 0, 0,97,'舒适透气，弹力拉伸',6),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer5.png', 46, 'product.html?lid=1', 0, 0, 0,97,'舒适透气，弹力拉伸',6),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer7.png', 46, 'product.html?lid=1', 0, 0, 0,97,'舒适透气，弹力拉伸',6),
(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览',NULL,'男式运动弹力T桖','./message/nav2/summer/summer8.png', 46, 'product.html?lid=1', 0, 0, 0,97,'舒适透气，弹力拉伸',6),

(NULL, '神州战神Z7M 高性价比游戏本', '夏季热力爆品 抢先预览','好货内部价','男式运动弹力T桖','./message/nav2/summer/summer8.png', 33, 'product.html', 0, 0, 0,97,'舒适透气，弹力拉伸',5);


#########################################################################################################

/**商品的（型号）  端口         model   #型号1**/
CREATE TABLE wy_details_size(
  lid INT PRIMARY KEY AUTO_INCREMENT,   /*每对鞋的id*/
  family_id INT,             /*种类归类*/
  yardage_a VARCHAR(128),      /*尺寸*/
  yardage_b VARCHAR(128),      
  yardage_c VARCHAR(128),        
  yardage_d VARCHAR(128),   
  yardage_e VARCHAR(128),       
  yardage_f VARCHAR(128),    
  yardage_g VARCHAR(128),     
  yardage_h VARCHAR(128),      
  yardage_i VARCHAR(128),       
  yardage_u VARCHAR(128)   
);
/**商品的（型号）  端口）   model1   #型号1**/
INSERT INTO wy_details_size VALUES 
(1,1,'16口','17口','18口',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,3,'4球滚轮 全身可用','点柔技术 眼部嘴角','点柔揉捏淡化眼角纹','刮痧板 淡退纹路','轻松V小脸','全身可用 提拉紧致','水钻美颜 紧致贴合','提拉紧致 舒缓水肿','洗脸神器',NULL),
(NULL,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,5,'i7/16GB/1TB','i7/16GB/512GB','i5 8G 256G',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,6,'绿色',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,7,'Music 1','Music 3','Music 5','Music 7',NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,8,'红色','黑色',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,11,'蓝色','绿色',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,12,'幻夜黑','珍珠白','雀翎蓝',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,13,'128G','256GB','512GB',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,14,'1TB','2TB','4TB',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,15,'黑色','白色',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,16,'白色',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,17,'M319 脸部按摩器',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,19,'粉色','白色',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,20,'B3','B7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,21,'2TB','3TB','4TB',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,22,'i7/16GB/1TB','i7/16GB/512GB','i5 8G 256G',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,23,'绿色',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,24,'Music 1','Music 3','Music 5','Music 7',NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,25,'红色','黑色',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,28,'蓝色','绿色',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,29,'幻夜黑','珍珠白','雀翎蓝',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,30,'128G','256GB','512GB',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,31,'1TB','2TB','4TB',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,32,'黑色','白色',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,33,'白色',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,34,'M319 脸部按摩器',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,36,'粉色','白色',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,37,'B3','B7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,38,'16口','17口','18口',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,40,'4球滚轮 全身可用','点柔技术 眼部嘴角','点柔揉捏淡化眼角纹','刮痧板 淡退纹路','轻松V小脸','全身可用 提拉紧致','水钻美颜 紧致贴合','提拉紧致 舒缓水肿','洗脸神器',NULL),
(NULL,41,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,42,'i7/16GB/1TB','i7/16GB/512GB','i5 8G 256G',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,43,'绿色',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,44,'Music 1','Music 3','Music 5','Music 7',NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,45,'红色','黑色',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,48,'蓝色','绿色',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,49,'幻夜黑','珍珠白','雀翎蓝',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,50,'128G','256GB','512GB',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,51,'1TB','2TB','4TB',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,52,'黑色','白色',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,53,'白色',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,54,'M319 脸部按摩器',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,56,'粉色','白色',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,57,'B3','B7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,58,'2TB','3TB','4TB',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,59,'i7/16GB/1TB','i7/16GB/512GB','i5 8G 256G',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,60,'绿色',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,61,'Music 1','Music 3','Music 5','Music 7',NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,62,'红色','黑色',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,63,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,64,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,65,'蓝色','绿色',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,66,'幻夜黑','珍珠白','雀翎蓝',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,67,'128G','256GB','512GB',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,68,'1TB','2TB','4TB',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,69,'黑色','白色',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,70,'白色',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,71,'M319 脸部按摩器',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,72,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,73,'粉色','白色',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,74,'B3','B7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);


CREATE TABLE wy_details_speed(     /**商品的     model2   #型号2**/
  lid INT PRIMARY KEY AUTO_INCREMENT,   /*每对鞋的id*/
  family_id INT,             /*种类归类*/
  yardage_a VARCHAR(128),     
  yardage_b VARCHAR(128),      
  yardage_c VARCHAR(128),        
  yardage_d VARCHAR(128),   
  yardage_e VARCHAR(128),       
  yardage_f VARCHAR(128),    
  yardage_g VARCHAR(128),     
  yardage_h VARCHAR(128),      
  yardage_i VARCHAR(128),       
  yardage_u VARCHAR(128)   
);

/**商品的（型号）  速度）   model2   #型号2**/
INSERT INTO wy_details_speed VALUES 
(1,1,'全千兆','百兆','十兆',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,7,'酒红色','水墨灰','午夜蓝','云淡灰',NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,12,'全网通6G+128G',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,14,'睿翼2015升级版',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,24,'酒红色','水墨灰','午夜蓝','云淡灰',NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,29,'全网通6G+128G',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,31,'睿翼2015升级版',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,32,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,33,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,34,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,36,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,38,'全千兆','百兆','十兆',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,41,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,43,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,44,'酒红色','水墨灰','午夜蓝','云淡灰',NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,49,'全网通6G+128G',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,51,'睿翼2015升级版',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,52,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,53,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,54,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,56,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,57,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,58,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,59,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,61,'酒红色','水墨灰','午夜蓝','云淡灰',NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,62,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,63,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,64,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,65,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,66,'全网通6G+128G',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,67,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,68,'睿翼2015升级版',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,69,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,70,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,71,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,72,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,73,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,74,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);


/**商品详情信息    商品详情页**/
CREATE TABLE wy_product(
  lid INT PRIMARY KEY AUTO_INCREMENT, 
  family_id INT,              #所属类型型号家族编号
  announcement VARCHAR(128),    #公告
  title VARCHAR(128),         #主标题
  subtitle VARCHAR(128),      #副标题
  price DECIMAL(10,2),        #价格
  original DECIMAL(10,2),     #原价
  sold_count INT,             #已售出的数量
  is_onsale BOOLEAN,           #是否促销中
  inventory INT,                 #库存
  inventory_msg VARCHAR(128),        #库存状态
  model VARCHAR(128),             #型号1
   model2 VARCHAR(128),             #型号2
   shelf_time BIGINT,          #下架时间
   index_cont INT,                #首页 /*1.闪购.团购  2.限时抢购 3.猜你喜欢       首页轮播*/
   details VARCHAR(128),       #对应商品跳转路由                     /*/details?lid=1*/
   details_img  VARCHAR(128),              #对应商品的一张图片      /*下面还有对应商品的多种图片*/ 
   coupons VARCHAR(128)         #优惠卷 
);
/**商品详情信息**/
INSERT INTO wy_product VALUES 
(1,1,'由于厂商产品批次不同，具体包装清单可能各有不同，请以实物为准 ！','路由器','华硕(ASUS) RT-AC86U 2900M双频 低辐射 智能无线千兆路由器','819','1050','1000',true,'5000','接受预定(备货时间依据当前货源情况而定)','端口:','速度:',1570636751000,1,'/details?lid=1','http://huiwww.applinzi.com/img/details/lunbotu/01.jpg','输入蛋券ij07,满1000-30元'),
(NULL,2,'暑期特惠!输入蛋券YP78,音频产品满2000-50,3000-100!','耳机/耳麦','Edifier 漫步者 K800 高性能立体声通讯耳机 典雅黑','65','89','2000',true,'5000','接受预定(需2－3个工作日备货)',NULL,NULL,1570636751000,1,'/details?lid=2','http://huiwww.applinzi.com/img/details/lunbotu/1.1.jpg','输入蛋券tj08,满1000-30元'),
(NULL,3,'情人节特价 送礼佳品 家人、朋友、爱人值得拥有 只为最好的你们','美容美发器','ReFa 4 CARAT 铂金 微电流 美容 滚轮 双重 揉捏 V脸 塑身 塑形 全身按摩 美容仪 RF-FC1932B 国行','1449','1800','1000',true,'5000','接受预定(备货时间依据当前货源情况而定)','型号:',NULL,1570636751000,1,'/details?lid=3','http://huiwww.applinzi.com/img/details/lunbotu/2.1.jpg',NULL),
(NULL,4,'Panasonic 松下 LX10 黑色卡片数码相机  2010万像素 等效24-72mm F1.4-2.8大光圈 徕卡镜头','数码相机','Panasonic 松下 LX10 黑色卡片数码相机  2010万像素 等效24-72mm F1.4-2.8大光圈 徕卡镜头','3199','5000','1000',true,'5000','有货',NULL,NULL,1570636751000,1,'/details?lid=4','http://huiwww.applinzi.com/img/details/lunbotu/3.1.jpg','输入蛋券sj07,满1000-30元'),
(NULL,5,'贵 从来不是它的缺点 是你的缺点！！！！！！','电脑/笔记本','微软(Microsoft)Surface Pro 6 二合一平板电脑笔记本  12.3英寸(八代Core i5 8G 256G SSD)亮铂金','7488','8000','1000',true,'5000','有货','型号:','颜色:',1570636751000,1,'/details?lid=5','http://huiwww.applinzi.com/img/details/lunbotu/4.1.jpg',NULL),
(NULL,6,'TP-LINK 普联 TL-WR702N 150M无线迷你型路由器 绿色','路由器','TP-LINK 普联 TL-WR702N 150M无线迷你型路由器 绿色','58','75','1000',true,'5000','有货','颜色:',NULL,1670634751000,1,'/details?lid=6','http://huiwww.applinzi.com/img/details/lunbotu/5.1.jpg','输入蛋券sj07,满1000-30元'),
(NULL,7,'丹拿 (DYNAUDIO) Music 1 无线蓝牙音箱 酒红色！！！','音箱','丹拿 (DYNAUDIO) Music 1 无线蓝牙音箱 酒红色','1599','2001','1000',true,'5000','有货','系列:','颜色:',1571636751000,2,'/details?lid=7','http://huiwww.applinzi.com/img/details/lunbotu/6.1.jpg',NULL),
(NULL,8,'蓝牙3.0技术,可多用多种操作系统！！！','鼠标','Logitech 罗技 M557 蓝牙无线鼠标 红色','149','210','1000',true,'5000','接受预定(备货时间依据当前货源情况而定)','鼠标颜色:',NULL,1570636751000,2,'/details?lid=8','http://huiwww.applinzi.com/img/details/lunbotu/7.1.jpg','输入蛋券sj07,满1000-30元'),
(NULL,9,'贵 从来不是它的缺点 是你的缺点！！！！！！','电水壶','JOHN BOSS 威尔防烫电热水壶 HE-WE1800','319','410','1000',true,'5000','有货',NULL,NULL,1571631451000,2,'/details?lid=9','http://huiwww.applinzi.com/img/details/lunbotu/8.1.jpg','输入蛋券sj07,满1000-30元'),
(NULL,10,'Morphy richards/英国摩飞 电水壶电热水壶 旅行便携式316不锈钢保温烧水壶MR6080','电水壶','Morphy richards/英国摩飞 电水壶电热水壶 旅行便携式316不锈钢保温烧水壶MR6080','338','420','1000',true,'5000','有货',NULL,NULL,1571631451000,2,'/details?lid=10','http://huiwww.applinzi.com/img/details/lunbotu/9.1.jpg','输入蛋券sj07,满1000-30元'),
(NULL,11,'SONY 索尼 SRS-XB20 重低音 无线 蓝牙 音箱 IPX5防水设计 便携 迷你 音响 蓝色！！','音箱','SONY 索尼 SRS-XB20 重低音 无线 蓝牙 音箱 IPX5防水设计 便携 迷你 音响 蓝色','399','420','1000',true,'5000','有货','颜色:',NULL,1575636751000,3,'/details?lid=11','http://huiwww.applinzi.com/img/details/lunbotu/10.1.jpg',NULL),
(NULL,12,'输入蛋券sj818,满1000-30元,满3000-100元,数量有限,先到先得!！','华为','华为 HUAWEI nova 4e 6GB+128GB 幻夜黑 全网通版4G手机 双卡双待','1679','2000','1000',true,'5000','有货','颜色:','版本:',1570636751000,3,'/details?lid=12','http://huiwww.applinzi.com/img/details/lunbotu/11.1.jpg','输入蛋券sj07,满1000-30元'),
(NULL,13,'PLEXTOR 浦科特 M7VC系列 128G SSD固态硬盘 PX-128M7VC - 2.5英寸 SATAIII(6.0Gb/s) 7mm！','SSD固态硬盘','PLEXTOR 浦科特 M7VC系列 128G SSD固态硬盘 PX-128M7VC - 2.5英寸 SATAIII(6.0Gb/s) 7mm','298','350','1000',true,'5000','接受预定(备货时间依据当前货源情况而定)','型号:','颜色:',1570636751000,3,'/details?lid=13','http://huiwww.applinzi.com/img/details/lunbotu/12.1.jpg','输入蛋券sj07,满1000-30元'),
(NULL,14,'Seagate 希捷 Expansion 新睿翼  2.5英寸 USB3.0 2T 移动硬盘 黑色 STEA2000400','移动硬盘','Seagate 希捷 Expansion 新睿翼  2.5英寸 USB3.0 2T 移动硬盘 黑色 STEA2000400','519','615','1000',true,'5000','有货','容量:','特点:',1570636751000,3,'/details?lid=14','http://huiwww.applinzi.com/img/details/lunbotu/13.1.jpg',NULL),
(NULL,15,'JBL Horizon 音乐地平线 蓝牙小音箱 音响 桌面迷你音响 音箱 闹钟 收音机 黑色','音箱','JBL Horizon 音乐地平线 蓝牙小音箱 音响 桌面迷你音响 音箱 闹钟 收音机 黑色','699','720','1000',true,'5000','接受预定(备货时间依据当前货源情况而定)','颜色:',NULL,1570636751000,3,'/details?lid=15','http://huiwww.applinzi.com/img/details/lunbotu/14.1.jpg','输入蛋券sj07,满1000-30元'),
(NULL,16,'SAMSUNG 三星 S24E360HL 23.6英寸LED背光显示器 白色 贵 从来不是它的缺点 是你的缺点！！！！！！','显示器','SAMSUNG 三星 S24E360HL 23.6英寸LED背光显示器 白色','979','1010','1000',true,'5000','接受预定(备货时间依据当前货源情况而定)','颜色:',NULL,1570636751000,3,'/details?lid=16','http://huiwww.applinzi.com/img/details/lunbotu/15.1.jpg',NULL),
(NULL,17,'贵 从来不是它的缺点 是你的缺点breo 倍轻松 迷你脸部按摩器 M319','按摩器材','breo 倍轻松 迷你脸部按摩器 M319','89','105','1000',true,'5000','接受预定(备货时间依据当前货源情况而定)','型号:',NULL,1570636751000,3,'/details?lid=17','http://huiwww.applinzi.com/img/details/lunbotu/16.1.jpg','输入蛋券sw07,满1000-30元'),
(NULL,18,'Goldlion 金利来 男士皮带 经典时尚牛皮自动扣皮带腰带男裤带 GBA6003-51-5 黑色','皮带/礼盒','Goldlion 金利来 男士皮带 经典时尚牛皮自动扣皮带腰带男裤带 GBA6003-51-5 黑色','129','150','1000',true,'5000','有货',NULL,NULL,1570636751000,3,'/details?lid=18','http://huiwww.applinzi.com/img/details/lunbotu/17.1.jpg','输入蛋券sj07,满1000-30元'),
(NULL,19,'GUESS美国盖尔斯 新款时尚欧美字母印花女士手包小号手拿包手抓包晚宴包化妆包多功能包 粉色','手提单肩包','GUESS美国盖尔斯 新款时尚欧美字母印花女士手包小号手拿包手抓包晚宴包化妆包多功能包 粉色','99','120','1000',true,'5000','有货','颜色:',NULL,1570636751000,3,'/details?lid=19','http://huiwww.applinzi.com/img/details/lunbotu/18.1.jpg',NULL),
(NULL,20,'EDIFIER 漫步者 B3 高素质的电视音响 家庭影院 无线蓝牙回音壁 千元内杀手级全功能SOUNDBAR','音箱','EDIFIER 漫步者 B3 高素质的电视音响 家庭影院 无线蓝牙回音壁 千元内杀手级全功能SOUNDBAR','699','750','1000',true,'5000','接受预定(需2－3个工作日备货)','系列:',NULL,1570636751000,3,'/details?lid=20','http://huiwww.applinzi.com/img/details/lunbotu/19.1.jpg','输入蛋券sj07,满1000-30元'),
(NULL,21,'WD 西部数据 红盘 2TB NAS专用硬盘 WD20EFRX - 3.5英寸 5400-7200转 SATAIII(6.0Gb/s) 64MB','硬盘','WD 西部数据 红盘 2TB NAS专用硬盘 WD20EFRX - 3.5英寸 5400-7200转 SATAIII(6.0Gb/s) 64MB','599','710','1000',true,'5000','接受预定(备货时间依据当前货源情况而定)','容量:',NULL,1570636751000,3,'/details?lid=21','http://huiwww.applinzi.com/img/details/lunbotu/20.1.jpg','输入蛋券sj07,满1000-30元'),
(NULL,22,'贵 从来不是它的缺点 是你的缺点！！！！！！','电脑/笔记本','微软(Microsoft)Surface Pro 6 二合一平板电脑笔记本  12.3英寸(八代Core i5 8G 256G SSD)亮铂金','7488','8000','1000',true,'5000','有货','型号:','颜色:',1570636751000,4,'/details?lid=5','http://huiwww.applinzi.com/img/details/lunbotu/4.1.jpg',NULL),
(NULL,23,'TP-LINK 普联 TL-WR702N 150M无线迷你型路由器 绿色','路由器','TP-LINK 普联 TL-WR702N 150M无线迷你型路由器 绿色','58','75','1000',true,'5000','有货','颜色:',NULL,1670634751000,4,'/details?lid=6','http://huiwww.applinzi.com/img/details/lunbotu/5.1.jpg','输入蛋券sj07,满1000-30元'),
(NULL,24,'丹拿 (DYNAUDIO) Music 1 无线蓝牙音箱 酒红色！！！','音箱','丹拿 (DYNAUDIO) Music 1 无线蓝牙音箱 酒红色','1599','2001','1000',true,'5000','有货','系列:','颜色:',1571636751000,4,'/details?lid=7','http://huiwww.applinzi.com/img/details/lunbotu/6.1.jpg',NULL),
(NULL,25,'蓝牙3.0技术,可多用多种操作系统！！！','鼠标','Logitech 罗技 M557 蓝牙无线鼠标 红色','149','210','1000',true,'5000','接受预定(备货时间依据当前货源情况而定)','鼠标颜色:',NULL,1570636751000,4,'/details?lid=8','http://huiwww.applinzi.com/img/details/lunbotu/7.1.jpg','输入蛋券sj07,满1000-30元'),
(NULL,26,'贵 从来不是它的缺点 是你的缺点！！！！！！','电水壶','JOHN BOSS 威尔防烫电热水壶 HE-WE1800','319','410','1000',true,'5000','有货',NULL,NULL,1571631451000,4,'/details?lid=9','http://huiwww.applinzi.com/img/details/lunbotu/8.1.jpg','输入蛋券sj07,满1000-30元'),
(NULL,27,'Morphy richards/英国摩飞 电水壶电热水壶 旅行便携式316不锈钢保温烧水壶MR6080','电水壶','Morphy richards/英国摩飞 电水壶电热水壶 旅行便携式316不锈钢保温烧水壶MR6080','338','420','1000',true,'5000','有货',NULL,NULL,1571631451000,4,'/details?lid=10','http://huiwww.applinzi.com/img/details/lunbotu/9.1.jpg','输入蛋券sj07,满1000-30元'),
(NULL,28,'SONY 索尼 SRS-XB20 重低音 无线 蓝牙 音箱 IPX5防水设计 便携 迷你 音响 蓝色！！','音箱','SONY 索尼 SRS-XB20 重低音 无线 蓝牙 音箱 IPX5防水设计 便携 迷你 音响 蓝色','399','420','1000',true,'5000','有货','颜色:',NULL,1575636751000,4,'/details?lid=11','http://huiwww.applinzi.com/img/details/lunbotu/10.1.jpg',NULL),
(NULL,29,'输入蛋券sj818,满1000-30元,满3000-100元,数量有限,先到先得!！','华为','华为 HUAWEI nova 4e 6GB+128GB 幻夜黑 全网通版4G手机 双卡双待','1679','2000','1000',true,'5000','有货','颜色:','版本:',1570636751000,4,'/details?lid=12','http://huiwww.applinzi.com/img/details/lunbotu/11.1.jpg','输入蛋券sj07,满1000-30元'),
(NULL,30,'PLEXTOR 浦科特 M7VC系列 128G SSD固态硬盘 PX-128M7VC - 2.5英寸 SATAIII(6.0Gb/s) 7mm！','SSD固态硬盘','PLEXTOR 浦科特 M7VC系列 128G SSD固态硬盘 PX-128M7VC - 2.5英寸 SATAIII(6.0Gb/s) 7mm','298','350','1000',true,'5000','接受预定(备货时间依据当前货源情况而定)','型号:','颜色:',1570636751000,4,'/details?lid=13','http://huiwww.applinzi.com/img/details/lunbotu/12.1.jpg','输入蛋券sj07,满1000-30元'),
(NULL,31,'Seagate 希捷 Expansion 新睿翼  2.5英寸 USB3.0 2T 移动硬盘 黑色 STEA2000400','移动硬盘','Seagate 希捷 Expansion 新睿翼  2.5英寸 USB3.0 2T 移动硬盘 黑色 STEA2000400','519','615','1000',true,'5000','有货','容量:','特点:',1570636751000,4,'/details?lid=14','http://huiwww.applinzi.com/img/details/lunbotu/13.1.jpg',NULL),
(NULL,32,'JBL Horizon 音乐地平线 蓝牙小音箱 音响 桌面迷你音响 音箱 闹钟 收音机 黑色','音箱','JBL Horizon 音乐地平线 蓝牙小音箱 音响 桌面迷你音响 音箱 闹钟 收音机 黑色','699','720','1000',true,'5000','接受预定(备货时间依据当前货源情况而定)','颜色:',NULL,1570636751000,4,'/details?lid=15','http://huiwww.applinzi.com/img/details/lunbotu/14.1.jpg','输入蛋券sj07,满1000-30元'),
(NULL,33,'SAMSUNG 三星 S24E360HL 23.6英寸LED背光显示器 白色 贵 从来不是它的缺点 是你的缺点！！！！！！','显示器','SAMSUNG 三星 S24E360HL 23.6英寸LED背光显示器 白色','979','1010','1000',true,'5000','接受预定(备货时间依据当前货源情况而定)','颜色:',NULL,1570636751000,4,'/details?lid=16','http://huiwww.applinzi.com/img/details/lunbotu/15.1.jpg',NULL),
(NULL,34,'贵 从来不是它的缺点 是你的缺点breo 倍轻松 迷你脸部按摩器 M319','按摩器材','breo 倍轻松 迷你脸部按摩器 M319','89','105','1000',true,'5000','接受预定(备货时间依据当前货源情况而定)','型号:',NULL,1570636751000,4,'/details?lid=17','http://huiwww.applinzi.com/img/details/lunbotu/16.1.jpg','输入蛋券sw07,满1000-30元'),
(NULL,35,'Goldlion 金利来 男士皮带 经典时尚牛皮自动扣皮带腰带男裤带 GBA6003-51-5 黑色','皮带/礼盒','Goldlion 金利来 男士皮带 经典时尚牛皮自动扣皮带腰带男裤带 GBA6003-51-5 黑色','129','150','1000',true,'5000','有货',NULL,NULL,1570636751000,4,'/details?lid=18','http://huiwww.applinzi.com/img/details/lunbotu/17.1.jpg','输入蛋券sj07,满1000-30元'),
(NULL,36,'GUESS美国盖尔斯 新款时尚欧美字母印花女士手包小号手拿包手抓包晚宴包化妆包多功能包 粉色','手提单肩包','GUESS美国盖尔斯 新款时尚欧美字母印花女士手包小号手拿包手抓包晚宴包化妆包多功能包 粉色','99','120','1000',true,'5000','有货','颜色:',NULL,1570636751000,4,'/details?lid=19','http://huiwww.applinzi.com/img/details/lunbotu/18.1.jpg',NULL),
(NULL,37,'EDIFIER 漫步者 B3 高素质的电视音响 家庭影院 无线蓝牙回音壁 千元内杀手级全功能SOUNDBAR','音箱','EDIFIER 漫步者 B3 高素质的电视音响 家庭影院 无线蓝牙回音壁 千元内杀手级全功能SOUNDBAR','699','750','1000',true,'5000','接受预定(需2－3个工作日备货)','系列:',NULL,1570636751000,4,'/details?lid=20','http://huiwww.applinzi.com/img/details/lunbotu/19.1.jpg','输入蛋券sj07,满1000-30元'),
(NULL,38,'由于厂商产品批次不同，具体包装清单可能各有不同，请以实物为准 ！','路由器','华硕(ASUS) RT-AC86U 2900M双频 低辐射 智能无线千兆路由器','819','1050','1000',true,'5000','接受预定(备货时间依据当前货源情况而定)','端口:','速度:',1570636751000,5,'/details?lid=1','http://huiwww.applinzi.com/img/details/lunbotu/01.jpg','输入蛋券ij07,满1000-30元'),
(NULL,39,'暑期特惠!输入蛋券YP78,音频产品满2000-50,3000-100!','耳机/耳麦','Edifier 漫步者 K800 高性能立体声通讯耳机 典雅黑','65','89','2000',true,'5000','接受预定(需2－3个工作日备货)',NULL,NULL,1570636751000,5,'/details?lid=2','http://huiwww.applinzi.com/img/details/lunbotu/1.1.jpg','输入蛋券tj08,满1000-30元'),
(NULL,40,'情人节特价 送礼佳品 家人、朋友、爱人值得拥有 只为最好的你们','美容美发器','ReFa 4 CARAT 铂金 微电流 美容 滚轮 双重 揉捏 V脸 塑身 塑形 全身按摩 美容仪 RF-FC1932B 国行','1449','1800','1000',true,'5000','接受预定(备货时间依据当前货源情况而定)','型号:',NULL,1570636751000,5,'/details?lid=3','http://huiwww.applinzi.com/img/details/lunbotu/2.1.jpg',NULL),
(NULL,41,'Panasonic 松下 LX10 黑色卡片数码相机  2010万像素 等效24-72mm F1.4-2.8大光圈 徕卡镜头','数码相机','Panasonic 松下 LX10 黑色卡片数码相机  2010万像素 等效24-72mm F1.4-2.8大光圈 徕卡镜头','3199','5000','1000',true,'5000','有货',NULL,NULL,1570636751000,5,'/details?lid=4','http://huiwww.applinzi.com/img/details/lunbotu/3.1.jpg','输入蛋券sj07,满1000-30元'),
(NULL,42,'贵 从来不是它的缺点 是你的缺点！！！！！！','电脑/笔记本','微软(Microsoft)Surface Pro 6 二合一平板电脑笔记本  12.3英寸(八代Core i5 8G 256G SSD)亮铂金','7488','8000','1000',true,'5000','有货','型号:','颜色:',1570636751000,5,'/details?lid=5','http://huiwww.applinzi.com/img/details/lunbotu/4.1.jpg',NULL),
(NULL,43,'TP-LINK 普联 TL-WR702N 150M无线迷你型路由器 绿色','路由器','TP-LINK 普联 TL-WR702N 150M无线迷你型路由器 绿色','58','75','1000',true,'5000','有货','颜色:',NULL,1670634751000,5,'/details?lid=6','http://huiwww.applinzi.com/img/details/lunbotu/5.1.jpg','输入蛋券sj07,满1000-30元'),
(NULL,44,'丹拿 (DYNAUDIO) Music 1 无线蓝牙音箱 酒红色！！！','音箱','丹拿 (DYNAUDIO) Music 1 无线蓝牙音箱 酒红色','1599','2001','1000',true,'5000','有货','系列:','颜色:',1571636751000,5,'/details?lid=7','http://huiwww.applinzi.com/img/details/lunbotu/6.1.jpg',NULL),
(NULL,45,'蓝牙3.0技术,可多用多种操作系统！！！','鼠标','Logitech 罗技 M557 蓝牙无线鼠标 红色','149','210','1000',true,'5000','接受预定(备货时间依据当前货源情况而定)','鼠标颜色:',NULL,1570636751000,5,'/details?lid=8','http://huiwww.applinzi.com/img/details/lunbotu/7.1.jpg','输入蛋券sj07,满1000-30元'),
(NULL,46,'贵 从来不是它的缺点 是你的缺点！！！！！！','电水壶','JOHN BOSS 威尔防烫电热水壶 HE-WE1800','319','410','1000',true,'5000','有货',NULL,NULL,1571631451000,5,'/details?lid=9','http://huiwww.applinzi.com/img/details/lunbotu/8.1.jpg','输入蛋券sj07,满1000-30元'),
(NULL,47,'Morphy richards/英国摩飞 电水壶电热水壶 旅行便携式316不锈钢保温烧水壶MR6080','电水壶','Morphy richards/英国摩飞 电水壶电热水壶 旅行便携式316不锈钢保温烧水壶MR6080','338','420','1000',true,'5000','有货',NULL,NULL,1571631451000,5,'/details?lid=10','http://huiwww.applinzi.com/img/details/lunbotu/9.1.jpg','输入蛋券sj07,满1000-30元'),
(NULL,48,'SONY 索尼 SRS-XB20 重低音 无线 蓝牙 音箱 IPX5防水设计 便携 迷你 音响 蓝色！！','音箱','SONY 索尼 SRS-XB20 重低音 无线 蓝牙 音箱 IPX5防水设计 便携 迷你 音响 蓝色','399','420','1000',true,'5000','有货','颜色:',NULL,1575636751000,5,'/details?lid=11','http://huiwww.applinzi.com/img/details/lunbotu/10.1.jpg',NULL),
(NULL,49,'输入蛋券sj818,满1000-30元,满3000-100元,数量有限,先到先得!！','华为','华为 HUAWEI nova 4e 6GB+128GB 幻夜黑 全网通版4G手机 双卡双待','1679','2000','1000',true,'5000','有货','颜色:','版本:',1570636751000,5,'/details?lid=12','http://huiwww.applinzi.com/img/details/lunbotu/11.1.jpg','输入蛋券sj07,满1000-30元'),
(NULL,50,'PLEXTOR 浦科特 M7VC系列 128G SSD固态硬盘 PX-128M7VC - 2.5英寸 SATAIII(6.0Gb/s) 7mm！','SSD固态硬盘','PLEXTOR 浦科特 M7VC系列 128G SSD固态硬盘 PX-128M7VC - 2.5英寸 SATAIII(6.0Gb/s) 7mm','298','350','1000',true,'5000','接受预定(备货时间依据当前货源情况而定)','型号:','颜色:',1570636751000,5,'/details?lid=13','http://huiwww.applinzi.com/img/details/lunbotu/12.1.jpg','输入蛋券sj07,满1000-30元'),
(NULL,51,'Seagate 希捷 Expansion 新睿翼  2.5英寸 USB3.0 2T 移动硬盘 黑色 STEA2000400','移动硬盘','Seagate 希捷 Expansion 新睿翼  2.5英寸 USB3.0 2T 移动硬盘 黑色 STEA2000400','519','615','1000',true,'5000','有货','容量:','特点:',1570636751000,5,'/details?lid=14','http://huiwww.applinzi.com/img/details/lunbotu/13.1.jpg',NULL),
(NULL,52,'JBL Horizon 音乐地平线 蓝牙小音箱 音响 桌面迷你音响 音箱 闹钟 收音机 黑色','音箱','JBL Horizon 音乐地平线 蓝牙小音箱 音响 桌面迷你音响 音箱 闹钟 收音机 黑色','699','720','1000',true,'5000','接受预定(备货时间依据当前货源情况而定)','颜色:',NULL,1570636751000,5,'/details?lid=15','http://huiwww.applinzi.com/img/details/lunbotu/14.1.jpg','输入蛋券sj07,满1000-30元'),
(NULL,53,'SAMSUNG 三星 S24E360HL 23.6英寸LED背光显示器 白色 贵 从来不是它的缺点 是你的缺点！！！！！！','显示器','SAMSUNG 三星 S24E360HL 23.6英寸LED背光显示器 白色','979','1010','1000',true,'5000','接受预定(备货时间依据当前货源情况而定)','颜色:',NULL,1570636751000,5,'/details?lid=16','http://huiwww.applinzi.com/img/details/lunbotu/15.1.jpg',NULL),
(NULL,54,'贵 从来不是它的缺点 是你的缺点breo 倍轻松 迷你脸部按摩器 M319','按摩器材','breo 倍轻松 迷你脸部按摩器 M319','89','105','1000',true,'5000','接受预定(备货时间依据当前货源情况而定)','型号:',NULL,1570636751000,5,'/details?lid=17','http://huiwww.applinzi.com/img/details/lunbotu/16.1.jpg','输入蛋券sw07,满1000-30元'),
(NULL,55,'Goldlion 金利来 男士皮带 经典时尚牛皮自动扣皮带腰带男裤带 GBA6003-51-5 黑色','皮带/礼盒','Goldlion 金利来 男士皮带 经典时尚牛皮自动扣皮带腰带男裤带 GBA6003-51-5 黑色','129','150','1000',true,'5000','有货',NULL,NULL,1570636751000,5,'/details?lid=18','http://huiwww.applinzi.com/img/details/lunbotu/17.1.jpg','输入蛋券sj07,满1000-30元'),
(NULL,56,'GUESS美国盖尔斯 新款时尚欧美字母印花女士手包小号手拿包手抓包晚宴包化妆包多功能包 粉色','手提单肩包','GUESS美国盖尔斯 新款时尚欧美字母印花女士手包小号手拿包手抓包晚宴包化妆包多功能包 粉色','99','120','1000',true,'5000','有货','颜色:',NULL,1570636751000,5,'/details?lid=19','http://huiwww.applinzi.com/img/details/lunbotu/18.1.jpg',NULL),
(NULL,57,'EDIFIER 漫步者 B3 高素质的电视音响 家庭影院 无线蓝牙回音壁 千元内杀手级全功能SOUNDBAR','音箱','EDIFIER 漫步者 B3 高素质的电视音响 家庭影院 无线蓝牙回音壁 千元内杀手级全功能SOUNDBAR','699','750','1000',true,'5000','接受预定(需2－3个工作日备货)','系列:',NULL,1570636751000,5,'/details?lid=20','http://huiwww.applinzi.com/img/details/lunbotu/19.1.jpg','输入蛋券sj07,满1000-30元'),
(NULL,58,'WD 西部数据 红盘 2TB NAS专用硬盘 WD20EFRX - 3.5英寸 5400-7200转 SATAIII(6.0Gb/s) 64MB','硬盘','WD 西部数据 红盘 2TB NAS专用硬盘 WD20EFRX - 3.5英寸 5400-7200转 SATAIII(6.0Gb/s) 64MB','599','710','1000',true,'5000','接受预定(备货时间依据当前货源情况而定)','容量:',NULL,1570636751000,5,'/details?lid=21','http://huiwww.applinzi.com/img/details/lunbotu/20.1.jpg','输入蛋券sj07,满1000-30元'),
(NULL,59,'贵 从来不是它的缺点 是你的缺点！！！！！！','电脑/笔记本','微软(Microsoft)Surface Pro 6 二合一平板电脑笔记本  12.3英寸(八代Core i5 8G 256G SSD)亮铂金','7488','8000','1000',true,'5000','有货','型号:','颜色:',1570636751000,5,'/details?lid=5','http://huiwww.applinzi.com/img/details/lunbotu/4.1.jpg',NULL),
(NULL,60,'TP-LINK 普联 TL-WR702N 150M无线迷你型路由器 绿色','路由器','TP-LINK 普联 TL-WR702N 150M无线迷你型路由器 绿色','58','75','1000',true,'5000','有货','颜色:',NULL,1670634751000,5,'/details?lid=6','http://huiwww.applinzi.com/img/details/lunbotu/5.1.jpg','输入蛋券sj07,满1000-30元'),
(NULL,61,'丹拿 (DYNAUDIO) Music 1 无线蓝牙音箱 酒红色！！！','音箱','丹拿 (DYNAUDIO) Music 1 无线蓝牙音箱 酒红色','1599','2001','1000',true,'5000','有货','系列:','颜色:',1571636751000,5,'/details?lid=7','http://huiwww.applinzi.com/img/details/lunbotu/6.1.jpg',NULL),
(NULL,62,'蓝牙3.0技术,可多用多种操作系统！！！','鼠标','Logitech 罗技 M557 蓝牙无线鼠标 红色','149','210','1000',true,'5000','接受预定(备货时间依据当前货源情况而定)','鼠标颜色:',NULL,1570636751000,5,'/details?lid=8','http://huiwww.applinzi.com/img/details/lunbotu/7.1.jpg','输入蛋券sj07,满1000-30元'),
(NULL,63,'贵 从来不是它的缺点 是你的缺点！！！！！！','电水壶','JOHN BOSS 威尔防烫电热水壶 HE-WE1800','319','410','1000',true,'5000','有货',NULL,NULL,1571631451000,5,'/details?lid=9','http://huiwww.applinzi.com/img/details/lunbotu/8.1.jpg','输入蛋券sj07,满1000-30元'),
(NULL,64,'Morphy richards/英国摩飞 电水壶电热水壶 旅行便携式316不锈钢保温烧水壶MR6080','电水壶','Morphy richards/英国摩飞 电水壶电热水壶 旅行便携式316不锈钢保温烧水壶MR6080','338','420','1000',true,'5000','有货',NULL,NULL,1571631451000,5,'/details?lid=10','http://huiwww.applinzi.com/img/details/lunbotu/9.1.jpg','输入蛋券sj07,满1000-30元'),
(NULL,65,'SONY 索尼 SRS-XB20 重低音 无线 蓝牙 音箱 IPX5防水设计 便携 迷你 音响 蓝色！！','音箱','SONY 索尼 SRS-XB20 重低音 无线 蓝牙 音箱 IPX5防水设计 便携 迷你 音响 蓝色','399','420','1000',true,'5000','有货','颜色:',NULL,1575636751000,5,'/details?lid=11','http://huiwww.applinzi.com/img/details/lunbotu/10.1.jpg',NULL),
(NULL,66,'输入蛋券sj818,满1000-30元,满3000-100元,数量有限,先到先得!！','华为','华为 HUAWEI nova 4e 6GB+128GB 幻夜黑 全网通版4G手机 双卡双待','1679','2000','1000',true,'5000','有货','颜色:','版本:',1570636751000,5,'/details?lid=12','http://huiwww.applinzi.com/img/details/lunbotu/11.1.jpg','输入蛋券sj07,满1000-30元'),
(NULL,67,'PLEXTOR 浦科特 M7VC系列 128G SSD固态硬盘 PX-128M7VC - 2.5英寸 SATAIII(6.0Gb/s) 7mm！','SSD固态硬盘','PLEXTOR 浦科特 M7VC系列 128G SSD固态硬盘 PX-128M7VC - 2.5英寸 SATAIII(6.0Gb/s) 7mm','298','350','1000',true,'5000','接受预定(备货时间依据当前货源情况而定)','型号:','颜色:',1570636751000,5,'/details?lid=13','http://huiwww.applinzi.com/img/details/lunbotu/12.1.jpg','输入蛋券sj07,满1000-30元'),
(NULL,68,'Seagate 希捷 Expansion 新睿翼  2.5英寸 USB3.0 2T 移动硬盘 黑色 STEA2000400','移动硬盘','Seagate 希捷 Expansion 新睿翼  2.5英寸 USB3.0 2T 移动硬盘 黑色 STEA2000400','519','615','1000',true,'5000','有货','容量:','特点:',1570636751000,5,'/details?lid=14','http://huiwww.applinzi.com/img/details/lunbotu/13.1.jpg',NULL),
(NULL,69,'JBL Horizon 音乐地平线 蓝牙小音箱 音响 桌面迷你音响 音箱 闹钟 收音机 黑色','音箱','JBL Horizon 音乐地平线 蓝牙小音箱 音响 桌面迷你音响 音箱 闹钟 收音机 黑色','699','720','1000',true,'5000','接受预定(备货时间依据当前货源情况而定)','颜色:',NULL,1570636751000,5,'/details?lid=15','http://huiwww.applinzi.com/img/details/lunbotu/14.1.jpg','输入蛋券sj07,满1000-30元'),
(NULL,70,'SAMSUNG 三星 S24E360HL 23.6英寸LED背光显示器 白色 贵 从来不是它的缺点 是你的缺点！！！！！！','显示器','SAMSUNG 三星 S24E360HL 23.6英寸LED背光显示器 白色','979','1010','1000',true,'5000','接受预定(备货时间依据当前货源情况而定)','颜色:',NULL,1570636751000,5,'/details?lid=16','http://huiwww.applinzi.com/img/details/lunbotu/15.1.jpg',NULL),
(NULL,71,'贵 从来不是它的缺点 是你的缺点breo 倍轻松 迷你脸部按摩器 M319','按摩器材','breo 倍轻松 迷你脸部按摩器 M319','89','105','1000',true,'5000','接受预定(备货时间依据当前货源情况而定)','型号:',NULL,1570636751000,5,'/details?lid=17','http://huiwww.applinzi.com/img/details/lunbotu/16.1.jpg','输入蛋券sw07,满1000-30元'),
(NULL,72,'Goldlion 金利来 男士皮带 经典时尚牛皮自动扣皮带腰带男裤带 GBA6003-51-5 黑色','皮带/礼盒','Goldlion 金利来 男士皮带 经典时尚牛皮自动扣皮带腰带男裤带 GBA6003-51-5 黑色','129','150','1000',true,'5000','有货',NULL,NULL,1570636751000,5,'/details?lid=18','http://huiwww.applinzi.com/img/details/lunbotu/17.1.jpg','输入蛋券sj07,满1000-30元'),
(NULL,73,'GUESS美国盖尔斯 新款时尚欧美字母印花女士手包小号手拿包手抓包晚宴包化妆包多功能包 粉色','手提单肩包','GUESS美国盖尔斯 新款时尚欧美字母印花女士手包小号手拿包手抓包晚宴包化妆包多功能包 粉色','99','120','1000',true,'5000','有货','颜色:',NULL,1570636751000,5,'/details?lid=19','http://huiwww.applinzi.com/img/details/lunbotu/18.1.jpg',NULL),
(NULL,74,'EDIFIER 漫步者 B3 高素质的电视音响 家庭影院 无线蓝牙回音壁 千元内杀手级全功能SOUNDBAR','音箱','EDIFIER 漫步者 B3 高素质的电视音响 家庭影院 无线蓝牙回音壁 千元内杀手级全功能SOUNDBAR','699','750','1000',true,'5000','接受预定(需2－3个工作日备货)','系列:',NULL,1570636751000,5,'/details?lid=20','http://huiwww.applinzi.com/img/details/lunbotu/19.1.jpg','输入蛋券sj07,满1000-30元');


/**商品详情信息图片  大中小图片   商品详情的轮播图图片**/
CREATE TABLE wy_product_pic(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  laptop_id INT,              #鞋子编号
  sm VARCHAR(128),            #小图片路径
  md VARCHAR(128),            #中图片路径
  lg VARCHAR(128)             #大图片路径
);

/**商品详情信息图片  大中小图片        商品详情的轮播图图片**/
INSERT INTO wy_product_pic VALUES
(NULL, 1, 'http://huiwww.applinzi.com/img/details/lunbotu/01.jpg','./message/nav3/md/md1.jpg','./message/nav3/big/big1.jpg'),
(NULL, 1, 'http://huiwww.applinzi.com/img/details/lunbotu/02.jpg','./message/nav3/md/md2.png','./message/nav3/big/big2.png'),
(NULL, 1, 'http://huiwww.applinzi.com/img/details/lunbotu/03.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 1, 'http://huiwww.applinzi.com/img/details/lunbotu/04.jpg','./message/nav3/md/md3.png','./message/nav3/big/big2.png'),
(NULL, 1, 'http://huiwww.applinzi.com/img/details/lunbotu/02.jpg','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 2, 'http://huiwww.applinzi.com/img/details/lunbotu/1.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 2, 'http://huiwww.applinzi.com/img/details/lunbotu/1.2.jpg','./message/nav3/md/md4.png','./message/nav3/big/big3.png'),
(NULL, 2, 'http://huiwww.applinzi.com/img/details/lunbotu/1.3.jpg','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 2, 'http://huiwww.applinzi.com/img/details/lunbotu/1.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 2, 'http://huiwww.applinzi.com/img/details/lunbotu/1.5.jpg','img/product/md/57b12a31N8f4f75a3.jpg','img/product/lg/57b12a31N8f4f75a3.jpg'),
(NULL, 3, 'http://huiwww.applinzi.com/img/details/lunbotu/2.1.jpg','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 3, 'http://huiwww.applinzi.com/img/details/lunbotu/2.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 3, 'http://huiwww.applinzi.com/img/details/lunbotu/2.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 3, 'http://huiwww.applinzi.com/img/details/lunbotu/2.4.jpg','img/product/md/57b12a31N8f4f75a3.jpg','img/product/lg/57b12a31N8f4f75a3.jpg'),
(NULL, 4, 'http://huiwww.applinzi.com/img/details/lunbotu/3.1.jpg','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 4, 'http://huiwww.applinzi.com/img/details/lunbotu/3.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 4, 'http://huiwww.applinzi.com/img/details/lunbotu/3.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 4, 'http://huiwww.applinzi.com/img/details/lunbotu/3.4.jpg','img/product/md/57b12a31N8f4f75a3.jpg','img/product/lg/57b12a31N8f4f75a3.jpg'),
(NULL, 5, 'http://huiwww.applinzi.com/img/details/lunbotu/4.1.jpg','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 5, 'http://huiwww.applinzi.com/img/details/lunbotu/4.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 5, 'http://huiwww.applinzi.com/img/details/lunbotu/4.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 5, 'http://huiwww.applinzi.com/img/details/lunbotu/4.4.jpg','img/product/md/57b12a31N8f4f75a3.jpg','img/product/lg/57b12a31N8f4f75a3.jpg'),
(NULL, 5, 'http://huiwww.applinzi.com/img/details/lunbotu/4.5.jpg','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 5, 'http://huiwww.applinzi.com/img/details/lunbotu/4.6.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 6, 'http://huiwww.applinzi.com/img/details/lunbotu/5.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 6, 'http://huiwww.applinzi.com/img/details/lunbotu/5.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 6, 'http://huiwww.applinzi.com/img/details/lunbotu/5.3.jpg','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 6, 'http://huiwww.applinzi.com/img/details/lunbotu/5.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 6, 'http://huiwww.applinzi.com/img/details/lunbotu/5.5.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 7, 'http://huiwww.applinzi.com/img/details/lunbotu/6.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 7, 'http://huiwww.applinzi.com/img/details/lunbotu/6.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 7, 'http://huiwww.applinzi.com/img/details/lunbotu/6.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 7, 'http://huiwww.applinzi.com/img/details/lunbotu/6.4.jpg','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 7, 'http://huiwww.applinzi.com/img/details/lunbotu/6.5.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 8, 'http://huiwww.applinzi.com/img/details/lunbotu/7.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 8, 'http://huiwww.applinzi.com/img/details/lunbotu/7.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 8, 'http://huiwww.applinzi.com/img/details/lunbotu/7.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 8, 'http://huiwww.applinzi.com/img/details/lunbotu/7.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 9, 'http://huiwww.applinzi.com/img/details/lunbotu/8.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 9, 'http://huiwww.applinzi.com/img/details/lunbotu/8.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 9, 'http://huiwww.applinzi.com/img/details/lunbotu/8.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 9, 'http://huiwww.applinzi.com/img/details/lunbotu/8.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 10, 'http://huiwww.applinzi.com/img/details/lunbotu/9.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 10, 'http://huiwww.applinzi.com/img/details/lunbotu/9.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 10, 'http://huiwww.applinzi.com/img/details/lunbotu/9.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 10, 'http://huiwww.applinzi.com/img/details/lunbotu/9.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 10, 'http://huiwww.applinzi.com/img/details/lunbotu/9.5.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 11, 'http://huiwww.applinzi.com/img/details/lunbotu/10.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 11, 'http://huiwww.applinzi.com/img/details/lunbotu/10.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 11, 'http://huiwww.applinzi.com/img/details/lunbotu/10.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 11, 'http://huiwww.applinzi.com/img/details/lunbotu/10.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 12, 'http://huiwww.applinzi.com/img/details/lunbotu/11.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 12, 'http://huiwww.applinzi.com/img/details/lunbotu/11.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 12, 'http://huiwww.applinzi.com/img/details/lunbotu/11.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 12, 'http://huiwww.applinzi.com/img/details/lunbotu/11.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 12, 'http://huiwww.applinzi.com/img/details/lunbotu/11.5.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 13, 'http://huiwww.applinzi.com/img/details/lunbotu/12.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 13, 'http://huiwww.applinzi.com/img/details/lunbotu/12.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 13, 'http://huiwww.applinzi.com/img/details/lunbotu/12.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 14, 'http://huiwww.applinzi.com/img/details/lunbotu/13.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 14, 'http://huiwww.applinzi.com/img/details/lunbotu/13.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 14, 'http://huiwww.applinzi.com/img/details/lunbotu/13.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 14, 'http://huiwww.applinzi.com/img/details/lunbotu/13.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 15, 'http://huiwww.applinzi.com/img/details/lunbotu/14.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 15, 'http://huiwww.applinzi.com/img/details/lunbotu/14.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 15, 'http://huiwww.applinzi.com/img/details/lunbotu/14.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 16, 'http://huiwww.applinzi.com/img/details/lunbotu/15.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 16, 'http://huiwww.applinzi.com/img/details/lunbotu/15.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 16, 'http://huiwww.applinzi.com/img/details/lunbotu/15.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 16, 'http://huiwww.applinzi.com/img/details/lunbotu/15.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 17, 'http://huiwww.applinzi.com/img/details/lunbotu/16.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 17, 'http://huiwww.applinzi.com/img/details/lunbotu/16.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 17, 'http://huiwww.applinzi.com/img/details/lunbotu/16.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 17, 'http://huiwww.applinzi.com/img/details/lunbotu/16.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 18, 'http://huiwww.applinzi.com/img/details/lunbotu/17.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 18, 'http://huiwww.applinzi.com/img/details/lunbotu/17.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 18, 'http://huiwww.applinzi.com/img/details/lunbotu/17.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 18, 'http://huiwww.applinzi.com/img/details/lunbotu/17.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 18, 'http://huiwww.applinzi.com/img/details/lunbotu/17.5.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 19, 'http://huiwww.applinzi.com/img/details/lunbotu/18.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 19, 'http://huiwww.applinzi.com/img/details/lunbotu/18.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 19, 'http://huiwww.applinzi.com/img/details/lunbotu/18.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 20, 'http://huiwww.applinzi.com/img/details/lunbotu/19.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 20, 'http://huiwww.applinzi.com/img/details/lunbotu/19.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 20, 'http://huiwww.applinzi.com/img/details/lunbotu/19.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 20, 'http://huiwww.applinzi.com/img/details/lunbotu/19.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 21, 'http://huiwww.applinzi.com/img/details/lunbotu/20.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 21, 'http://huiwww.applinzi.com/img/details/lunbotu/20.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 21, 'http://huiwww.applinzi.com/img/details/lunbotu/20.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 21, 'http://huiwww.applinzi.com/img/details/lunbotu/20.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 22, 'http://huiwww.applinzi.com/img/details/lunbotu/4.1.jpg','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 22, 'http://huiwww.applinzi.com/img/details/lunbotu/4.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 22, 'http://huiwww.applinzi.com/img/details/lunbotu/4.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 22, 'http://huiwww.applinzi.com/img/details/lunbotu/4.4.jpg','img/product/md/57b12a31N8f4f75a3.jpg','img/product/lg/57b12a31N8f4f75a3.jpg'),
(NULL, 22, 'http://huiwww.applinzi.com/img/details/lunbotu/4.5.jpg','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 22, 'http://huiwww.applinzi.com/img/details/lunbotu/4.6.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 23, 'http://huiwww.applinzi.com/img/details/lunbotu/5.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 23, 'http://huiwww.applinzi.com/img/details/lunbotu/5.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 23, 'http://huiwww.applinzi.com/img/details/lunbotu/5.3.jpg','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 23, 'http://huiwww.applinzi.com/img/details/lunbotu/5.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 23, 'http://huiwww.applinzi.com/img/details/lunbotu/5.5.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 23, 'http://huiwww.applinzi.com/img/details/lunbotu/6.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 23, 'http://huiwww.applinzi.com/img/details/lunbotu/6.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 23, 'http://huiwww.applinzi.com/img/details/lunbotu/6.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 23, 'http://huiwww.applinzi.com/img/details/lunbotu/6.4.jpg','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 23, 'http://huiwww.applinzi.com/img/details/lunbotu/6.5.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 24, 'http://huiwww.applinzi.com/img/details/lunbotu/7.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 24, 'http://huiwww.applinzi.com/img/details/lunbotu/7.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 24, 'http://huiwww.applinzi.com/img/details/lunbotu/7.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 24, 'http://huiwww.applinzi.com/img/details/lunbotu/7.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 25, 'http://huiwww.applinzi.com/img/details/lunbotu/8.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 25, 'http://huiwww.applinzi.com/img/details/lunbotu/8.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 25, 'http://huiwww.applinzi.com/img/details/lunbotu/8.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 25, 'http://huiwww.applinzi.com/img/details/lunbotu/8.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 26, 'http://huiwww.applinzi.com/img/details/lunbotu/9.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 26, 'http://huiwww.applinzi.com/img/details/lunbotu/9.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 26, 'http://huiwww.applinzi.com/img/details/lunbotu/9.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 26, 'http://huiwww.applinzi.com/img/details/lunbotu/9.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 26, 'http://huiwww.applinzi.com/img/details/lunbotu/9.5.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 27, 'http://huiwww.applinzi.com/img/details/lunbotu/10.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 27, 'http://huiwww.applinzi.com/img/details/lunbotu/10.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 27, 'http://huiwww.applinzi.com/img/details/lunbotu/10.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 27, 'http://huiwww.applinzi.com/img/details/lunbotu/10.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 28, 'http://huiwww.applinzi.com/img/details/lunbotu/11.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 28, 'http://huiwww.applinzi.com/img/details/lunbotu/11.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 28, 'http://huiwww.applinzi.com/img/details/lunbotu/11.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 28, 'http://huiwww.applinzi.com/img/details/lunbotu/11.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 28, 'http://huiwww.applinzi.com/img/details/lunbotu/11.5.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 29, 'http://huiwww.applinzi.com/img/details/lunbotu/12.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 29, 'http://huiwww.applinzi.com/img/details/lunbotu/12.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 29, 'http://huiwww.applinzi.com/img/details/lunbotu/12.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 30, 'http://huiwww.applinzi.com/img/details/lunbotu/13.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 30, 'http://huiwww.applinzi.com/img/details/lunbotu/13.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 30, 'http://huiwww.applinzi.com/img/details/lunbotu/13.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 30, 'http://huiwww.applinzi.com/img/details/lunbotu/13.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 31, 'http://huiwww.applinzi.com/img/details/lunbotu/14.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 32, 'http://huiwww.applinzi.com/img/details/lunbotu/14.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 32, 'http://huiwww.applinzi.com/img/details/lunbotu/14.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 32, 'http://huiwww.applinzi.com/img/details/lunbotu/15.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 32, 'http://huiwww.applinzi.com/img/details/lunbotu/15.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 32, 'http://huiwww.applinzi.com/img/details/lunbotu/15.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 32, 'http://huiwww.applinzi.com/img/details/lunbotu/15.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 33, 'http://huiwww.applinzi.com/img/details/lunbotu/16.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 33, 'http://huiwww.applinzi.com/img/details/lunbotu/16.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 33, 'http://huiwww.applinzi.com/img/details/lunbotu/16.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 33, 'http://huiwww.applinzi.com/img/details/lunbotu/16.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 34, 'http://huiwww.applinzi.com/img/details/lunbotu/17.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 34, 'http://huiwww.applinzi.com/img/details/lunbotu/17.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 34, 'http://huiwww.applinzi.com/img/details/lunbotu/17.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 34, 'http://huiwww.applinzi.com/img/details/lunbotu/17.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 34, 'http://huiwww.applinzi.com/img/details/lunbotu/17.5.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 35, 'http://huiwww.applinzi.com/img/details/lunbotu/18.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 35, 'http://huiwww.applinzi.com/img/details/lunbotu/18.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 35, 'http://huiwww.applinzi.com/img/details/lunbotu/18.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 36, 'http://huiwww.applinzi.com/img/details/lunbotu/19.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 36, 'http://huiwww.applinzi.com/img/details/lunbotu/19.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 36, 'http://huiwww.applinzi.com/img/details/lunbotu/19.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 36, 'http://huiwww.applinzi.com/img/details/lunbotu/19.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 37, 'http://huiwww.applinzi.com/img/details/lunbotu/01.jpg','./message/nav3/md/md1.jpg','./message/nav3/big/big1.jpg'),
(NULL, 37, 'http://huiwww.applinzi.com/img/details/lunbotu/02.jpg','./message/nav3/md/md2.png','./message/nav3/big/big2.png'),
(NULL, 37, 'http://huiwww.applinzi.com/img/details/lunbotu/03.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 37, 'http://huiwww.applinzi.com/img/details/lunbotu/04.jpg','./message/nav3/md/md3.png','./message/nav3/big/big2.png'),
(NULL, 37, 'http://huiwww.applinzi.com/img/details/lunbotu/02.jpg','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 38, 'http://huiwww.applinzi.com/img/details/lunbotu/1.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 38, 'http://huiwww.applinzi.com/img/details/lunbotu/1.2.jpg','./message/nav3/md/md4.png','./message/nav3/big/big3.png'),
(NULL, 38, 'http://huiwww.applinzi.com/img/details/lunbotu/1.3.jpg','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 38, 'http://huiwww.applinzi.com/img/details/lunbotu/1.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 38, 'http://huiwww.applinzi.com/img/details/lunbotu/1.5.jpg','img/product/md/57b12a31N8f4f75a3.jpg','img/product/lg/57b12a31N8f4f75a3.jpg'),
(NULL, 39, 'http://huiwww.applinzi.com/img/details/lunbotu/2.1.jpg','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 39, 'http://huiwww.applinzi.com/img/details/lunbotu/2.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 39, 'http://huiwww.applinzi.com/img/details/lunbotu/2.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 39, 'http://huiwww.applinzi.com/img/details/lunbotu/2.4.jpg','img/product/md/57b12a31N8f4f75a3.jpg','img/product/lg/57b12a31N8f4f75a3.jpg'),
(NULL, 40, 'http://huiwww.applinzi.com/img/details/lunbotu/3.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 40, 'http://huiwww.applinzi.com/img/details/lunbotu/3.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 40, 'http://huiwww.applinzi.com/img/details/lunbotu/3.1.jpg','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 40, 'http://huiwww.applinzi.com/img/details/lunbotu/3.4.jpg','img/product/md/57b12a31N8f4f75a3.jpg','img/product/lg/57b12a31N8f4f75a3.jpg'),
(NULL, 41, 'http://huiwww.applinzi.com/img/details/lunbotu/4.1.jpg','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 41, 'http://huiwww.applinzi.com/img/details/lunbotu/4.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 41, 'http://huiwww.applinzi.com/img/details/lunbotu/4.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 41, 'http://huiwww.applinzi.com/img/details/lunbotu/4.4.jpg','img/product/md/57b12a31N8f4f75a3.jpg','img/product/lg/57b12a31N8f4f75a3.jpg'),
(NULL, 41, 'http://huiwww.applinzi.com/img/details/lunbotu/4.5.jpg','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 41, 'http://huiwww.applinzi.com/img/details/lunbotu/4.6.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 42, 'http://huiwww.applinzi.com/img/details/lunbotu/5.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 42, 'http://huiwww.applinzi.com/img/details/lunbotu/5.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 42, 'http://huiwww.applinzi.com/img/details/lunbotu/5.3.jpg','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 42, 'http://huiwww.applinzi.com/img/details/lunbotu/5.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 42, 'http://huiwww.applinzi.com/img/details/lunbotu/5.5.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 43, 'http://huiwww.applinzi.com/img/details/lunbotu/6.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 43, 'http://huiwww.applinzi.com/img/details/lunbotu/6.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 43, 'http://huiwww.applinzi.com/img/details/lunbotu/6.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 43, 'http://huiwww.applinzi.com/img/details/lunbotu/6.4.jpg','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 43, 'http://huiwww.applinzi.com/img/details/lunbotu/6.5.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 44, 'http://huiwww.applinzi.com/img/details/lunbotu/7.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 44, 'http://huiwww.applinzi.com/img/details/lunbotu/7.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 44, 'http://huiwww.applinzi.com/img/details/lunbotu/7.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 44, 'http://huiwww.applinzi.com/img/details/lunbotu/7.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 45, 'http://huiwww.applinzi.com/img/details/lunbotu/8.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 45, 'http://huiwww.applinzi.com/img/details/lunbotu/8.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 45, 'http://huiwww.applinzi.com/img/details/lunbotu/8.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 45, 'http://huiwww.applinzi.com/img/details/lunbotu/8.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 46, 'http://huiwww.applinzi.com/img/details/lunbotu/9.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 46, 'http://huiwww.applinzi.com/img/details/lunbotu/9.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 46, 'http://huiwww.applinzi.com/img/details/lunbotu/9.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 46, 'http://huiwww.applinzi.com/img/details/lunbotu/9.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 46, 'http://huiwww.applinzi.com/img/details/lunbotu/9.5.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 47, 'http://huiwww.applinzi.com/img/details/lunbotu/10.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 47, 'http://huiwww.applinzi.com/img/details/lunbotu/10.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 47, 'http://huiwww.applinzi.com/img/details/lunbotu/10.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 47, 'http://huiwww.applinzi.com/img/details/lunbotu/10.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 48, 'http://huiwww.applinzi.com/img/details/lunbotu/11.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 48, 'http://huiwww.applinzi.com/img/details/lunbotu/11.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 48, 'http://huiwww.applinzi.com/img/details/lunbotu/11.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 48, 'http://huiwww.applinzi.com/img/details/lunbotu/11.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 48, 'http://huiwww.applinzi.com/img/details/lunbotu/11.5.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 49, 'http://huiwww.applinzi.com/img/details/lunbotu/12.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 49, 'http://huiwww.applinzi.com/img/details/lunbotu/12.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 49, 'http://huiwww.applinzi.com/img/details/lunbotu/12.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 50, 'http://huiwww.applinzi.com/img/details/lunbotu/13.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 50, 'http://huiwww.applinzi.com/img/details/lunbotu/13.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 50, 'http://huiwww.applinzi.com/img/details/lunbotu/13.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 50, 'http://huiwww.applinzi.com/img/details/lunbotu/13.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 51, 'http://huiwww.applinzi.com/img/details/lunbotu/14.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 51, 'http://huiwww.applinzi.com/img/details/lunbotu/14.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 51, 'http://huiwww.applinzi.com/img/details/lunbotu/14.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 52, 'http://huiwww.applinzi.com/img/details/lunbotu/15.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 52, 'http://huiwww.applinzi.com/img/details/lunbotu/15.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 52, 'http://huiwww.applinzi.com/img/details/lunbotu/15.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 52, 'http://huiwww.applinzi.com/img/details/lunbotu/15.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 53, 'http://huiwww.applinzi.com/img/details/lunbotu/16.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 53, 'http://huiwww.applinzi.com/img/details/lunbotu/16.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 53, 'http://huiwww.applinzi.com/img/details/lunbotu/16.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 53, 'http://huiwww.applinzi.com/img/details/lunbotu/16.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 54, 'http://huiwww.applinzi.com/img/details/lunbotu/17.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 54, 'http://huiwww.applinzi.com/img/details/lunbotu/17.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 54, 'http://huiwww.applinzi.com/img/details/lunbotu/17.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 54, 'http://huiwww.applinzi.com/img/details/lunbotu/17.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 54, 'http://huiwww.applinzi.com/img/details/lunbotu/17.5.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 55, 'http://huiwww.applinzi.com/img/details/lunbotu/18.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 55, 'http://huiwww.applinzi.com/img/details/lunbotu/18.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 55, 'http://huiwww.applinzi.com/img/details/lunbotu/18.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 56, 'http://huiwww.applinzi.com/img/details/lunbotu/19.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 56, 'http://huiwww.applinzi.com/img/details/lunbotu/19.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 56, 'http://huiwww.applinzi.com/img/details/lunbotu/19.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 56, 'http://huiwww.applinzi.com/img/details/lunbotu/19.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 57, 'http://huiwww.applinzi.com/img/details/lunbotu/20.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 57, 'http://huiwww.applinzi.com/img/details/lunbotu/20.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 57, 'http://huiwww.applinzi.com/img/details/lunbotu/20.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 57, 'http://huiwww.applinzi.com/img/details/lunbotu/20.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 58, 'http://huiwww.applinzi.com/img/details/lunbotu/4.1.jpg','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 58, 'http://huiwww.applinzi.com/img/details/lunbotu/4.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 58, 'http://huiwww.applinzi.com/img/details/lunbotu/4.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 58, 'http://huiwww.applinzi.com/img/details/lunbotu/4.4.jpg','img/product/md/57b12a31N8f4f75a3.jpg','img/product/lg/57b12a31N8f4f75a3.jpg'),
(NULL, 58, 'http://huiwww.applinzi.com/img/details/lunbotu/4.5.jpg','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 58, 'http://huiwww.applinzi.com/img/details/lunbotu/4.6.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 59, 'http://huiwww.applinzi.com/img/details/lunbotu/5.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 59, 'http://huiwww.applinzi.com/img/details/lunbotu/5.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 59, 'http://huiwww.applinzi.com/img/details/lunbotu/5.3.jpg','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 59, 'http://huiwww.applinzi.com/img/details/lunbotu/5.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 59, 'http://huiwww.applinzi.com/img/details/lunbotu/5.5.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 59, 'http://huiwww.applinzi.com/img/details/lunbotu/6.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 59, 'http://huiwww.applinzi.com/img/details/lunbotu/6.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 59, 'http://huiwww.applinzi.com/img/details/lunbotu/6.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 59, 'http://huiwww.applinzi.com/img/details/lunbotu/6.4.jpg','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 59, 'http://huiwww.applinzi.com/img/details/lunbotu/6.5.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 60, 'http://huiwww.applinzi.com/img/details/lunbotu/7.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 60, 'http://huiwww.applinzi.com/img/details/lunbotu/7.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 60, 'http://huiwww.applinzi.com/img/details/lunbotu/7.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 60, 'http://huiwww.applinzi.com/img/details/lunbotu/7.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 61, 'http://huiwww.applinzi.com/img/details/lunbotu/8.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 61, 'http://huiwww.applinzi.com/img/details/lunbotu/8.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 61, 'http://huiwww.applinzi.com/img/details/lunbotu/8.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 61, 'http://huiwww.applinzi.com/img/details/lunbotu/8.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 62, 'http://huiwww.applinzi.com/img/details/lunbotu/9.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 62, 'http://huiwww.applinzi.com/img/details/lunbotu/9.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 62, 'http://huiwww.applinzi.com/img/details/lunbotu/9.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 62, 'http://huiwww.applinzi.com/img/details/lunbotu/9.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 62, 'http://huiwww.applinzi.com/img/details/lunbotu/9.5.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 63, 'http://huiwww.applinzi.com/img/details/lunbotu/10.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 63, 'http://huiwww.applinzi.com/img/details/lunbotu/10.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 63, 'http://huiwww.applinzi.com/img/details/lunbotu/10.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 63, 'http://huiwww.applinzi.com/img/details/lunbotu/10.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 64, 'http://huiwww.applinzi.com/img/details/lunbotu/11.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 64, 'http://huiwww.applinzi.com/img/details/lunbotu/11.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 64, 'http://huiwww.applinzi.com/img/details/lunbotu/11.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 64, 'http://huiwww.applinzi.com/img/details/lunbotu/11.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 64, 'http://huiwww.applinzi.com/img/details/lunbotu/11.5.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 65, 'http://huiwww.applinzi.com/img/details/lunbotu/12.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 65, 'http://huiwww.applinzi.com/img/details/lunbotu/12.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 65, 'http://huiwww.applinzi.com/img/details/lunbotu/12.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 66, 'http://huiwww.applinzi.com/img/details/lunbotu/13.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 66, 'http://huiwww.applinzi.com/img/details/lunbotu/13.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 66, 'http://huiwww.applinzi.com/img/details/lunbotu/13.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 66, 'http://huiwww.applinzi.com/img/details/lunbotu/13.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 67, 'http://huiwww.applinzi.com/img/details/lunbotu/14.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 68, 'http://huiwww.applinzi.com/img/details/lunbotu/14.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 68, 'http://huiwww.applinzi.com/img/details/lunbotu/14.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 68, 'http://huiwww.applinzi.com/img/details/lunbotu/15.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 68, 'http://huiwww.applinzi.com/img/details/lunbotu/15.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 68, 'http://huiwww.applinzi.com/img/details/lunbotu/15.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 68, 'http://huiwww.applinzi.com/img/details/lunbotu/15.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 69, 'http://huiwww.applinzi.com/img/details/lunbotu/16.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 69, 'http://huiwww.applinzi.com/img/details/lunbotu/16.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 69, 'http://huiwww.applinzi.com/img/details/lunbotu/16.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 69, 'http://huiwww.applinzi.com/img/details/lunbotu/16.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 70, 'http://huiwww.applinzi.com/img/details/lunbotu/17.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 70, 'http://huiwww.applinzi.com/img/details/lunbotu/17.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 70, 'http://huiwww.applinzi.com/img/details/lunbotu/17.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 70, 'http://huiwww.applinzi.com/img/details/lunbotu/17.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 70, 'http://huiwww.applinzi.com/img/details/lunbotu/17.5.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 71, 'http://huiwww.applinzi.com/img/details/lunbotu/18.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 71, 'http://huiwww.applinzi.com/img/details/lunbotu/18.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 71, 'http://huiwww.applinzi.com/img/details/lunbotu/18.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 72, 'http://huiwww.applinzi.com/img/details/lunbotu/19.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 72, 'http://huiwww.applinzi.com/img/details/lunbotu/19.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 72, 'http://huiwww.applinzi.com/img/details/lunbotu/19.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 72, 'http://huiwww.applinzi.com/img/details/lunbotu/19.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 73, 'http://huiwww.applinzi.com/img/details/lunbotu/20.1.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 73, 'http://huiwww.applinzi.com/img/details/lunbotu/20.2.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 73, 'http://huiwww.applinzi.com/img/details/lunbotu/20.3.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 73, 'http://huiwww.applinzi.com/img/details/lunbotu/20.4.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg');



                                 /* 产品的详细信息*/
   CREATE TABLE wy_meticulous(
  lid INT PRIMARY KEY AUTO_INCREMENT, 
  family_id INT,              #所属类型型号家族编号
  product_ID VARCHAR(128),         #商品编号
  sex VARCHAR(128),              #性别
  vamp VARCHAR(32),             #鞋面材质
  texture VARCHAR(128),        #鞋底材质
  uppers VARCHAR(128),         #鞋帮
  closed VARCHAR(128),        #闭合方式
  actions VARCHAR(128),      #功能
  sites VARCHAR(64),        # 适用场地
  season VARCHAR(32),          #季节
  temperature VARCHAR(128),      #温度
  seasonal VARCHAR(128)     #应季月份
);   

INSERT INTO wy_meticulous VALUES
(1,1,'17741192','0,1','布料','橡胶底','低帮','系带','轻便,耐磨,防滑,透气','室外硬地,公路','春','适中','11月,10月,9月,8月,7月,6月,5月,4月,3月'),
(NULL,1,'17537931','1','网面','低帮','低帮','系带','轻便,耐磨,防滑,透气','室外硬地,公路','秋,夏,春','适中','9月,8月,7月,6月,5月,4月,3月'),
(NULL,1,'17741442','0','牛皮','橡胶底','低帮','系带','美观,耐磨,防滑,透气','室外硬地,运动场','秋','适中','11月,8月,7月,6月,5月,4月,3月'),
(NULL,1,'17721132','0,1','牛皮','橡胶底','低帮','系带','轻便,耐磨,防滑,透气','室外硬地,公路','春','适中','11月,10月,9月'),
(NULL,1,'17721152','1','猪皮','鳄鱼底','高帮','寇牛','轻便,耐磨,防滑,透气','室外硬地,公路','夏','适中','11月,10月,9月'),
(NULL,1,'17726132','0,1','虎皮','橡胶底','低帮','系带','轻便,耐磨,防滑,透气','室外硬地,公路','春','适中','11月,10月,9月'),
(NULL,1,'17721432','0,1','牛皮','橡胶底','中帮','系带','抒发,耐磨,防滑,透气','室外硬地,公路','春','适中','11月,10月,9月'),
(NULL,1,'13721132','0,1','鳄鱼皮','橡胶底','低帮','系带','轻便,耐磨,防滑,透气','室外硬地,公路','春','适中','11月,10月,9月'),
(NULL,1,'14725132','0,1','牛皮','橡胶底','低帮','系带','轻便,耐磨,防滑,透气','室外硬地,公路','春','适中','11月,10月,9月');


 /* 商品详情最底下的图片*/
 CREATE TABLE wy_details_pic(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  laptop_id INT,              #商品编号
  img VARCHAR(128),            #图片路径
  href VARCHAR(128),            #商品详情地址
  lg VARCHAR(128)             #大图片路径
);
 
/**商品详情最底下的图片    鞋子的颜色  公用**/
INSERT INTO wy_details_pic VALUES
(NULL, 1, 'http://huiwww.applinzi.com/img/details/8.png','img/product/md/57b12a31N8f4f75a3.jpg','img/product/lg/57b12a31N8f4f75a3.jpg'),
(NULL, 1, 'http://huiwww.applinzi.com/img/details/12.png','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 1, 'http://huiwww.applinzi.com/img/details/13.png','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 1, 'http://huiwww.applinzi.com/img/details/14.png','img/product/md/57b12a31N8f4f75a3.jpg','img/product/lg/57b12a31N8f4f75a3.jpg'),
(NULL, 2, 'http://huiwww.applinzi.com/img/details/dibu/2.1.png','img/product/md/57b12a31N8f4f75a3.jpg','img/product/lg/57b12a31N8f4f75a3.jpg'),
(NULL, 2, 'http://huiwww.applinzi.com/img/lunbotu/9.1.png','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 2, 'http://huiwww.applinzi.com/img/details/dibu/2.3.png','img/product/md/57b12a31N8f4f75a3.jpg','img/product/lg/57b12a31N8f4f75a3.jpg'),
(NULL, 2, 'http://huiwww.applinzi.com/img/details/dibu/2.4.png','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 2, 'http://huiwww.applinzi.com/img/details/dibu/2.5.png','img/product/md/57b12a31N8f4f75a3.jpg','img/product/lg/57b12a31N8f4f75a3.jpg'),
(NULL, 3, 'http://huiwww.applinzi.com/img/details/dibu/3.11.png','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 3, 'http://huiwww.applinzi.com/img/details/dibu/3.12.png','img/product/md/57b12a31N8f4f75a3.jpg','img/product/lg/57b12a31N8f4f75a3.jpg'),
(NULL, 3, 'http://huiwww.applinzi.com/img/details/dibu/3.13.png','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 3, 'http://huiwww.applinzi.com/img/details/dibu/3.14.png','img/product/md/57b12a31N8f4f75a3.jpg','img/product/lg/57b12a31N8f4f75a3.jpg'),
(NULL, 3, 'http://huiwww.applinzi.com/img/details/dibu/3.15.png','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 3, 'http://huiwww.applinzi.com/img/details/dibu/3.16.png','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 4, 'http://huiwww.applinzi.com/img/lunbotu/9.1.png','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 4, 'http://huiwww.applinzi.com/img/details/dibu/4.2.png','img/product/md/57b12a31N8f4f75a3.jpg','img/product/lg/57b12a31N8f4f75a3.jpg'),
(NULL, 4, 'http://huiwww.applinzi.com/img/lunbotu/9.1.png','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 4, 'http://huiwww.applinzi.com/img/details/dibu/4.4.png','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 4, 'http://huiwww.applinzi.com/img/lunbotu/9.1.png','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 5, 'http://huiwww.applinzi.com/img/details/dibu/3.11.png','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 5, 'http://huiwww.applinzi.com/img/details/dibu/3.12.png','img/product/md/57b12a31N8f4f75a3.jpg','img/product/lg/57b12a31N8f4f75a3.jpg'),
(NULL, 5, 'http://huiwww.applinzi.com/img/details/dibu/3.13.png','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 5, 'http://huiwww.applinzi.com/img/details/dibu/3.14.png','img/product/md/57b12a31N8f4f75a3.jpg','img/product/lg/57b12a31N8f4f75a3.jpg'),
(NULL, 5, 'http://huiwww.applinzi.com/img/details/dibu/3.15.png','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 5, 'http://huiwww.applinzi.com/img/details/dibu/3.16.png','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 6, 'http://huiwww.applinzi.com/img/details/dibu/3.12.png','img/product/md/57b12a31N8f4f75a3.jpg','img/product/lg/57b12a31N8f4f75a3.jpg'),
(NULL, 6, 'http://huiwww.applinzi.com/img/details/dibu/3.13.png','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 6, 'http://huiwww.applinzi.com/img/details/dibu/3.14.png','img/product/md/57b12a31N8f4f75a3.jpg','img/product/lg/57b12a31N8f4f75a3.jpg'),
(NULL, 6, 'http://huiwww.applinzi.com/img/details/dibu/3.15.png','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 6, 'http://huiwww.applinzi.com/img/details/dibu/3.16.png','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 7, 'http://huiwww.applinzi.com/img/details/dibu/3.12.png','img/product/md/57b12a31N8f4f75a3.jpg','img/product/lg/57b12a31N8f4f75a3.jpg'),
(NULL, 7, 'http://huiwww.applinzi.com/img/details/dibu/3.13.png','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 7, 'http://huiwww.applinzi.com/img/details/dibu/3.14.png','img/product/md/57b12a31N8f4f75a3.jpg','img/product/lg/57b12a31N8f4f75a3.jpg'),
(NULL, 7, 'http://huiwww.applinzi.com/img/details/dibu/3.15.png','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 7, 'http://huiwww.applinzi.com/img/details/dibu/3.16.png','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 8, 'http://huiwww.applinzi.com/img/lunbotu/9.6.png','img/product/md/57b12a31N8f4f75a3.jpg','img/product/lg/57b12a31N8f4f75a3.jpg'),
(NULL, 8, 'http://huiwww.applinzi.com/img/lunbotu/9.4.png','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 8, 'http://huiwww.applinzi.com/img/lunbotu/9.3.png','img/product/md/57b12a31N8f4f75a3.jpg','img/product/lg/57b12a31N8f4f75a3.jpg'),
(NULL, 8, 'http://huiwww.applinzi.com/img/lunbotu/9.2.png','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 8, 'http://huiwww.applinzi.com/img/lunbotu/9.1.png','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg');

/**商品的（每对鞋子存有的尺寸）  鞋子颜色的数据表 没在用**/
CREATE TABLE wy_details_img(
  lid INT PRIMARY KEY AUTO_INCREMENT,   /*每对鞋的id*/
  family_id INT,             /*种类归类*/
  img1 VARCHAR(128),      /*尺寸*/
  img2 VARCHAR(128),      
  img3 VARCHAR(128),        
  img4 VARCHAR(128),   
  img5 VARCHAR(128),       
  img6 VARCHAR(128)      
);
/**商品的（每对鞋子存有的尺寸）**/
INSERT INTO wy_details_img VALUES 
(1,1,'http://huiwww.applinzi.com/img/details/1.png','http://huiwww.applinzi.com/img/details/2.png','http://huiwww.applinzi.com/img/details/3.png','http://huiwww.applinzi.com/img/details/4.png','http://huiwww.applinzi.com/img/details/5.png','http://huiwww.applinzi.com/img/details/6.png'),
(2,2,'http://huiwww.applinzi.com/img/details/2.1.jpg','http://huiwww.applinzi.com/img/details/2.2.jpg','http://huiwww.applinzi.com/img/details/2.3.jpg','http://huiwww.applinzi.com/img/details/2.4.jpg',NULL,NULL),
(3,3,'http://huiwww.applinzi.com/img/details/3.1.jpg','http://huiwww.applinzi.com/img/details/3.2.jpg','http://huiwww.applinzi.com/img/details/3.3.jpg','http://huiwww.applinzi.com/img/details/3.4.jpg','http://huiwww.applinzi.com/img/details/3.5.jpg',NULL),
(4,4,'http://huiwww.applinzi.com/img/details/5.1.png','http://huiwww.applinzi.com/img/details/5.2.png','http://huiwww.applinzi.com/img/details/5.3.png','http://huiwww.applinzi.com/img/details/5.4.png',NULL,NULL);



#######################################################################################################




