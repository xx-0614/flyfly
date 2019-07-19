 SET NAMES UTF8;
 DROP  DATABASE IF EXISTS flyfly;
 CREATE DATABASE flyfly CHARSET=UTF8;
 USE flyfly;
 


 #创建首页轮播图数据表
 CREATE TABLE fly_index_carousel(
    lid INT PRIMARY KEY AUTO_INCREMENT,
    img VARCHAR(128)    
);
INSERT INTO fly_index_carousel VALUES(NULL,'img/index/banner1.jpg'); 
INSERT INTO fly_index_carousel VALUES(NULL,'img/index/271736095684.jpg');
INSERT INTO fly_index_carousel VALUES(NULL,'img/index/091400381481.jpg');



 #创建城市数据的表
 CREATE TABLE fly_index_city(
    cid INT PRIMARY KEY AUTO_INCREMENT,
    img VARCHAR(128),
    title VARCHAR(64),
    details VARCHAR(128),
    href VARCHAR(128)
);
#向数据表中插入数据
INSERT INTO fly_index_city VALUES(NULL,'img/index/picq3.jpg',"三亚/Sanya",'FEELING TRAVEL PHOTO',NULL);
INSERT INTO fly_index_city VALUES(NULL,'img/index/picq4.jpg',"丽江/Lijiang",'FEELING TRAVEL PHOTO',NULL);
INSERT INTO fly_index_city VALUES(NULL,'img/index/picq5.jpg',"大理/Dali",'FEELING TRAVEL PHOTO',NULL);
INSERT INTO fly_index_city VALUES(NULL,'img/index/picq6.jpg',"青海/Qinghai",'FEELING TRAVEL PHOTO',NULL);
INSERT INTO fly_index_city VALUES(NULL,'img/index/picq7.jpg',"香格里拉/ShangriLa",'FEELING TRAVEL PHOTO',NULL);
INSERT INTO fly_index_city VALUES(NULL,'img/index/picq8.jpg',"塞班岛/Saipan",'FEELING TRAVEL PHOTO',NULL);



#创建六周年活动表
DROP  DATABASE IF EXISTS fly_week_year;
CREATE TABLE fly_week_year(
    yid INT PRIMARY KEY AUTO_INCREMENT,
    img VARCHAR(128),
    title VARCHAR(64),
    details VARCHAR(128),
    href VARCHAR(128)
);
INSERT INTO fly_week_year VALUES(NULL,'img/index/091405531324.jpg','六周年店庆活动5866','付2000享12288元',NULL);
INSERT INTO fly_week_year VALUES(NULL,'img/index/091412146639.jpg','六周年店庆活动6866','付2000享12288元',NULL);
INSERT INTO fly_week_year VALUES(NULL,'img/index/091413422549.jpg','六周年店庆活动8866','付2000享12288元',NULL);


#轮播2
#创建情绪微电影表
DROP  DATABASE IF EXISTS fly_microfilm;
CREATE TABLE fly_microfilm(
    mid INT PRIMARY KEY AUTO_INCREMENT,
    img VARCHAR(128)
);
INSERT INTO fly_microfilm VALUES(NULL,'img/index/211435017512.jpg');
INSERT INTO fly_microfilm VALUES(NULL,'img/index/211445188656.jpg');
INSERT INTO fly_microfilm VALUES(NULL,'img/index/062014229804.png');



