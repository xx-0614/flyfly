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
CREATE TABLE fly_microfilm(
    mid INT PRIMARY KEY AUTO_INCREMENT,
    img VARCHAR(128)
);
INSERT INTO fly_microfilm VALUES(NULL,'img/index/211435017512.jpg');
INSERT INTO fly_microfilm VALUES(NULL,'img/index/211445188656.jpg');
INSERT INTO fly_microfilm VALUES(NULL,'img/index/j-i18.jpg');
INSERT INTO fly_microfilm VALUES(NULL,'img/index/1562033758195958.jpg');
INSERT INTO fly_microfilm VALUES(NULL,'img/index/1561438545370178.jpg');
INSERT INTO fly_microfilm VALUES(NULL,'img/index/1561438552808543.jpg');



 

#three
#城市所在对应样式表
CREATE TABLE fly_city_style(
    style_id INT PRIMARY KEY AUTO_INCREMENT,    #样式风格的id
    city_id INT,                                #城市id
    img VARCHAR(128),
    title VARCHAR(64),
    dates VARCHAR(128),
    href VARCHAR(128)
);
#三亚
INSERT INTO fly_city_style VALUES(NULL,1,'img/three/sanya/style/291348483756.jpg',"游艇旅行",'2019-06-29','details?pid=1');
INSERT INTO fly_city_style VALUES(NULL,1,'img/three/sanya/style/291336153264.jpg',"告白气球",'2019-06-29','details?pid=2');
INSERT INTO fly_city_style VALUES(NULL,1,'img/three/sanya/style/291324127446.jpg',"海上冲浪",'2019-06-29',NULL);
INSERT INTO fly_city_style VALUES(NULL,1,'img/three/sanya/style/291312293072.jpg',"华丽休假",'2019-06-29',NULL);
INSERT INTO fly_city_style VALUES(NULL,1,'img/three/sanya/style/291302356216.jpg',"浪漫满屋",'2019-06-29',NULL);
INSERT INTO fly_city_style VALUES(NULL,1,'img/three/sanya/style/122210101010.jpg',"爱情沙滩",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,1,'img/three/sanya/style/122246248590.jpg',"海边欢乐颂",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,1,'img/three/sanya/style/122203459850.jpg',"老城时光",'2019-06-12',NULL);
INSERT INTO fly_city_style VALUES(NULL,1,'img/three/sanya/style/122239402355.jpg',"日光泳池",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,1,'img/three/sanya/style/122230226443.jpg',"倾心",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,1,'img/three/sanya/style/122223272543.jpg',"夏花",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,1,'img/three/sanya/style/122154489940.jpg',"听海",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,1,'img/three/sanya/style/122216128514.jpg',"鸟巢絮语",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,1,'img/three/sanya/style/122141548356.jpg',"等风来",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,1,'img/three/sanya/style/121728365797.jpg',"屋顶无边际泳池",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,1,'img/three/sanya/style/121710234962.jpg',"假日华尔兹",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,1,'img/three/sanya/style/121632209840.jpg',"树屋酒店",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,1,'img/three/sanya/style/121617211906.jpg',"ins向往",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,1,'img/three/sanya/style/121603382644.jpg',"ins露营沙滩",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,1,'img/three/sanya/style/121556253524.jpg',"ins夏日里的么么茶",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,1,'img/three/sanya/style/121541089513.jpg',"ins呆呆岛蜜月日记",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,1,'img/three/sanya/style/121144219681.jpg',"ins泡泡酒店",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,1,'img/three/sanya/style/131808183003.jpg',"晴云山",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,1,'img/three/sanya/style/131802449133.jpg',"西伯利亚海鸥",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,1,'img/three/sanya/style/131756346475.jpg',"羊驼",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,1,'img/three/sanya/style/131750445500.jpg',"大风车",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,1,'img/three/sanya/style/131744518352.jpg',"旅行日记",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,1,'img/three/sanya/style/131738131832.jpg',"小岛日记",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,1,'img/three/sanya/style/131727072108.jpg',"洱海边",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,1,'img/three/sanya/style/131716414304.jpg',"山顶露营",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,1,'img/three/sanya/style/131710184314.jpg',"环海公路",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,1,'img/three/sanya/style/131702461496.jpg',"喜洲古镇",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,1,'img/three/sanya/style/111312466853.jpg',"余生",'2019-06-11',NULL);
INSERT INTO fly_city_style VALUES(NULL,1,'img/three/sanya/style/141540479200.jpg',"浮世集",'2019-06-25',NULL);
INSERT INTO fly_city_style VALUES(NULL,1,'img/three/sanya/style/141533206692.jpg',"柏拉图蔓延",'2019-06-25',NULL);
INSERT INTO fly_city_style VALUES(NULL,1,'img/three/sanya/style/141530275295.jpg',"旅行的意义",'2019-06-25',NULL);
INSERT INTO fly_city_style VALUES(NULL,1,'img/three/sanya/style/141457231794.jpg',"畅想",'2019-06-25',NULL);
INSERT INTO fly_city_style VALUES(NULL,1,'img/three/sanya/style/141450524553.jpg',"扶苏",'2019-06-25',NULL);
INSERT INTO fly_city_style VALUES(NULL,1,'img/three/sanya/style/141434459203.jpg',"起风了",'2019-06-25',NULL);
INSERT INTO fly_city_style VALUES(NULL,1,'img/three/sanya/style/141418534087.jpg',"微风的气息",'2019-06-25',NULL);
INSERT INTO fly_city_style VALUES(NULL,1,'img/three/sanya/style/141409133990.jpg',"遇见菲林",'2019-06-25',NULL);
INSERT INTO fly_city_style VALUES(NULL,1,'img/three/sanya/style/141402096088.jpg',"棉花堡",'2019-06-25',NULL);
INSERT INTO fly_city_style VALUES(NULL,1,'img/three/sanya/style/141355188289.jpg',"梦想中的生活",'2019-06-25',NULL);
INSERT INTO fly_city_style VALUES(NULL,1,'img/three/sanya/style/141348363946.jpg',"篝火",'2019-06-25',NULL);
#44
#丽江
INSERT INTO fly_city_style VALUES(NULL,2,'img/three/lijiang/style/121430406066.jpg',"漫步古镇",'2019-07-12','details?pid=3');
INSERT INTO fly_city_style VALUES(NULL,2,'img/three/lijiang/style/121424543646.jpg',"向往的生活",'2019-07-12','details?pid=4');
INSERT INTO fly_city_style VALUES(NULL,2,'img/three/lijiang/style/121420147044.jpg',"为爱痴狂",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,2,'img/three/lijiang/style/121413529958.jpg',"一米阳光",'2019-07-12',NULL);
INSERT INTO fly_city_style VALUES(NULL,2,'img/three/lijiang/style/121407499810.jpg',"炊烟",'2019-07-12',NULL);
INSERT INTO fly_city_style VALUES(NULL,2,'img/three/lijiang/style/131552552182.jpg',"ins林中美眷",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,2,'img/three/lijiang/style/131534308947.jpg',"ins绚烂",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,2,'img/three/lijiang/style/131607014483.jpg',"ins牧马",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,2,'img/three/lijiang/style/131600069445.jpg',"ins春雪",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,2,'img/three/lijiang/style/131526432303.jpg',"ins陪你到丽江",'2019-06-13',NULL);
INSERT INTO fly_city_style VALUES(NULL,2,'img/three/lijiang/style/131614392445.jpg',"ins雪山探险",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,2,'img/three/lijiang/style/131521103820.jpg',"ins简单爱",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,2,'img/three/lijiang/style/131513554850.jpg',"ins晴朗",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,2,'img/three/lijiang/style/131507219575.jpg',"ins遇见",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,2,'img/three/lijiang/style/131249261223.jpg',"ins婚礼",'2019-06-13',NULL);
INSERT INTO fly_city_style VALUES(NULL,2,'img/three/lijiang/style/131242582882.jpg',"ins世界纪元",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,2,'img/three/lijiang/style/131236069909.jpg',"ins世外桃源",'2019-06-13',NULL);
INSERT INTO fly_city_style VALUES(NULL,2,'img/three/lijiang/style/131229425045.jpg',"ins清晨",'2019-06-13',NULL);
INSERT INTO fly_city_style VALUES(NULL,2,'img/three/lijiang/style/131201161212.jpg',"ins旅行",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,2,'img/three/lijiang/style/131154007407.jpg',"ins速度与激情",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,2,'img/three/lijiang/style/131147342482.jpg',"ins红石榴",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,2,'img/three/lijiang/style/131139002772.jpg',"ins田园牧马",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,2,'img/three/lijiang/style/131430065159.jpg',"雪山下嫁纱",'2019-06-13',NULL);
INSERT INTO fly_city_style VALUES(NULL,2,'img/three/lijiang/style/131422446928.jpg',"远行",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,2,'img/three/lijiang/style/131415571695.jpg',"情人湖边",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,2,'img/three/lijiang/style/131409241285.jpg',"绿野仙踪",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,2,'img/three/lijiang/style/131404056344.jpg',"公路旅行",'2019-06-13',NULL);
INSERT INTO fly_city_style VALUES(NULL,2,'img/three/lijiang/style/131355321182.jpg',"房车旅行",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,2,'img/three/lijiang/style/141217534146.jpg',"邂逅茶卡",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,2,'img/three/lijiang/style/141224357613.jpg',"边走边爱",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,2,'img/three/lijiang/style/141207069261.jpg',"青海湖畔",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,2,'img/three/lijiang/style/141212405279.jpg',"西北狂想曲",'2019-06-14',NULL);
INSERT INTO fly_city_style VALUES(NULL,2,'img/three/lijiang/style/141201146851.jpg',"情定大草原",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,2,'img/three/lijiang/style/141140225747.jpg',"公路旅行",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,2,'img/three/lijiang/style/141129474622.jpg',"冰湖",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,2,'img/three/lijiang/style/141111481496.jpg',"湖边日落",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,2,'img/three/lijiang/style/141104431004.jpg',"两人沙海",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,2,'img/three/lijiang/style/141057449129.jpg',"圣洁之湖",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,2,'img/three/lijiang/style/141045545016.jpg',"沙洲",'2019-06-27',NULL);
INSERT INTO fly_city_style VALUES(NULL,2,'img/three/lijiang/style/091813354358.jpg',"小阳&巧巧",'2019-07-09',NULL);
#44



