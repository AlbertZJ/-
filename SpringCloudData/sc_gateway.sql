/*
 Navicat Premium Data Transfer

 Source Server         : flowable
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : sc_gateway

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 31/07/2020 17:10:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gateway_route
-- ----------------------------
DROP TABLE IF EXISTS `gateway_route`;
CREATE TABLE `gateway_route`  (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'id',
  `route_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '路由id',
  `uri` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'uri路径',
  `predicates` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '判定器',
  `filters` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '过滤器',
  `orders` int(0) NULL DEFAULT NULL COMMENT '排序',
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'Y' COMMENT '状态：Y-有效，N-无效',
  `created_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updated_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `created_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建人',
  `updated_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ux_gateway_routes_uri`(`uri`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '网关路由表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gateway_route
-- ----------------------------
INSERT INTO `gateway_route` VALUES (' 101', 'authorization-server', 'lb://authorization-server:8000', '[{\"name\":\"Path\",\"args\":{\"pattern\":\"/authorization-server/**\"}}]', '[{\"name\":\"StripPrefix\",\"args\":{\"parts\":\"1\"}}]', 100, '授权认证服务网关注册', 'Y', '2020-06-24 17:29:54', '2020-06-24 17:29:54', 'system', 'system');
INSERT INTO `gateway_route` VALUES ('102', 'authentication-server', 'lb://authentication-server:8001', '[{\"name\":\"Path\",\"args\":{\"pattern\":\"/authentication-server/**\"}}]', '[{\"name\":\"StripPrefix\",\"args\":{\"parts\":\"1\"}}]', 100, '签权服务网关注册', 'Y', '2020-06-24 17:29:54', '2020-06-24 17:29:54', 'system', 'system');
INSERT INTO `gateway_route` VALUES ('103', 'organization', 'lb://organization:8010', '[{\"name\":\"Path\",\"args\":{\"pattern\":\"/organization/**\"}}]', '[{\"name\":\"StripPrefix\",\"args\":{\"parts\":\"1\"}}]', 100, '系统管理相关接口', 'Y', '2020-06-24 17:29:54', '2020-06-24 17:29:54', 'system', 'system');
INSERT INTO `gateway_route` VALUES ('104', 'gateway-admin', 'lb://gateway-admin:8445', '[{\"name\":\"Path\",\"args\":{\"pattern\":\"/gateway-admin/**\"}}]', '[{\"name\":\"StripPrefix\",\"args\":{\"parts\":\"1\"}}]', 100, '网关管理相关接口', 'Y', '2020-06-24 17:29:54', '2020-06-28 09:38:25', 'system', 'zenglvyang');
INSERT INTO `gateway_route` VALUES ('1277937291209224193', 'ribbon-consumer', 'lb://ribbon-consumer:8020', '[{\"name\":\"Path\",\"args\":{\"pattern\":\"/ribbon-consumer/**\"}}]', '[{\"name\":\"StripPrefix\",\"args\":{\"parts\":\"1\"}}]', 100, '外界微服务测试', 'Y', '2020-06-30 20:09:28', '2020-06-30 20:13:05', 'zenglvyang', 'zenglvyang');
INSERT INTO `gateway_route` VALUES ('1277956820010352642', 'thinkzhuishu', 'lb://thinkzhuishu:1010', '[{\"name\":\"Path\",\"args\":{\"pattern\":\"/thinkzhuishu/**\"}}]', '[{\"name\":\"StripPrefix\",\"args\":{\"parts\":\"1\"}}]', 100, '外界微服务接口测试', 'Y', '2020-06-30 21:27:04', '2020-06-30 21:27:04', 'zenglvyang', 'zenglvyang');
INSERT INTO `gateway_route` VALUES ('1280023215342641153', 'shop-micro', 'lb://shop-micro:2010', '[{\"name\":\"Path\",\"args\":{\"pattern\":\"/shop-micro/**\"}}]', '[{\"name\":\"StripPrefix\",\"args\":{\"parts\":\"1\"}}]', 100, 'shop', 'Y', '2020-07-06 14:18:11', '2020-07-06 14:18:11', 'zenglvyang', 'zenglvyang');
INSERT INTO `gateway_route` VALUES ('1280309966166585346', 'wx', 'lb://wx:8080', '[{\"name\":\"Path\",\"args\":{\"pattern\":\"/wx/**\"}}]', '[{\"name\":\"StripPrefix\",\"args\":{\"parts\":\"1\"}}]', 20, '微信测试asdfavcx', 'Y', '2020-07-07 09:17:38', '2020-07-21 15:19:26', 'liushifeng', 'admin');
INSERT INTO `gateway_route` VALUES ('1280507322485030913', 'producer', 'lb://producer:9001', '[{\"name\":\"Path\",\"args\":{\"pattern\":\"/producer/**\"}}]', '[{\"name\":\"StripPrefix\",\"args\":{\"parts\":\"1\"}}]', 20, '产品测试', 'Y', '2020-07-07 22:21:51', '2020-07-21 15:18:31', 'zenglvyang', 'admin');

SET FOREIGN_KEY_CHECKS = 1;