#创建环游表
DROP  DATABASE IF EXISTS fly_travel;
CREATE TABLE fly_travel(
    tid INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(64),
    img VARCHAR(128),
    subtitle VARCHAR(64),
    dates VARCHAR(64)
);
INSERT INTO fly_travel VALUES(NULL,'青海','img/index/131802449133.jpg',"ins晴朗",'2019-06-27');
INSERT INTO fly_travel VALUES(NULL,'丽江','img/index/131513554850.jpg',"ins晴朗",'2019-06-27');
INSERT INTO fly_travel VALUES(NULL,'丽江','img/index/131507219575.jpg',"ins遇见",'2019-06-29');
INSERT INTO fly_travel VALUES(NULL,'丽江','img/index/131139002772.jpg',"ins田园牧马",'2019-06-27');
INSERT INTO fly_travel VALUES(NULL,'丽江','img/index/131249261223.jpg',"ins婚礼",'2019-06-27');
INSERT INTO fly_travel VALUES(NULL,'三亚','img/index/291348483756.jpg',"游艇旅行",'2019-06-29');
INSERT INTO fly_travel VALUES(NULL,'三亚','img/index/131727072108.jpg',"洱海边",'2019-06-13');
INSERT INTO fly_travel VALUES(NULL,'丽江','img/index/131710184314.jpg',"环海公路",'2019-06-27');
INSERT INTO fly_travel VALUES(NULL,'三亚','img/index/131614392445.jpg',"ins雪山探险",'2019-06-27');
INSERT INTO fly_travel VALUES(NULL,'三亚','img/index/291336153264.jpg',"告白气球",'2019-06-29');
INSERT INTO fly_travel VALUES(NULL,'丽江','img/index/131716414304.jpg',"山顶露营",'2019-06-29');
INSERT INTO fly_travel VALUES(NULL,'三亚','img/index/141224357613.jpg',"边走边爱",'2019-06-27');
INSERT INTO fly_travel VALUES(NULL,'三亚','img/index/291324127446.jpg',"海上冲浪",'2019-06-29');
INSERT INTO fly_travel VALUES(NULL,'三亚','img/index/131607014483.jpg',"ins牧马",'2019-06-27');
INSERT INTO fly_travel VALUES(NULL,'三亚','img/index/141217534146.jpg',"邂逅茶卡",'2019-06-27');
INSERT INTO fly_travel VALUES(NULL,'三亚','img/index/131808183003.jpg',"晴云山",'2019-06-27');
INSERT INTO fly_travel VALUES(NULL,'三亚','img/index/131802449133.jpg',"西伯利亚海鸥",'2019-06-27');
INSERT INTO fly_travel VALUES(NULL,'三亚','img/index/141201146851.jpg',"情定大草原",'2019-06-27');
INSERT INTO fly_travel VALUES(NULL,'三亚','img/index/131756346475.jpg',"羊驼",'2019-06-27');
INSERT INTO fly_travel VALUES(NULL,'三亚','img/index/131526432303.jpg',"ins陪你到丽江",'2019-06-13');
INSERT INTO fly_travel VALUES(NULL,'三亚','img/index/131738131832.jpg',"小岛日记",'2019-06-27');
INSERT INTO fly_travel VALUES(NULL,'三亚','img/index/131249261223.jpg',"海上冲浪",'2019-06-29');
INSERT INTO fly_travel VALUES(NULL,'三亚','img/index/131507219575.jpg',"ins牧马",'2019-06-27');
INSERT INTO fly_travel VALUES(NULL,'丽江','img/index/131727072108.jpg',"ins清晨",'2019-06-27');
INSERT INTO fly_travel VALUES(NULL,'丽江','img/index/131710184314.jpg',"环海公路",'2019-06-27');
INSERT INTO fly_travel VALUES(NULL,'丽江','img/index/111312466853.jpg',"余生",'2019-06-13');
INSERT INTO fly_travel VALUES(NULL,'丽江','img/index/131534308947.jpg',"ins绚烂",'2019-06-27');
INSERT INTO fly_travel VALUES(NULL,'丽江','img/index/131521103820.jpg',"ins简单爱",'2019-06-29');
INSERT INTO fly_travel VALUES(NULL,'丽江','img/index/131513554850.jpg',"ins晴朗",'2019-06-27');
INSERT INTO fly_travel VALUES(NULL,'丽江','img/index/131507219575.jpg',"ins遇见",'2019-06-29');
INSERT INTO fly_travel VALUES(NULL,'丽江','img/index/131249261223.jpg',"ins婚礼",'2019-06-27');
INSERT INTO fly_travel VALUES(NULL,'丽江','img/index/131242582882.jpg',"ins世界纪元",'2019-06-27');
INSERT INTO fly_travel VALUES(NULL,'丽江','img/index/131236069909.jpg',"ins世外桃源",'2019-06-27');
INSERT INTO fly_travel VALUES(NULL,'青海','img/index/131229425045.jpg',"ins清晨",'2019-06-27');
INSERT INTO fly_travel VALUES(NULL,'青海','img/index/131201161212.jpg',"ins旅行",'2019-06-27');
INSERT INTO fly_travel VALUES(NULL,'青海','img/index/131139002772.jpg',"ins田园牧马",'2019-06-27');
INSERT INTO fly_travel VALUES(NULL,'青海','img/index/131415571695.jpg',"情人湖边",'2019-06-13');
INSERT INTO fly_travel VALUES(NULL,'青海','img/index/131513554850.jpg',"ins晴朗",'2019-06-27');
INSERT INTO fly_travel VALUES(NULL,'青海','img/index/131507219575.jpg',"ins遇见",'2019-06-29');


