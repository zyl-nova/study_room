-- MySQL dump 10.13  Distrib 8.0.41, for Linux (x86_64)
--
-- Host: localhost    Database: study_room
-- ------------------------------------------------------
-- Server version	8.0.41-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg'),(7,'APIKey','ihML0NfEM0jokUAuBD9tbYtW'),(8,'SecretKey','WK2bRUFf2uNe3oEoQXULpi8Y37aCvFdD');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '标题',
  `introduction` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '简介',
  `picture` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '图片',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='公告资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (81,'2025-03-31 00:30:35','有梦想，就要努力去实现','不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。','upload/news_picture1.jpg','<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?</p><p>你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。</p><p>真正有行动力的人不需要别人告诉他如何做，因为他已经在做了。就算碰到问题，他也会自己想办法，自己动手去解决或者主动寻求可以帮助他的人，而不是等着别人为自己解决问题。</p><p>首先要学习独立思考。花一点时间想一下自己喜欢什么，梦想是什么，不要别人说想环游世界，你就说你的梦想是环游世界。</p><p>很多人说现实束缚了自己，其实在这个世界上，我们一直都可以有很多选择，生活的决定权也—直都在自己手上，只是我们缺乏行动力而已。</p><p>如果你觉得安于现状是你想要的，那选择安于现状就会让你幸福和满足;如果你不甘平庸，选择一条改变、进取和奋斗的道路，在这个追求的过程中，你也一样会感到快乐。所谓的成功，即是按照自己想要的生活方式生活。最糟糕的状态，莫过于当你想要选择一条不甘平庸、改变、进取和奋斗的道路时，却以一种安于现状的方式生活，最后抱怨自己没有得到想要的人生。</p><p>因为喜欢，你不是在苦苦坚持，也因为喜欢，你愿意投入时间、精力，长久以往，获得成功就是自然而然的事情。</p>'),(82,'2025-03-31 00:30:35','又是一年毕业季','又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。','upload/news_picture2.jpg','<p>又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。</p><p>过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。一直都是晚会的忠实参与者，无论是台前还是幕后，忽然间，角色转变，那种感觉确实难以用语言表达。</p><p>	过去的三年，总是默默地期盼着这个好雨时节，因为这时候，会有灿烂的阳光，会有满目的百花争艳，会有香甜的冰激凌，这是个毕业的季节，当时不经世事的我们会殷切地期待学校那一大堆的活动，期待穿上绚丽的演出服或者礼仪服，站在大礼堂镁光灯下尽情挥洒我们的澎拜的激情。</p><p>百感交集，隔岸观火与身临其境的感觉竟是如此不同。从来没想过一场晚会送走的是我们自己的时候会是怎样的感情，毕业就真的意味着结束吗?倔强的我们不愿意承认，谢谢学弟学妹们慷慨的将这次的主题定为“我们在这里”。我知道，这可能是他们对我们这些过来人的尊敬和施舍。</p><p>没有为这场晚会排练、奔波，没有为班级、学生会、文学院出点力，还真有点不习惯，百般无奈中，用“工作忙”个万能的借口来搪塞自己，欺骗别人。其实自己心里明白，那只是在逃避，只是不愿面对繁华落幕后的萧条和落寞。大四了，大家各奔东西，想凑齐班上的人真的是难上加难，敏燕从越南回来，刚落地就匆匆回了学校，那么恋家的人也启程回来了，睿睿学姐也是从家赶来跟我们团圆。大家—如既往的寒暄、打趣、调侃对方，似乎一切又回到了当初的单纯美好。</p><p>看着舞台上活泼可爱的学弟学妹们，如同一群机灵的小精灵，清澈的眼神，稚嫩的肢体，轻快地步伐，用他们那热情洋溢的舞姿渲染着在场的每一个人，我知道，我不应该羡慕嫉妒他们，不应该顾自怜惜逝去的青春，不应该感叹夕阳无限好，曾经，我们也拥有过，曾经，我们也年轻过，曾经，我们也灿烂过。我深深地告诉自己，人生的每个阶段都是美的，年轻有年轻的活力，成熟也有成熟的魅力。多—份稳重、淡然、优雅，也是漫漫时光掠影遗留下的.珍贵赏赐。</p>'),(83,'2025-03-31 00:30:35','挫折路上，坚持常在心间','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture3.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>'),(84,'2025-03-31 00:30:35','挫折是另一个生命的开端','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。','upload/news_picture4.jpg','<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>'),(85,'2025-03-31 00:30:35','你要去相信，没有到不了的明天','有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。','upload/news_picture5.jpg','<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>	不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>	有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>'),(86,'2025-03-31 00:30:35','离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture6.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(87,'2025-03-31 00:30:35','Leave未必是一种痛苦','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture7.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(88,'2025-03-31 00:30:35','坚持才会成功','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture8.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qiandaoxinxi`
--

DROP TABLE IF EXISTS `qiandaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qiandaoxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '名称',
  `qiandaoshijian` datetime DEFAULT NULL COMMENT '签到时间',
  `qiandaobeizhu` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '签到备注',
  `xuehao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '学号',
  `shouji` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '手机',
  `banji` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '班级',
  `shhf` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1745493959027 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='签到信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qiandaoxinxi`
--

LOCK TABLES `qiandaoxinxi` WRITE;
/*!40000 ALTER TABLE `qiandaoxinxi` DISABLE KEYS */;
INSERT INTO `qiandaoxinxi` VALUES (1744442786767,'2025-04-12 07:26:26','大自习室','2025-04-12 15:26:22','','226001617','18067193356','22计科2班',''),(1744442887547,'2025-04-12 07:28:07','大自习室','2025-04-12 15:28:05','','226001621','18067193356','22计科2班',''),(1744799312557,'2025-04-16 10:28:32','大自习室','2025-04-16 18:28:27','','226001617','18067193356','22计科2班',''),(1744799325568,'2025-04-16 10:28:45','大自习室','2025-04-16 18:28:43','','226001617','18067193356','22计科2班',''),(1744855719215,'2025-04-17 02:08:38','多媒体教室','2025-04-17 10:08:26','','216001939','12345678910','21计科1班',''),(1744858829295,'2025-04-17 03:00:28','大自习室','2025-04-17 10:58:44','','226001621','18067193356','22计科2班',''),(1744858993254,'2025-04-17 03:03:12','大自习室','2025-04-17 11:03:08','','226001617','18067193356','22计科2班',''),(1744859085154,'2025-04-17 03:04:44','大自习室','2025-04-17 11:04:42','','226001621','18067193356','22计科2班',''),(1744859267133,'2025-04-17 03:07:46','图书馆','2025-04-17 11:07:36','','226001621','18067193356','22计科2班',''),(1744859397374,'2025-04-17 03:09:57','图书馆','2025-04-17 11:09:54','','226001621','18067193356','22计科2班',''),(1744859469683,'2025-04-17 03:11:09','图书馆','2025-04-17 11:11:04','','226001621','18067193356','22计科2班',''),(1744868049360,'2025-04-17 05:34:08','大自习室','2025-04-17 13:34:02','','226001621','18067193356','22计科2班',''),(1744868769242,'2025-04-17 05:46:09','大自习室','2025-04-17 13:46:04','','226001621','18067193356','22计科2班',''),(1745493959026,'2025-04-24 11:25:58','图书馆','2025-04-24 19:23:59','','226001621','18067193356','22计科2班','');
/*!40000 ALTER TABLE `qiandaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qiantuixinxi`
--

DROP TABLE IF EXISTS `qiantuixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qiantuixinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '名称',
  `qiantuishijian` datetime DEFAULT NULL COMMENT '签退时间',
  `zixishiid` int DEFAULT NULL COMMENT '自习室序号',
  `zuowei` int DEFAULT NULL COMMENT '座位',
  `qiantuibeizhu` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '签退备注',
  `xuehao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '学号',
  `shouji` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '手机',
  `banji` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '班级',
  `shhf` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '回复内容',
  `zixishichang` double DEFAULT NULL COMMENT '自习时长',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1745493959027 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='签到信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qiantuixinxi`
--

LOCK TABLES `qiantuixinxi` WRITE;
/*!40000 ALTER TABLE `qiantuixinxi` DISABLE KEYS */;
INSERT INTO `qiantuixinxi` VALUES (1744442786767,'2025-04-12 07:29:27','大自习室','2025-04-12 15:29:25',21,22,'','226001617','18067193356','22计科2班','',30.5),(1744442887547,'2025-04-12 07:28:12','大自习室','2025-04-12 15:28:10',21,1,'','226001621','18067193356','22计科2班','',0.8),(1744799325568,'2025-04-16 10:28:52','大自习室','2025-04-16 18:28:50',21,1,'','226001617','18067193356','22计科2班','',1.2),(1744855719215,'2025-04-17 02:08:51','多媒体教室','2025-04-17 10:08:47',24,15,'','216001939','12345678910','21计科1班','',3.5),(1744858993254,'2025-04-17 05:25:46','大自习室','2025-04-17 13:25:37',21,21,'签退','226001617','18067193356','22计科2班','',1424.8),(1744859469683,'2025-04-17 03:13:52','图书馆','2025-04-17 11:13:43',22,6,'','226001621','18067193356','22计科2班','',26.5),(1744868049360,'2025-04-17 05:34:33','大自习室','2025-04-17 13:34:28',21,9,'','226001621','18067193356','22计科2班','',4.3),(1744868769242,'2025-04-17 05:46:32','大自习室','2025-04-17 13:46:29',21,18,'','226001621','18067193356','22计科2班','',4.2),(1745493959026,'2025-04-24 11:28:11','图书馆','2025-04-24 19:27:24',22,6,'','226001621','18067193356','22计科2班','',34.2);
/*!40000 ALTER TABLE `qiantuixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quxiaoyuyue`
--

DROP TABLE IF EXISTS `quxiaoyuyue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quxiaoyuyue` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuedanhao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '预约单号',
  `mingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '名称',
  `tupian` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '图片',
  `yuyueshijian` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '预约时间',
  `quxiaoshijian` datetime DEFAULT NULL COMMENT '取消时间',
  `quxiaoyuanyin` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '取消原因',
  `zixishiid` int DEFAULT NULL COMMENT '自习室序号',
  `zuowei` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '座位',
  `xuehao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '手机',
  `crossuserid` bigint DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint DEFAULT NULL COMMENT '跨表主键id',
  `shhf` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '审核回复',
  `userid` bigint DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1745493556627 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='取消预约';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quxiaoyuyue`
--

LOCK TABLES `quxiaoyuyue` WRITE;
/*!40000 ALTER TABLE `quxiaoyuyue` DISABLE KEYS */;
INSERT INTO `quxiaoyuyue` VALUES (1744442775672,'2025-04-12 07:26:15','1744442747685','大自习室','upload/zixishi_tupian1.jpg','2025-04-12 15:25:49','2025-04-12 15:26:13','',21,'1','226001617','djc','18067193356',16,1744442751640,'',NULL),(1744866992202,'2025-04-17 05:16:31','1744866928792','宿舍楼自习室','upload/zixishi_tupian8.jpg','2025-04-13 13:15:31','2025-04-17 13:16:30','',28,'45','226001682','zyc','12345678910',17,1744866936614,'',NULL),(1744868113644,'2025-04-17 05:35:12','1744868091822','北区2号楼','upload/zixishi_tupian5.jpg','2025-04-17 13:34:56','2025-04-17 13:35:09','',25,'8','226001621','ftz','18067193356',18,1744868098321,'',NULL),(1745493556626,'2025-04-24 11:19:16','1745493254753','图书馆','upload/zixishi_tupian2.jpg','2025-04-18 00:00:00','2025-04-24 19:18:43','有事冲突了',22,'6','226001621','ftz','18067193356',18,1745493258270,'',NULL);
/*!40000 ALTER TABLE `quxiaoyuyue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seats_21`
--

DROP TABLE IF EXISTS `seats_21`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seats_21` (
  `id` int NOT NULL,
  `status` int DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seats_21`
--

LOCK TABLES `seats_21` WRITE;
/*!40000 ALTER TABLE `seats_21` DISABLE KEYS */;
INSERT INTO `seats_21` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1),(81,1),(82,1),(83,1),(84,1),(85,1),(86,1),(87,1),(88,1),(89,1),(90,1),(91,1),(92,1),(93,1),(94,1),(95,1),(96,1),(97,1),(98,1),(99,1),(100,1);
/*!40000 ALTER TABLE `seats_21` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seats_22`
--

DROP TABLE IF EXISTS `seats_22`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seats_22` (
  `id` int NOT NULL,
  `status` int DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seats_22`
--

LOCK TABLES `seats_22` WRITE;
/*!40000 ALTER TABLE `seats_22` DISABLE KEYS */;
INSERT INTO `seats_22` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,0),(8,0),(9,0),(10,1),(11,1),(12,1),(13,1),(14,1),(15,0),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,0),(46,1),(47,1),(48,1),(49,1),(50,0),(51,1),(52,1),(53,1),(54,1),(55,1),(56,0),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,0),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1),(81,1),(82,1),(83,1),(84,1),(85,1),(86,1),(87,1),(88,1),(89,1),(90,1),(91,1),(92,1),(93,1),(94,1),(95,1),(96,1),(97,1),(98,1),(99,1),(100,1);
/*!40000 ALTER TABLE `seats_22` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seats_23`
--

DROP TABLE IF EXISTS `seats_23`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seats_23` (
  `id` int NOT NULL,
  `status` int DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seats_23`
--

LOCK TABLES `seats_23` WRITE;
/*!40000 ALTER TABLE `seats_23` DISABLE KEYS */;
INSERT INTO `seats_23` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,0),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1);
/*!40000 ALTER TABLE `seats_23` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seats_24`
--

DROP TABLE IF EXISTS `seats_24`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seats_24` (
  `id` int NOT NULL,
  `status` int DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seats_24`
--

LOCK TABLES `seats_24` WRITE;
/*!40000 ALTER TABLE `seats_24` DISABLE KEYS */;
INSERT INTO `seats_24` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1);
/*!40000 ALTER TABLE `seats_24` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seats_25`
--

DROP TABLE IF EXISTS `seats_25`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seats_25` (
  `id` int NOT NULL,
  `status` int DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seats_25`
--

LOCK TABLES `seats_25` WRITE;
/*!40000 ALTER TABLE `seats_25` DISABLE KEYS */;
INSERT INTO `seats_25` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1);
/*!40000 ALTER TABLE `seats_25` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seats_26`
--

DROP TABLE IF EXISTS `seats_26`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seats_26` (
  `id` int NOT NULL,
  `status` int DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seats_26`
--

LOCK TABLES `seats_26` WRITE;
/*!40000 ALTER TABLE `seats_26` DISABLE KEYS */;
INSERT INTO `seats_26` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1),(81,1),(82,1),(83,1),(84,1),(85,1),(86,1),(87,1),(88,1),(89,1),(90,1);
/*!40000 ALTER TABLE `seats_26` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seats_27`
--

DROP TABLE IF EXISTS `seats_27`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seats_27` (
  `id` int NOT NULL,
  `status` int DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seats_27`
--

LOCK TABLES `seats_27` WRITE;
/*!40000 ALTER TABLE `seats_27` DISABLE KEYS */;
INSERT INTO `seats_27` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1),(81,1),(82,1),(83,1),(84,1),(85,1),(86,1),(87,1),(88,1),(89,1),(90,1),(91,1),(92,1),(93,1),(94,1),(95,1),(96,1),(97,1),(98,1),(99,1),(100,1),(101,1),(102,1),(103,1),(104,1),(105,1),(106,0),(107,1),(108,1),(109,1),(110,1),(111,1),(112,1),(113,1),(114,1),(115,1),(116,1),(117,1),(118,1),(119,1),(120,1),(121,1),(122,1),(123,1),(124,1),(125,1),(126,1),(127,1),(128,1),(129,1),(130,1),(131,1),(132,1),(133,1),(134,1),(135,1),(136,1),(137,1),(138,1),(139,1),(140,1),(141,1),(142,1),(143,1),(144,1),(145,1),(146,1),(147,1),(148,1),(149,1),(150,1);
/*!40000 ALTER TABLE `seats_27` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seats_28`
--

DROP TABLE IF EXISTS `seats_28`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seats_28` (
  `id` int NOT NULL,
  `status` int DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seats_28`
--

LOCK TABLES `seats_28` WRITE;
/*!40000 ALTER TABLE `seats_28` DISABLE KEYS */;
INSERT INTO `seats_28` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1),(81,1),(82,1),(83,1),(84,1),(85,1),(86,1),(87,1),(88,1),(89,1),(90,1),(91,1),(92,1),(93,1),(94,1),(95,1),(96,1),(97,1),(98,1),(99,1),(100,1);
/*!40000 ALTER TABLE `seats_28` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '表名',
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '名称',
  `picture` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '图片',
  `type` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1745494860776 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1743159939726,'2025-03-28 11:05:39',1743085507549,21,'zixishi','名称1','upload/zixishi_tupian1.jpg','1',NULL,NULL),(1743159952733,'2025-03-28 11:05:51',1743085507549,21,'zixishi','名称1','upload/zixishi_tupian1.jpg','1',NULL,NULL),(1743650978022,'2025-04-03 03:29:37',17,21,'zixishi','自习室1','upload/zixishi_tupian1.jpg','1',NULL,NULL),(1743651084416,'2025-04-03 03:31:23',17,22,'zixishi','图书馆','upload/zixishi_tupian2.jpg','1',NULL,NULL),(1743651086107,'2025-04-03 03:31:25',16,21,'zixishi','大自习室','upload/zixishi_tupian1.jpg','1',NULL,NULL),(1745494860775,'2025-04-24 11:40:59',18,24,'zixishi','多媒体教室','upload/zixishi_tupian4.jpg','1',NULL,NULL);
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'admin','users','管理员','xmmlfstwor9csk7xnphocqq47xy9amm4','2025-03-27 13:16:56','2025-04-21 13:12:00'),(2,1743085507549,'123','xuesheng','学生','xcu52vsqkx91w9z7qtgdalqd6009hmpw','2025-03-27 14:25:14','2025-04-17 03:54:45'),(3,17,'226001682','xuesheng','学生','fttz3gnvpu2vf1kxohv5cv5twkwf4kva','2025-04-03 03:29:12','2025-04-17 06:13:47'),(4,16,'226001617','xuesheng','学生','lpcfszejz5myrt1obf7mvkojidoou2ib','2025-04-03 03:29:36','2025-04-17 06:48:37'),(5,18,'226001621','xuesheng','学生','wkbz7woj7781xtiiczti9eqmgc6g3ypa','2025-04-03 05:21:05','2025-04-24 12:11:39'),(6,15,'216001939','xuesheng','学生','esiz2hcwzaa1uu5scqa1lgpvzj4z159p','2025-04-17 01:37:52','2025-04-17 02:43:12');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'DJC','123','管理员','2023-03-08 02:25:42');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `xuesheng` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '学号',
  `mima` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `xingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '性别',
  `touxiang` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '头像',
  `shouji` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '手机',
  `banji` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '班级',
  `zixishichang` double DEFAULT NULL COMMENT '自习时长',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `xuehao` (`xuehao`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1743085507550 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (15,'2023-03-08 02:25:42','216001939','123456','yyq','男','upload/xuesheng_touxiang5.jpg','12345678910','21计科1班',103.5),(16,'2023-03-08 02:25:42','226001617','123456','djc','男','upload/xuesheng_touxiang6.jpg','18067193356','22计科2班',1756.5),(17,'2023-03-08 02:25:42','226001682','123456','zyc','女','upload/xuesheng_touxiang7.jpg','12345678910','22计科2班',120),(18,'2023-03-08 02:25:42','226001621','123456','ftz','女','upload/xuesheng_touxiang8.jpg','18067193356','22计科2班',190),(1743085507549,'2025-03-27 14:25:07','123','123','djc','',NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuyuexinxi`
--

DROP TABLE IF EXISTS `yuyuexinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yuyuexinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zixishiid` int DEFAULT NULL COMMENT '自习室编号',
  `yuyuedanhao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '预约单号',
  `mingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '名称',
  `tupian` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '图片',
  `zuowei` int DEFAULT NULL COMMENT '座位',
  `qiandaozhuangtai` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '签到状态',
  `qiantuizhuangtai` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '签退状态',
  `yuyueshijian` datetime NOT NULL COMMENT '预约时间',
  `beizhu` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '备注',
  `xuehao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '手机',
  `shhf` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '回复',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `yuyuedanhao` (`yuyuedanhao`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1745493804133 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='预约信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuyuexinxi`
--

LOCK TABLES `yuyuexinxi` WRITE;
/*!40000 ALTER TABLE `yuyuexinxi` DISABLE KEYS */;
INSERT INTO `yuyuexinxi` VALUES (1744442764225,'2025-04-12 07:26:03',21,'1744442760909','大自习室','upload/zixishi_tupian1.jpg',22,'已签到','已签退','2025-04-12 15:26:02','','226001617','djc','18067193356',NULL),(1744442877353,'2025-04-12 07:27:57',21,'1744442874786','大自习室','upload/zixishi_tupian1.jpg',1,'已签到','已签退','2025-04-12 15:27:56','','226001621','ftz','18067193356',NULL),(1744799289601,'2025-04-16 10:28:08',21,'1744799285356','大自习室','upload/zixishi_tupian1.jpg',1,'已签到','已签退','2025-04-16 18:28:07','hhhh','226001617','djc','18067193356',NULL),(1744853908199,'2025-04-17 01:38:27',21,'1744853894531','大自习室','upload/zixishi_tupian1.jpg',24,'未签到','未签退','2025-04-17 09:38:23','','216001939','yyq','12345678910',NULL),(1744854205423,'2025-04-17 01:43:25',22,'1744854200062','图书馆','upload/zixishi_tupian2.jpg',9,'未签到','未签退','2025-04-17 09:43:23','','216001939','yyq','12345678910',NULL),(1744854217443,'2025-04-17 01:43:36',22,'1744854211158','图书馆','upload/zixishi_tupian2.jpg',56,'未签到','未签退','2025-04-17 09:43:33','','216001939','yyq','12345678910',NULL),(1744855677607,'2025-04-17 02:07:56',24,'1744855670072','多媒体教室','upload/zixishi_tupian4.jpg',15,'已签到','已签退','2025-04-17 10:07:55','','216001939','yyq','12345678910',NULL),(1744858501211,'2025-04-17 02:55:00',21,'1744858493940','大自习室','upload/zixishi_tupian1.jpg',4,'未签到','未签退','2025-04-17 00:00:00','','123','djc','',NULL),(1744858710942,'2025-04-17 02:58:30',21,'1744858703518','大自习室','upload/zixishi_tupian1.jpg',3,'已签到','未签退','2025-04-16 00:00:00','','226001621','ftz','18067193356',NULL),(1744858977160,'2025-04-17 03:02:56',21,'1744858972450','大自习室','upload/zixishi_tupian1.jpg',21,'已签到','已签退','2025-04-17 11:02:56','','226001617','djc','18067193356',NULL),(1744859204010,'2025-04-17 03:06:43',22,'1744859199593','图书馆','upload/zixishi_tupian2.jpg',15,'已签到','未签退','2025-04-17 11:06:43','','226001621','ftz','18067193356',NULL),(1744859354622,'2025-04-17 03:09:14',22,'1744859350136','图书馆','upload/zixishi_tupian2.jpg',7,'已签到','未签退','2025-04-17 11:09:13','','226001621','ftz','18067193356',NULL),(1744859437208,'2025-04-17 03:10:36',22,'1744859433367','图书馆','upload/zixishi_tupian2.jpg',6,'已签到','已签退','2025-04-17 11:10:36','','226001621','ftz','18067193356',NULL),(1744866847192,'2025-04-17 05:14:06',21,'1744866838692','大自习室','upload/zixishi_tupian1.jpg',7,'未签到','未签退','2025-04-16 13:14:02','','226001682','zyc','12345678910',NULL),(1744866860624,'2025-04-17 05:14:19',21,'1744866857338','大自习室','upload/zixishi_tupian1.jpg',36,'未签到','未签退','2025-04-15 00:00:00','','226001682','zyc','12345678910',NULL),(1744866887371,'2025-04-17 05:14:46',22,'1744866882951','图书馆','upload/zixishi_tupian2.jpg',66,'未签到','未签退','2025-04-15 00:00:00','','226001682','zyc','12345678910',NULL),(1744866895191,'2025-04-17 05:14:54',22,'1744866890887','图书馆','upload/zixishi_tupian2.jpg',50,'未签到','未签退','2025-04-18 00:00:00','','226001682','zyc','12345678910',NULL),(1744866916782,'2025-04-17 05:15:16',22,'1744866913079','图书馆','upload/zixishi_tupian2.jpg',45,'未签到','未签退','2025-04-14 00:00:00','','226001682','zyc','12345678910',NULL),(1744866936614,'2025-04-17 05:15:35',28,'1744866928792','宿舍楼自习室','upload/zixishi_tupian8.jpg',45,'未签到','未签退','2025-04-13 13:15:31','','226001682','zyc','12345678910',NULL),(1744866951492,'2025-04-17 05:15:50',27,'1744866946630','s2s','upload/zixishi_tupian7.jpg',106,'未签到','未签退','2025-04-16 00:00:00','','226001682','zyc','12345678910',NULL),(1744866967115,'2025-04-17 05:16:06',23,'1744866958686','北区三号楼','upload/zixishi_tupian3.jpg',15,'未签到','未签退','2025-04-13 00:00:00','','226001682','zyc','12345678910',NULL),(1744868027398,'2025-04-17 05:33:47',21,'1744868015561','大自习室','upload/zixishi_tupian1.jpg',9,'已签到','已签退','2025-04-17 00:00:00','','226001621','ftz','18067193356',NULL),(1744868098321,'2025-04-17 05:34:58',25,'1744868091822','北区2号楼','upload/zixishi_tupian5.jpg',8,'未签到','未签退','2025-04-17 13:34:56','','226001621','ftz','18067193356',NULL),(1744868741509,'2025-04-17 05:45:40',21,'1744868735569','大自习室','upload/zixishi_tupian1.jpg',18,'已签到','已签退','2025-04-17 13:45:38','','226001621','ftz','18067193356',NULL),(1745493220429,'2025-04-24 11:13:40',22,'1745493215699','图书馆','upload/zixishi_tupian2.jpg',8,'未签到','未签退','2025-04-18 00:00:00','','226001621','ftz','18067193356',NULL),(1745493258270,'2025-04-24 11:14:17',22,'1745493254753','图书馆','upload/zixishi_tupian2.jpg',6,'未签到','未签退','2025-04-18 00:00:00','','226001621','ftz','18067193356',NULL),(1745493804132,'2025-04-24 11:23:23',22,'1745493799916','图书馆','upload/zixishi_tupian2.jpg',6,'已签到','已签退','2025-04-24 19:23:23','','226001621','ftz','18067193356',NULL);
/*!40000 ALTER TABLE `yuyuexinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zixishi`
--

DROP TABLE IF EXISTS `zixishi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zixishi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '名称',
  `tupian` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '图片',
  `guimo` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '规模',
  `zuowei` int DEFAULT NULL COMMENT '座位',
  `weizhi` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '位置',
  `sheshi` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '设施',
  `keyueshijian` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '可约时间',
  `shifouyouke` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '是否有课',
  `xiangqing` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '详情',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='自习室';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zixishi`
--

LOCK TABLES `zixishi` WRITE;
/*!40000 ALTER TABLE `zixishi` DISABLE KEYS */;
INSERT INTO `zixishi` VALUES (21,'2023-03-08 02:25:42','大自习室','upload/zixishi_tupian1.jpg,upload/zixishi_tupian2.jpg,upload/zixishi_tupian3.jpg','大型',100,'1-203','设施1','可约时间1','否','<p>大型自习室</p>'),(22,'2023-03-08 02:25:42','图书馆','upload/zixishi_tupian2.jpg,upload/zixishi_tupian3.jpg,upload/zixishi_tupian4.jpg','大型',100,'图书馆','设施2','每天8：00至21：00，周一闭馆','是','<p>图书馆</p>'),(23,'2023-03-08 02:25:42','北区三号楼','upload/zixishi_tupian3.jpg,upload/zixishi_tupian4.jpg,upload/zixishi_tupian5.jpg','大型',40,'北区三号楼','设施3','每天8：00至21：00','是','<p>常常有课</p>'),(24,'2023-03-08 02:25:42','多媒体教室','upload/zixishi_tupian4.jpg,upload/zixishi_tupian5.jpg,upload/zixishi_tupian6.jpg','小型',20,'多媒体教室','设施4','每天8：00至21：00','是','<p>预约人数较多，请提前预约</p>'),(25,'2023-03-08 02:25:42','北区2号楼','upload/zixishi_tupian5.jpg,upload/zixishi_tupian6.jpg,upload/zixishi_tupian7.jpg','中型',80,'北区2号楼','设施5','每天8：00至21：00','是','<p>常常有课，请注意课表</p>'),(26,'2023-03-08 02:25:42','北区机房','upload/zixishi_tupian6.jpg,upload/zixishi_tupian7.jpg,upload/zixishi_tupian8.jpg','大型',90,'北区机房','设施6','每天8：00至18：00','是','<p>请注意可预约时间</p>'),(27,'2023-03-08 02:25:42','s2s','upload/zixishi_tupian7.jpg,upload/zixishi_tupian8.jpg,upload/zixishi_tupian9.jpg','大型',150,'s2s','设施7','每天6：00至23：00','否','<p>桌子较小</p>'),(28,'2023-03-08 02:25:42','宿舍楼自习室','upload/zixishi_tupian8.jpg,upload/zixishi_tupian9.jpg,upload/zixishi_tupian10.jpg','大型',100,'宿舍楼自习室','设施8','每天8：00至0：00','否','<p>请保持安静</p>');
/*!40000 ALTER TABLE `zixishi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-27  9:07:55
