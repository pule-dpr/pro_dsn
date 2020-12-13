SET NAMES UTF8;
DROP DATABASE IF EXISTS dsn;
CREATE DATABASE dsn CHARSET=UTF8;
USE dsn;
/**用户信息**/
CREATE TABLE dsn_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),          #用户名
  upwd VARCHAR(32),           #密码
  email VARCHAR(64),
  phone VARCHAR(16),
  avatar VARCHAR(128),        #头像图片路径
  user_name VARCHAR(32),      #姓名，如王小明
  gender INT,                #性别  0-女  1-男
  upersonal VARCHAR(128)     #个性签名
);

/**用户订单**/
CREATE TABLE dsn_order(
  aid INT PRIMARY KEY AUTO_INCREMENT,
  order_id INT,           #订单编号
  session_id INT,         #场次编号
  status INT,             #订单状态  1-等待付款  2-已付款  3-已出票 4-已取消  
  order_time BIGINT,      #预定时间
  pay_time BIGINT,        #付款时间
  success_time BIGINT   #已出票时间
);

/**用户订单**/
CREATE TABLE dsn_order_detail(
  did INT PRIMARY KEY AUTO_INCREMENT,
  order_id INT,           #订单编号
  session_id INT,         #场次编号
  count INT               #购买数量
);