#four
#创建人员图片表
CREATE TABLE fly_city_people(
    people_id INT PRIMARY KEY AUTO_INCREMENT,   #人员图片id
    city_id INT,                                #城市id
    img VARCHAR(128),
    title VARCHAR(64),
    dates VARCHAR(128),
    href VARCHAR(128)
);
#三亚
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/191551057570.jpg',"阿豪&花花",'2019-07-19','details?pid=5');
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/191541305015.jpg',"小超&思琪",'2019-07-19','details?pid=6');
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/162103159711.jpg',"小伟&晓妍",'2019-07-16',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/151045059650.jpg',"小帆&瀚天",'2019-07-15',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/151030268521.jpg',"蒙蒙&家谕",'2019-07-15',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/111330062511.jpg',"凡凡&欣欣",'2019-07-11',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/091823021994.jpg',"娟娟&柄江",'2019-07-09',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/082243425866.jpg',"小罗&小琼",'2019-07-08',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/081316048067.jpg',"温柔的时光",'2019-07-08',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/071027028426.jpg',"明慧&小霞",'2019-07-07',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/071008402536.jpg',"泽彬&瑞瑞",'2019-07-07',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/070951364310.jpg',"小徐&鹏鹏",'2019-07-07',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/292237073536.jpg',"雷雷&丽丽",'2019-06-29',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/292204348433.jpg',"志亭&小亚",'2019-06-29',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/171315122195.jpg',"东东&蕾蕾",'2019-06-27',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/171621301319.jpg',"粉红",'2019-06-27',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/171729441517.jpg',"红色甲壳虫",'2019-06-27',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/171604157748.jpg',"元辉&红红",'2019-06-27',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/171531485056.jpg',"小鑫&星觐",'2019-06-27',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/171509431899.jpg',"小柯&玲玲",'2019-06-27',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/181004261885.jpg',"方方&佳琦",'2019-06-27',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/180946036550.jpg',"小樊&芳芳",'2019-06-27',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/180920013360.jpg',"坤坤&鱼鱼",'2019-06-27',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/171719383350.jpg',"玉成&芬芬",'2019-06-25',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/171701114402.jpg',"小马&明明",'2019-06-17',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/161613128956.jpg',"阿宇&媚儿",'2019-06-16',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/161545003147.jpg',"小伊&小颖",'2019-06-16',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/161531195051.jpg',"祥浦&冲冲",'2019-06-16',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/161516063834.jpg',"嘉嘉&小赓",'2019-06-16',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/161120505514.jpg',"忠义&娟娟",'2019-06-16',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/160956176567.jpg',"小易&小岚",'2019-06-16',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/160929468415.jpg',"Emily&郎朗",'2019-06-16',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/151556553442.jpg',"小荣&越越",'2019-06-15',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/151238531672.jpg',"新诺&雯雯",'2019-06-15',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/162107304767.jpg',"学良&婉君",'2019-07-16',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/151053015747.jpg',"洱海的夏",'2019-07-15',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/151040097990.jpg',"阿华&婷婷",'2019-07-15',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/131440335405.jpg',"小杰&小颖",'2019-07-13',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/131432421393.jpg',"家俊&秀秀",'2019-07-11',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/292252289182.jpg',"甜蜜蜜",'2019-06-29',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/082233545272.jpg',"田野",'2019-07-08',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/180954084922.jpg',"我眼中的你",'2019-06-27',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/180914102382.jpg',"彩色的梦",'2019-06-27',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/171724338403.jpg',"静谧的海",'2019-06-27',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/171706514705.jpg',"花季之约",'2019-06-27',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/171538045616.jpg',"洱海的夜",'2019-06-27',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/171412394300.jpg',"爱的进行时",'2019-06-27',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/171456057704.jpg',"洱海边",'2019-06-27',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/151329538797.jpg',"雨晴&小邓",'2019-06-27',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/151649384577.jpg',"小亮&佳佳",'2019-06-27',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/151659152595.jpg',"海的吟唱",'2019-06-27',NULL);
INSERT INTO fly_city_people VALUES(NULL,1,'img/four/sanya/people/151707191550.jpg',"爱情童话",'2019-06-17',NULL);
#52
#丽江
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/151048579074.jpg',"甜甜&天予",'2019-07-15','details?pid=7');
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/151034482578.jpg',"仰望蓝月谷",'2019-07-15','details?pid=8');
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/131444541169.jpg',"明明&小鹤",'2019-07-13',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/131437026993.jpg',"小戴&庆庆",'2019-07-13',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/111324144265.jpg',"小伍&源源",'2019-07-11',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/071013259792.jpg',"文文&小明",'2019-06-29',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/292243548289.jpg',"志文&美怡",'2019-06-29',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/292213486619.jpg',"小然&千蕊",'2019-06-29',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/161538028432.jpg',"琪琪&小雨",'2019-06-27',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/171714015524.jpg',"锐锐&书书",'2019-06-27',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/171644128797.jpg',"媛媛&小金",'2019-06-27',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/171613559438.jpg',"然然&一鸣",'2019-06-27',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/171550565977.jpg',"小李&大伟",'2019-06-27',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/171516448687.jpg',"阿徐&玄玄",'2019-06-27',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/171443311830.jpg',"志尚&希希",'2019-06-27',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/171402573693.jpg',"白色恋歌",'2019-06-27',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/171337279454.jpg',"文郑&欣欣",'2019-06-27',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/171255189249.jpg',"宁宁&小柳",'2019-06-27',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/161709474417.jpg',"志樵&欣然",'2019-06-27',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/161635198766.jpg',"小令&丽丽",'2019-06-27',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/161606038623.jpg',"冬冬&小金",'2019-06-27',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/180959483260.jpg',"去露营吧",'2019-06-27',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/180939395516.jpg',"夏日情歌",'2019-06-27',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/161522587138.jpg',"阿良&琦琦",'2019-06-16',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/161133398738.jpg',"小宇&小双",'2019-06-16',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/161126598537.jpg',"晶晶&小斌",'2019-06-16',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/160941471545.jpg',"小敏&乐乐",'2019-06-16',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/151636149287.jpg',"新溪&晶晶",'2019-06-15',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/151320441231.jpg',"雪华&兰兰",'2019-06-15',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/162113298158.jpg',"正博&莉琼",'2019-07-16',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/071021029987.jpg',"丽丽&小美",'2019-07-07',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/292258357155.jpg',"冰上旋律",'2019-06-29',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/292231216904.jpg',"最好的我们",'2019-06-29',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/292218567085.jpg',"小伴",'2019-06-29',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/292133054021.jpg',"专属骑士",'2019-06-29',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/180932461612.jpg',"露营大草原",'2019-06-27',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/180908214986.jpg',"两人野餐",'2019-06-27',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/171557109894.jpg',"凯凯&晨曦",'2019-06-27',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/171524469044.jpg',"爱之源",'2019-06-27',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/171502486719.jpg',"冰川时代",'2019-06-27',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/171431538925.jpg',"情书",'2019-06-27',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/171420059689.jpg',"冰雪奇缘",'2019-06-27',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/151719328356.jpg',"小梦&强强",'2019-06-27',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/171227129002.jpg',"小晴&小楚",'2019-06-26',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/161007179460.jpg',"志鹏&佳楠",'2019-06-26',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/151343053925.jpg',"小易&莹莹",'2019-06-26',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/151412388354.jpg',"小乾&小鹏",'2019-06-25',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/151431503822.jpg',"SOPHIA&JOY",'2019-06-25',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/151438299766.jpg',"小凤&爽爽",'2019-06-25',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/151452311265.jpg',"浩文&曼颖",'2019-06-25',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/151659152595.jpg',"爱情面包车",'2019-06-15',NULL);
INSERT INTO fly_city_people VALUES(NULL,2,'img/four/lijiang/people/151649384577.jpg',"小森林",'2019-06-15',NULL);
#52


