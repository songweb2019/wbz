SET NAMES UTF8;
DROP DATABASE IF EXISTS wbz;
CREATE DATABASE wbz CHARSET=UTF8;
USE wbz;

/**用户信息**/
CREATE TABLE wbz_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),       
  upwd VARCHAR(32),        
  email VARCHAR(64),       
  phone VARCHAR(16),       
  avatar VARCHAR(128),      #头像图片路径 
  user_name VARCHAR(32),   
  gender INT               #性别  0-女  1-男
);

/**商品所属家族**/
CREATE TABLE wbz_laptop_family(
  fid INT PRIMARY KEY AUTO_INCREMENT,  
  fname VARCHAR(32)                    
);

/**商品信息**/
CREATE TABLE wbz_laptop(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  family_id INT,
  lname VARCHAR(32),
  title VARCHAR(128),
  price DECIMAL
);

/**商品图片**/
CREATE TABLE wbz_laptop_pic(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  laptop_id INT,
  lg VARCHAR(128)  
);

/**首页轮播图**/
CREATE TABLE wbz_index_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  href VARCHAR(128)
);


/*********************************************************************/
/**********************************数据导入***************************/
/*********************************************************************/

/**用户信息**/
INSERT INTO wbz_user VALUES
(NULL,'zhangchao','zc971121','chao@qq.com','13007669929','img/avatar/chao.png','张超','1'),
(NULL,'xiayuqi','zc971121','yuqi@qq.com','13007669939','img/avatar/yuqi.png','雨琪','1'),
(NULL,'luhang','zc971121','luhang@qq.com','13007669949','img/avatar/luhang.png','路航','1'),
(NULL,'mengxue','zc971121','mengxue@qq.com','13007669959','img/avatar/mengxue.png','梦雪','0');

/**商品所属家族**/
INSERT INTO wbz_laptop_family VALUES
(NULL,'文具'),
(NULL,'运动'),
(NULL,'电子');

/**商品信息**/
INSERT INTO wbz_laptop VALUES
(1,1,'堂品狼毫毛笔','堂品狼毫毛笔极品纯狼套装国画专业级兼毫狼嚎高档书法用纸全套笔帘正品小楷练字神器',36.00),
(2,1,'六品堂狼毫毛笔','六品堂毛笔狼毫兼毫羊毫初学成人灰毫鼠毫篆隶行大中小楷书法用笔',26.00),
(3,1,'正品一得阁墨汁','正品一得阁书法专用墨水毛笔字练习大瓶大容量1000g',56.00),
(4,1,'红星墨汁','红星大容量中浓超浓书画墨汁书法专用墨汁',60.00),
(5,1,'赋比兴宣纸','宣纸书法专用纸 加厚高档国画创作品花鸟山水写意国展纸',120.00),
(6,1,'明星宣纸','米字格半生半熟毛笔字纸宣纸书法专用纸',30.00),
(7,1,'手工端砚','木盒原石宋坑学生砚文房四宝初学者书法用品',36.00),
(8,1,'原石砚台','原石砚台套装端砚歙砚初学者书法国画文房四宝',60.00),
(9,2,'SPALDING','NBA金色LOGO室内室外PU篮球',329.00),
(10,2,'李宁篮球','青少年小学生儿童室内外防滑耐磨蓝',119.00),
(11,2,'红双喜乒乓球拍','红双喜乒乓球拍2只装学生兵乓球',49.00),
(12,2,'友谊乒乓球拍','正品六星七星八星兵乓球拍单拍专业级6星横拍直拍',29.00),
(13,2,'尼克斯羽毛球拍','正品尤尼克斯羽毛球拍全碳素纤维YY超轻进攻型耐用男女单双拍',480.00),
(14,2,'victor胜利羽毛球拍','正品victor胜利羽毛球拍挑战者9500全碳素超轻维克多耐用进攻单双',320.00),
(15,2,'拳击沙袋立式','立式家用散打成人不倒翁练手沙包儿童吊式跆拳道训练器材',600.00),
(16,2,'九日山拳击手套','九日山拳击手套成人儿童散打训练专业沙袋拳套男女泰拳搏击手套',120.00),
(17,3,'ahma','808全波段收音机新款便携式老人小型播放器',208.00),
(18,3,'Rolton乐廷','T301全波段收音机老人老年充电插卡新款便携式迷你fm',89.00),
(19,3,'zgo手表','zgo男士手表防水机械表运动潮韩版青少年初中学生电子表男',258.00),
(20,3,'魅影','新款魅影概念全自动机械表韩版潮流学生手表男士石英防水男表',260.00),
(21,3,'飞科电动剃须刀','飞科电动剃须刀男士刮胡刀全身水洗智能充电式胡须刀正品刮胡子刀',399.00),
(22,3,'飞利浦电动剃须刀','飞利浦全身水洗电动充电式剃须刀男士刮胡刀官方旗舰店正品胡须刀',399.00),
(23,3,'金士顿DTSE9','G264g金属U盘USB3.0电脑两用',79.90),
(24,3,'SanDisk闪迪','cz73酷铄创意加密优盘128gUSB3.0高速金属',145.00);

/**商品图片**/
INSERT INTO wbz_laptop_pic VALUES
(NULL,1,'img/product/lg/maobi01.jpg'),
(NULL,2,'img/product/lg/maobi02.jpg'),
(NULL,3,'img/product/lg/mozhi01.jpg'),
(NULL,4,'img/product/lg/mozhi02.jpg'),
(NULL,5,'img/product/lg/xuanzhi01.jpg'),
(NULL,6,'img/product/lg/xuanzhi02.jpg'),
(NULL,7,'img/product/lg/yantai01.jpg'),
(NULL,8,'img/product/lg/yantai02.jpg'),
(NULL,9,'img/product/lg/ball01.jpg'),
(NULL,10,'img/product/lg/ball02.jpg'),
(NULL,11,'img/product/lg/pingpang01.jpg'),
(NULL,12,'img/product/lg/pingpang02.jpg'),
(NULL,13,'img/product/lg/yumaoqiu01.jpg'),
(NULL,14,'img/product/lg/yumaoqiu02.jpg'),
(NULL,15,'img/product/lg/quanji01.jpg'),
(NULL,16,'img/product/lg/quanji02.jpg'),
(NULL,17,'img/product/lg/shouyinji01.jpg'),
(NULL,18,'img/product/lg/shouyinji02.jpg'),
(NULL,19,'img/product/lg/biao01.jpg'),
(NULL,20,'img/product/lg/biao02.jpg'),
(NULL,21,'img/product/lg/tixudao01.jpg'),
(NULL,22,'img/product/lg/tixudao02.jpg'),
(NULL,23,'img/product/lg/upan01.jpg'),
(NULL,24,'img/product/lg/upan02.jpg');

/**首页轮播图**/
INSERT INTO wbz_index_carousel VALUES
(NULL,'img/index/banner1.png','index.html'),
(NULL,'img/index/banner2.png','index.html'),
(NULL,'img/index/banner3.png','index.html');
