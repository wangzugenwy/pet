/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.0.22-community-nt : Database - petnews
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`petnews` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `petnews`;

/*Table structure for table `barcomments` */

DROP TABLE IF EXISTS `barcomments`;

CREATE TABLE `barcomments` (
  `id` int(11) NOT NULL auto_increment,
  `titleid` int(11) NOT NULL,
  `username` char(20) NOT NULL,
  `contexts` char(200) NOT NULL,
  `time` char(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `barcomments` */

insert  into `barcomments`(`id`,`titleid`,`username`,`contexts`,`time`) values (1,1,'333','交罚款的身份','2016'),(2,1,'333','发动机了疯狂','2016'),(3,1,'333','顶！d=====(￣▽￣*)b','2016'),(4,1,'333','顶','2016'),(5,1,'333','顶','2016'),(6,1,'333','顶','2016'),(7,1,'333','顶','2016'),(8,1,'333','顶','2016'),(9,1,'333','顶','2016'),(10,1,'333','顶','2016'),(11,1,'333','顶','2016'),(12,1,'333','顶','2016'),(13,1,'333','顶','2016'),(14,1,'333','顶','2016'),(15,2,'333','顶','2016'),(16,3,'333','顶','2016'),(17,2,'333',' \r\n \r\n \r\n 的发生大','2016-10-17 11:42:14'),(18,1,'333',' \r\n \r\n \r\n 感受到的','2016-10-17 11:42:36'),(19,17,'aaa',' \r\n \r\n dsfza\r\n','2016-10-30 19:32:04'),(20,18,'aaa',' \r\n \r\n \r\n dsfafa','2016-10-30 19:47:13');

/*Table structure for table `barpicture` */

DROP TABLE IF EXISTS `barpicture`;

CREATE TABLE `barpicture` (
  `id` int(11) NOT NULL auto_increment,
  `picture` char(20) NOT NULL,
  `titleid` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `barpicture` */

insert  into `barpicture`(`id`,`picture`,`titleid`) values (1,'images\\2.jpg',1),(2,'images\\41.jpg',1),(3,'images\\42.jpg',2),(4,'images\\62.jpg',3),(5,'images\\42.jpg',4),(6,'images\\42.jpg',5),(7,'images\\41.jpg',6);

/*Table structure for table `barpictures` */

DROP TABLE IF EXISTS `barpictures`;

CREATE TABLE `barpictures` (
  `id` int(11) NOT NULL auto_increment,
  `picture` char(20) NOT NULL,
  `type` char(20) NOT NULL,
  `kind` char(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `barpictures` */

insert  into `barpictures`(`id`,`picture`,`type`,`kind`) values (1,'dogimages\\1.jpg','小狗','时尚小狗'),(2,'dogimages\\2.jpg','小狗','时尚小狗'),(3,'dogimages\\3.jpg','小狗','时尚小狗'),(4,'dogimages\\4.jpg','小狗','迷惑的小狗'),(5,'dogimages\\5.jpg','小狗','迷惑的小狗'),(6,'dogimages\\6.jpg','小狗','迷惑的小狗'),(7,'dogimages\\7.jpg','小狗','迷惑的小狗'),(8,'dogimages\\8.jpg','小狗','迷惑的小狗'),(9,'dogimages\\9.jpg','小狗','迷惑的小狗'),(10,'dogimages\\10.jpg','小狗','迷惑的小狗'),(11,'dogimages\\11.jpg','小狗','迷惑的小狗'),(12,'dogimages\\12.jpg','小狗','可爱的小狗'),(13,'dogimages\\13.jpg','小狗','可爱的小狗'),(14,'dogimages\\14.jpg','小狗','可爱的小狗'),(15,'dogimages\\15.jpg','小狗','时尚小狗'),(16,'catimages\\1.jpg','猫咪','萌萌的'),(17,'catimages\\2.jpg','猫咪','帅猫的世界'),(18,'catimages\\3.jpg','猫咪','帅猫的世界'),(19,'catimages\\4.jpg','猫咪','帅猫的世界'),(20,'catimages\\5.jpg','猫咪','淘气的猫咪'),(21,'catimages\\6.jpg','猫咪','淘气的猫咪'),(22,'catimages\\7.jpg','猫咪','淘气的猫咪'),(23,'catimages\\8.jpg','猫咪','淘气的猫咪'),(24,'catimages\\9.jpg','猫咪','淘气的猫咪'),(25,'catimages\\10.jpg','猫咪','淘气的猫咪'),(26,'catimages\\11.jpg','猫咪','萌萌的'),(27,'catimages\\12.jpg','猫咪','萌萌的'),(28,'catimages\\13.jpg','猫咪','萌萌的'),(29,'catimages\\14.jpg','猫咪','萌萌的'),(30,'catimages\\15.jpg','猫咪','萌萌的');

/*Table structure for table `barpresentpicture` */

DROP TABLE IF EXISTS `barpresentpicture`;

CREATE TABLE `barpresentpicture` (
  `id` int(11) NOT NULL auto_increment,
  `username` char(20) NOT NULL default '',
  `picture` char(20) NOT NULL default '',
  `time` char(20) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `barpresentpicture` */

insert  into `barpresentpicture`(`id`,`username`,`picture`,`time`) values (1,'333','images\\22.jpg','2016-09-27 20:11:50'),(2,'333','images\\1.jpg','2016-10-15 16:13:34'),(3,'333','images\\2.jpg','2016-10-15 16:17:33'),(4,'333','images\\1.jpg','2016-10-15 16:27:04');

/*Table structure for table `buycar` */

DROP TABLE IF EXISTS `buycar`;

CREATE TABLE `buycar` (
  `id` int(11) NOT NULL auto_increment,
  `userid` int(11) NOT NULL,
  `goodid` int(11) NOT NULL,
  `goodcount` int(11) NOT NULL,
  `goodpicture` char(20) NOT NULL,
  `goodprice` float NOT NULL,
  `goodtype` char(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `buycar` */

insert  into `buycar`(`id`,`userid`,`goodid`,`goodcount`,`goodpicture`,`goodprice`,`goodtype`) values (1,1,1,2,'images\\60.jpg',2,'狗粮'),(2,1,4,2,'images\\63.jpg',50,'狗粮'),(4,1,10,2,'images\\69.jpg',34,'猫粮'),(5,1,9,1,'images\\68.jpg',423,'猫粮'),(6,1,8,1,'images\\67.jpg',32,'猫粮'),(7,1,3,1,'images\\62.jpg',44,'狗粮');

/*Table structure for table `comments` */

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `id` int(11) NOT NULL auto_increment,
  `titleid` int(11) NOT NULL,
  `username` char(20) NOT NULL,
  `contexts` char(200) NOT NULL,
  `time` char(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `comments` */

insert  into `comments`(`id`,`titleid`,`username`,`contexts`,`time`) values (1,1,'333','很好','2016'),(2,1,'666','好可爱','2016'),(3,2,'888','恩恩','2015'),(4,1,'333','大师傅\r\n发\r\n\r\n','2016-09-24 16:56:02'),(5,1,'333','\r\n\r\n\r\n发广东省','2016-09-24 17:50:30'),(6,2,'333','\r\n奋斗终生\r\n\r\n','2016-09-24 17:55:40'),(7,3,'333','大师赛的\r\n\r\n\r\n','2016-09-24 21:10:08'),(8,4,'333','大事发生啥地方\r\n\r\n\r\n','2016-09-24 21:12:12'),(9,3,'333','\r\n大师法第三方\r\n\r\n','2016-09-27 13:34:18'),(10,3,'333','\r\n阿萨德刚水电费\r\n\r\n','2016-09-27 13:34:29'),(11,1,'333','大放送发大水发到付\r\n\r\n\r\n','2016-10-15 11:22:57'),(12,1,'555','反正是打发点','2016'),(13,1,'555','大事发生','2016'),(14,1,'555','第三方桑','2016'),(15,1,'555','打算发挥好态度好','2016'),(16,2,'333','打分卡了剪短发了','2016'),(17,2,'555','阿萨德发达','2016');

/*Table structure for table `contexts` */

DROP TABLE IF EXISTS `contexts`;

CREATE TABLE `contexts` (
  `id` int(11) NOT NULL auto_increment,
  `titleid` int(11) NOT NULL,
  `context` char(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `contexts` */

insert  into `contexts`(`id`,`titleid`,`context`) values (1,1,'“一只、两只、三只……十四只!”前日下午，在福州西二环的一家宠物医院里，医生们露出了笑容，一只拉布拉多犬生下了十四只小狗。'),(2,2,'剧情：居民抱怨生活污水破坏祠堂前的池塘，封堵排污口；市政服务中心说居民投诉管道堵塞污水臭大街，要疏通。'),(3,3,'可爱的猫咪'),(4,4,'饿了的小狗'),(5,5,'1．将吃的放在几处明显地方，然后牵爱犬到附近，并逐步靠近吃的。当狗表现出想吃时，马上严厉发出“非”的口令，并猛拉牵引带予以制止。当停止捡食后，应给予抚摸以示鼓励。然后继续带狗去另一个放吃的地方，采取同样方法训练。'),(6,6,'如果您的狗狗已经没有意识了，那么它伸直它的颈部，打开狗狗的口腔，取出最里面的残留物，轻轻地向前拉出舌头。对面部扁平的狗狗而言，这样做是很重要的，因为舌头可能会影响狗狗的呼吸。'),(7,7,'不要以为自制就一定可靠便宜，没有专业的营养师指导，长期的临床试验，自制的宠物粮有可能导致营养不良。超重也是导致高额兽医账单的原因之一，不要被宝贝胖胖的可爱身躯欺骗了！'),(8,8,'气质尊贵的波斯猫因为外型优雅美丽，是历久不衰的人气猫咪品种。而波斯猫和一般猫咪不太一样，它们的运动神经不太发达，比起爬高高或追来追去，它们会宁愿睡觉！但是不运动就容易会有过胖的问题，肥胖会带来许多健康上的不良影响，所以完全不运动是不行的！不过，波斯猫并不像其他猫咪的身手那么灵活，如果太过激烈的运动反而可能会让它们受伤！因此如何让它们动得安全又健康，就是波斯猫奴们的一大课题了！'),(9,9,'波斯猫的个性很温吞悠哉，有些甚至可以睡上一整天也无所谓。再加上它们的运动神经比较不发达，太过激烈的动作很可能会使得自己受伤，所以它们不太愿意激烈地跑跳；最后一个原因是它们的长毛，因为身上的披毛非常保暖，波斯猫比一般猫咪更容易发热，而一运动身上会更热，它们自然而然变得不太爱动。'),(10,10,'狗狗在开心的时候会用全身来表达，眼神明亮、摇尾巴，有些狗狗甚至在主人回家时用全身扭来扭去或跳来跳去以表达欣喜之情！但有时候这行为太过热情可能导致进门的人或是狗狗本身受伤，因此基本的服从训练能够减少暴冲所造成的伤害！'),(11,11,'春季变暖，狗狗发出阵阵浓浓的体味，令人犹如置身动物园，自己都快受不了了，更何况是来访的亲朋好友。狗狗的异味与细菌有关，狗狗的皮肤产生异味，最常见的是葡萄球菌、敏感症、激素问题、内分泌失调等引起的，此外如果皮肤干痒的话，狗狗会因很痒而乱抓皮肤，抓伤了则会令皮肤更易受到细菌感染，而产生异味。还有一点，狗狗的口水其实亦是臭味的催化剂，当它常常用舌头舔皮肤，唾液混和细菌及尘埃，慢慢积聚在皮肤内，臭味便会散'),(12,12,'天气越来越热了，人们的着装也慢慢的变的肉隐肉现了，狗狗们也退掉了厚厚的毛发“轻装上阵”了。在这温暖的天气里，到处充斥着花香、草香。那臭臭的味道是哪里飘出来的呢？啊~原来是狗狗在作祟啊。这样偶尔冒出些不和谐音符也是正常的事。因此，各种小秘密都隐藏不住的节气里，家长快点行动起来，别让狗狗的体味破坏气氛哟~当您在给狗狗洗完澡之后，或是两次清洁间，除臭剂都是消除臭味的好帮手。一般居家使用的除臭剂，依照形式'),(13,13,'1.小狗的食物：狗粮刚到家的小狗，您尽可能选择小狗在我家时候吃的狗粮。过几天以后，可以再逐渐换粮食。并逐渐增加饲喂量。具体可以参考每种狗粮后面的食量表，您可以根据您的经济条件，选取各个档次的狗粮，关于狗粮的介绍和评价，网络上有不少，您也可以参考下。'),(14,14,'澳洲梅铎大学野生动物学家佛莱明说：“这种偏见会对动物保护产生潜在的影响，要是忽略这些被认为是丑的动物，将会对生态造成很大的影响。”'),(15,15,'最早，德国牧羊犬在德国山地被用于牧羊工作。在1880年，德国人将其作为军用犬。1919年，英国养犬俱乐部认可了该品种，在一战末期，德牧在军事活动中的英勇表现在世界范围内都备受青睐。'),(16,16,'现在，终于有一种测试可以让你知道你家狗子的智商到底多高（低）啦！和人类一样，狗狗的智商也是可以通过测试来衡量的（汪不测！不是说好了无论如何都要做彼此的天使吗！）。研究人员采用了不同的方法测试了68只边境牧羊犬的智力程度，测试内容包括认路；寻找食物；听从人类的手势指令（反正不是大家能在家里自行判断的测试方法）。结果发现，如果狗狗在其中一个测试上做得好，也趋向于做好其他的测试并且以更高的准确度完成全部'),(17,17,'CPF宠博会经过近年来的精心培育，经受住了市场考验，无论是其专业性，还是展会效果，都得到了业内一致认可。在不断巩固品牌的同时，创造性的采用展会全国联动方式，除每年一届以华南为中心的春季广州展外，还增加了华中地区的武汉展，以及西部地区的重庆展，每场展会的亮相，都使行业人士为之沸腾，CPF不断的尝试创新，不断的挑战新的市场，在宠物行业初步发展阶段，成为各优秀宠物品牌亮相的必不可少的平台！“全国展会”联'),(18,18,'展会对于推动行业发展，有着非常重要的作用和意义。而宠物医疗目前正处于发展阶段，全国各地的兽医师会议也为规范动物医疗方面，做出了巨大的贡献。宠物医疗行业的快速发展的同时，“多元化产品+宠物医院”的垂直业务模式也逐渐开始崛起。以宠物医院为核心的服务模式打开局面，实现后期药品销售和兽医服务的双重盈利增长；各地宠物医院数量不断的增加，服务及医疗技术水平也在不断提升，宠物医院在于对医疗设备及用品方面的采购也'),(19,19,'RedDog红狗，一直专注于动物药品及营养品的探索、开发和生产。旗下产品包括生物药品、营养制品及宠物必备的消费产品，不仅通过了美国FDA和FFDCA标准，亦符合欧洲EMEAB标准。销售网络遍布全球，深受宠物主的喜爱，在中国各大宠物医院里也收获了良好口碑。'),(20,20,'　英格兰沃里克大学研究指出，在衣食无忧的当下，由于精神生活和信任危机的缺乏，宠物对于人类的依恋和忠实给人们带来了爆棚的满足感，毛茸茸的小动物会起到平衡人心绪的作用，宠物现在已然成为了人类亲密的朋友，更是为人与人之间的接触增加了许多机会，让交往变得愉快和融洽。因此，宠物在人们生活中扮演的角色越来越重要，大家对于宠物也越来越看重，一旦宠物走失，很多人都会像失去家人一样，费心费力地苦苦寻找。'),(21,21,'宠爸宠妈知道吗？牙周疾病是犬猫面临的第一大疾病！超过3岁的犬猫有80%患有牙周病，而牙周病会造成口臭、牙垢、疼痛、肿胀和掉牙，也会影响心脏、肝脏、肾脏等功能，在宠物体内形成胆结石、肾结石或摄护腺结石。宠物口腔健康，直接影响到TA的整个身体健康。'),(22,17,'宠爸宠妈知道吗？牙周疾病是犬猫面临的第一大疾病！超过3岁的犬猫有80%患有牙周病，而牙周病会造成口臭、牙垢、疼痛、肿胀和掉牙，也会影响心脏、肝脏、肾脏等功能，在宠物体内形成胆结石、肾结石或摄护腺结石。宠物口腔健康，直接影响到TA的整个身体健康。'),(23,25,'巴哥犬是极其聪明伶俐的狗狗，它们总是会给主人们带来很多的安慰，而我们在饲养巴哥犬的时候，也能够感受到巴哥犬的快乐。最初选购巴哥犬的时候，每个人都没有经验，但是有些经验是需要积累的，没有人天生就会选购巴哥犬，巴哥犬在购买中应该持有自己的原则，不能别人说好就好，别人说不好就是不好，这对于巴哥犬来说绝对是一种伤害与影响。'),(24,26,'　有的人经常问，为什么自己养的兔子生育了好几次，但小兔子都没有办法养活，不知道究竟是什么原因?'),(25,27,'　　严重的耳螨不仅危害猫咪的身体健康，还会使猫咪身体发出异味，让主人不敢接近它。当猫咪患有耳螨时，主人应该想办法彻底治愈它的疾病。让它重新拥有健康的身体，能得到家人的抚摸和搂抱。'),(26,28,'　每位父母都对孩子寄托无比高的希望，同样每位主人对宠物狗寄托了希望，都希望自己能够训练出一只非常优秀的狗狗，所以想要让宠物狗变得更加的优秀，那么主人们就从它小的时候就开始对宠物狗进行训练。主人着重掌握训练的方法与技巧。'),(27,29,'　每位父母都对孩子寄托无比高的希望，同样每位主人对宠物狗寄托了希望，都希望自己能够训练出一只非常优秀的狗狗，所以想要让宠物狗变得更加的优秀，那么主人们就从它小的时候就开始对宠物狗进行训练。主人着重掌握训练的方法与技巧。');

/*Table structure for table `everyqunzhu` */

DROP TABLE IF EXISTS `everyqunzhu`;

CREATE TABLE `everyqunzhu` (
  `id` int(11) NOT NULL auto_increment,
  `qunzhuid` int(11) NOT NULL,
  `name` char(20) NOT NULL,
  `picture` char(20) NOT NULL,
  `time` char(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `everyqunzhu` */

insert  into `everyqunzhu`(`id`,`qunzhuid`,`name`,`picture`,`time`) values (1,1,'333','images\\21.jpg','2016'),(2,2,'555','images\\header3.jpg','2016'),(3,1,'999','images\\22.jpg','2016'),(4,1,'大大','images\\22.jpg','2016-09-28 14:34:09'),(5,2,'琪琪','images\\header3.jpg','2016-09-28 14:41:59'),(6,2,'333','images\\21.jpg','2016-09-28 15:05:17'),(7,1,'琪琪','images\\header3.jpg','2016-09-28 15:08:04'),(8,1,'aaa','images\\header3.jpg','2016-09-28 22:07:12');

/*Table structure for table `good` */

DROP TABLE IF EXISTS `good`;

CREATE TABLE `good` (
  `id` int(11) NOT NULL auto_increment,
  `goodname` char(20) NOT NULL,
  `goodtype` char(20) NOT NULL,
  `goodprice` float NOT NULL,
  `goodintroduce` char(200) NOT NULL default '',
  `goodcount` int(11) NOT NULL,
  `goodpicture` char(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `good` */

insert  into `good`(`id`,`goodname`,`goodtype`,`goodprice`,`goodintroduce`,`goodcount`,`goodpicture`) values (1,'外星狗专用','狗粮',14,'适合狗狗',994,'images\\60.jpg'),(2,'领家狗粮','狗粮',60,'有助狗狗笑话',22000,'images\\61.jpg'),(3,'小智牌','狗粮',44,'适合狗狗',312,'images\\62.jpg'),(4,'明明牌','狗粮',50,'适合狗狗',228,'images\\63.jpg'),(5,'万万牌','狗粮',89,'适合狗狗',42,'images\\64.jpg'),(6,'撒娇克劳福德','猫粮',434,'适合猫猫',425,'images\\65.jpg'),(7,'阿斯蒂芬','猫粮',131,'适合狗狗',23,'images\\66.jpg'),(8,'福克斯的是','猫粮',32,'适合猫猫',331,'images\\67.jpg'),(9,'撒的发生的风格','猫粮',423,'适合猫猫',234561,'images\\68.jpg'),(10,'更健康了','猫粮',34,'适合猫猫',648,'images\\69.jpg'),(11,'盎司方','猫粮',2342,'适合猫猫',45,'images\\63.jpg');

/*Table structure for table `goodcomments` */

DROP TABLE IF EXISTS `goodcomments`;

CREATE TABLE `goodcomments` (
  `id` int(11) NOT NULL auto_increment,
  `username` char(20) NOT NULL,
  `date` char(20) NOT NULL,
  `comment` char(200) NOT NULL,
  `goodid` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `goodcomments` */

insert  into `goodcomments`(`id`,`username`,`date`,`comment`,`goodid`) values (1,'555','2016','adsf',1),(2,'555','2016','家福乐',1),(3,'333','2016-09-25 21:19:56','\r\n\r\n大师傅',1),(5,'333','2016-09-25 21:23:02','\r\n\r\n大师傅给大哥',1),(6,'333','2016-09-26 10:29:23','\r\n\r\nfadsf',9),(7,'333','2016-09-26 10:31:40','\r\n\r\n的发生的风格',10),(8,'333','2016','dasfdasfasf',1),(9,'','','',0);

/*Table structure for table `guser` */

DROP TABLE IF EXISTS `guser`;

CREATE TABLE `guser` (
  `id` int(11) NOT NULL auto_increment,
  `username` char(20) default NULL,
  `passeord` char(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `guser` */

/*Table structure for table `hspcomments` */

DROP TABLE IF EXISTS `hspcomments`;

CREATE TABLE `hspcomments` (
  `id` int(11) NOT NULL auto_increment,
  `titleid` int(11) NOT NULL,
  `username` char(20) NOT NULL,
  `contexts` char(200) NOT NULL,
  `time` char(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `hspcomments` */

insert  into `hspcomments`(`id`,`titleid`,`username`,`contexts`,`time`) values (1,1,'333','卡了双方的解放了','2016'),(2,1,'333','爱的粉丝哈大发了','2016'),(3,2,'333','爱上对方考虑哈都放假了','2016'),(4,1,'333','法第三方','2016'),(5,1,'333','的萨芬撒','2016'),(6,1,'333','法第三方','2016'),(7,1,'333','法第三方','2016'),(8,1,'333','法第三方','2016'),(9,1,'333','法第三方','2016'),(10,1,'333','法第三方','2016'),(11,1,'333','法第三方','2016'),(12,1,'333','法第三方','2016'),(13,1,'333','法第三方','2016'),(14,1,'333','法第三方','2016'),(15,3,'333',' \r\n \r\n 打发\r\n','2016-10-16 20:47:09'),(16,1,'333',' \r\n \r\n \r\n 发送方','2016-10-16 20:59:08'),(17,1,'333',' \r\n \r\n \r\n 阿士大夫','2016-10-16 20:59:41'),(18,1,'333',' \r\n \r\n \r\n 真实的方法','2016-10-16 21:04:35'),(19,3,'333',' \r\n \r\n \r\n 的说法的','2016-10-16 21:08:18');

/*Table structure for table `hsphuifu` */

DROP TABLE IF EXISTS `hsphuifu`;

CREATE TABLE `hsphuifu` (
  `id` int(11) NOT NULL auto_increment,
  `hspcommentid` int(11) NOT NULL,
  `comment` char(200) NOT NULL,
  `username` char(20) NOT NULL,
  `userpicture` char(20) NOT NULL,
  `time` char(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `hsphuifu` */

insert  into `hsphuifu`(`id`,`hspcommentid`,`comment`,`username`,`userpicture`,`time`) values (1,1,'asdf','555','images\\41.jpg','2016'),(2,2,'大师傅','555','images\\41.jpg','2016'),(3,1,'asdf','555','images\\41.jpg','2016'),(4,1,'asdf','555','images\\41.jpg','2016'),(5,1,'asdf','555','images\\41.jpg','2016'),(6,1,'asdf','555','images\\41.jpg','2016'),(7,1,'asdf','555','images\\41.jpg','2016'),(8,1,'asdf','555','images\\41.jpg','2016'),(9,1,'asdf','555','images\\41.jpg','2016'),(10,1,'asdf','555','images\\41.jpg','2016'),(11,1,'asdf','555','images\\41.jpg','2016'),(12,1,'asdf','555','images\\41.jpg','2016'),(13,0,'','','',''),(14,1,'  埃尔多发','333','images2.jpg','2016-10-16 22:07:40'),(15,3,'  大师法第三方','333','images2.jpg','2016-10-16 22:08:38'),(16,2,'  股份的施工方','333','images2.jpg','2016-10-16 22:09:31'),(17,4,'  发vcszd11','333','images2.jpg','2016-10-16 22:10:16');

/*Table structure for table `hsppicture` */

DROP TABLE IF EXISTS `hsppicture`;

CREATE TABLE `hsppicture` (
  `id` int(11) NOT NULL auto_increment,
  `picture` char(20) NOT NULL,
  `titleid` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `hsppicture` */

insert  into `hsppicture`(`id`,`picture`,`titleid`) values (1,'images\\61.jpg',1),(2,'images\\62.jpg',1),(3,'images\\63.jpg',2);

/*Table structure for table `huifu` */

DROP TABLE IF EXISTS `huifu`;

CREATE TABLE `huifu` (
  `id` int(11) NOT NULL auto_increment,
  `barcommentid` int(11) NOT NULL,
  `comment` char(200) NOT NULL,
  `username` char(20) NOT NULL,
  `userpicture` char(20) NOT NULL,
  `time` char(20) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `huifu` */

insert  into `huifu`(`id`,`barcommentid`,`comment`,`username`,`userpicture`,`time`) values (1,1,'打发时间阿卡丽','555','','2016'),(2,1,'fdasf','555','','2016'),(3,1,'  的说法','333','images\\2.jpg','2016-09-26 20:59:22'),(4,15,'  啊发发','333','images\\2.jpg','2016-09-26 21:06:15'),(5,3,'  发大多数','333','images\\2.jpg','2016-09-26 21:50:27'),(6,9,'  sfdszgdgsgfd','333','images\\2.jpg','2016-09-27 13:17:41'),(7,9,'  发送到发送到','333','images\\2.jpg','2016-09-27 13:26:19'),(8,9,'  注v册朝夕相处','333','images\\2.jpg','2016-09-27 13:26:31'),(9,9,'  加上对方哪是开了房间','333','images\\2.jpg','2016-09-27 13:26:42'),(10,9,'  吃大亏法律课','333','images\\2.jpg','2016-09-27 13:26:55'),(11,9,'  爱上对方发生地方','333','images\\2.jpg','2016-09-27 13:27:00'),(12,9,'  是打发斯蒂芬','333','images\\2.jpg','2016-09-27 13:27:04'),(13,9,'  回归结果可根据客观和','333','images\\2.jpg','2016-09-27 13:27:10'),(14,9,'  那个反复想你想你','333','images\\2.jpg','2016-09-27 13:27:16'),(15,9,'  放大嘎达','333','images\\2.jpg','2016-09-27 13:27:22'),(16,9,'  是打发地方','333','images\\2.jpg','2016-09-27 13:27:28'),(17,9,'  阿斯顿发祝福','333','images\\2.jpg','2016-09-27 13:27:32'),(18,1,'  大事发生的','333','images\\2.jpg','2016-10-15 16:44:59'),(19,16,'  阿飞的飞动手术','333','images\\2.jpg','2016-10-15 17:39:35'),(20,13,'  按地方撒','333','images\\2.jpg','2016-10-15 17:44:32'),(21,18,'  法师打发的范围','333','images\\2.jpg','2016-10-17 11:43:33'),(22,3,'  上的做法','333','images\\2.jpg','2016-10-17 11:46:19'),(23,19,'','aaa','images\\header3.jpg','2016-10-30 19:32:40'),(24,19,'','aaa','images\\header3.jpg','2016-10-30 19:35:11'),(25,1,'','aaa','images\\header3.jpg','2016-10-30 19:35:44'),(26,1,'','aaa','images\\header3.jpg','2016-10-30 19:35:50'),(27,1,'','aaa','images\\header3.jpg','2016-10-30 19:39:43'),(28,20,'adsfa1','aaa','images\\header3.jpg','2016-10-30 19:47:22'),(29,20,'ds啊','aaa','images\\header3.jpg','2016-10-30 19:47:28');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int(11) NOT NULL auto_increment,
  `username` char(20) NOT NULL,
  `useraddress` char(20) NOT NULL,
  `phone` char(20) NOT NULL,
  `goodid` int(11) NOT NULL,
  `goodprice` float NOT NULL,
  `goodcount` int(11) NOT NULL,
  `date` char(20) NOT NULL,
  `ynpay` char(20) NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `orders` */

insert  into `orders`(`id`,`username`,`useraddress`,`phone`,`goodid`,`goodprice`,`goodcount`,`date`,`ynpay`,`userid`) values (1,'333','南昌','13576079999',1,2,4,'2016','是',1),(2,'333','北京','13970905588',1,2,2,'2016-09-25 20:50:40','是',1),(3,'333','北京','13970905588',4,50,2,'2016-09-25 20:50:40','是',1),(4,'333','北京','13970905588',10,34,2,'2016-09-25 20:50:40','是',1),(5,'333','上海','13970905588',1,2,2,'2016-09-26 10:29:05','是',1),(6,'333','上海','13970905588',4,50,2,'2016-09-26 10:29:05','是',1),(7,'333','上海','13970905588',10,34,2,'2016-09-26 10:29:05','是',1),(8,'333','上海','13970905588',9,423,1,'2016-09-26 10:29:05','是',1),(9,'333','上海','13970905588',8,32,1,'2016-09-26 10:29:05','是',1),(10,'333','上海','13970905588',3,44,1,'2016-09-26 10:29:05','是',1);

/*Table structure for table `pictures` */

DROP TABLE IF EXISTS `pictures`;

CREATE TABLE `pictures` (
  `id` int(11) NOT NULL auto_increment,
  `picture` char(50) NOT NULL,
  `titleid` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `pictures` */

insert  into `pictures`(`id`,`picture`,`titleid`) values (1,'images\\1.jpg',1),(2,'images\\2.jpg',1),(3,'images\\61.jpg',2),(4,'images\\63.jpg',3),(5,'images\\64.jpg',4),(6,'images\\61.jpg',5),(7,'images\\61.jpg',6),(8,'images\\2.jpg',7),(9,'images\\1.jpg',8),(10,'images\\63.jpg',9),(11,'images\\63.jpg',10),(12,'images\\61.jpg',11),(13,'images\\64.jpg',12),(14,'images\\2.jpg',13),(15,'images\\63.jpg',14),(16,'images\\1.jpg',15),(17,'images\\64.jpg',16),(18,'',0);

/*Table structure for table `qunzhu` */

DROP TABLE IF EXISTS `qunzhu`;

CREATE TABLE `qunzhu` (
  `id` int(11) NOT NULL auto_increment,
  `count` int(11) NOT NULL,
  `name` char(20) NOT NULL,
  `picture` char(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `qunzhu` */

insert  into `qunzhu`(`id`,`count`,`name`,`picture`) values (1,5,'官群','images\\1.jpg'),(2,3,'萌萌的小猫咪','images\\2.jpg');

/*Table structure for table `qunzhucomment` */

DROP TABLE IF EXISTS `qunzhucomment`;

CREATE TABLE `qunzhucomment` (
  `id` int(11) NOT NULL auto_increment,
  `qunzhuid` int(11) NOT NULL,
  `name` char(20) NOT NULL,
  `picture` char(20) NOT NULL,
  `comment` char(200) NOT NULL,
  `time` char(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `qunzhucomment` */

insert  into `qunzhucomment`(`id`,`qunzhuid`,`name`,`picture`,`comment`,`time`) values (1,1,'333','images\\21.jpg','爱空间裂缝的拉风','2016'),(2,1,'333','images\\21.jpg','发的丧尸的风格','2016'),(3,1,'333','images\\21.jpg','        撒打发点\r\n        \r\n','2016-09-28 21:30:40'),(4,1,'333','images\\21.jpg','        \r\n        大师法第三方\r\n','2016-09-28 21:33:47'),(5,1,'333','images\\21.jpg','       爱上对方的身份 \r\n        \r\n','2016-09-28 21:49:02'),(6,1,'aaa','images\\header3.jpg','        \r\n        asfdfa\r\n','2016-09-28 22:07:29'),(7,1,'aaa','images\\header3.jpg','        撒旦法\r\n        \r\n','2016-09-28 22:12:04');

/*Table structure for table `titlebarcontexts` */

DROP TABLE IF EXISTS `titlebarcontexts`;

CREATE TABLE `titlebarcontexts` (
  `id` int(11) NOT NULL auto_increment,
  `titleid` int(11) NOT NULL,
  `context` char(200) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `titlebarcontexts` */

insert  into `titlebarcontexts`(`id`,`titleid`,`context`) values (1,1,'发是大法官'),(2,2,'我家的小狗'),(3,3,'成都会展'),(4,4,'当最爱的家人遇到难以治愈的病痛，你会选择怎么做？家住巴西新利马的马可斯（Marcos Pimenta）便遇到了这种两难问题，陪伴他许久的德国狼犬奥赛罗（Othello），心脏被诊断出有恶性肿瘤，因为不舍狗狗身体状况每况愈下却又无法可治，马可斯只好忍痛对爱犬施打安乐死药剂，想让它早点脱离病痛，却又因为不舍，一边抚摸着奥赛罗一边哭泣，画面令人十分鼻酸。'),(5,5,'英国《每日邮报》报导，猫咪的主人费希尔表示，当时听到了斯凯的哭叫声，跑出门外看见，一名5岁男童正逃离现场，事后调阅监视器画面，才发现爱猫遭到虐待，气愤地将影片PO上网络。画面中，男童抓起猫咪后，狠狠地摔向灌木丛，又对它挥拳猛踹，折磨约8分钟时间。'),(6,6,'兽医卡莱姆帮狗妈妈连续接生了5只狗，皆为独立胎盘，然而突然发生难产现象，子宫内的不明隆起原以为是羊水过多，把多余液体放掉后，赫然发现两个胚胎在同一个胎盘里，顺利诞生了卡伦(Cullen)及罗穆卢斯(Romulus)这对同卵双胞胎。'),(7,7,'英国有位设计师多米尼克?威尔克斯(Dominic Wilcox)想挑战这个观念，他和不只是宠物保险公司( U.K. insurance company More Than)合作，在8月19日和20日于伦敦举办全球第一个专为狗狗设计的现代艺术展，该展览是为了要配合保险公司正在推广的#PlayMore运动， 鼓励人们每天多花15分钟和宠物玩耍而举办的。'),(8,8,'寮国野生保护中心的脸书纪录了这个救援任务中的种种，我们至少连续驱车58个小时，面对重重恶水淹没的街道、坍塌的道路、滑坡崩解的山区，克难的通过寮国北边的山区，幸运的是萨米证明了它是一个真正坚强和耐心的乘客，大部分的时间它几乎都在睡觉。'),(9,9,'狗狗因严重皮肤病被主人从车窗抛出'),(10,10,'根据泰国《椰子曼谷报》报导，警方后来在池塘中找到死者遗体，推判应该是因为中暑，才会不慎跌入池塘中。库沙的丈夫颂素(Hormnuan Somsuk)表示，妻子与淑女的感情十分亲近，每天都会一起去池塘钓鱼，无法想象这样的悲剧竟然会发生在妻子身上。'),(11,11,'Koa一词在夏威夷语中代表战士之意，属于大肚猪品种的它，被美国当地动保组织PETA发现身上满是被咬的伤痕，倒卧在树丛中近一个礼拜没人发现；因长期处在惊恐中，就连救援人员想帮忙，虚脱无力的Koa反而使尽力气，立刻又躲回树丛中，让志工花了一整晚才好不容易找到它，随即将它送往俄亥俄州立兽医院。'),(12,12,'只见这只白底长毛猫动也不动地接受吹风机的超强风力，脸颊的毛都被吹得高高的，就像长出逗趣的翘胡子。'),(13,13,'中国小动物保护协会爱猫分会（China Care of Cat Association，以下简称CCCA）是中国小动物保护协会在华地区爱猫组织分会。CCCA依托专业的管理知识和完善的繁殖理念，将流浪猫和伴侣猫的管理繁殖工作更加专业化。CCCA将筹建猫类基因数据库，并举办全国性的优生繁育展，传播优生优育理念，同时联合国际爱猫组织成立世界级猫业联合会。'),(14,14,'   2016东北亚宠物水族展简称“NPFair”，是东北地区唯一的宠物行业展会，展会立足沈阳，面向东北亚区域，将于2016年10月22-24日在辽宁工业展览馆盛大召开。目前招展招商工作全面铺开。优越位置销售一空，招展工作紧锣密鼓预定中......'),(15,15,'较2015年，今年的大连宠物文化节，外地参展企业数量明显增多，越来越多的宠物企业看中东北地区市场。此次参与的主粮品牌明显增多，冠能、巴西淘淘、伯纳天纯、珍爱多、赐美乐等数十个主粮品牌齐聚本届大连宠物文化节，国际知名品牌与国内新秀产品共同深度开拓东北市场。爱丽思等国际宠物用品品牌也发力中国宠物文化节，进入加重用户体验新阶段。此外，禾仕嘉、顽皮、路斯三大零食品牌也亮相中国宠物文化节，精准定位中国宠物消'),(16,16,'据了解，这只流浪的黑猫是几个月前出现在动物园，保育员们也给它取了名字，叫做小熊，其实没有人知道它打哪来，也不知道究竟是男生还是女生。'),(17,17,'如果有定时驱虫和打预防针可以把伤害减到最小，但下面所说的处理方式不见得对每只狗狗都有效，主人可能要具体狗狗具体分析，耐心尝试。'),(18,18,'研究报告作者罗斯拉夫．塞尔维尼（Jaroslav Cerveny）指称，野猪天生具有较好的导航能力，如果它们体内真的有着磁性罗盘，将也不足为奇。'),(19,19,'根据研究人员发现当处于低血糖状态时，呼吸当中的异戊二烯浓度，比起未处于低血糖状态时有明显增加。'),(20,20,'想养条可爱的小狗？别着急，请先做个心理测验，看看您属于哪种性格，是否适合养狗狗。'),(21,21,'狗狗高兴的表现除了摇尾巴和爱舔人还有哪些小嗜好呢？');

/*Table structure for table `titlehspcontext` */

DROP TABLE IF EXISTS `titlehspcontext`;

CREATE TABLE `titlehspcontext` (
  `id` int(11) NOT NULL auto_increment,
  `titleid` int(11) NOT NULL,
  `context` char(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `titlehspcontext` */

insert  into `titlehspcontext`(`id`,`titleid`,`context`) values (1,1,'夏天的人们普遍感觉乏力，胃口不好，总想吃点清爽的食品，怕油腻，怕上火，其实狗狗也一样！这时家长会发觉狗变得挑食，脾气也不好，即使看见原本喜爱吃的品牌狗粮、狗罐头，也变得无精打采。'),(2,2,'1.羊奶中的蛋白质结构与母乳相同，含有大量的乳清蛋白，且不含牛奶中可致过敏的异性蛋白。所以羊奶比其他奶制品更易消化吸收，不会引起胃部不适、腹泻等乳制品过敏症状发生，是任何体质的人都可以接受的乳制品。'),(3,0,'');

/*Table structure for table `titles` */

DROP TABLE IF EXISTS `titles`;

CREATE TABLE `titles` (
  `id` int(11) NOT NULL auto_increment,
  `userid` int(11) default NULL,
  `type` char(100) default NULL,
  `time` char(50) default NULL,
  `title` char(100) default NULL,
  `readtimes` int(11) default NULL,
  `picture` char(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `titles` */

insert  into `titles`(`id`,`userid`,`type`,`time`,`title`,`readtimes`,`picture`) values (1,1,'最新资讯','2016','小狗狗生仔仔',2,''),(2,1,'最新资讯','2016','猫猫捉老鼠',7,NULL),(3,1,'萌宠故事会','2016','可爱的猫咪',4,'images\\41.jpg'),(4,1,'萌宠故事会','2016','饿了的小狗狗',8,'images\\103.jpg'),(5,1,'最新资讯','2016','训练狗狗学会拒食 让出行更加安全',8,NULL),(6,1,'最新资讯','2016','狗狗受伤严重如何为它检查伤势？',5,NULL),(7,1,'最新资讯','2016','一个铲屎官要怎样科学的省钱？',6,NULL),(8,1,'最新资讯','2016','什么样的运动适合懒波斯？',4,NULL),(9,1,'最新资讯','2016','为什么叫狗狗“毛孩子”？',8,NULL),(10,1,'最新资讯','2016','汪星人高兴了什么样？',7,NULL),(11,1,'萌宠故事会','2016','狗狗身上异味重 你闻着醉了吗？',9,'images\\109.jpg'),(12,1,'萌宠故事会','2016','让室内养狗变得香香哒',9,'images\\104.jpg'),(13,1,'萌宠故事会','2016','狗狗到新家你要做哪些准备？',9,'images\\105.jpg'),(14,1,'萌宠故事会','2016','研究证明丑的动物容易绝迹',9,'images\\106.jpg'),(15,1,'萌宠故事会','2016','德牧羊犬 传说中的全能犬种！',9,'images\\107.jpg'),(16,1,'萌宠故事会','2016','狗测智商 你家狗狗是聪明鬼吗？',9,'images\\108.jpg'),(17,1,'宠物咨询','2016','2017第4届中国（广州）国际宠物产业博览会',89,''),(18,1,'宠物咨询','2016','2017中国（广州）国际小动物医疗设备及用品展',NULL,NULL),(19,1,'宠物咨询','2016','RedDog红狗来华建厂并设立亚洲唯一的临床营养研究院',NULL,NULL),(20,1,'宠物咨询','2016','高科技定位防宠物走失 PetCare四重定位显威力',NULL,NULL),(21,1,'宠物咨询','2016','“齿”关重大，博乐丹让宠物轻松远离牙周病！',NULL,NULL),(22,1,'宠物咨询','2016',NULL,NULL,NULL),(23,1,'宠物咨询','2016',NULL,NULL,NULL),(24,1,'宠物咨询','2016',NULL,NULL,NULL),(25,1,'推荐Top','2016','买巴哥犬应该了解的依据',NULL,NULL),(26,NULL,'推荐Top','2016','初生小兔为什么难活',NULL,NULL),(27,NULL,'推荐Top','2016','彻底治愈猫咪耳螨的方法',NULL,NULL),(28,NULL,'推荐Top','2016','训练宠物狗有哪些好方法',NULL,NULL),(29,NULL,'推荐Top','2016','宠物狗吃了人类的感冒药会怎么样',NULL,NULL),(30,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `titlesbar` */

DROP TABLE IF EXISTS `titlesbar`;

CREATE TABLE `titlesbar` (
  `id` int(11) NOT NULL auto_increment,
  `userid` int(11) NOT NULL,
  `type` char(30) NOT NULL,
  `time` char(30) NOT NULL,
  `title` char(30) NOT NULL,
  `readtimes` int(11) NOT NULL,
  `picture` char(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `titlesbar` */

insert  into `titlesbar`(`id`,`userid`,`type`,`time`,`title`,`readtimes`,`picture`) values (1,1,'论宠之道','2016','小狗的眼睛',2,''),(2,1,'宠迷之家','2016','小狗打滚',3,''),(3,1,'发布活动','2016','宠物展览',3,''),(4,1,'论宠之道','2016','最后一吻：主人艰难抉择下的安乐死',3,''),(5,1,'论宠之道','2016','5岁男孩抓邻居猫咪重摔狠踹被曝光',0,''),(6,1,'论宠之道','2016','南非诞生同卵双胞胎小狼犬',0,''),(7,1,'论宠之道','2016','全球第一个给狗看的展览诞生',0,''),(8,1,'宠迷之家','2016','熊宝宝黑市获救 看到树林不敢置信',0,''),(9,1,'宠迷之家','2016','狗狗因严重皮肤病被主人从车窗抛出',0,''),(10,1,'宠迷之家','2016','女主人钓鱼溺水 忠犬狂奔求助',0,''),(11,1,'宠迷之家','2016','让室内养狗变得香香哒',0,''),(12,1,'发布活动','2016','打造华中宠物市场第一展---春有广州、秋有武汉',0,''),(13,1,'发布活动','2016','中国小动物保护协会爱猫分会-成立大会通知',0,''),(14,1,'发布活动','2016','东北亚宠物水族展户外广告强势进驻产业集群！',0,''),(15,1,'发布活动','2016','重新定义宠物概念 迎接宠物文化新时代',0,''),(16,1,'精品','2016','流浪猫闯进大黑熊宿舍成为好朋友',0,''),(17,1,'精品','2016','总有些狗 对屎念念不忘',0,''),(18,1,'精品','2016','研究发现野猪天生具有“磁性罗盘”',0,''),(19,1,'精品','2016','狗狗嗅觉竟然可以问出低血糖！',0,''),(20,1,'精品','2016','心理测试测性格看你适不适合养狗',0,''),(21,1,'精品','2016','汪星人高兴了什么样？',0,''),(22,1,'精品','2016','为什么狗狗总后腿缩着走路？',0,'');

/*Table structure for table `titleshsp` */

DROP TABLE IF EXISTS `titleshsp`;

CREATE TABLE `titleshsp` (
  `id` int(11) NOT NULL auto_increment,
  `userid` int(11) NOT NULL,
  `time` char(20) NOT NULL,
  `title` char(200) NOT NULL,
  `readtimes` int(11) NOT NULL,
  `picture` char(40) NOT NULL,
  `type` char(40) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `titleshsp` */

insert  into `titleshsp`(`id`,`userid`,`time`,`title`,`readtimes`,`picture`,`type`) values (1,1,'2016','狗狗为什么不能吃剩饭剩菜',90,'images\\41.jpg','狗狗饲养 饮食'),(2,1,'2016','狗狗对住的地方的要求',14,'images\\61.jpg','居住 狗狗饲养'),(3,1,'2016','猫咪也要刷牙',10,'images\\62.jpg','猫咪 口腔护理'),(4,1,'2016','狗狗呼吸急促',12,'images\\63.jpg','狗狗养护 急救处理'),(5,1,'2016','狗狗得了白内障',58,'images\\64.jpg','狗狗疾病 白内障'),(6,1,'2016','狗狗到底喝什么牛奶',333,'images\\65.jpg','狗狗饲养 饮食');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `username` char(20) NOT NULL,
  `userpassword` char(20) NOT NULL,
  `picture` char(30) NOT NULL,
  `phone` char(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`userpassword`,`picture`,`phone`) values (1,'333','333333','images\\2.jpg','13970905588'),(2,'555','666666','images\\header3.jpg','555555'),(3,'琪琪','999999','images\\header3.jpg','13590908888'),(4,'大大','888888','images\\22.jpg','13788885555'),(5,'aaa','123456','images\\header3.jpg','13800008888');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