#three four
#样式详情表
CREATE TABLE fly_details_img(
    pid INT,     #样式详情id
    img VARCHAR(128),
    href VARCHAR(128)
);
#三亚
#游艇旅行 详情
INSERT INTO fly_details_img VALUES(1,'img/three/sanya/details/291350353653.jpg',NULL);
INSERT INTO fly_details_img VALUES(1,'img/three/sanya/details/291350354780.jpg',NULL);
INSERT INTO fly_details_img VALUES(1,'img/three/sanya/details/291350359621.jpg',NULL);
INSERT INTO fly_details_img VALUES(1,'img/three/sanya/details/1561787854888573.jpg',NULL);
INSERT INTO fly_details_img VALUES(1,'img/three/sanya/details/1561787855122997.jpg',NULL);
INSERT INTO fly_details_img VALUES(1,'img/three/sanya/details/1561787855307011.jpg',NULL);
INSERT INTO fly_details_img VALUES(1,'img/three/sanya/details/1561787855470719.jpg',NULL);
INSERT INTO fly_details_img VALUES(1,'img/three/sanya/details/1561787855974684.jpg',NULL);
INSERT INTO fly_details_img VALUES(1,'img/three/sanya/details/1561787856121143.jpg',NULL);
INSERT INTO fly_details_img VALUES(1,'img/three/sanya/details/1561787856457976.jpg',NULL);
INSERT INTO fly_details_img VALUES(1,'img/three/sanya/details/1561787856512117.jpg',NULL);
INSERT INTO fly_details_img VALUES(1,'img/three/sanya/details/1561787856530287.jpg',NULL);
INSERT INTO fly_details_img VALUES(1,'img/three/sanya/details/1561787856620440.jpg',NULL);
INSERT INTO fly_details_img VALUES(1,'img/three/sanya/details/1561787856689202.jpg',NULL);
INSERT INTO fly_details_img VALUES(1,'img/three/sanya/details/1561787857277799.jpg',NULL);
INSERT INTO fly_details_img VALUES(1,'img/three/sanya/details/1561787857485440.jpg',NULL);
INSERT INTO fly_details_img VALUES(1,'img/three/sanya/details/1561787857681485.jpg',NULL);
INSERT INTO fly_details_img VALUES(1,'img/three/sanya/details/1561787858192273.jpg',NULL);
INSERT INTO fly_details_img VALUES(1,'img/three/sanya/details/1561787858428247.jpg',NULL);
INSERT INTO fly_details_img VALUES(1,'img/three/sanya/details/1561787858494553.jpg',NULL);
INSERT INTO fly_details_img VALUES(1,'img/three/sanya/details/1561787858561399.jpg',NULL);
INSERT INTO fly_details_img VALUES(1,'img/three/sanya/details/1561787858752459.jpg',NULL);
INSERT INTO fly_details_img VALUES(1,'img/three/sanya/details/1561787858929200.jpg',NULL);
#告白气球 详情
INSERT INTO fly_details_img VALUES(2,'img/three/sanya/details/291336153264.jpg',NULL);
INSERT INTO fly_details_img VALUES(2,'img/three/sanya/details/291337324255.jpg',NULL);
INSERT INTO fly_details_img VALUES(2,'img/three/sanya/details/291337337532.jpg',NULL);
INSERT INTO fly_details_img VALUES(2,'img/three/sanya/details/1562467737106336.jpg',NULL);
INSERT INTO fly_details_img VALUES(2,'img/three/sanya/details/1562467737250231.jpg',NULL);
INSERT INTO fly_details_img VALUES(2,'img/three/sanya/details/1562467737292790.jpg',NULL);
INSERT INTO fly_details_img VALUES(2,'img/three/sanya/details/1562467737498417.jpg',NULL);
INSERT INTO fly_details_img VALUES(2,'img/three/sanya/details/1562467737823652.jpg',NULL);
INSERT INTO fly_details_img VALUES(2,'img/three/sanya/details/1562467737841233.jpg',NULL);
INSERT INTO fly_details_img VALUES(2,'img/three/sanya/details/1562467737864512.jpg',NULL);
INSERT INTO fly_details_img VALUES(2,'img/three/sanya/details/1562467737869192.jpg',NULL);
INSERT INTO fly_details_img VALUES(2,'img/three/sanya/details/1562467738126766.jpg',NULL);
INSERT INTO fly_details_img VALUES(2,'img/three/sanya/details/1562467738281359.jpg',NULL);
INSERT INTO fly_details_img VALUES(2,'img/three/sanya/details/1562467738335538.jpg',NULL);
INSERT INTO fly_details_img VALUES(2,'img/three/sanya/details/1562467738386064.jpg',NULL);
INSERT INTO fly_details_img VALUES(2,'img/three/sanya/details/1562467738473465.jpg',NULL);
INSERT INTO fly_details_img VALUES(2,'img/three/sanya/details/1562467738830075.jpg',NULL);
INSERT INTO fly_details_img VALUES(2,'img/three/sanya/details/1562467738850527.jpg',NULL);
#丽江
#漫步古镇 详情
INSERT INTO fly_details_img VALUES(6,'img/three/lijiang/details/121432063820.jpg',NULL);
INSERT INTO fly_details_img VALUES(6,'img/three/lijiang/details/121432065155.jpg',NULL);
INSERT INTO fly_details_img VALUES(6,'img/three/lijiang/details/1562913220111817.jpg',NULL);
INSERT INTO fly_details_img VALUES(6,'img/three/lijiang/details/1562913220389147.jpg',NULL);
INSERT INTO fly_details_img VALUES(6,'img/three/lijiang/details/1562913220440993.jpg',NULL);
INSERT INTO fly_details_img VALUES(6,'img/three/lijiang/details/1562913220753808.jpg',NULL);
INSERT INTO fly_details_img VALUES(6,'img/three/lijiang/details/1562913220766010.jpg',NULL);
INSERT INTO fly_details_img VALUES(6,'img/three/lijiang/details/1562913220848756.jpg',NULL);
INSERT INTO fly_details_img VALUES(6,'img/three/lijiang/details/1562913220862209.jpg',NULL);
INSERT INTO fly_details_img VALUES(6,'img/three/lijiang/details/1562913221317029.jpg',NULL);
INSERT INTO fly_details_img VALUES(6,'img/three/lijiang/details/1562913221362446.jpg',NULL);
INSERT INTO fly_details_img VALUES(6,'img/three/lijiang/details/1562913221587046.jpg',NULL);
INSERT INTO fly_details_img VALUES(6,'img/three/lijiang/details/1562913222520756.jpg',NULL);
INSERT INTO fly_details_img VALUES(6,'img/three/lijiang/details/1562913222527465.jpg',NULL);
INSERT INTO fly_details_img VALUES(6,'img/three/lijiang/details/1562913222547494.jpg',NULL);
INSERT INTO fly_details_img VALUES(6,'img/three/lijiang/details/1562913222551198.jpg',NULL);
INSERT INTO fly_details_img VALUES(6,'img/three/lijiang/details/1562913222778138.jpg',NULL);
INSERT INTO fly_details_img VALUES(6,'img/three/lijiang/details/1562913222783595.jpg',NULL);
INSERT INTO fly_details_img VALUES(6,'img/three/lijiang/details/1562913223214538.jpg',NULL);
INSERT INTO fly_details_img VALUES(6,'img/three/lijiang/details/1562913223346833.jpg',NULL);
INSERT INTO fly_details_img VALUES(6,'img/three/lijiang/details/1562913223550713.jpg',NULL);
INSERT INTO fly_details_img VALUES(6,'img/three/lijiang/details/1562913223562877.jpg',NULL);
INSERT INTO fly_details_img VALUES(6,'img/three/lijiang/details/1562913223664817.jpg',NULL);
INSERT INTO fly_details_img VALUES(6,'img/three/lijiang/details/1562913224113556.jpg',NULL);
INSERT INTO fly_details_img VALUES(6,'img/three/lijiang/details/1562913224406297.jpg',NULL);
INSERT INTO fly_details_img VALUES(6,'img/three/lijiang/details/1562913224462711.jpg',NULL);
INSERT INTO fly_details_img VALUES(6,'img/three/lijiang/details/1562913224569841.jpg',NULL);
INSERT INTO fly_details_img VALUES(6,'img/three/lijiang/details/1562913224644361.jpg',NULL);
INSERT INTO fly_details_img VALUES(6,'img/three/lijiang/details/1562913224706662.jpg',NULL);
INSERT INTO fly_details_img VALUES(6,'img/three/lijiang/details/1562913225136832.jpg',NULL);
#向往的生活 详情
INSERT INTO fly_details_img VALUES(7,'img/three/lijiang/details/121426182250.jpg',NULL);
INSERT INTO fly_details_img VALUES(7,'img/three/lijiang/details/121426182898.jpg',NULL);
INSERT INTO fly_details_img VALUES(7,'img/three/lijiang/details/1562912874209469.jpg',NULL);
INSERT INTO fly_details_img VALUES(7,'img/three/lijiang/details/1562912875154457.jpg',NULL);
INSERT INTO fly_details_img VALUES(7,'img/three/lijiang/details/1562912875264803.jpg',NULL);
INSERT INTO fly_details_img VALUES(7,'img/three/lijiang/details/1562912875514428.jpg',NULL);
INSERT INTO fly_details_img VALUES(7,'img/three/lijiang/details/1562912875529348.jpg',NULL);
INSERT INTO fly_details_img VALUES(7,'img/three/lijiang/details/1562912875559417.jpg',NULL);
INSERT INTO fly_details_img VALUES(7,'img/three/lijiang/details/1562912875607305.jpg',NULL);
INSERT INTO fly_details_img VALUES(7,'img/three/lijiang/details/1562912875639587.jpg',NULL);
INSERT INTO fly_details_img VALUES(7,'img/three/lijiang/details/1562912875828013.jpg',NULL);
INSERT INTO fly_details_img VALUES(7,'img/three/lijiang/details/1562912876285126.jpg',NULL);
INSERT INTO fly_details_img VALUES(7,'img/three/lijiang/details/1562912876291346.jpg',NULL);
INSERT INTO fly_details_img VALUES(7,'img/three/lijiang/details/1562912876389046.jpg',NULL);
INSERT INTO fly_details_img VALUES(7,'img/three/lijiang/details/1562912876578354.jpg',NULL);
INSERT INTO fly_details_img VALUES(7,'img/three/lijiang/details/1562912876814890.jpg',NULL);
INSERT INTO fly_details_img VALUES(7,'img/three/lijiang/details/1562912883253265.jpg',NULL);
INSERT INTO fly_details_img VALUES(7,'img/three/lijiang/details/1562912883635254.jpg',NULL);
INSERT INTO fly_details_img VALUES(7,'img/three/lijiang/details/1562912883644592.jpg',NULL);
INSERT INTO fly_details_img VALUES(7,'img/three/lijiang/details/1562912884195720.jpg',NULL);
INSERT INTO fly_details_img VALUES(7,'img/three/lijiang/details/1562912884289554.jpg',NULL);
INSERT INTO fly_details_img VALUES(7,'img/three/lijiang/details/1562912884596303.jpg',NULL);
INSERT INTO fly_details_img VALUES(7,'img/three/lijiang/details/1562912884610317.jpg',NULL);
#four
#三亚
#阿豪&花花 详情
INSERT INTO fly_details_img VALUES(11,'img/four/sanya/details/191551205326.jpg',NULL);
INSERT INTO fly_details_img VALUES(11,'img/four/sanya/details/191551205856.jpg',NULL);
INSERT INTO fly_details_img VALUES(11,'img/four/sanya/details/191551206325.jpg',NULL);
INSERT INTO fly_details_img VALUES(11,'img/four/sanya/details/1563522841157214.jpg',NULL);
INSERT INTO fly_details_img VALUES(11,'img/four/sanya/details/1563522841225189.jpg',NULL);
INSERT INTO fly_details_img VALUES(11,'img/four/sanya/details/1563522841393809.jpg',NULL);
INSERT INTO fly_details_img VALUES(11,'img/four/sanya/details/1563522841570182.jpg',NULL);
INSERT INTO fly_details_img VALUES(11,'img/four/sanya/details/1563522841722486.jpg',NULL);
INSERT INTO fly_details_img VALUES(11,'img/four/sanya/details/1563522841773837.jpg',NULL);
INSERT INTO fly_details_img VALUES(11,'img/four/sanya/details/1563522841880649.jpg',NULL);
INSERT INTO fly_details_img VALUES(11,'img/four/sanya/details/1563522841954425.jpg',NULL);
INSERT INTO fly_details_img VALUES(11,'img/four/sanya/details/1563522842180508.jpg',NULL);
INSERT INTO fly_details_img VALUES(11,'img/four/sanya/details/1563522842231166.jpg',NULL);
INSERT INTO fly_details_img VALUES(11,'img/four/sanya/details/1563522842311740.jpg',NULL);
INSERT INTO fly_details_img VALUES(11,'img/four/sanya/details/1563522842318905.jpg',NULL);
INSERT INTO fly_details_img VALUES(11,'img/four/sanya/details/1563522842725476.jpg',NULL);
INSERT INTO fly_details_img VALUES(11,'img/four/sanya/details/1563522842845389.jpg',NULL);
INSERT INTO fly_details_img VALUES(11,'img/four/sanya/details/1563522842926340.jpg',NULL);
INSERT INTO fly_details_img VALUES(11,'img/four/sanya/details/1563522843634987.jpg',NULL);
#小超&思琪  详情
INSERT INTO fly_details_img VALUES(12,'img/four/sanya/details/191542471792.jpg',NULL);
INSERT INTO fly_details_img VALUES(12,'img/four/sanya/details/191542477824.jpg',NULL);
INSERT INTO fly_details_img VALUES(12,'img/four/sanya/details/1563522265329214.jpg',NULL);
INSERT INTO fly_details_img VALUES(12,'img/four/sanya/details/1563522265524796.jpg',NULL);
INSERT INTO fly_details_img VALUES(12,'img/four/sanya/details/1563522265530262.jpg',NULL);
INSERT INTO fly_details_img VALUES(12,'img/four/sanya/details/1563522265556956.jpg',NULL);
INSERT INTO fly_details_img VALUES(12,'img/four/sanya/details/1563522265767013.jpg',NULL);
INSERT INTO fly_details_img VALUES(12,'img/four/sanya/details/1563522266159724.jpg',NULL);
INSERT INTO fly_details_img VALUES(12,'img/four/sanya/details/1563522266420792.jpg',NULL);
INSERT INTO fly_details_img VALUES(12,'img/four/sanya/details/1563522266848104.jpg',NULL);
INSERT INTO fly_details_img VALUES(12,'img/four/sanya/details/1563522266954369.jpg',NULL);
#丽江
 #甜甜&天予 详情
