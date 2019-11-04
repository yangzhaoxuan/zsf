SET NAMES UTF8;      #设置语言
DROP DATABASE IF EXISTS zsf;    #丢弃并重新创建数据库
CREATE DATABASE zsf CHARSET=UTF8;      #创建数据库
USE zsf;     #进入数据库


#用户信息表   
CREATE TABLE zsf_user(
	uid int PRIMARY KEY AUTO_INCREMENT, #用户id
	uphone BIGINT(25),  #用户手机号
	uname VARCHAR(20),  #昵称
	upwd  VARCHAR(16),  #密码
	usex  CHAR(1),    #性别    1.男  0.女
	ubirthday  VARCHAR(20), #生日
	uborn  VARCHAR(50),     #居住地  
	upslst  VARCHAR(150),  #个人简介
	uheadportrait VARCHAR(50),  #头像
	uemail  VARCHAR(20),    #邮箱
	umoney  DECIMAL(10,2),   #钱包余额
	uqq  VARCHAR(20),   #绑定qq   
	uwx  VARCHAR(20),   #绑定微信  
	uwb  VARCHAR(20),   #绑定微博
	utb  VARCHAR(20),   #绑定淘宝
	ulogin  CHAR(1)   #是否登陆   (1.是    0.否)
);

create table index_list(
  img_url VARCHAR(50),
  detail VARCHAR(255),
  price INT(11)
);

/*限时立减商品表*/
create table reduction(
    /*商品编号*/
    Tid int not null primary key AUTO_INCREMENT,
    /*商品标题*/
    Ttitle char(20) not null,
    /*商品图片*/
    Timg char(20) not null,
    /*商品简介*/
    TsuBtitle varchar(200) not null,
    -- 商品价格
    Tprice int not null,
    -- 商品优惠价格
    T_re_price int not null,
    -- 商品销量
    Tsale_volume int not null,
    -- 商家id
    Tbus_id int not null,
    -- 浏览量
    Tsee int
);


create table reduction_img(
  Tid  int not null,    #图片id
  timg_url varchar(255)   #图片路径
);



CREATE TABLE travel(
  tid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(30),
  ddescribe VARCHAR(50),
  price VARCHAR(8),
  browse INT,
  sale INT,
  suitable INT,
  ttype VARCHAR(10),
  country VARCHAR(20),
  vexemption Boolean,
  img_url VARCHAR(128)
);


#查看评论
CREATE TABLE comments(
  cid INT PRIMARY KEY AUTO_INCREMENT,    #评论id
  time DATE,         #订单时间
  content VARCHAR(150),      #评论内容
  grade TINYINT(5),       #评分
  lid VARCHAR(8),     #商品id
  uid VARCHAR(8)      #用户id
)
#插入数据
INSERT INTO comments values(null,"2018-04-12","很不错,导游也很负责",4,1,1);
INSERT INTO comments values(null,"2018-04-12","打撒奥大所多",3,1,1);
INSERT INTO comments values(null,"2018-04-12","阿斯顿撒多",1,1,1);
INSERT INTO comments values(null,"2018-04-12","阿豪你老婆真棒",5,1,1);
INSERT INTO comments values(null,"2018-04-12","很不错,我证明",2,1,1);
INSERT INTO comments values(null,"2018-04-12","是的，我也证明",1,1,1);
INSERT INTO comments values(null,"2018-04-12","大家都可以证明",4,1,1);
INSERT INTO comments values(null,"2018-04-12","很不错",4,2,2);
INSERT INTO comments values(null,"2018-04-12","导游也很负责",2,2,2);
INSERT INTO comments values(null,"2018-04-12","企鹅窝群饿",3,2,2);
INSERT INTO comments values(null,"2018-04-12","吃不出现",5,2,2);
INSERT INTO comments values(null,"2018-04-12","发嘚瑟安抚",2,2,2);
INSERT INTO comments values(null,"2018-04-12","范德萨发",4,2,2);
INSERT INTO comments values(null,"2018-04-12","很不错",4,2,2);
INSERT INTO comments values(null,"2018-04-12","导游也很负责",2,2,2);
INSERT INTO comments values(null,"2018-04-12","企鹅窝群饿",3,2,2);
INSERT INTO comments values(null,"2018-04-12","吃不出现",5,2,2);
INSERT INTO comments values(null,"2018-04-12","发嘚瑟安抚",2,2,2);
INSERT INTO comments values(null,"2018-04-12","范德萨发",4,3,2);
INSERT INTO comments values(null,"2018-04-12","很不错",4,3,2);
INSERT INTO comments values(null,"2018-04-12","导游也很负责",2,3,2);
INSERT INTO comments values(null,"2018-04-12","企鹅窝群饿",3,3,2);
INSERT INTO comments values(null,"2018-04-12","吃不出现",5,3,2);
INSERT INTO comments values(null,"2018-04-12","发嘚瑟安抚",2,3,2);
INSERT INTO comments values(null,"2018-04-12","范德萨发",4,4,2);
INSERT INTO comments values(null,"2018-04-12","很不错",4,4,2);
INSERT INTO comments values(null,"2018-04-12","导游也很负责",2,4,2);
INSERT INTO comments values(null,"2018-04-12","企鹅窝群饿",3,4,2);
INSERT INTO comments values(null,"2018-04-12","吃不出现",5,4,2);
INSERT INTO comments values(null,"2018-04-12","发嘚瑟安抚",2,4,2);
INSERT INTO comments values(null,"2018-04-12","范德萨发",4,4,2);







