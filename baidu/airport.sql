/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80015
Source Host           : localhost:3306
Source Database       : baiduapi

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2019-08-24 19:13:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for airport
-- ----------------------------
DROP TABLE IF EXISTS `airport`;
CREATE TABLE `airport` (
  `name` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `overall_rating` varchar(255) DEFAULT NULL,
  `location_lat` float DEFAULT NULL,
  `location_lng` float DEFAULT NULL,
  `navi_location_lat` float DEFAULT NULL,
  `navi_location_lng` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of airport
-- ----------------------------
INSERT INTO `airport` VALUES ('北京首都国际机场', '北京市', '北京市', '朝阳区', '北京市朝阳区机场西路', '交通设施;飞机场', 'life', '4.6', '40.0838', '116.61', '40.0608', '116.622');
INSERT INTO `airport` VALUES ('沙河机场', '北京市', '北京市', '昌平区', '昌52路', '公交车站', null, null, '40.1537', '116.325', null, null);
INSERT INTO `airport` VALUES ('上海浦东国际机场', '上海市', '上海市', '浦东新区', '上海市浦东新区迎宾大道6000号', '交通设施;飞机场', 'life', '4.2', '31.1575', '121.815', '31.1567', '121.81');
INSERT INTO `airport` VALUES ('上海虹桥国际机场', '上海市', '上海市', '长宁区', '上海市长宁区虹桥路2550号', '交通设施;飞机场', 'life', '4.2', '31.2033', '121.347', '31.1998', '121.333');
INSERT INTO `airport` VALUES ('广州白云国际机场', '广东省', '广州市', '花都区', '广州市花都区机场大道东888号', '交通设施;飞机场', 'life', '4.1', '23.3929', '113.31', '23.391', '113.31');
INSERT INTO `airport` VALUES ('广州白云国际机场-A区国内到达', '广东省', '广州市', '花都区', '广东省广州市花都区人和镇广州白云国际机场', '出入口;机场出口', 'life', '4.7', '23.3923', '113.312', '23.3923', '113.312');
INSERT INTO `airport` VALUES ('深圳宝安国际机场', '广东省', '深圳市', '宝安区', '深圳市宝安区宝安大道', '交通设施;飞机场', 'life', '4.4', '22.6382', '113.822', '22.63', '113.821');
INSERT INTO `airport` VALUES ('机场', '广东省', '深圳市', '宝安区', '11号线', '地铁站', null, null, '22.6293', '113.821', null, null);
INSERT INTO `airport` VALUES ('武汉天河国际机场', '湖北省', '武汉市', '黄陂区', '武汉市黄陂区机场大道', '交通设施;飞机场', 'life', '4.0', '30.7763', '114.217', '30.7773', '114.226');
INSERT INTO `airport` VALUES ('天河机场', '湖北省', '武汉市', '黄陂区', '轨道交通2号线', '地铁站', null, null, '30.7763', '114.223', null, null);
INSERT INTO `airport` VALUES ('杭州萧山国际机场', '浙江省', '杭州市', '萧山区', '杭州市萧山区空港大道', '交通设施;飞机场', 'life', '4.1', '30.2406', '120.443', '30.2389', '120.442');
INSERT INTO `airport` VALUES ('建德千岛湖通用机场', '浙江省', '杭州市', '建德市', '杭州市建德市寿昌镇320国道', '交通设施;飞机场', 'life', '3.2', '29.3626', '119.191', '29.3601', '119.192');
INSERT INTO `airport` VALUES ('南京禄口国际机场', '江苏省', '南京市', '江宁区', '南京市江宁区禄口镇空港南路', '交通设施;飞机场', 'life', '4.2', '31.7362', '118.882', '31.7365', '118.882');
INSERT INTO `airport` VALUES ('机场村', '江苏省', '南京市', '江宁区', '南京市江宁区八五一乡道', '行政地标;村庄', 'life', null, '31.985', '118.848', '31.9848', '118.849');
INSERT INTO `airport` VALUES ('成都双流国际机场', '四川省', '成都市', '双流区', '四川省成都市双流区机场路', '交通设施;飞机场', 'life', '4.5', '30.5658', '103.958', '30.5771', '103.963');
INSERT INTO `airport` VALUES ('航空港', '四川省', '成都市', '双流区', '双流区', '商圈', 'life', null, '30.5755', '103.996', null, null);
INSERT INTO `airport` VALUES ('重庆江北国际机场', '重庆市', '重庆市', '渝北区', '重庆市渝北区两路镇机场路', '交通设施;飞机场', 'life', '3.9', '29.7232', '106.645', '29.7232', '106.644');
INSERT INTO `airport` VALUES ('万州五桥机场', '重庆市', '重庆市', '万州区', '重庆市万州区机场路', '交通设施;飞机场', 'life', '4.0', '30.8061', '108.442', '30.8032', '108.438');
INSERT INTO `airport` VALUES ('宝安国际机场东莞货站', '广东省', '东莞市', '', '宏成国际A区06栋133A号', '生活服务;物流公司', 'enterprise', null, '22.9849', '113.734', '22.985', '113.734');
INSERT INTO `airport` VALUES ('东莞CBD国际航空港(南城城市候机楼)', '广东省', '东莞市', '', '广东省东莞市三街五金城1号', '交通设施;其他', 'life', '2.6', '22.9835', '113.734', '22.9834', '113.734');
INSERT INTO `airport` VALUES ('大连周水子国际机场', '辽宁省', '大连市', '甘井子区', '大连市甘井子区迎客路100号', '交通设施;飞机场', 'life', '3.9', '38.9694', '121.55', '38.9682', '121.552');
INSERT INTO `airport` VALUES ('机场', '辽宁省', '大连市', '甘井子区', '地铁2号线', '地铁站', null, null, '38.9679', '121.546', null, null);
INSERT INTO `airport` VALUES ('沈阳桃仙国际机场', '辽宁省', '沈阳市', '浑南区', '沈阳市浑南区桃仙镇机场路', '交通设施;飞机场', 'life', '4.2', '41.6391', '123.5', '41.6408', '123.499');
INSERT INTO `airport` VALUES ('桃仙机场', '辽宁省', '沈阳市', '浑南区', '机场巴士1号线;机场巴士2号线;机场巴士3号线;机场巴士本溪线;机场快线夜班;有轨电车2号线;有轨电车6号线', '公交车站', null, null, '41.6415', '123.502', null, null);
INSERT INTO `airport` VALUES ('昆明长水国际机场', '云南省', '昆明市', '官渡区', '云南省昆明市官渡区长水村', '交通设施;飞机场', 'life', '3.8', '25.1029', '102.936', '25.1015', '102.935');
INSERT INTO `airport` VALUES ('航空港', '云南省', '昆明市', '官渡区', '关景路与雨龙路交叉口西北150米', '房地产;住宅区', 'house', null, '25.0134', '102.761', null, null);
INSERT INTO `airport` VALUES ('长沙黄花国际机场', '湖南省', '长沙市', '长沙县', '长沙市长沙县黄花镇机场大道', '交通设施;飞机场', 'life', '4.2', '28.194', '113.232', '28.1927', '113.226');
INSERT INTO `airport` VALUES ('黄花机场', '湖南省', '长沙市', '长沙县', '114路;x301路;星通30路', '公交车站', null, null, '28.1995', '113.223', null, null);
INSERT INTO `airport` VALUES ('合肥新桥国际机场', '安徽省', '合肥市', '蜀山区', '合肥市蜀山区高刘镇', '交通设施;飞机场', 'life', '4.0', '31.9926', '116.976', '31.992', '116.976');
INSERT INTO `airport` VALUES ('新桥国际机场', '安徽省', '合肥市', '蜀山区', '机场巴士1号线;机场巴士2号线;机场巴士2号线a线;机场巴士3号线;机场巴士4号线;机场巴士4号线a线;机场巴士4号线b线', '公交车站', null, null, '31.9923', '116.977', null, null);
INSERT INTO `airport` VALUES ('宁波栎社国际机场', '浙江省', '宁波市', '鄞州区', '宁波市鄞州区航空路', '交通设施;飞机场', 'life', '4.0', '29.8274', '121.474', '29.8242', '121.474');
INSERT INTO `airport` VALUES ('宁波栎社国际机场-国内出发', '浙江省', '宁波市', '海曙区', '栎社', '出入口;机场入口', 'life', '2.0', '29.8245', '121.473', '29.8242', '121.474');
INSERT INTO `airport` VALUES ('郑州新郑国际机场', '河南省', '郑州市', '新郑市', '郑州市航空港区迎宾大道', '交通设施;飞机场', 'life', '4.2', '34.5322', '113.861', '34.5317', '113.86');
INSERT INTO `airport` VALUES ('航空港苹果城', '河南省', '郑州市', '新郑市', '解放路', '房地产;住宅区', 'house', null, '34.4857', '113.786', '34.4857', '113.788');
INSERT INTO `airport` VALUES ('天津滨海国际机场', '天津市', '天津市', '东丽区', '天津市东丽区机场大道1号', '交通设施;飞机场', 'life', '4.1', '39.137', '117.368', '39.1376', '117.365');
INSERT INTO `airport` VALUES ('滨海国际机场', '天津市', '天津市', '东丽区', '地铁2号线', '地铁站', null, null, '39.1397', '117.367', null, null);
INSERT INTO `airport` VALUES ('青岛流亭国际机场', '山东省', '青岛市', '城阳区', '青岛市城阳区民航路99号', '交通设施;飞机场', 'life', '4.1', '36.2731', '120.392', '36.273', '120.394');
INSERT INTO `airport` VALUES ('飞机场', '山东省', '青岛市', '胶州市', '胶州207路;胶州5路;胶州603路;胶州607路', '公交车站', null, null, '36.3195', '120.022', null, null);
INSERT INTO `airport` VALUES ('长春龙嘉国际机场', '吉林省', '长春市', '九台区', '长春市九台区龙嘉镇机场路', '交通设施;飞机场', 'life', '3.8', '44.0015', '125.698', '44.0008', '125.704');
INSERT INTO `airport` VALUES ('机场', '吉林省', '长春市', '九台区', '机场巴士1号线;机场巴士2号线', '公交车站', null, null, '44.0005', '125.704', null, null);
INSERT INTO `airport` VALUES ('哈尔滨太平国际机场', '黑龙江省', '哈尔滨市', '道里区', '哈尔滨市道里区迎宾一路', '交通设施;飞机场', 'life', '3.9', '45.6336', '126.26', '45.6281', '126.245');
INSERT INTO `airport` VALUES ('火车站机场巴士售票处', '黑龙江省', '哈尔滨市', '南岗区', '黑龙江省哈尔滨市南岗区松花江街6-14号', '生活服务;售票处', 'life', '5.0', '45.7646', '126.64', null, null);
INSERT INTO `airport` VALUES ('济南遥墙国际机场', '山东省', '济南市', '历城区', '济南市历城区遥墙镇机场路', '交通设施;飞机场', 'life', '3.7', '36.8573', '117.221', '36.8579', '117.22');
INSERT INTO `airport` VALUES ('机场', '山东省', '济南市', '历城区', '309路;k921路', '公交车站', null, null, '36.8647', '117.218', null, null);
INSERT INTO `airport` VALUES ('厦门高崎国际机场', '福建省', '厦门市', '湖里区', '厦门市湖里区翔云一路', '交通设施;飞机场', 'life', '4.5', '24.545', '118.144', '24.5402', '118.139');
INSERT INTO `airport` VALUES ('厦门国际航空港花园酒店', '福建省', '厦门市', '湖里区', '福建省厦门市湖里区翔云一路50号高崎国际机场', '酒店;星级酒店', 'hotel', '4.5', '24.5354', '118.132', '24.5354', '118.132');
INSERT INTO `airport` VALUES ('苏南硕放国际机场', '江苏省', '无锡市', '新吴区', '无锡市新吴区机场路1号', '交通设施;飞机场', 'life', '4.1', '31.5089', '120.44', '31.5086', '120.439');
INSERT INTO `airport` VALUES ('无锡机场', '江苏省', '无锡市', '新吴区', '机场1号线', '公交车站', null, null, '31.5107', '120.44', null, null);
INSERT INTO `airport` VALUES ('常州奔牛国际机场-国内出发', '江苏省', '常州市', '新北区', '罗墅湾常州奔牛国际机场2层', '出入口;机场入口', 'life', '3.9', '31.9171', '119.793', '31.9166', '119.794');
INSERT INTO `airport` VALUES ('常州奔牛国际机场-国内到达', '江苏省', '常州市', '新北区', '罗墅湾常州奔牛机场1层', '出入口;机场出口', 'life', '0.0', '31.9171', '119.793', '31.9168', '119.794');
INSERT INTO `airport` VALUES ('佛山沙堤机场', '广东省', '佛山市', '南海区', '佛山市南海区狮山镇禅西大道', '交通设施;飞机场', 'life', '2.9', '23.0867', '113.083', '23.0735', '113.077');
INSERT INTO `airport` VALUES ('佛山机场', '广东省', '佛山市', '南海区', '100路;116路;219路;桂31路;南高31路', '公交车站', null, null, '23.0733', '113.077', null, null);
INSERT INTO `airport` VALUES ('香港国际机场', '香港特别行政区', '香港特别行政区', '离岛区', '香港翔天路1号', '交通设施;飞机场', 'life', null, '22.3202', '113.945', '22.3202', '113.945');
INSERT INTO `airport` VALUES ('澳门国际机场', '澳门特别行政区', '澳门特别行政区', '氹仔岛', '澳门特别行政区凼仔岛', '交通设施;飞机场', 'life', null, '22.1605', '113.588', '22.1606', '113.586');
INSERT INTO `airport` VALUES ('南通兴东国际机场', '江苏省', '南通市', '通州区', '南通市通州区兴东镇机场大道1号', '交通设施;飞机场', 'life', '3.7', '32.0794', '120.99', '32.077', '120.987');
INSERT INTO `airport` VALUES ('南通兴东机场-2号楼', '江苏省', '南通市', '通州区', '通州区南通兴东机场2号楼', '房地产;内部楼栋', 'house', null, '32.0782', '120.987', null, null);
INSERT INTO `airport` VALUES ('莱芜航空港', '山东省', '济南市', '莱芜区', '山东省济南市莱芜区凤城西大街197号', '交通设施;其他', 'life', '0.0', '36.2098', '117.661', '36.2094', '117.661');
INSERT INTO `airport` VALUES ('火车票代售处', '山东省', '济南市', '莱芜区', '山东省济南市凤城西大街197号', '生活服务;售票处', 'life', null, '36.2095', '117.661', null, null);
INSERT INTO `airport` VALUES ('泉州晋江国际机场', '福建省', '泉州市', '晋江市', '泉州市晋江市和平中路118号', '交通设施;飞机场', 'life', '3.7', '24.8008', '118.6', '24.8063', '118.598');
INSERT INTO `airport` VALUES ('晋江机场', '福建省', '泉州市', '晋江市', 'k602路;k603路;k605路;晋江21路;晋江3路;晋江45路', '公交车站', null, null, '24.8075', '118.598', null, null);
INSERT INTO `airport` VALUES ('福州长乐国际机场', '福建省', '福州市', '长乐区', '福州市长乐区鹏程路', '交通设施;飞机场', 'life', '4.2', '25.9346', '119.676', '25.9348', '119.681');
INSERT INTO `airport` VALUES ('义序机场', '福建省', '福州市', '仓山区', '50路', '公交车站', null, null, '26.0124', '119.33', null, null);
INSERT INTO `airport` VALUES ('贵阳龙洞堡国际机场', '贵州省', '贵阳市', '南明区', '贵阳市南明区机场路', '交通设施;飞机场', 'life', '4.0', '26.5491', '106.807', '26.5474', '106.806');
INSERT INTO `airport` VALUES ('贵阳龙洞堡机场-T2航站楼', '贵州省', '贵阳市', '南明区', '机场路1号', '交通设施;其他', 'life', '3.7', '26.5502', '106.807', '26.5492', '106.806');
INSERT INTO `airport` VALUES ('南宁吴圩国际机场', '广西壮族自治区', '南宁市', '江南区', '南宁市江南区吴圩镇322国道', '交通设施;飞机场', 'life', '3.9', '22.6137', '108.191', '22.6066', '108.193');
INSERT INTO `airport` VALUES ('南宁吴圩国际机场-T2航站楼', '广西壮族自治区', '南宁市', '江南区', '广西壮族自治区南宁市江南区吴圩镇', '交通设施;其他', 'life', '4.2', '22.6074', '108.192', '22.6072', '108.193');
INSERT INTO `airport` VALUES ('石家庄正定国际机场', '河北省', '石家庄市', '正定县', '石家庄市正定县迎宾路', '交通设施;飞机场', 'life', '3.8', '38.2874', '114.704', '38.284', '114.705');
INSERT INTO `airport` VALUES ('正定机场站', '河北省', '石家庄市', '正定县', '石家庄市正定县昌盛路', '交通设施;火车站', 'life', '4.1', '38.2582', '114.716', '38.2594', '114.715');
INSERT INTO `airport` VALUES ('三女河机场', '河北省', '唐山市', '丰润区', '唐山市丰润区石各庄镇机场路', '交通设施;飞机场', 'life', '3.8', '39.7259', '118.014', '39.7304', '118.006');
INSERT INTO `airport` VALUES ('唐山三女河机场', '河北省', '唐山市', '丰润区', '机场专线1路;机场专线2路', '公交车站', null, null, '39.7322', '118.007', null, null);
INSERT INTO `airport` VALUES ('太原武宿国际机场', '山西省', '太原市', '小店区', '太原市小店区太榆路', '交通设施;飞机场', 'life', '4.0', '37.76', '112.641', '37.7605', '112.641');
INSERT INTO `airport` VALUES ('机场-候机楼', '山西省', '太原市', '小店区', '山西省太原市小店区机场快速路', '交通设施;其他', 'life', '0.0', '37.7602', '112.642', '37.7605', '112.642');
INSERT INTO `airport` VALUES ('烟台蓬莱国际机场', '山东省', '烟台市', '蓬莱市', '山东省烟台市蓬莱市潮水镇空港二路与迎宾八路交叉口', '交通设施;飞机场', 'life', '3.9', '37.6645', '120.998', '37.6642', '120.999');
INSERT INTO `airport` VALUES ('烟台国际机场', '山东省', '烟台市', '蓬莱市', '机场巴士1号线;机场巴士2号线;机场巴士3号线;机场巴士4号线;机场巴士5号线;机场巴士6号线;机场巴士高新区线', '公交车站', null, null, '37.664', '120.999', null, null);
INSERT INTO `airport` VALUES ('威海大水泊国际机场', '山东省', '威海市', '文登区', '威海市文登区大水泊镇01县道', '交通设施;其他', 'life', '3.6', '37.1955', '122.247', '37.1958', '122.248');
INSERT INTO `airport` VALUES ('威海机场', '山东省', '威海市', '文登区', '威海机场巴士1号线', '公交车站', null, null, '37.1947', '122.247', null, null);
INSERT INTO `airport` VALUES ('乌鲁木齐地窝堡国际机场', '新疆维吾尔自治区', '乌鲁木齐市', '新市区', '新疆维吾尔自治区乌鲁木齐市新市区迎宾路', '交通设施;飞机场', 'life', '4.0', '43.9124', '87.487', '43.909', '87.4848');
INSERT INTO `airport` VALUES ('国际机场', '新疆维吾尔自治区', '乌鲁木齐市', '', '27路;51路;153路;535路;913路;6301路', '公交车站', null, null, '43.9036', '87.4918', null, null);
INSERT INTO `airport` VALUES ('呼和浩特白塔国际机场', '内蒙古自治区', '呼和浩特市', '赛罕区', '呼和浩特市赛罕区机场路', '交通设施;飞机场', 'life', '4.2', '40.8593', '111.834', '40.862', '111.827');
INSERT INTO `airport` VALUES ('呼和浩特机场', '内蒙古自治区', '呼和浩特市', '城区', '12路;113路;118路', '公交车站', null, null, '40.8685', '111.826', null, null);
INSERT INTO `airport` VALUES ('兰州中川国际机场', '甘肃省', '兰州市', '永登县', '兰州市永登县中川镇', '交通设施;飞机场', 'life', '3.5', '36.52', '103.627', '36.5095', '103.624');
INSERT INTO `airport` VALUES ('中川机场站', '甘肃省', '兰州市', '永登县', '甘肃省兰州市永登县102省道', '交通设施;火车站', 'life', '3.7', '36.5105', '103.624', '36.5108', '103.624');
INSERT INTO `airport` VALUES ('机场办公楼', '青海省', '西宁市', '城东区', '八一西路32号', '房地产;写字楼', 'house', null, '36.6094', '101.822', '36.609', '101.822');
INSERT INTO `airport` VALUES ('西部机场集团青海机场公司-售票中心', '青海省', '西宁市', '城东区', '八一路机场办公楼', '生活服务;售票处', 'life', '0.0', '36.6092', '101.822', '36.609', '101.821');
INSERT INTO `airport` VALUES ('银川河东国际机场', '宁夏回族自治区', '银川市', '灵武市', '银川市灵武市临河镇', '交通设施;飞机场', 'life', '4.0', '38.3283', '106.4', '38.3293', '106.395');
INSERT INTO `airport` VALUES ('银川河东国际机场T3航站楼', '宁夏回族自治区', '银川市', '灵武市', '银古高速公路河东机场', '交通设施;其他', 'life', '3.0', '38.3262', '106.394', '38.3272', '106.394');
INSERT INTO `airport` VALUES ('徐州观音国际机场', '江苏省', '徐州市', '睢宁县', '徐州市睢宁县双沟镇104国道', '交通设施;飞机场', 'life', '3.5', '34.0611', '117.569', '34.059', '117.567');
INSERT INTO `airport` VALUES ('徐州观音机场-国内出发', '江苏省', '徐州市', '睢宁县', '双沟镇徐州观音国际机场2层', '出入口;机场入口', 'life', null, '34.0591', '117.567', '34.059', '117.567');
INSERT INTO `airport` VALUES ('拉萨市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('山南市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('合肥市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('哈尔滨市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('武汉市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('石家庄市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('广州市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('深圳市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('东莞市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('湛江市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('珠海市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('河源市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('清远市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('中山市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('北京市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('上海市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('杭州市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('温州市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('丽水市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('宁波市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('台州市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('绍兴市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('成都市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('巴中市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('绵阳市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('南充市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('泸州市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('烟台市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('青岛市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('济南市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('德州市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('菏泽市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('潍坊市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('济宁市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('泰安市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('威海市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('南京市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('无锡市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('淮安市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('苏州市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('常州市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('连云港市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('宿迁市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('盐城市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('镇江市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('郑州市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('平顶山市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('商丘市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('新乡市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('驻马店市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('安阳市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('鹤壁市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('济源市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('焦作市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('开封市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('洛阳市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('南阳市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('信阳市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('许昌市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('周口市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('咸阳市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('西安市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('延安市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('榆林市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('天津市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('长沙市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('常德市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('衡阳市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('湘潭市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('株洲市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('沈阳市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('鞍山市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('本溪市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('丹东市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('营口市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('银川市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('吴忠市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('固原市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('石嘴山市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('保定市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('唐山市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('沧州市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('廊坊市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('秦皇岛市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('张家口市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('南宁市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('河池市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('桂林市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('柳州市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('北海市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('梧州市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('厦门市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('泉州市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('福州市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('宁德市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('莆田市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('巴彦淖尔市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('呼和浩特市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('鄂尔多斯市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('赤峰市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('安庆市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('蚌埠市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('池州市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('滁州市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('马鞍山市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('宣城市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('贵阳市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('遵义市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('太原市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('长治市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('晋城市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('阳泉市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('运城市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('兰州市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('克拉玛依市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('塔城地区', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('伊犁哈萨克自治州', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('重庆市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('海口市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('长春市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('萍乡市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('宜春市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('襄阳市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('仙桃市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('丽江市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('昆明市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('海东市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('西宁市', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('南昌昌北国际机场', '江西省', '南昌市', '新建区', '南昌市新建区乐化镇', '交通设施;飞机场', 'life', '3.8', '28.8656', '115.922', '28.8629', '115.919');
INSERT INTO `airport` VALUES ('昌北机场(t2航站楼到达层)', '江西省', '南昌市', '新建区', '机场公交1线;机场公交2线;机场公交3线', '公交车站', null, null, '28.8644', '115.923', null, null);
INSERT INTO `airport` VALUES ('桂林两江国际机场', '广西壮族自治区', '桂林市', '临桂区', '桂林市临桂区两江镇', '交通设施;飞机场', 'life', '3.6', '25.2236', '110.055', '25.2211', '110.059');
INSERT INTO `airport` VALUES ('桂林两江国际机场', '广西壮族自治区', '桂林市', '', '机场巴士安新专线;机场巴士汽车北站专线', '公交车站', null, null, '25.2163', '110.058', null, null);
INSERT INTO `airport` VALUES ('机场', '安徽省', '芜湖市', '鸠江区', '101路', '公交车站', null, null, '31.4046', '118.41', null, null);
INSERT INTO `airport` VALUES ('南京禄口国际机场芜湖城市候机楼', '安徽省', '芜湖市', '镜湖区', '梅莲路1-1号', '交通设施;其他', 'life', '5.0', '31.3537', '118.395', '31.3535', '118.395');
INSERT INTO `airport` VALUES ('海口美兰国际机场', '海南省', '海口市', '美兰区', '琼文大道与201省道交叉口', '交通设施;飞机场', 'life', '4.1', '19.9442', '110.469', '19.9451', '110.469');
INSERT INTO `airport` VALUES ('美兰机场', '海南省', '海口市', '美兰区', '21路;41路;41路快线;218路;219路;k4路;机场巴士1号线;机场巴士2号线', '公交车站', null, null, '19.9476', '110.467', null, null);
INSERT INTO `airport` VALUES ('三亚凤凰国际机场', '海南省', '三亚市', '天涯区', '三亚市天涯区凤凰路', '交通设施;飞机场', 'life', '4.3', '18.3136', '109.419', '18.3139', '109.418');
INSERT INTO `airport` VALUES ('三亚凤凰国际机场-国内航站楼', '海南省', '三亚市', '天涯区', '凤凰镇三亚凤凰国际机场', '交通设施;其他', 'life', '4.8', '18.3136', '109.419', '18.314', '109.418');
INSERT INTO `airport` VALUES ('莱芜航空港', '山东省', '济南市', '莱芜区', '山东省济南市莱芜区凤城西大街197号', '交通设施;其他', 'life', '0.0', '36.2098', '117.661', '36.2094', '117.661');
INSERT INTO `airport` VALUES ('火车票代售处', '山东省', '济南市', '莱芜区', '山东省济南市凤城西大街197号', '生活服务;售票处', 'life', null, '36.2095', '117.661', null, null);
INSERT INTO `airport` VALUES ('张家界荷花机场', '湖南省', '张家界市', '永定区', '张家界市永定区机场路', '交通设施;飞机场', 'life', '3.5', '29.1072', '110.455', '29.1112', '110.451');
INSERT INTO `airport` VALUES ('飞机场', '湖南省', '张家界市', '市永定区', '4路;401路;402路', '公交车站', null, null, '29.1111', '110.459', null, null);
INSERT INTO `airport` VALUES ('景德镇罗家机场', '江西省', '景德镇市', '浮梁县', '景德镇市浮梁县机场路', '交通设施;飞机场', 'life', '3.2', '29.3418', '117.188', '29.3399', '117.191');
INSERT INTO `airport` VALUES ('景德镇机场-国内出发', '江西省', '景德镇市', '浮梁县', '金岭大道景德镇罗家机场1层', '出入口;机场入口', 'life', null, '29.3401', '117.191', '29.34', '117.192');