INSERT INTO fly_details_img VALUES(14,'img/four/lijiang/details/151050195278.jpg',NULL);
INSERT INTO fly_details_img VALUES(14,'img/four/lijiang/details/151050196435.jpg',NULL);
INSERT INTO fly_details_img VALUES(14,'img/four/lijiang/details/1563159110126547.jpg',NULL);
INSERT INTO fly_details_img VALUES(14,'img/four/lijiang/details/1563159110250127.jpg',NULL);
INSERT INTO fly_details_img VALUES(14,'img/four/lijiang/details/1563159110273609.jpg',NULL);
INSERT INTO fly_details_img VALUES(14,'img/four/lijiang/details/1563159110421106.jpg',NULL);
INSERT INTO fly_details_img VALUES(14,'img/four/lijiang/details/1563159110516665.jpg',NULL);
INSERT INTO fly_details_img VALUES(14,'img/four/lijiang/details/1563159110588025.jpg',NULL);
INSERT INTO fly_details_img VALUES(14,'img/four/lijiang/details/1563159111475394.jpg',NULL);
INSERT INTO fly_details_img VALUES(14,'img/four/lijiang/details/1563159111565674.jpg',NULL);
INSERT INTO fly_details_img VALUES(14,'img/four/lijiang/details/1563159111986283.jpg',NULL);
#明明&小鹤 详情
INSERT INTO fly_details_img VALUES(15,'img/four/lijiang/details/131445372667.jpg',NULL);
INSERT INTO fly_details_img VALUES(15,'img/four/lijiang/details/1563000407174335.jpg',NULL);
INSERT INTO fly_details_img VALUES(15,'img/four/lijiang/details/1563000407411860.jpg',NULL);
INSERT INTO fly_details_img VALUES(15,'img/four/lijiang/details/1563000407439609.jpg',NULL);
INSERT INTO fly_details_img VALUES(15,'img/four/lijiang/details/1563000407622851.jpg',NULL);
INSERT INTO fly_details_img VALUES(15,'img/four/lijiang/details/1563000407783086.jpg',NULL);
INSERT INTO fly_details_img VALUES(15,'img/four/lijiang/details/1563000407793659.jpg',NULL);
INSERT INTO fly_details_img VALUES(15,'img/four/lijiang/details/1563000407814152.jpg',NULL);
INSERT INTO fly_details_img VALUES(15,'img/four/lijiang/details/1563000408883397.jpg',NULL);
INSERT INTO fly_details_img VALUES(15,'img/four/lijiang/details/1563000408958637.jpg',NULL);