INSERT INTO fly_travel VALUES(NULL,'三亚','img/index/131513554850.jpg',"ins晴朗",'2019-06-27');
INSERT INTO fly_travel VALUES(NULL,'三亚','img/index/131507219575.jpg',"ins遇见",'2019-06-29');
INSERT INTO fly_travel VALUES(NULL,'三亚','img/index/131139002772.jpg',"ins田园牧马",'2019-06-27');
INSERT INTO fly_travel VALUES(NULL,'三亚','img/index/131249261223.jpg',"ins婚礼",'2019-06-27');
INSERT INTO fly_travel VALUES(NULL,'丽江','img/index/291348483756.jpg',"游艇旅行",'2019-06-29');
INSERT INTO fly_travel VALUES(NULL,'丽江','img/index/131727072108.jpg',"洱海边",'2019-06-13');
INSERT INTO fly_travel VALUES(NULL,'三亚','img/index/131710184314.jpg',"环海公路",'2019-06-27');
INSERT INTO fly_travel VALUES(NULL,'丽江','img/index/131614392445.jpg',"ins雪山探险",'2019-06-27');
INSERT INTO fly_travel VALUES(NULL,'丽江','img/index/291336153264.jpg',"告白气球",'2019-06-29');
INSERT INTO fly_travel VALUES(NULL,'三亚','img/index/131716414304.jpg',"山顶露营",'2019-06-29');
INSERT INTO fly_travel VALUES(NULL,'丽江','img/index/141224357613.jpg',"边走边爱",'2019-06-27');
INSERT INTO fly_travel VALUES(NULL,'丽江','img/index/291324127446.jpg',"海上冲浪",'2019-06-29');
INSERT INTO fly_travel VALUES(NULL,'丽江','img/index/131607014483.jpg',"ins牧马",'2019-06-27');
INSERT INTO fly_travel VALUES(NULL,'丽江','img/index/141217534146.jpg',"邂逅茶卡",'2019-06-27');
INSERT INTO fly_travel VALUES(NULL,'丽江','img/index/131808183003.jpg',"晴云山",'2019-06-27');
INSERT INTO fly_travel VALUES(NULL,'丽江','img/index/131802449133.jpg',"西伯利亚海鸥",'2019-06-27');
INSERT INTO fly_travel VALUES(NULL,'丽江','img/index/141201146851.jpg',"情定大草原",'2019-06-27');
INSERT INTO fly_travel VALUES(NULL,'丽江','img/index/131756346475.jpg',"羊驼",'2019-06-27');
INSERT INTO fly_travel VALUES(NULL,'丽江','img/index/131526432303.jpg',"ins陪你到丽江",'2019-06-13');
INSERT INTO fly_travel VALUES(NULL,'丽江','img/index/131738131832.jpg',"小岛日记",'2019-06-27');
INSERT INTO fly_travel VALUES(NULL,'丽江','img/index/131249261223.jpg',"海上冲浪",'2019-06-29');
INSERT INTO fly_travel VALUES(NULL,'丽江','img/index/131507219575.jpg',"ins牧马",'2019-06-27');
INSERT INTO fly_travel VALUES(NULL,'三亚','img/index/131727072108.jpg',"ins清晨",'2019-06-27');
INSERT INTO fly_travel VALUES(NULL,'三亚','img/index/131710184314.jpg',"环海公路",'2019-06-27');
INSERT INTO fly_travel VALUES(NULL,'三亚','img/index/111312466853.jpg',"余生",'2019-06-13');
INSERT INTO fly_travel VALUES(NULL,'三亚','img/index/131534308947.jpg',"ins绚烂",'2019-06-27');
INSERT INTO fly_travel VALUES(NULL,'三亚','img/index/131521103820.jpg',"ins简单爱",'2019-06-29');
INSERT INTO fly_travel VALUES(NULL,'三亚','img/index/131513554850.jpg',"ins晴朗",'2019-06-27');
INSERT INTO fly_travel VALUES(NULL,'三亚','img/index/131507219575.jpg',"ins遇见",'2019-06-29');
INSERT INTO fly_travel VALUES(NULL,'三亚','img/index/131249261223.jpg',"ins婚礼",'2019-06-27');
INSERT INTO fly_travel VALUES(NULL,'三亚','img/index/131242582882.jpg',"ins世界纪元",'2019-06-27');
INSERT INTO fly_travel VALUES(NULL,'三亚','img/index/131236069909.jpg',"ins世外桃源",'2019-06-27');




#创建纪爱时光表
DROP  DATABASE IF EXISTS fly_love_times;
CREATE TABLE fly_love_times(
    vid INT PRIMARY KEY AUTO_INCREMENT, 
    title VARCHAR(64),         
    img VARCHAR(128),
    subtitle VARCHAR(64),
    dates  VARCHAR(64)
 );