INSERT INTO zsf_user values(null,15515531989,"海绵宝宝","123456","1","19970821","河南省郑州市金水区信息学院路","此人很懒，没留下什么","img1","2587773542@qq.com",300,"2587773542","gyl19970821","13721419865","15515531989","0");
INSERT INTO zsf_user values(null,13681871401,"海绵宝宝","123456","1","19970821","河南省郑州市金水区信息学院路","此人很懒，没留下什么","img2","2587773542@qq.com",400,"2587773542","gyl19970821","13721419865","15515531989","0");


-- #插入数据
INSERT INTO index_list VALUES('index/maerdaifu.png','北京直飞马尔代夫6-7天往返含税机票（首都航空/售完为止）',2699);
INSERT INTO index_list VALUES('index/dongjing.jpg','[圣诞]天津直飞日本大阪/东京/名古屋/冲绳/北海道4-7天往返含税机票(多航司甩尾机票)',1299);
INSERT INTO index_list VALUES('index/taiguo.jpg','[圣诞节/元旦]北京直飞泰国清迈7天往返含税机票',2390);
INSERT INTO index_list VALUES('index/pujidao.jpg', '[圣诞节/元旦]南京直飞普吉岛7天往返含税机票', 980);




insert into reduction values(1,'北京直飞札幌','shop/bz_01_1.jpg','北京直飞札幌6日往返税机票(充足库存+优质白航班+可升级酒自由行+超大行李额任性买买买)',2930,2630,1000,1,132123);
insert into reduction values(2,'北京直飞泰国','shop/bt_02_1.jpg','北京直飞泰国清迈7天往返含税机票',2930,2379,1000,2,231321);
insert into reduction values(3,'南京直飞普吉岛','shop/np_03_1.jpg','南京直飞普吉岛7天往返机票',2930,980,1000,3,2351236);
insert into reduction values(4,'上海直飞北海道','shop/sb_04_1.jpg','上海直飞北海道5-7天往返含税机票(可选1晚酒店住宿套餐+早去午回航班)',2930,999,1000,4,1325361);
insert into reduction values(5,'天津直飞日本大阪','shop/sb_04_1.jpg','[圣诞]天津直飞日本大阪/东京/名古屋/冲绳/北海道4-7天往返含税机票(多航司甩尾机票)',2900,1099,1000,5,1325361);


insert into reduction_img values (1,"shop/bz_01_1.jpg");
insert into reduction_img values (1,"shop/bz_01_2.jpg");
insert into reduction_img values (1,"shop/bz_01_3.jpg");
insert into reduction_img values (2,"shop/bt_02_1.jpg");
insert into reduction_img values (2,"shop/bt_02_2.jpg");
insert into reduction_img values (2,"shop/bt_02_3.jpg");
insert into reduction_img values (3,"shop/np_03_1.jpg");
insert into reduction_img values (3,"shop/np_03_2.jpg");
insert into reduction_img values (3,"shop/np_03_3.jpg");
insert into reduction_img values (4,"shop/sb_04_1.jpg");
insert into reduction_img values (4,"shop/sb_04_2.jpg");
insert into reduction_img values (4,"shop/sb_04_3.jpg");



INSERT INTO travel VALUES(null,'罗马胡同','--当地人带你领略罗马人千年历史',348,71153,1553,10,'怀旧时光','罗马1',1,'travel/luoma.jpg');
INSERT INTO travel VALUES(null,'罗马胡同','--当地人带你领略罗马人千年历史',348,71153,1553,2,'怀旧时光','罗马2',1,'travel/luoma.jpg');
INSERT INTO travel VALUES(null,'罗马胡同','--当地人带你领略罗马人千年历史',348,71153,1553,3,'怀旧时光','罗马3',1,'travel/luoma.jpg');
INSERT INTO travel VALUES(null,'罗马胡同','--当地人带你领略罗马人千年历史',348,71153,1553,4,'怀旧时光','罗马4',1,'travel/luoma.jpg');
INSERT INTO travel VALUES(null,'罗马胡同','--当地人带你领略罗马人千年历史',348,71153,1553,5,'怀旧时光','罗马5',1,'travel/luoma.jpg');
INSERT INTO travel VALUES(null,'克姆林宫','--当地人带你领略俄罗斯人千年历史',348,71153,1553,10,'俯瞰城市','俄罗斯10',1,'travel/eluosi.jpg');
INSERT INTO travel VALUES(null,'克姆林宫','--当地人带你领略俄罗斯人千年历史',348,71153,1553,3,'俯瞰城市','俄罗斯3',1,'travel/eluosi.jpg');
INSERT INTO travel VALUES(null,'克姆林宫','--当地人带你领略俄罗斯人千年历史',348,71153,1553,4,'俯瞰城市','俄罗斯4',1,'travel/eluosi.jpg');
INSERT INTO travel VALUES(null,'克姆林宫','--当地人带你领略俄罗斯人千年历史',348,71153,1553,5,'俯瞰城市','俄罗斯5',1,'travel/eluosi.jpg');
INSERT INTO travel VALUES(null,'克姆林宫','--当地人带你领略俄罗斯人千年历史',348,71153,1553,6,'俯瞰城市','俄罗斯6',1,'travel/eluosi.jpg');
INSERT INTO travel VALUES(null,'少女峰','--当地人带你领略瑞士人千年历史',348,71153,1553,10,'俯瞰城市','瑞士10',1,'travel/ruishi.jpg');
INSERT INTO travel VALUES(null,'少女峰','--当地人带你领略瑞士人千年历史',348,71153,1553,10,'俯瞰城市','瑞士6',1,'travel/ruishi.jpg');