#详情文本表
CREATE TABLE fly_details_text(
    tid INT PRIMARY KEY AUTO_INCREMENT,    #详情文本id
    title VARCHAR(64),
    palce  VARCHAR(64),
    details VARCHAR(128)
);
#three
#三亚
INSERT INTO fly_details_text VALUES(NULL,"游艇旅行","三亚 三亚湾","我见过春花秋月夏蝉冬雪，也写过晨光熹微斜阳暮色， 可这河山万里岁月寸缕，皆不及你浅笑一问。");
INSERT INTO fly_details_text VALUES(NULL,"告白气球","三亚 三亚湾","只愿和你一起晒冬日暖阳，聊未来理想，喝香浓咖啡，尝妙厨美味，读红楼西厢，诵唐诗宋词，有你，幸福异常！");
INSERT INTO fly_details_text VALUES(NULL,"海上冲浪","三亚 三亚湾","我的吻很长，用了整个夏天，穿越你的脸庞。");
INSERT INTO fly_details_text VALUES(NULL,"华丽的休假","三亚 三亚湾","我的世界乱七八糟烟尘纷杂，而你干干净净，那么温柔，那么明朗，正适合我放心上。");
INSERT INTO fly_details_text VALUES(NULL,"浪漫满屋","三亚 三亚湾","我就喜欢写一点普通的小句子，我就想要把我对你的感情，一点一点写到这里，哪怕在你眼里我只是千万灯芯中的一个，我对你的感情也是只增不减。");