/****演出表****/
CREATE TABLE dsn_show(
  sid INT PRIMARY KEY AUTO_INCREMENT,
  session VARCHAR(8),        #场次编号
  title VARCHAR(64),         #演出标题
  show_time BIGINT,          #演出时间
  side VARCHAR(64),          #演出地点
  details VARCHAR(128),      #演出简介
  price INT,                #  票价
  img1 VARCHAR(128)         #简介图片路径
);
/****项目表****/
DROP TABLE IF EXISTS `dsn_project`;
CREATE TABLE `dsn_project` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(64) NOT NULL,
  `pro_introduce` varchar(1000) NOT NULL,   #游戏介绍
  `pro_limit` varchar(64) NOT NULL DEFAULT '' COMMENT '游玩限制',
  `open_time` varchar(128) NOT NULL,  #开放时间
  `scenic_area_id` int(11) NOT NULL COMMENT '所属景区',
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/****项目门票表****/
DROP TABLE IF EXISTS `dsn_tickets`;
CREATE TABLE `dsn_show_tickets` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `show_price` int(11) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/****演出门票表****/
DROP TABLE IF EXISTS `dsn_tickets_kind`;
CREATE TABLE `dsn_tickets_kind` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(64) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/****评论表****/
DROP TABLE IF EXISTS `dsn_comment`;
CREATE TABLE `dsn_comment` (
  `cid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论ID，主键且自增',
  `content` varchar(255) NOT NULL COMMENT '评论内容',
  `time` int(10) unsigned NOT NULL COMMENT '评论发表的日期和时间',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户ID,外键,参照user表',
  `dynamic_id` int(10) unsigned NOT NULL COMMENT '动态ID,外键,参照dynamic表',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/****动态表****/
DROP TABLE IF EXISTS `dsn_dynamic`;
CREATE TABLE `dsn_dynamic` (
  `did` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '动态ID,主键且自增',
  `content` varchar(255) NOT NULL COMMENT '动态内容',
  `time` int(10) unsigned NOT NULL COMMENT '动态发表的时间',
  `user_id` int(10) unsigned NOT NULL COMMENT '外键,用户ID，参照用户表',
  PRIMARY KEY (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
SET FOREIGN_KEY_CHECKS=0;

/****首页轮播表****/
DROP TABLE IF EXISTS `dsn_lunbo`;
CREATE TABLE `dsn_lunbo` (
  `cid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '动态ID,主键且自增',
  `img` varchar(128) NOT NULL,
  `title` varchar(64) NOT NULL,
  `href` varchar(128) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET FOREIGN_KEY_CHECKS=0;
/****首页热门推荐****/
DROP TABLE IF EXISTS `dsn_remen`;
CREATE TABLE `dsn_remen` (
    rid INT PRIMARY KEY AUTO_INCREMENT,
    session VARCHAR(64),        #面包蟹导航
    title VARCHAR(64),         #热门标题
    img1 VARCHAR(128),         #热门图片路径
    redu INT                   #推荐指数
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*********插入热门数据**************/
INSERT INTO `dsn_remen` VALUES
(NULL,"攻略|景点|米奇大街","米奇大街的小秘密","/img/rem/mq.jpg",4),
(NULL,"攻略|项目|风暴来领","刺激大风暴来临","/img/rem/fb.jpg",5),
(NULL,"演出|门票|七个小矮人","七个小矮人的小家庭","/img/rem/ar.jpg",4),
(NULL,"须知|入园|安全","有关事项和规则","/img/rem/gz.jpg",3),
(NULL,"攻略|景点|隐藏玩法","迪士尼那些隐藏的彩蛋","/img/rem/cd.jpg",4);
/*********插入用户数据**************/
INSERT INTO dsn_user VALUES
(NULL,"在逃公主",123456,"123456@qq.com",19185391324,"/img/tx/1.jpg","沈国媛",0,"女孩子可爱一点总没有错！"),
(NULL,"黑马王子",123456,"123456@qq.com",19185391324,"/img/tx/2.jpg","蒲乐",0,"女孩子可爱一点总没有错！"),
(NULL,"大高人",123456,"123456@qq.com",19185391324,"/img/tx/3.jpg","徐广民",0,"女孩子可爱一点总没有错！"),
(NULL,"小可爱",123456,"123456@qq.com",19185391324,"/img/tx/4.jpg","张开先",0,"女孩子可爱一点总没有错！");
/****评论数据****/
INSERT INTO `dsn_comment` VALUES ('1', '是不是买了门票什么项目都可以玩？', '0', '1', '1');
INSERT INTO `dsn_comment` VALUES ('2', '一天能玩全部吗？', '0', '2', '2');
INSERT INTO `dsn_comment` VALUES ('3', '可以带事物进去吗？', '0', '3', '3');
INSERT INTO `dsn_comment` VALUES ('4', '上海迪士尼和香港迪士尼哪家好玩', '0', '4', '4');
INSERT INTO `dsn_comment` VALUES ('5', '烟花大概什么时候开始？是不是每天都有', '0', '5', '5');
/****动态的数据****/
INSERT INTO `dsn_dynamic` VALUES ('1', '上海迪士尼乐园，时间安排统计： 地铁11号线迪士尼站，早上八点抵达，40分钟排队，拿到票。出示：上海随申码，门票预约绿码，身份证。 1.雷鸣山漂流，50分钟排队，带一次性雨衣。 2.飞跃地平线，120分钟排队，前60分钟剧场里坐着，分组拿等候卡，后60分钟室内排队空气不是很流通，体验是几个视频串联，没有太惊艳到，毕竟去过澳洲，非洲，埃及也早在计划内。 3.加勒比海盗，没排队，赶上饭点正好没人，坐着船，身临其境感有一些。 4.七个小矮人矿山车，60分钟排队，转弯幅度略快。 5.爱丽丝梦游仙境迷宫，不排队。 ', '0', '1');
INSERT INTO `dsn_dynamic` VALUES ('2', '✔门票一定要提前订好了。特别是VIP票，数量有限哦！节假日或暑期建议至少提前三天购买哦！客流量大容易限票 ✔充电宝+雨伞（遮阳挡雨）两不误+雨衣+头箍（乐园门口很多售卖的十元一个很便宜） ✔身份证！身份证!身份证！必须要带，入园是可以刷身份证的。 ✔补充说明：舒服的写照真的很重要，为了你的双脚，穿轻便舒适的运动鞋。一天下来至少2万步，而且排队都要等很久。 ✔关于穿着：尽可能的穿舒服的裤子，裙子漂亮，但有些不方便，坐极速光轮的时候会走光 ✔关于防晒：不可以带喷雾，可以选择乳霜质地的防晒用品 ✔可带食物，不能', '0', '2');
INSERT INTO `dsn_dynamic` VALUES ('3', '2020年11月29日，我第64次进入上海迪士尼乐园了，是下午3:00进的园，纯粹是为了看晚上6:30的万圣节????反派大巡游。 今年的万圣节????反派大巡游感觉队伍好像没有去年长，就五辆花车。 不过，每年10月份的反派大巡游还是很吸引我的，毕竟一年也就这一个月的晚上有这个特色巡游。', '0', '3');
INSERT INTO `dsn_dynamic` VALUES ('4', '去迪士尼一直是孩子的梦想，总体来说从园景的设计、游戏的体验都是很棒的，所有的游戏和场景都与动画片还有电影等等迪士尼出品东东有关，有种置身其中的感觉-你就是主角????孩子们玩的非常嗨，尤其是喜欢小矮人矿车和冰雪奇缘演出，我是感觉极速光轮的体验感超棒！但是在里边卖的吃的、玩具等等都太贵了，不是很值????建议还是根据自己的情况有选择的购买！????', '0', '4');
INSERT INTO `dsn_dynamic` VALUES ('5', '2020年11月15日，我第65次进入上海迪士尼乐园。 今天在朋友圈看到了这样一句话，感同身受。 “My mum told me,you should learn to find happy everyday, even very small happy.”（我妈妈告诉我，你应该学会每天找到快乐，哪怕是很小的快乐） 迪士尼—我快乐的源泉[愉快][愉快][愉快] 第二次续迪士尼年卡了，不是因为到期了，而是因为，明天要涨价了，金卡从1599元涨到了1899元[捂脸]。', '0', '5');
/*********插入项目数据*********/
INSERT INTO `dsn_project` VALUES 
(NULL,"爱丽丝梦游仙境迷宫","穿过爱丽丝梦游仙境中蜿蜒的迷宫，参与愉快的疯狂茶会派对！","一米二以上，学龄前儿童，儿童，8-13岁少年，青少年，成人，所有年龄","上午10：00 至 下午6：30","梦幻世界"),
(NULL,"幻想曲旋转木马","乘坐飞马，伴随迪士尼《幻想曲》中恢弘大气的交响乐，回旋在梦幻的世界里！","一米二以上，学龄前儿童，儿童，8-13岁少年，青少年，成人，所有年龄","上午10：00 至 下午6：30","奇幻花园"),
(NULL,"雷鸣山漂流","登上漂筏探险之旅，遭遇意想不到的转折。深入黑暗的深渊，和凶猛的巨兽赛跑，在激流中转转反侧，一直坚持到底！","一米二以上，学龄前儿童，儿童，8-13岁少年，青少年，成人，所有年龄","上午10：00 至 下午6：30","探险岛"),
(NULL,"抱抱龙冲天赛车","抱抱龙将邀请大家坐上遥控冲天赛车，在U型轨道上开启一段精彩刺激的冒险旅程！","一米二以上，学龄前儿童，儿童，8-13岁少年，青少年，成人，所有年龄","上午10：00 至 下午6：30","明日世界"),
(NULL,"探险海妖复仇号","穿过爱丽丝梦游仙境中蜿蜒的迷宫，参与愉快的疯狂茶会派对！","一米二以上，学龄前儿童，儿童，8-13岁少年，青少年，成人，所有年龄","上午10：00 至 下午6：30","宝藏湾");