INSERT INTO fly_love_times VALUES(NULL,'三亚','img/four/292252289182.jpg',"甜蜜蜜",'2019-06-29');
INSERT INTO fly_love_times VALUES(NULL,'三亚','img/four/081214279553.jpg',"蓝色畅想",'2019-07-08');
INSERT INTO fly_love_times VALUES(NULL,'三亚','img/four/071027028426.jpg',"明慧&小霞",'2019-07-07');
INSERT INTO fly_love_times VALUES(NULL,'三亚','img/four/071021029987.jpg',"丽丽&小美",'2019-07-07');
INSERT INTO fly_love_times VALUES(NULL,'三亚','img/four/071013259792.jpg',"文文&小明",'2019-07-07');
INSERT INTO fly_love_times VALUES(NULL,'三亚','img/four/292258357155.jpg',"冰上旋律",'2019-06-29');
INSERT INTO fly_love_times VALUES(NULL,'三亚','img/four/292243548289.jpg',"志文&美怡",'2019-06-29');
INSERT INTO fly_love_times VALUES(NULL,'三亚','img/four/292231216904.jpg',"最好的我们",'2019-06-29');
INSERT INTO fly_love_times VALUES(NULL,'三亚','img/four/292151227904.jpg',"靠近你",'2019-06-29');
INSERT INTO fly_love_times VALUES(NULL,'三亚','img/four/171729441517.jpg',"红色甲壳虫",'2019-06-27');
INSERT INTO fly_love_times VALUES(NULL,'三亚','img/four/171714015524.jpg',"锐锐&书书",'2019-06-27');
INSERT INTO fly_love_times VALUES(NULL,'三亚','img/four/171604157748.jpg',"元辉&红红",'2019-06-27');
INSERT INTO fly_love_times VALUES(NULL,'三亚','img/four/091823021994.jpg',"娟娟&柄江",'2019-07-09');
INSERT INTO fly_love_times VALUES(NULL,'三亚','img/four/091813354358.jpg',"小阳&巧巧",'2019-07-09');
INSERT INTO fly_love_times VALUES(NULL,'三亚','img/four/082243425866.jpg',"小罗&小琼",'2019-07-08');
INSERT INTO fly_love_times VALUES(NULL,'三亚','img/four/082233545272.jpg',"田野",'2019-07-08');
INSERT INTO fly_love_times VALUES(NULL,'三亚','img/four/081316048067.jpg',"温柔的时光",'2019-07-08');
INSERT INTO fly_love_times VALUES(NULL,'三亚','img/four/071027028426.jpg',"明慧&小霞",'2019-07-07');
INSERT INTO fly_love_times VALUES(NULL,'三亚','img/four/071008402536.jpg',"泽彬&瑞瑞",'2019-07-07');
INSERT INTO fly_love_times VALUES(NULL,'三亚','img/four/071001241311.jpg',"晋衔&蕾蕾",'2019-07-07');
INSERT INTO fly_love_times VALUES(NULL,'三亚','img/four/070951364310.jpg',"小徐&鹏鹏",'2019-06-29');
INSERT INTO fly_love_times VALUES(NULL,'三亚','img/four/292237073536.jpg',"雷雷&丽丽",'2019-06-29');
INSERT INTO fly_love_times VALUES(NULL,'三亚','img/four/292225484000.jpg',"小确幸",'2019-06-29');
INSERT INTO fly_love_times VALUES(NULL,'三亚','img/four/292218567085.jpg',"小伴",'2019-06-29');
INSERT INTO fly_love_times VALUES(NULL,'三亚','img/four/292213486619.jpg',"小然&千蕊",'2019-06-29');
INSERT INTO fly_love_times VALUES(NULL,'三亚','img/four/171516448687.jpg',"阿徐&玄玄",'2019-07-07');
INSERT INTO fly_love_times VALUES(NULL,'三亚','img/four/171443311830.jpg',"志尚&希希",'2019-07-07');
INSERT INTO fly_love_times VALUES(NULL,'三亚','img/four/171402573693.jpg',"白色恋歌",'2019-06-29');
INSERT INTO fly_love_times VALUES(NULL,'三亚','img/four/171255189249.jpg',"宁宁&小柳",'2019-06-29');
INSERT INTO fly_love_times VALUES(NULL,'三亚','img/four/180939395516.jpg',"夏日情歌",'2019-06-29');
INSERT INTO fly_love_times VALUES(NULL,'三亚','img/four/161606038623.jpg',"冬冬&小金",'2019-06-29');
INSERT INTO fly_love_times VALUES(NULL,'三亚','img/four/180959483260.jpg',"去露营吧",'2019-06-29');