#丽江
INSERT INTO fly_details_text VALUES(NULL,"漫步古镇","丽江 束河","从前的日子很慢，车，马，邮件都慢，一生只够爱一个人。");
INSERT INTO fly_details_text VALUES(NULL,"向往的生活","丽江 雪山马场","我看什么都像你，我看月亮，像你，看星星，也像你。那些白亮透澈、温柔冷清的光，它们都让我想起你。");
INSERT INTO fly_details_text VALUES(NULL,"为爱痴狂","丽江 新基地","我一直爱你，偶尔喜欢别人，在他们像你的时候。");
INSERT INTO fly_details_text VALUES(NULL,"一米阳光","丽江  新基地","春天的糖葫芦， 夏天的冰淇淋，秋天的桂花糕，冬天的热米酒，都甜不过你的笑容。");
INSERT INTO fly_details_text VALUES(NULL,"炊烟","丽江 雪山马场","一百个夏天的句子，都不及你可爱的样子。");

#four
#三亚
INSERT INTO fly_details_text VALUES(NULL,"阿豪&花花","三亚 幸福湾","在这个不动声色的日子里，遇见美好的你真好，所以我实在忍不住，想陪你到老。");
INSERT INTO fly_details_text VALUES(NULL,"小超&思琪","三亚 呆呆岛","我有没有告诉过你，那么多花草树木、河流高山、繁星宇宙、小猫小狗、蝴蝶蜜蜂我只喜欢你一个。");
INSERT INTO fly_details_text VALUES(NULL,"小帆&瀚天","三亚 呆呆岛","他望了她一眼， 她对他回眸一笑， 生命突然复苏。");
#丽江
INSERT INTO fly_details_text VALUES(NULL,"甜甜&天予","丽江 蓝月谷","海底月是天上月，眼前人是心上人。");
INSERT INTO fly_details_text VALUES(NULL,"明明&小鹤","丽江 新基地","我见过春日夏风秋叶冬雪，也踏遍南水北山东麓西岭，可这四季春秋，苍山泱水，都不及你冲我，展眉一笑。");







#创建评论表
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
 INSERT INTO fly_in VALUES(10,'ins生活','img/second/j-i14.png',NULL,NULL);
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