INSERT INTO fly_love_times VALUES(NULL,'丽江','img/four/292252289182.jpg',"甜蜜蜜",'2019-06-29');
INSERT INTO fly_love_times VALUES(NULL,'丽江','img/four/081214279553.jpg',"蓝色畅想",'2019-07-08');
INSERT INTO fly_love_times VALUES(NULL,'丽江','img/four/071027028426.jpg',"明慧&小霞",'2019-07-07');
INSERT INTO fly_love_times VALUES(NULL,'丽江','img/four/071021029987.jpg',"丽丽&小美",'2019-07-07');
INSERT INTO fly_love_times VALUES(NULL,'丽江','img/four/071013259792.jpg',"文文&小明",'2019-07-07');
INSERT INTO fly_love_times VALUES(NULL,'丽江','img/four/292258357155.jpg',"冰上旋律",'2019-06-29');
INSERT INTO fly_love_times VALUES(NULL,'丽江','img/four/292243548289.jpg',"志文&美怡",'2019-06-29');
INSERT INTO fly_love_times VALUES(NULL,'丽江','img/four/292231216904.jpg',"最好的我们",'2019-06-29');
INSERT INTO fly_love_times VALUES(NULL,'丽江','img/four/292151227904.jpg',"靠近你",'2019-06-29');
INSERT INTO fly_love_times VALUES(NULL,'丽江','img/four/171729441517.jpg',"红色甲壳虫",'2019-06-27');
INSERT INTO fly_love_times VALUES(NULL,'丽江','img/four/171714015524.jpg',"锐锐&书书",'2019-06-27');
INSERT INTO fly_love_times VALUES(NULL,'丽江','img/four/171604157748.jpg',"元辉&红红",'2019-06-27');
INSERT INTO fly_love_times VALUES(NULL,'丽江','img/four/091823021994.jpg',"娟娟&柄江",'2019-07-09');
INSERT INTO fly_love_times VALUES(NULL,'丽江','img/four/091813354358.jpg',"小阳&巧巧",'2019-07-09');
INSERT INTO fly_love_times VALUES(NULL,'丽江','img/four/082243425866.jpg',"小罗&小琼",'2019-07-08');
INSERT INTO fly_love_times VALUES(NULL,'丽江','img/four/082233545272.jpg',"田野",'2019-07-08');
INSERT INTO fly_love_times VALUES(NULL,'丽江','img/four/081316048067.jpg',"温柔的时光",'2019-07-08');
INSERT INTO fly_love_times VALUES(NULL,'丽江','img/four/071027028426.jpg',"明慧&小霞",'2019-07-07');
INSERT INTO fly_love_times VALUES(NULL,'丽江','img/four/071008402536.jpg',"泽彬&瑞瑞",'2019-07-07');
INSERT INTO fly_love_times VALUES(NULL,'丽江','img/four/071001241311.jpg',"晋衔&蕾蕾",'2019-07-07');
INSERT INTO fly_love_times VALUES(NULL,'丽江','img/four/070951364310.jpg',"小徐&鹏鹏",'2019-06-29');
INSERT INTO fly_love_times VALUES(NULL,'丽江','img/four/292237073536.jpg',"雷雷&丽丽",'2019-06-29');
INSERT INTO fly_love_times VALUES(NULL,'丽江','img/four/292225484000.jpg',"小确幸",'2019-06-29');
INSERT INTO fly_love_times VALUES(NULL,'丽江','img/four/292218567085.jpg',"小伴",'2019-06-29');
INSERT INTO fly_love_times VALUES(NULL,'丽江','img/four/292213486619.jpg',"小然&千蕊",'2019-06-29');
INSERT INTO fly_love_times VALUES(NULL,'丽江','img/four/171516448687.jpg',"阿徐&玄玄",'2019-07-07');
INSERT INTO fly_love_times VALUES(NULL,'丽江','img/four/171443311830.jpg',"志尚&希希",'2019-07-07');
INSERT INTO fly_love_times VALUES(NULL,'丽江','img/four/171402573693.jpg',"白色恋歌",'2019-06-29');
INSERT INTO fly_love_times VALUES(NULL,'丽江','img/four/171255189249.jpg',"宁宁&小柳",'2019-06-29');
INSERT INTO fly_love_times VALUES(NULL,'丽江','img/four/180939395516.jpg',"夏日情歌",'2019-06-29');
INSERT INTO fly_love_times VALUES(NULL,'丽江','img/four/161606038623.jpg',"冬冬&小金",'2019-06-29');
INSERT INTO fly_love_times VALUES(NULL,'丽江','img/four/180959483260.jpg',"去露营吧",'2019-06-29');











#创建评论表
DROP  DATABASE IF EXISTS fly_comment;
CREATE TABLE fly_comment(
    clove_id INT PRIMARY KEY AUTO_INCREMENT,
    img VARCHAR(128),
    title VARCHAR(64),
    dates  VARCHAR(64)
);
INSERT INTO fly_comment VALUES(NULL,'img/index/021022115589.jpg',"怎么说呢，这次的婚纱之旅还是挺满意的，首先原片很美，拍出来的效果是我们想要的，其次服务挺让人舒心的。总之先好评吧！接下来坐等相册出来哦。",'2019-07-02');
INSERT INTO fly_comment VALUES(NULL,'img/index/021023375836.jpg',"摄影师人很好，拍照的时候海给我们很多的指导，还有我的化妆师技术很棒，化的很自然，不是失真，朋友们看到都很觉得很棒，以后他们也会去你们家拍照的哈，记得给她们安排跟我一样优秀的，专业的摄影师哦。",'2019-07-02');
INSERT INTO fly_comment VALUES(NULL,'img/index/021027013000.jpg',"最喜欢的夕阳最后终于拍上了，我们的运气还是不错的，当然也要感谢你们，陪我们等夕阳，你们真的很好哦。",'2019-07-02');
INSERT INTO fly_comment VALUES(NULL,'img/index/201741275763.jpg',"拍完看原片的时候就觉的很不错，后来后期修的时候是按我们要的样片的风格修的，本人还比较满意，坐等产品。",'2019-06-27');
INSERT INTO fly_comment VALUES(NULL,'img/index/201743406974.jpg',"我觉的拍照服装很重要啊，就像丽江这边有点民族特色就很好看了，我们就选了一套民族的服饰，摄影师拍出了我们想要的感觉，很感谢的。",'2019-06-27');
INSERT INTO fly_comment VALUES(NULL,'img/index/201745156042.png',"我今年做的最正确的事情就是坚持来旅拍婚纱，觉的运气真的是很好，一路碰到的人都很好，菲林也是一家非常敬业的工作室，拍的照片我们都很满意，景美，人也很漂亮。",'2019-06-27');
INSERT INTO fly_comment VALUES(NULL,'img/index/211503576486.jpeg',"拍的确实非常好，看最后的出片就看到了。。。很满意。",'2019-06-23');
INSERT INTO fly_comment VALUES(NULL,'img/index/211506084187.jpeg',"拍摄的过程很顺利，天气虽然很热很晒，我们也做了防中暑的准备，不过好在拍摄的过程很欢乐，晒就晒吧，反正很快也就白回来了，这次拍摄还是很值的。",'2019-06-23');
INSERT INTO fly_comment VALUES(NULL,'img/index/211508296846.jpeg',"服装很多很新的，化妆师化的妆挺好的，有些不满意的，都修改了，水晶教堂那很有特色，摄影师听了我们的一件，拍的片片符合我的要求，很好的一家工作室。",'2019-06-23');
INSERT INTO fly_comment VALUES(NULL,'img/index/230859077455.jpg',"从接机说起，接机师傅称职，住宿酒店也还不错，拍摄当天太阳很大，很热很晒，摄影师，化妆师和助理都挺辛苦的，从早上7点化妆后出发到海边一直拍摄到晚上的夜景，有水和免费午餐，整体拍摄比较满意，当天晚上还会收。",'2019-06-21');
INSERT INTO fly_comment VALUES(NULL,'img/index/230900595673.jpg',"这次拍摄总体来说还是不错的 服务态度超级好 从接机到最后的拍摄都是热心服务的 摄影师拍摄的超级赞哦 来拍摄所以的费用感觉还是比较透明的。",'2019-06-21');
INSERT INTO fly_comment VALUES(NULL,'img/index/230901475809.jpg',"由于时间紧急，没怎么考虑就选了一个套餐，没想到效果这么好，服务好，人也好。大热天的，全程跟随贴心服务，细心周到，辛苦摄影师大鹏，助理小杨，化妆师海新了，老婆说化妆品都不错。",'2019-06-21');
INSERT INTO fly_comment VALUES(NULL,'img/index/271205398376.jpeg',"性价比真的超级高，住的地方也挺好的，在这里我的感觉就是这家店真的超有心，客服小美女给我发注意事项，还有拍照的前一天就建群与我们沟通了解我们对拍照的一些想法，化妆老师特别的贴心很专业，还有就是摄影老师特。",'2019-06-21');
INSERT INTO fly_comment VALUES(NULL,'img/index/271207136185.jpeg',"提前和婷婷沟通了很久，从陌生到信任，婷婷安排的很好，阿海老师特别有创意，卓子认真负责每个造型都帮我摆弄好久，小助理特别会调节气氛，很愉快，昨天拍摄完今天先给了些片子，挺好看的。",'2019-06-20');
INSERT INTO fly_comment VALUES(NULL,'img/index/271214382673.jpeg',"遇见菲林的服务确实挺好，客服小姐姐也很有耐心，到了店里挑选衣服的小姐姐也很有耐心，摄影师化妆师那些就更不用说了，都挺好的，中途没有任何的隐形消费。",'2019-06-20');
INSERT INTO fly_comment VALUES(NULL,'img/index/211502041246.jpeg',"那种兴奋劲，真的，满意。感谢菲林团队的每一个人，客服小袁耐心讲解，摄影师全程逗我们开心，因为我和我老公都不爱笑。化妆师coco化妆造型都特别棒，还有一个小助理虽然没有二十岁但是特别可爱，一直在说笑开心。",'2019-06-20');







#second
 #所属ins系列表
DROP  DATABASE IF EXISTS fly_in;
CREATE TABLE fly_in(
    iid INT PRIMARY KEY AUTO_INCREMENT,         #标题的id 
    title VARCHAR(64),                          #标题
    img  VARCHAR(128),                          #标题下的图片
    subtitle VARCHAR(64),                       #子标题
    href VARCHAR(128)                           #链接
 );
 #ins生活
 INSERT INTO fly_in VALUES(1,'ins生活','img/second/j-i5.jpg',NULL,NULL);
 INSERT INTO fly_in VALUES(2,'ins生活','img/second/j-i6.jpg',NULL,NULL);
 INSERT INTO fly_in VALUES(3,'ins生活','img/second/j-i7.jpg',NULL,NULL);
 INSERT INTO fly_in VALUES(4,'ins生活','img/second/j-i8.jpg',NULL,NULL);
 INSERT INTO fly_in VALUES(5,'ins生活','img/second/j-i9.jpg',NULL,NULL);
 INSERT INTO fly_in VALUES(6,'ins生活','img/second/j-i10.jpg',NULL,NULL);
 INSERT INTO fly_in VALUES(7,'ins生活','img/second/j-i11.jpg',NULL,NULL);
 INSERT INTO fly_in VALUES(8,'ins生活','img/second/j-i12.jpg',NULL,NULL);
 INSERT INTO fly_in VALUES(9,'ins生活','img/second/j-i13.jpg',NULL,NULL);
 INSERT INTO fly_in VALUES(10,'ins生活','img/second/j-i14.jpg',NULL,NULL);
 INSERT INTO fly_in VALUES(11,'ins生活','img/second/j-i15.jpg',NULL,NULL);
 INSERT INTO fly_in VALUES(12,'ins生活','img/second/j-i16.jpg',NULL,NULL);
 INSERT INTO fly_in VALUES(13,'ins生活','img/second/j-i17.jpg',NULL,NULL);
 INSERT INTO fly_in VALUES(14,'ins生活','img/second/j-i18.jpg',NULL,NULL);
#ins时尚
 INSERT INTO fly_in VALUES(15,'ins时尚','img/second/1562033636893113.jpg',NULL,NULL);
 INSERT INTO fly_in VALUES(16,'ins时尚','img/second/1562033648791229.jpg',NULL,NULL);
 INSERT INTO fly_in VALUES(17,'ins时尚','img/second/1562033659950094.jpg',NULL,NULL);
 INSERT INTO fly_in VALUES(18,'ins时尚','img/second/1562033684563660.jpg',NULL,NULL);
 INSERT INTO fly_in VALUES(19,'ins时尚','img/second/1562033696756472.jpg',NULL,NULL);
 INSERT INTO fly_in VALUES(20,'ins时尚','img/second/1562033706853769.jpg',NULL,NULL);
 INSERT INTO fly_in VALUES(21,'ins时尚','img/second/1562033718868830.jpg',NULL,NULL);
 INSERT INTO fly_in VALUES(22,'ins时尚','img/second/1562033727740724.jpg',NULL,NULL);
 INSERT INTO fly_in VALUES(23,'ins时尚','img/second/1562033738206684.jpg',NULL,NULL);
 INSERT INTO fly_in VALUES(24,'ins时尚','img/second/1562033748620833.jpg',NULL,NULL);
 INSERT INTO fly_in VALUES(25,'ins时尚','img/second/1562033758195958.jpg',NULL,NULL);
 INSERT INTO fly_in VALUES(26,'ins时尚','img/second/1562033767136135.jpg',NULL,NULL);
 INSERT INTO fly_in VALUES(27,'ins时尚','img/second/1562033773121063.jpg',NULL,NULL);
 INSERT INTO fly_in VALUES(28,'ins时尚','img/second/1562033780714261.jpg',NULL,NULL);
#ins优雅 
 INSERT INTO fly_in VALUES(29,'ins优雅','img/second/1561438403724004.jpg',NULL,NULL);
 INSERT INTO fly_in VALUES(30,'ins优雅','img/second/1561438413886290.jpg',NULL,NULL);
 INSERT INTO fly_in VALUES(31,'ins优雅','img/second/1561438419279813.jpg',NULL,NULL);
 INSERT INTO fly_in VALUES(32,'ins优雅','img/second/1561438483794571.jpg',NULL,NULL);
 INSERT INTO fly_in VALUES(33,'ins优雅','img/second/1561438491608222.jpg',NULL,NULL);
 INSERT INTO fly_in VALUES(34,'ins优雅','img/second/1561438528195761.jpg',NULL,NULL);
 INSERT INTO fly_in VALUES(35,'ins优雅','img/second/1561438534108555.jpg',NULL,NULL);
 INSERT INTO fly_in VALUES(36,'ins优雅','img/second/1561438545370178.jpg',NULL,NULL);
 INSERT INTO fly_in VALUES(37,'ins优雅','img/second/1561438552808543.jpg',NULL,NULL);
 INSERT INTO fly_in VALUES(38,'ins优雅','img/second/1561438561215188.jpg',NULL,NULL);
 INSERT INTO fly_in VALUES(39,'ins优雅','img/second/1561438567405592.jpg',NULL,NULL);





#five
#创建六周年活动表
DROP  DATABASE IF EXISTS fly_six_year;
CREATE TABLE fly_six_year(
    xid INT PRIMARY KEY AUTO_INCREMENT,
    img VARCHAR(128),
    title VARCHAR(64),
    subtitle VARCHAR(128),
    dates  VARCHAR(64),
    datess  VARCHAR(64),
    href VARCHAR(128)
);
INSERT INTO fly_six_year VALUES(NULL,'img/five/091405046524.jpg','六周年店庆活动5866','TIME','2019.7.9','2019.8.9',NULL);
INSERT INTO fly_six_year VALUES(NULL,'img/five/091408327291.jpg','六周年店庆活动6866','TIME','2019.7.9','2019.8.9',NULL);
INSERT INTO fly_six_year VALUES(NULL,'img/five/091410112362.jpg','六周年店庆活动7866','TIME','2019.7.8','2019.8.8',NULL);
INSERT INTO fly_six_year VALUES(NULL,'img/five/091414007703.jpg','六周年店庆活动8866','TIME','2019.7.9','2019.8.9',NULL);




#six
#创建微电影表fly_six_film
DROP  DATABASE IF EXISTS fly_six_film;
CREATE TABLE fly_six_film(
    fid INT PRIMARY KEY AUTO_INCREMENT,
    img VARCHAR(128),
    title  VARCHAR(64),
    video VARCHAR(128),
    subtitle VARCHAR(64),
    details VARCHAR(128),
    href VARCHAR(128)
);
INSERT INTO fly_six_film VALUES(NULL,'img/six/211441329168.jpg',"微电影",'img/six/xona68DfpWQ0FwjsEMb_217926654951_hd_hq.mp4',"【遇见菲林】就是你想要的feel","三亚 三亚湾 康年酒店",NULL);
INSERT INTO fly_six_film VALUES(NULL,'img/six/211445067653.jpg',"微电影",'img/six/7zy0nBM2fs9jsswDqA9@@hdregop.mp4',"【遇见菲林】遇见香格里拉","香格里拉 白水台 帐篷酒店",NULL);
INSERT INTO fly_six_film VALUES(NULL,'img/six/062018312127.jpg',"微电影",'img/six/R1dGudjWF72ik3rUk0f_230062738686_sd_hq.mp4',"【遇见菲林】设计部","武汉 设计部",NULL);
INSERT INTO fly_six_film VALUES(NULL,'img/six/062007083212.png',"微电影",'img/six/v3k7gPy6cPHyoiE5C1K_223644734294_hd_hq.mp4',"【遇见菲林】独特的你","丽江 喜洲 古镇",NULL);
INSERT INTO fly_six_film VALUES(NULL,'img/six/061913428585.jpg',"微电影",'img/six/kjhxdfxSS8vjm3efrAc@@sd_hq.mp4',"【遇见菲林】草原牧歌","青海 草原",NULL);
INSERT INTO fly_six_film VALUES(NULL,'img/six/191019387036.png',"微电影",'img/six/VOiicslHUEelf65S0m2@@hd.mp4',"【遇见菲林】遇见三亚","三亚 遇见菲林三亚店",NULL);
INSERT INTO fly_six_film VALUES(NULL,'img/six/191102169762.png',"影像花絮",'img/six/NK0jHFkl5zh6ShetHng_220618214063_sd_hq.mp4',"【遇见菲林】遇见青海湖","青海 青海湖",NULL);
INSERT INTO fly_six_film VALUES(NULL,'img/six/191053278354.png',"影像花絮",'img/six/70fPZSOYJMeI9BlPqHc_215174456820_hd_hq.mp4',"【遇见菲林】巅峰之恋","丽江 雪山山顶",NULL);
INSERT INTO fly_six_film VALUES(NULL,'img/six/191046443177.jpg',"影像花絮",'img/six/PDaTWpHsHjSchLmY3DU@@hd_hq.mp4',"【遇见菲林】遇见ins风","丽江 玉湖 新基地",NULL);
INSERT INTO fly_six_film VALUES(NULL,'img/six/191035198613.jpg',"影像花絮",'img/six/IclbTIa0i5DvwqdDBzu@@hd_hq.mp4',"【遇见菲林】爱在雪山","丽江 雪山山顶",NULL);
INSERT INTO fly_six_film VALUES(NULL,'img/six/191038166293.png',"影像花絮",'img/six/PeHAdi21vjqd1QJys6j@@hdregop.mp4',"【遇见菲林】论婚纱照拍摄过程","三亚 三亚湾",NULL);
INSERT INTO fly_six_film VALUES(NULL,'img/six/191042099134.jpg',"影像花絮",'img/six/SL142P45XTvmWU9Hurc_216475101645_sd_hq.mp4',"【遇见菲林】爱要有你才完美","三亚 呆呆岛",NULL);
INSERT INTO fly_six_film VALUES(NULL,'img/six/191049388324.png',"影像花絮",'img/six/laVu70ZYji8H5ya8vwY@@hd_hq.mp4',"【遇见菲林】浪花一朵朵","三亚 天涯海角",NULL);
INSERT INTO fly_six_film VALUES(NULL,'img/six/191059005316.png',"影像花絮",'img/six/IpodNtGK0YAnoMbQ9vO@@hd.mp4',"【遇见菲林】为你写诗","三亚 天涯海角",NULL);






#seven
#创建品牌表
DROP  DATABASE IF EXISTS fly_seven_brand;
CREATE TABLE fly_seven_brand(
    bid INT PRIMARY KEY AUTO_INCREMENT,
    img VARCHAR(128),
    title VARCHAR(64),
    details VARCHAR(128),
    href VARCHAR(128)
);
INSERT INTO fly_seven_brand VALUES(NULL,'img/seven/h49.jpg',NULL,NULL,NULL);
INSERT INTO fly_seven_brand VALUES(NULL,'img/seven/h48.jpg',NULL,NULL,NULL);
INSERT INTO fly_seven_brand VALUES(NULL,'img/seven/h47.jpg',NULL,NULL,NULL);
INSERT INTO fly_seven_brand VALUES(NULL,'img/seven/h46.jpg',NULL,NULL,NULL);
INSERT INTO fly_seven_brand VALUES(NULL,'img/seven/h45.jpg',NULL,NULL,NULL);
INSERT INTO fly_seven_brand VALUES(NULL,'img/seven/h44.jpg',NULL,NULL,NULL);





