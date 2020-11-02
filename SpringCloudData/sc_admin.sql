/*
 Navicat Premium Data Transfer

 Source Server         : flowable
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : sc_admin

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 31/07/2020 17:09:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for groupd
-- ----------------------------
DROP TABLE IF EXISTS `groupd`;
CREATE TABLE `groupd`  (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'id',
  `parent_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户组父id',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户组名称',
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `deleted` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'N' COMMENT '是否已删除Y：已删除，N：未删除',
  `created_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updated_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `created_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建人',
  `updated_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户组表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of groupd
-- ----------------------------
INSERT INTO `groupd` VALUES ('101', '-1', '总公司', '总公司', 'N', '2020-07-13 18:41:24', '2020-07-13 18:41:24', 'system', 'system');
INSERT INTO `groupd` VALUES ('1011', '102', '上海分公司', '上海分公司', 'N', '2020-07-13 21:55:34', '2020-07-13 21:58:52', 'zengjian', 'zengjian');
INSERT INTO `groupd` VALUES ('10111', '1011', '上海浦东分公司', '上海浦东分公司', 'N', '2020-07-13 21:57:48', '2020-07-13 21:59:17', 'zengjian', 'zengjian');
INSERT INTO `groupd` VALUES ('102', '101', '上海分部', '上海分部是集团重要的组成部分', 'N', '2020-07-13 18:41:24', '2020-07-13 21:37:07', 'system', 'zengjian');
INSERT INTO `groupd` VALUES ('103', '10111', '研发部门', '负责产品研发', 'N', '2020-07-13 18:41:24', '2020-07-13 22:00:12', 'system', 'zengjian');
INSERT INTO `groupd` VALUES ('104', '10111', '产品部门', '负责产品设计', 'N', '2020-07-13 18:41:24', '2020-07-13 22:00:22', 'system', 'zengjian');
INSERT INTO `groupd` VALUES ('105', '10111', '运营部门', '负责公司产品运营', 'N', '2020-07-13 18:41:24', '2020-07-13 22:00:26', 'system', 'zengjian');
INSERT INTO `groupd` VALUES ('106', '10111', '销售部门', '负责公司产品销售', 'N', '2020-07-13 18:41:24', '2020-07-13 22:00:31', 'system', 'zengjian');
INSERT INTO `groupd` VALUES ('107', '101', '北京分部', '北京分部', 'N', '2020-07-13 18:41:24', '2020-07-13 21:38:41', 'system', 'zengjian');
INSERT INTO `groupd` VALUES ('108', '107', '研发部门', '负责产品的研发', 'N', '2020-07-13 20:48:05', '2020-07-13 21:23:14', 'zengjian', 'zengjian');
INSERT INTO `groupd` VALUES ('109', '107', '销售部门', '负责产品的销售', 'N', '2020-07-13 21:00:38', '2020-07-13 21:00:38', 'zengjian', 'zengjian');
INSERT INTO `groupd` VALUES ('301', '101', '广东分部', '广东分部是集团内部实力强悍，创新能力一流的分部', 'N', '2020-07-13 21:34:14', '2020-07-13 21:39:37', 'zengjian', 'zengjian');
INSERT INTO `groupd` VALUES ('3011', '301', '广州分部', '广州分部实力一流', 'N', '2020-07-13 21:35:32', '2020-07-13 21:48:04', 'zengjian', 'zengjian');
INSERT INTO `groupd` VALUES ('30111', '3011', '缀术科技', '缀术科技主要负责智能监测平台的研发', 'N', '2020-07-13 21:46:55', '2020-07-14 11:46:45', 'zengjian', 'zengjian');
INSERT INTO `groupd` VALUES ('3012', '301', '深圳分公司', '深圳分公司是广东范围内创新能力最强的分公司', 'N', '2020-07-13 21:44:50', '2020-07-13 21:44:50', 'zengjian', 'zengjian');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'id',
  `parent_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '父菜单id',
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '菜单类型',
  `href` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '菜单路径',
  `icon` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `order_num` int(0) NULL DEFAULT NULL COMMENT '创建时间',
  `created_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updated_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `created_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建人',
  `updated_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '菜单表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('101', '-1', 'MENU', '/admin', 'setting', '系统管理', '系统设置管理', 0, '2020-07-13 18:16:09', '2020-07-13 18:16:09', 'system', 'system');
INSERT INTO `menu` VALUES ('102', '101', 'MENU', '/admin/users', 'fa-user', '用户管理', '用户新增，修改，查看，删除', 0, '2020-07-13 18:16:09', '2020-07-15 17:30:58', 'system', 'zengjian');
INSERT INTO `menu` VALUES ('103', '101', 'MENU', '/admin/menus', 'category', '菜单管理', '菜单新增，修改，删除', 20, '2020-07-13 18:16:09', '2020-07-13 18:16:09', 'system', 'system');
INSERT INTO `menu` VALUES ('1283342607136612353', '101', 'MENU', '/position', 'setting', '职位管理', '职位管理', 0, '2020-07-15 18:08:16', '2020-07-15 18:08:16', 'zengjian', 'zengjian');
INSERT INTO `menu` VALUES ('1283959305078427649', '101', 'MENU', '/group', 'setting', '组织管理', '系统组织管理', 0, '2020-07-17 10:58:48', '2020-07-17 10:58:48', 'fengrongsheng', 'fengrongsheng');

-- ----------------------------
-- Table structure for position
-- ----------------------------
DROP TABLE IF EXISTS `position`;
CREATE TABLE `position`  (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'id',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '岗位名称',
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `deleted` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'N' COMMENT '是否已删除Y：已删除，N：未删除',
  `created_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updated_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `created_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建人',
  `updated_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '岗位表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of position
-- ----------------------------
INSERT INTO `position` VALUES ('101', '首席执行官', '公司CEO，负责公司的整体运转', 'N', '2020-06-24 16:53:57', '2020-07-15 17:32:45', 'system', 'zengjian');
INSERT INTO `position` VALUES ('102', '首席运营官', '公司COO，负责公司整体运营', 'N', '2020-06-24 16:53:57', '2020-06-24 16:53:57', 'system', 'system');
INSERT INTO `position` VALUES ('103', '首席技术官', '公司CTO，负责公司整体运营', 'N', '2020-06-24 16:53:57', '2020-06-24 16:53:57', 'system', 'system');
INSERT INTO `position` VALUES ('1283296507864289282', '首席教授', '负责公司项目的讲解', 'N', '2020-07-15 15:05:05', '2020-07-15 16:38:15', 'admin', 'admin');
INSERT INTO `position` VALUES ('1283298141415673858', '首席软件工程师', '负责公司项目的讲解', 'N', '2020-07-15 15:11:34', '2020-07-15 15:11:34', 'admin', 'admin');
INSERT INTO `position` VALUES ('1283332848824115202', '前端工程师', '负责项目前端开发', 'N', '2020-07-15 17:29:29', '2020-07-15 17:29:40', 'zengjian', 'zengjian');

-- ----------------------------
-- Table structure for resource
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource`  (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '资源id',
  `parent_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '父id',
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '资源code',
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '资源类型',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '资源名称',
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '资源url',
  `method` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '资源方法',
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '简介',
  `created_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updated_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `created_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建人',
  `updated_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '更新人',
  `deleted` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'N' COMMENT '是否已删除Y：已删除，N：未删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ux_resource_code`(`code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '资源表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of resource
-- ----------------------------
INSERT INTO `resource` VALUES ('1', '-1', 'all', 'all', '资源管理', '/resourceAdministration', '/', '资源管理', '2020-07-18 23:58:21', '2020-07-19 21:10:09', 'admin', 'admin', 'N');
INSERT INTO `resource` VALUES ('101', '1284838256529137665', 'user_manager:btn_add', 'user', '新增用户', '/user', 'POST', '新增用户功能a', '2020-06-24 16:53:56', '2020-07-19 21:12:06', 'system', 'admin', 'N');
INSERT INTO `resource` VALUES ('102', '1284838256529137665', 'user_manager:btn_edit', 'user', '编辑用户', '/user/{id}', 'PUT', '编辑用户功能', '2020-06-24 16:53:56', '2020-07-19 21:12:35', 'system', 'admin', 'N');
INSERT INTO `resource` VALUES ('103', '1284838256529137665', 'user_manager:btn_del', 'user', '删除用户', '/user/{id}', 'DELETE', '根据用户id删除用户', '2020-06-24 16:53:56', '2020-07-19 21:12:45', 'system', 'admin', 'N');
INSERT INTO `resource` VALUES ('104', '1284838256529137665', 'user_manager:view', 'user', '查看用户', '/user/{id}', 'GET', '根据用户id获取用户', '2020-06-24 16:53:56', '2020-07-19 21:12:54', 'system', 'admin', 'N');
INSERT INTO `resource` VALUES ('105', '1284838256529137665', 'user_manager:query', 'user', '搜索用户', '/user/conditions', 'POST', '根据条件查询用户', '2020-06-24 16:53:56', '2020-07-19 21:13:02', 'system', 'admin', 'N');
INSERT INTO `resource` VALUES ('106', '1284838256529137665', 'user_manager:get', 'user', '获取用户', '/user', 'GET', '根据唯一标识获取用户', '2020-06-24 16:53:56', '2020-07-19 21:13:11', 'system', 'admin', 'N');
INSERT INTO `resource` VALUES ('1281526354961100801', '1284839368690786305', 'tea_manager:add', 'tea', '新增tea', '/tea', 'POST', '新增tea', '2020-07-10 17:51:07', '2020-07-19 21:16:12', 'zengjian', 'admin', 'N');
INSERT INTO `resource` VALUES ('1281526648008732674', '1284839368690786305', 'tea_manager:edit', 'tea', '编辑tea', '/tea/{id}', 'PUT', '编辑tea', '2020-07-10 17:52:17', '2020-07-19 21:16:33', 'zengjian', 'admin', 'N');
INSERT INTO `resource` VALUES ('1281526913311043585', '1284839368690786305', 'tea_manager:del', 'tea', '删除tea', '/tea/{id}', 'DELETE', '删除teafddffdgdasf', '2020-07-10 17:53:20', '2020-07-19 21:16:43', 'zengjian', 'admin', 'N');
INSERT INTO `resource` VALUES ('1281527147399344129', '1284839368690786305', 'tea_manager:view', 'tea', '查看tea', '/tea/{id}', 'GET', '查看tea', '2020-07-10 17:54:16', '2020-07-19 21:16:51', 'zengjian', 'admin', 'N');
INSERT INTO `resource` VALUES ('1281527423489404930', '1284839368690786305', 'tea_manager:query', 'tea', '搜索tea', '/tea/conditions', 'POST', '搜索tea', '2020-07-10 17:55:22', '2020-07-20 18:49:32', 'zengjian', 'admin', 'N');
INSERT INTO `resource` VALUES ('1281528200064790530', '1284839368690786305', 'tea_manager:all', 'tea', '获取所有tea', '/tea/all', 'GET', '获取所有tea', '2020-07-10 17:58:27', '2020-07-19 21:17:10', 'zengjian', 'admin', 'N');
INSERT INTO `resource` VALUES ('1282690075083259905', '1284844738142298114', 'menu_manager:parent', 'menu', '根据父id查询菜单', '/menu/parent/{id}', 'GET', '根据父id查询菜单', '2020-07-13 22:55:20', '2020-07-19 21:39:47', 'zengjian', 'admin', 'N');
INSERT INTO `resource` VALUES ('1282690592811368450', '1284844738142298114', 'menu_manager:get', 'menu', '查看菜单', '/menu/{id}', 'GET', '根据id查看菜单', '2020-07-13 22:57:23', '2020-07-19 21:37:26', 'zengjian', 'admin', 'N');
INSERT INTO `resource` VALUES ('1282691124124827649', '1284844738142298114', 'menu_manager:query', 'menu', '搜索菜单', '/menu/conditions', 'POST', '根据条件查询菜单信息', '2020-07-13 22:59:30', '2020-07-19 21:37:39', 'zengjian', 'admin', 'N');
INSERT INTO `resource` VALUES ('1282691496780349442', '1284844738142298114', 'menu_manager:del', 'menu', '删除菜单', '/menu/{id}', 'DELETE', '根据id删除菜单', '2020-07-13 23:00:59', '2020-07-19 21:37:51', 'zengjian', 'admin', 'N');
INSERT INTO `resource` VALUES ('1282691815530676225', '1284844738142298114', 'menu_manager:edit', 'menu', '编辑菜单', '/menu/{id}', 'PUT', '编辑菜单', '2020-07-13 23:02:15', '2020-07-19 21:38:07', 'zengjian', 'admin', 'N');
INSERT INTO `resource` VALUES ('1282693893455986690', '1284844738142298114', 'menu_manager:add', 'menu', '新增菜单', '/menu', 'POST', '新增菜单', '2020-07-13 23:10:30', '2020-07-19 21:38:17', 'zengjian', 'admin', 'N');
INSERT INTO `resource` VALUES ('1282694721864581122', '1284840598779486209', 'position_manager:btn_add', 'position', '新增岗位', '/position', 'POST', '新增岗位', '2020-07-13 23:13:48', '2020-07-19 21:22:09', 'zengjian', 'admin', 'N');
INSERT INTO `resource` VALUES ('1282695381360164866', '1284840598779486209', 'position_manager:btn_edit', 'position', '编辑岗位', '/position/{id}', 'PUT', '编辑岗位功能', '2020-07-13 23:16:25', '2020-07-19 21:22:20', 'zengjian', 'admin', 'N');
INSERT INTO `resource` VALUES ('1282695809753792513', '1284840598779486209', 'position_manager:btn_del', 'position', '删除岗位', '/position/{id}', 'DELETE', '根据id删除岗位信息', '2020-07-13 23:18:07', '2020-07-19 21:22:37', 'zengjian', 'admin', 'N');
INSERT INTO `resource` VALUES ('1282696275397033986', '1284840598779486209', 'position_manager:view', 'position', '查看岗位信息', '/position/{id}', 'GET', '根据id获取岗位信息', '2020-07-13 23:19:58', '2020-07-19 21:21:02', 'zengjian', 'admin', 'N');
INSERT INTO `resource` VALUES ('1282697029075714049', '1284840598779486209', 'position_manager:user', 'position', '根据用户id查询岗位', '/position/user/{userId}', 'GET', '根据用户id获取用户拥有的岗位信息集', '2020-07-13 23:22:58', '2020-07-19 21:21:15', 'zengjian', 'admin', 'N');
INSERT INTO `resource` VALUES ('1282697388863111170', '1284840598779486209', 'positin_manager:all', 'position', '获取所有岗位', '/position/all', 'GET', '获取所有岗位', '2020-07-13 23:24:24', '2020-07-19 21:21:33', 'zengjian', 'admin', 'N');
INSERT INTO `resource` VALUES ('1282698339523084289', '1284840598779486209', 'position_manager:query', 'position', '搜索岗位信息', '/position/conditions', 'POST', '根据条件搜索岗位信息', '2020-07-13 23:28:10', '2020-07-19 21:21:42', 'zengjian', 'admin', 'N');
INSERT INTO `resource` VALUES ('1283046453295558658', '1284840598779486209', 'position_manager:get', 'position', '查询岗位', '/position', 'GET', '查询岗位', '2020-07-14 22:31:27', '2020-07-19 21:21:51', 'zengjian', 'admin', 'N');
INSERT INTO `resource` VALUES ('1283302106563874817', '1284842783294644225', 'group_manager:see', 'group', '查看用户组织', '/group', 'GET', '根据条件查询用户组织信息，简单查询', '2020-07-15 15:27:19', '2020-07-19 21:38:46', 'zengjian', 'admin', 'N');
INSERT INTO `resource` VALUES ('1283752978595037186', '1284842783294644225', 'group_manager:all', 'group', '获取所有组织', '/group/all', 'GET', '获取所有组织', '2020-07-16 21:18:56', '2020-07-19 21:38:56', 'admin', 'admin', 'N');
INSERT INTO `resource` VALUES ('1284521899698688001', '1284843658289373185', 'resource_manager:parent', 'resource', '根据父id查询资源组', '/resource/parent/{id}', 'GET', '根据父id查询资源组', '2020-07-19 00:14:21', '2020-07-19 21:34:01', 'liqiang', 'admin', 'N');
INSERT INTO `resource` VALUES ('1284838256529137665', '1284849788033982465', 'user', 'user', '用户管理', '/userManagement', '/', '用户管理的资源根目录', '2020-07-19 21:11:26', '2020-07-19 21:57:42', 'admin', 'admin', 'N');
INSERT INTO `resource` VALUES ('1284839368690786305', '1284847575056277505', 'tea', 'tea', 'tea管理', '/teaManagement', '/', '测试单个微服务tea的各种接口', '2020-07-19 21:15:51', '2020-07-19 21:49:14', 'admin', 'admin', 'N');
INSERT INTO `resource` VALUES ('1284839947097890817', '1284849788033982465', 'role', 'role', '角色管理', '/roleManagement ', '/', '角色管理', '2020-07-19 21:18:09', '2020-07-19 21:58:22', 'admin', 'admin', 'N');
INSERT INTO `resource` VALUES ('1284840598779486209', '1284849788033982465', 'position', 'position', '岗位管理', '/postManagement', '/', '岗位管理根目录', '2020-07-19 21:20:45', '2020-07-19 21:58:44', 'admin', 'admin', 'N');
INSERT INTO `resource` VALUES ('1284841296862666753', '1284847575056277505', 'shop', 'shop', 'shop管理', '/shopManagement', '/', 'shop管理', '2020-07-19 21:23:31', '2020-07-19 21:49:04', 'admin', 'admin', 'N');
INSERT INTO `resource` VALUES ('1284841798987964418', '1284849788033982465', 'gateway', 'gateway', '网关管理', '/theGatewayManagement', '/', '网关管理', '2020-07-19 21:25:31', '2020-07-19 21:58:51', 'admin', 'admin', 'N');
INSERT INTO `resource` VALUES ('1284842783294644225', '1284849788033982465', 'group', 'group', '组织管理', '/organizationalManagement ', '/', '组织管理', '2020-07-19 21:29:25', '2020-07-19 21:59:01', 'admin', 'admin', 'N');
INSERT INTO `resource` VALUES ('1284843658289373185', '1284849788033982465', 'resource', 'resource', '路由管理', '/routingManagement', '/', '路由管理', '2020-07-19 21:32:54', '2020-07-19 21:59:10', 'admin', 'admin', 'N');
INSERT INTO `resource` VALUES ('1284844422772580353', '1284847575056277505', 'product', 'product', '产品管理', '/productManagement ', '/', '产品管理', '2020-07-19 21:35:56', '2020-07-19 21:48:51', 'admin', 'admin', 'N');
INSERT INTO `resource` VALUES ('1284844738142298114', '1284849788033982465', 'menu', 'menu', '菜单管理', '/menuManagement', '/', '菜单管理', '2020-07-19 21:37:11', '2020-07-19 21:59:18', 'admin', 'admin', 'N');
INSERT INTO `resource` VALUES ('1284847575056277505', '1', 'demo', 'demo', '测试用例', '/testCase', '/', '测试用例，不作为项目代码', '2020-07-19 21:48:28', '2020-07-19 21:48:28', 'admin', 'admin', 'N');
INSERT INTO `resource` VALUES ('1284849788033982465', '1', 'programmer', 'programmer', '开发人员', '/developer', '/', '针对开发人员的管理', '2020-07-19 21:57:15', '2020-07-19 21:57:15', 'admin', 'admin', 'N');
INSERT INTO `resource` VALUES ('1284850891022688257', '1', 'HumanResourceManagement', 'HumanResourceManagement', '人力资源项目', '/humanResourcesProject', '/', '人力资源项目相关路由', '2020-07-19 22:01:38', '2020-07-19 22:15:31', 'admin', 'admin', 'N');
INSERT INTO `resource` VALUES ('201', '1284839947097890817', 'role_manager:btn_add', 'role', '新增角色', '/role', 'POST', '新增角色功能', '2020-06-24 16:53:56', '2020-07-19 21:18:25', 'system', 'admin', 'N');
INSERT INTO `resource` VALUES ('202', '1284839947097890817', 'role_manager:btn_edit', 'role', '编辑角色', '/role/{id}', 'PUT', '编辑角色功能', '2020-06-24 16:53:56', '2020-07-19 21:18:34', 'system', 'admin', 'N');
INSERT INTO `resource` VALUES ('203', '1284839947097890817', 'role_manager:btn_del', 'role', '删除角色', '/role/{id}', 'DELETE', '根据id删除角色', '2020-06-24 16:53:56', '2020-07-19 21:18:43', 'system', 'admin', 'N');
INSERT INTO `resource` VALUES ('204', '1284839947097890817', 'role_manager:view', 'role', '查看角色', '/role/{id}', 'GET', '根据id获取角色', '2020-06-24 16:53:56', '2020-07-19 21:18:49', 'system', 'admin', 'N');
INSERT INTO `resource` VALUES ('205', '1284839947097890817', 'role_manager:user', 'role', '根据用户id查询角色', '/role/user/{userId}', 'GET', '根据用户id获取用户所拥有的角色集', '2020-06-24 16:53:56', '2020-07-19 21:18:58', 'system', 'admin', 'N');
INSERT INTO `resource` VALUES ('206', '1284839947097890817', 'role_manager:all', 'role', '获取所有角色', '/role/all', 'GET', '获取所有角色', '2020-06-24 16:53:56', '2020-07-19 21:19:08', 'system', 'admin', 'N');
INSERT INTO `resource` VALUES ('207', '1284839947097890817', 'role_manager:query', 'role', '搜索角色', '/role/conditions', 'POST', '根据条件查询角色', '2020-06-24 16:53:56', '2020-07-19 21:19:45', 'system', 'admin', 'N');
INSERT INTO `resource` VALUES ('208', '1284839947097890817', 'role_manager:get', 'role', '测试外部接口', '/role', 'GET', '测试外部接口', '2020-07-07 14:12:54', '2020-07-19 21:35:03', 'system', 'admin', 'N');
INSERT INTO `resource` VALUES ('301', '1284842783294644225', 'group_manager:parent', 'group', '根据父id查询组织', '/group/parent/{id}', 'GET', '根据父id查询用户组织', '2020-06-24 16:53:56', '2020-07-19 21:31:39', 'system', 'admin', 'N');
INSERT INTO `resource` VALUES ('302', '1284842783294644225', 'group_manager:get', 'group', '查看用户组织', '/group/{id}', 'GET', '根据id查询用户组织', '2020-06-24 16:53:56', '2020-07-19 21:29:45', 'system', 'admin', 'N');
INSERT INTO `resource` VALUES ('303', '1284842783294644225', 'group_manager:query', 'group', '搜索用户组织', '/group/conditions', 'POST', '根据条件查询用户组织信息', '2020-06-24 16:53:56', '2020-07-19 21:29:57', 'system', 'admin', 'N');
INSERT INTO `resource` VALUES ('304', '1284842783294644225', 'group_manager:del', 'group', '删除用户组织', '/group/{id}', 'DELETE', '根据用户id删除用户组织', '2020-06-24 16:53:56', '2020-07-19 21:30:11', 'system', 'admin', 'N');
INSERT INTO `resource` VALUES ('305', '1284842783294644225', 'group_manager:edit', 'group', '编辑用户组织', '/group/{id}', 'PUT', '修改用户组织', '2020-06-24 16:53:56', '2020-07-19 21:30:20', 'system', 'admin', 'N');
INSERT INTO `resource` VALUES ('306', '1284842783294644225', 'group_manager:add', 'group', '新增用户组织', '/group', 'POST', '新增用户组织', '2020-06-24 16:53:56', '2020-07-19 21:30:30', 'system', 'admin', 'N');
INSERT INTO `resource` VALUES ('307', '1284841798987964418', 'gateway_manager:add', 'gateway', '新增网关路由', '/gateway/routes', 'POST', '新增网关路由', '2020-06-24 16:53:56', '2020-07-19 21:27:09', 'system', 'admin', 'N');
INSERT INTO `resource` VALUES ('308', '1284841798987964418', 'gateway_manager:edit', 'gateway', '修改网关路由', '/gateway/routes/{id}', 'PUT', '修改网关路由', '2020-06-24 16:53:56', '2020-07-19 21:27:03', 'system', 'admin', 'N');
INSERT INTO `resource` VALUES ('309', '1284841798987964418', 'gateway_manager:adel', 'gateway', '删除网关路由', '/gateway/routes/{id}', 'DELETE', '删除网关路由', '2020-06-24 16:53:56', '2020-07-19 21:26:57', 'system', 'admin', 'N');
INSERT INTO `resource` VALUES ('310', '1284841798987964418', 'gateway_manager:view', 'gateway', '查看网关路由', '/gateway/routes/{id}', 'GET', '查看网关路由', '2020-06-24 16:53:56', '2020-07-19 21:26:49', 'system', 'admin', 'N');
INSERT INTO `resource` VALUES ('311', '1284841798987964418', 'gateway_manager:query', 'gateway', '搜索网关路由', '/gateway/routes/conditions', 'POST', '搜索网关路由', '2020-06-24 16:53:56', '2020-07-19 21:26:40', 'system', 'admin', 'N');
INSERT INTO `resource` VALUES ('312', '1284843658289373185', 'gateway_manager:overload', 'gateway', '全局加载路由', '/gateway/routes/overload', 'POST', '全局加载路由', '2020-06-24 16:53:56', '2020-07-19 21:33:30', 'system', 'admin', 'N');
INSERT INTO `resource` VALUES ('313', '1284841798987964418', 'resource_manager:add', 'resource', '新增网关路由', '/resource', 'POST', '新增资源路由', '2020-06-24 16:53:56', '2020-07-19 21:25:45', 'system', 'admin', 'N');
INSERT INTO `resource` VALUES ('314', '1284841798987964418', 'resource_manager:edit', 'resource', '修改网关路由', '/resource/{id}', 'PUT', '修改资源', '2020-06-24 16:53:56', '2020-07-19 21:25:57', 'system', 'admin', 'N');
INSERT INTO `resource` VALUES ('315', '1284841798987964418', 'resource_manager:adel', 'resource', '删除网关路由', '/resource/{id}', 'DELETE', '删除资源', '2020-06-24 16:53:56', '2020-07-19 21:26:08', 'system', 'admin', 'N');
INSERT INTO `resource` VALUES ('316', '1284841798987964418', 'resource_manager:view', 'resource', '查看网关路由', '/resource/{id}', 'GET', '查看资源', '2020-06-24 16:53:56', '2020-07-19 21:26:18', 'system', 'admin', 'N');
INSERT INTO `resource` VALUES ('317', '1284841798987964418', 'resource_manager:query', 'resource', '搜索网关路由', '/resource/conditions', 'POST', '搜索资源', '2020-06-24 16:53:56', '2020-07-19 21:26:25', 'system', 'admin', 'N');
INSERT INTO `resource` VALUES ('318', '1284843658289373185', 'resource_manager:all', 'resource', '全局加载路由', '/resource/all', 'GET', '查询全部资源', '2020-06-24 16:53:56', '2020-07-19 21:33:18', 'system', 'admin', 'N');
INSERT INTO `resource` VALUES ('319', '1284843658289373185', 'resource_manager:get', 'resource', '查询资源路由', '/resource/user/{username}', 'GET', '查询资源路由', '2020-07-07 15:56:19', '2020-07-19 21:33:08', 'system', 'admin', 'N');
INSERT INTO `resource` VALUES ('401', '1284841296862666753', 'shop_manager:add', 'shop', '测试新增shop接口', '/shop', 'POST', '测试新增shop接口', '2020-07-07 18:05:18', '2020-07-19 21:23:46', 'system', 'admin', 'N');
INSERT INTO `resource` VALUES ('402', '1284841296862666753', 'shop_manager:edit', 'shop', '测试修改shop接口', '/shop/{id}', 'PUT', '测试修改shop接口', '2020-07-07 18:07:17', '2020-07-19 21:23:54', 'system', 'admin', 'N');
INSERT INTO `resource` VALUES ('403', '1284841296862666753', 'shop_manager:adel', 'shop', '测试删除shop接口', '/shop/{id}', 'DELETE', '测试删除shop接口', '2020-07-07 18:02:00', '2020-07-19 21:24:06', 'system', 'admin', 'N');
INSERT INTO `resource` VALUES ('404', '1284841296862666753', 'shop_manager:view', 'shop', '测试查看shop接口', '/shop/{id}', 'GET', '测试查看shop接口', '2020-07-07 17:59:30', '2020-07-19 21:24:14', 'system', 'admin', 'N');
INSERT INTO `resource` VALUES ('405', '1284841296862666753', 'shop_manager:query', 'shop', '测试搜索shop接口', '/shop/conditions', 'POST', '测试搜索shop接口', '2020-07-07 09:10:35', '2020-07-19 21:24:21', 'system', 'admin', 'N');
INSERT INTO `resource` VALUES ('406', '1284841296862666753', 'shop_manager:all', 'shop', '测试全局加载shop接口', '/shop/all', 'GET', '测试全局加载shop接口', '2020-07-07 16:27:47', '2020-07-19 21:24:33', 'system', 'admin', 'N');
INSERT INTO `resource` VALUES ('501', '1284844422772580353', 'producer_manager:get', 'producer', '获取产品信息', '/products', 'GET', '产品测试接口', '2020-07-07 22:24:30', '2020-07-19 21:36:36', 'system', 'admin', 'Y');

-- ----------------------------
-- Table structure for role_menu_relation
-- ----------------------------
DROP TABLE IF EXISTS `role_menu_relation`;
CREATE TABLE `role_menu_relation`  (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'id',
  `menu_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单id',
  `role_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色id',
  `created_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updated_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `created_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建人',
  `updated_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和菜单关系表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role_menu_relation
-- ----------------------------

-- ----------------------------
-- Table structure for role_resource_relation
-- ----------------------------
DROP TABLE IF EXISTS `role_resource_relation`;
CREATE TABLE `role_resource_relation`  (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '关系id',
  `resource_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色id',
  `role_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '资源id',
  `created_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updated_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `created_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建人',
  `updated_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和资源关系表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role_resource_relation
-- ----------------------------
INSERT INTO `role_resource_relation` VALUES ('1285163505288241154', '1281526354961100801', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505296629761', '1282690592811368450', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505296629762', '1283752978595037186', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505296629763', '1284844422772580353', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505296629764', '1282694721864581122', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505296629765', '1284841296862666753', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505296629766', '1282693893455986690', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505296629767', '1284842783294644225', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505296629768', '1281526913311043585', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505296629769', '1282695809753792513', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505296629770', '1284838256529137665', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505300824066', '1284843658289373185', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505300824067', '1283046453295558658', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505300824068', '1284849788033982465', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505300824069', '1282691124124827649', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505300824070', '1284847575056277505', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505300824071', '405', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505300824072', '207', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505300824073', '406', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505300824074', '208', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505300824075', '401', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505300824076', '203', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505305018370', '402', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505305018371', '204', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505305018372', '403', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505305018373', '205', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505305018374', '1281527423489404930', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505305018375', '1', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505305018376', '404', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505305018377', '206', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505305018378', '201', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505305018379', '202', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505309212674', '1284839368690786305', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505309212675', '1281527147399344129', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505309212676', '1283302106563874817', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505309212677', '1282697388863111170', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505309212678', '1284521899698688001', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505309212679', '1281528200064790530', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505309212680', '1282695381360164866', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505309212681', '1284850891022688257', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505309212682', '1282696275397033986', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505309212683', '1282691815530676225', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505309212684', '317', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505309212685', '318', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505309212686', '319', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505309212687', '1284840598779486209', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505309212688', '313', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505309212689', '314', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505309212690', '315', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505309212691', '1282698339523084289', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505309212692', '316', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505309212693', '1282697029075714049', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505309212694', '1281526648008732674', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505309212695', '310', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505309212696', '311', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505317601281', '312', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505317601282', '1284841798987964418', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505317601283', '1282691496780349442', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505317601284', '1282690075083259905', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505317601285', '1284839947097890817', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505317601286', '1284844738142298114', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505317601287', '306', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505317601288', '307', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505317601289', '308', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505317601290', '309', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505317601291', '104', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505317601292', '302', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505321795585', '501', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505321795586', '105', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505321795587', '303', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505321795588', '106', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505321795589', '304', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505321795590', '305', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505321795591', '101', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505321795592', '102', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505321795593', '103', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285163505321795594', '301', '101', '2020-07-20 18:43:52', '2020-07-20 18:43:52', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285771594605596674', '1281526913311043585', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594605596675', '1282695809753792513', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594613985281', '1284839947097890817', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594613985282', '1284849788033982465', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594613985283', '1284844738142298114', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594618179586', '308', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594618179587', '1282691124124827649', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594618179588', '309', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594618179589', '1284847575056277505', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594618179590', '106', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594618179591', '304', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594618179592', '305', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594618179593', '306', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594618179594', '1283046453295558658', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594618179595', '307', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594626568193', '102', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594626568194', '1281527423489404930', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594626568195', '103', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594626568196', '301', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594626568197', '104', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594626568198', '302', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594630762498', '105', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594630762499', '303', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594630762500', '101', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594630762501', '1281527147399344129', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594630762502', '1283752978595037186', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594630762503', '1284844422772580353', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594630762504', '1282690592811368450', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594630762505', '1284841296862666753', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594630762506', '1281528200064790530', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594630762507', '1282694721864581122', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594639151106', '1284842783294644225', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594639151107', '1282693893455986690', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594639151108', '1284521899698688001', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594639151109', '1282697029075714049', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594639151110', '1282690075083259905', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594639151111', '1282691496780349442', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594639151112', '1284838256529137665', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594639151113', '1282696275397033986', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594639151114', '403', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594639151115', '205', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594639151116', '404', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594639151117', '206', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594639151118', '405', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594647539713', '207', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594647539714', '1284843658289373185', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594647539715', '406', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594647539716', '208', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594647539717', '201', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594647539718', '1', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594647539719', '202', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594647539720', '1284839368690786305', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594647539721', '401', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594647539722', '203', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594647539723', '402', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594647539724', '204', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594655928321', '1282697388863111170', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594655928322', '1281526354961100801', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594655928323', '1283302106563874817', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594655928324', '1284850891022688257', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594655928325', '1282695381360164866', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594660122625', '1282691815530676225', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594660122626', '319', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594660122627', '315', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594660122628', '1284840598779486209', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594660122629', '316', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594660122630', '317', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594660122631', '318', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594664316929', '311', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594664316930', '1282698339523084289', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594664316931', '312', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594664316932', '313', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594664316933', '314', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594664316934', '1284841798987964418', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594664316935', '1281526648008732674', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285771594672705538', '310', '107', '2020-07-22 11:00:11', '2020-07-22 11:00:11', 'xinyonghu', 'xinyonghu');
INSERT INTO `role_resource_relation` VALUES ('1285780455072796673', '1282697029075714049', '1285778438078140418', '2020-07-22 11:35:24', '2020-07-22 11:35:24', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285780455081185282', '1282698339523084289', '1285778438078140418', '2020-07-22 11:35:24', '2020-07-22 11:35:24', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285780455081185283', '1282696275397033986', '1285778438078140418', '2020-07-22 11:35:24', '2020-07-22 11:35:24', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285780455081185284', '207', '1285778438078140418', '2020-07-22 11:35:24', '2020-07-22 11:35:24', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285780455081185285', '208', '1285778438078140418', '2020-07-22 11:35:24', '2020-07-22 11:35:24', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285780455081185286', '106', '1285778438078140418', '2020-07-22 11:35:24', '2020-07-22 11:35:24', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285780455081185287', '205', '1285778438078140418', '2020-07-22 11:35:24', '2020-07-22 11:35:24', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285780455081185288', '206', '1285778438078140418', '2020-07-22 11:35:24', '2020-07-22 11:35:24', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285780455081185289', '1282697388863111170', '1285778438078140418', '2020-07-22 11:35:24', '2020-07-22 11:35:24', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285780455081185290', '1283302106563874817', '1285778438078140418', '2020-07-22 11:35:24', '2020-07-22 11:35:24', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285780455081185291', '101', '1285778438078140418', '2020-07-22 11:35:24', '2020-07-22 11:35:24', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285780455081185292', '104', '1285778438078140418', '2020-07-22 11:35:24', '2020-07-22 11:35:24', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285780455089573890', '302', '1285778438078140418', '2020-07-22 11:35:24', '2020-07-22 11:35:24', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285780455089573891', '105', '1285778438078140418', '2020-07-22 11:35:24', '2020-07-22 11:35:24', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285780455089573892', '204', '1285778438078140418', '2020-07-22 11:35:24', '2020-07-22 11:35:24', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285780455089573893', '303', '1285778438078140418', '2020-07-22 11:35:24', '2020-07-22 11:35:24', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285780455089573894', '301', '1285778438078140418', '2020-07-22 11:35:24', '2020-07-22 11:35:24', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285780455089573895', '1283046453295558658', '1285778438078140418', '2020-07-22 11:35:24', '2020-07-22 11:35:24', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285780455089573896', '1283752978595037186', '1285778438078140418', '2020-07-22 11:35:24', '2020-07-22 11:35:24', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285853291380543490', '1281526354961100801', '1284060496206516226', '2020-07-22 16:24:49', '2020-07-22 16:24:49', 'admin', 'admin');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色id',
  `deleted` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'N' COMMENT '是否已删除Y：已删除，N：未删除',
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色code',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色名称',
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '简介',
  `created_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updated_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `created_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建人',
  `updated_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('101', 'N', 'Admin', '超级管理员', '公司IT总负责人', '2020-06-24 16:53:56', '2020-07-27 21:15:41', 'system', 'admin');
INSERT INTO `roles` VALUES ('102', 'Y', 'FIN', '财务', '财务', '2020-06-24 16:53:56', '2020-07-16 18:02:24', 'system', 'zengjian');
INSERT INTO `roles` VALUES ('103', 'Y', 'IT', 'IT', 'IT角色', '2020-06-24 16:53:56', '2020-07-15 22:33:04', 'system', 'zengjian');
INSERT INTO `roles` VALUES ('104', 'Y', '104', '初级软件工程师', '初级软件工程师', '2020-06-27 17:32:58', '2020-07-16 18:02:46', 'zengjian', 'zengjian');
INSERT INTO `roles` VALUES ('105', 'Y', 'personnel', '人事部门', '人事管理', '2020-06-27 17:33:32', '2020-07-17 16:33:17', 'zengjian', 'liuhuan');
INSERT INTO `roles` VALUES ('106', 'Y', '总经理', '总经理', '总经理', '2020-07-13 17:04:59', '2020-07-17 16:35:03', 'zengjian', 'admin');
INSERT INTO `roles` VALUES ('107', 'N', 'Developer', '开发人员', '开发人员负责系需求、开发、测试、部署、运维', '2020-07-13 17:08:42', '2020-07-27 21:15:29', 'zengjian', 'admin');
INSERT INTO `roles` VALUES ('1284060496206516226', 'N', 'External visitor', '外部访问人员', '外部访问人员是浏览系统的潜在客户', '2020-07-17 17:40:54', '2020-07-22 16:24:49', 'liuhuan', 'admin');
INSERT INTO `roles` VALUES ('1285778438078140418', 'N', 'Registered user', '注册用户', '提供给开发人员注册账号用', '2020-07-22 11:27:23', '2020-07-27 21:16:15', 'xinyonghu', 'admin');

-- ----------------------------
-- Table structure for user_group_relation
-- ----------------------------
DROP TABLE IF EXISTS `user_group_relation`;
CREATE TABLE `user_group_relation`  (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'id',
  `user_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户id',
  `group_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户组id',
  `created_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updated_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `created_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建人',
  `updated_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户和组关系表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_group_relation
-- ----------------------------
INSERT INTO `user_group_relation` VALUES ('1285766782476423170', '1285766782346399746', '103', '2020-07-22 10:41:04', '2020-07-22 10:41:04', 'zengjian', 'zengjian');
INSERT INTO `user_group_relation` VALUES ('1285771781243736065', '1285771781201793026', '103', '2020-07-22 11:00:56', '2020-07-22 11:00:56', 'xinyonghu', 'xinyonghu');
INSERT INTO `user_group_relation` VALUES ('1285771797660241921', '107', '103', '2020-07-22 11:01:00', '2020-07-22 11:01:00', 'xinyonghu', 'xinyonghu');
INSERT INTO `user_group_relation` VALUES ('1285771897904107521', '108', '103', '2020-07-22 11:01:24', '2020-07-22 11:01:24', 'xinyonghu', 'xinyonghu');
INSERT INTO `user_group_relation` VALUES ('1285772156822687745', '1285772156772356098', '30111', '2020-07-22 11:02:25', '2020-07-22 11:02:25', 'xinyonghu', 'xinyonghu');
INSERT INTO `user_group_relation` VALUES ('1285772624248508418', '1285772624223342593', '103', '2020-07-22 11:04:17', '2020-07-22 11:04:17', 'xinyonghu', 'xinyonghu');
INSERT INTO `user_group_relation` VALUES ('1285858335542808578', '104', '103', '2020-07-22 16:44:52', '2020-07-22 16:44:52', 'admin', 'admin');
INSERT INTO `user_group_relation` VALUES ('1287741889398816769', '1285770711637495809', '103', '2020-07-27 21:29:26', '2020-07-27 21:29:26', 'admin', 'admin');
INSERT INTO `user_group_relation` VALUES ('1287922294521446402', '101', '103', '2020-07-28 09:26:18', '2020-07-28 09:26:18', 'admin', 'admin');

-- ----------------------------
-- Table structure for user_position_relation
-- ----------------------------
DROP TABLE IF EXISTS `user_position_relation`;
CREATE TABLE `user_position_relation`  (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'id',
  `user_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户id',
  `position_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色id',
  `created_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updated_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `created_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建人',
  `updated_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户和岗位关系表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_position_relation
-- ----------------------------
INSERT INTO `user_position_relation` VALUES ('1285766782468034562', '1285766782346399746', '1283298141415673858', '2020-07-22 10:41:04', '2020-07-22 10:41:04', 'zengjian', 'zengjian');
INSERT INTO `user_position_relation` VALUES ('1285771781235347458', '1285771781201793026', '1283332848824115202', '2020-07-22 11:00:56', '2020-07-22 11:00:56', 'xinyonghu', 'xinyonghu');
INSERT INTO `user_position_relation` VALUES ('1285771797643464706', '107', '1283332848824115202', '2020-07-22 11:01:00', '2020-07-22 11:01:00', 'xinyonghu', 'xinyonghu');
INSERT INTO `user_position_relation` VALUES ('1285771897887330306', '108', '1283332848824115202', '2020-07-22 11:01:24', '2020-07-22 11:01:24', 'xinyonghu', 'xinyonghu');
INSERT INTO `user_position_relation` VALUES ('1285858335333093377', '104', '1283332848824115202', '2020-07-22 16:44:52', '2020-07-22 16:44:52', 'admin', 'admin');
INSERT INTO `user_position_relation` VALUES ('1287741889382039553', '1285770711637495809', '1283332848824115202', '2020-07-27 21:29:26', '2020-07-27 21:29:26', 'admin', 'admin');
INSERT INTO `user_position_relation` VALUES ('1287922294500474882', '101', '101', '2020-07-28 09:26:18', '2020-07-28 09:26:18', 'admin', 'admin');

-- ----------------------------
-- Table structure for user_role_relation
-- ----------------------------
DROP TABLE IF EXISTS `user_role_relation`;
CREATE TABLE `user_role_relation`  (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '关系id',
  `user_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户id',
  `role_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色id',
  `created_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updated_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `created_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建人',
  `updated_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户和角色关系表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_role_relation
-- ----------------------------
INSERT INTO `user_role_relation` VALUES ('1284518368392536066', '1284518368308649985', '103', '2020-07-19 00:00:19', '2020-07-19 00:00:19', 'admin', 'admin');
INSERT INTO `user_role_relation` VALUES ('1284518368405118978', '1284518368308649985', '102', '2020-07-19 00:00:19', '2020-07-19 00:00:19', 'admin', 'admin');
INSERT INTO `user_role_relation` VALUES ('1284518368405118979', '1284518368308649985', '101', '2020-07-19 00:00:19', '2020-07-19 00:00:19', 'admin', 'admin');
INSERT INTO `user_role_relation` VALUES ('1285766782455451649', '1285766782346399746', '101', '2020-07-22 10:41:04', '2020-07-22 10:41:04', 'zengjian', 'zengjian');
INSERT INTO `user_role_relation` VALUES ('1285771781210181633', '1285771781201793026', '107', '2020-07-22 11:00:56', '2020-07-22 11:00:56', 'xinyonghu', 'xinyonghu');
INSERT INTO `user_role_relation` VALUES ('1285771797630881794', '107', '107', '2020-07-22 11:01:00', '2020-07-22 11:01:00', 'xinyonghu', 'xinyonghu');
INSERT INTO `user_role_relation` VALUES ('1285771897883136001', '108', '107', '2020-07-22 11:01:24', '2020-07-22 11:01:24', 'xinyonghu', 'xinyonghu');
INSERT INTO `user_role_relation` VALUES ('1285772156805910529', '1285772156772356098', '107', '2020-07-22 11:02:25', '2020-07-22 11:02:25', 'xinyonghu', 'xinyonghu');
INSERT INTO `user_role_relation` VALUES ('1285772624235925505', '1285772624223342593', '107', '2020-07-22 11:04:17', '2020-07-22 11:04:17', 'xinyonghu', 'xinyonghu');
INSERT INTO `user_role_relation` VALUES ('1285858335316316162', '104', '107', '2020-07-22 16:44:52', '2020-07-22 16:44:52', 'admin', 'admin');
INSERT INTO `user_role_relation` VALUES ('1285858335324704770', '104', '101', '2020-07-22 16:44:52', '2020-07-22 16:44:52', 'admin', 'admin');
INSERT INTO `user_role_relation` VALUES ('1287741889373650945', '1285770711637495809', '1285778438078140418', '2020-07-27 21:29:26', '2020-07-27 21:29:26', 'admin', 'admin');
INSERT INTO `user_role_relation` VALUES ('1287922294483697666', '101', '107', '2020-07-28 09:26:18', '2020-07-28 09:26:18', 'admin', 'admin');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户密码密文',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户手机',
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '简介',
  `deleted` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'N' COMMENT '是否已删除Y：已删除，N：未删除',
  `enabled` tinyint(1) NULL DEFAULT NULL COMMENT '是否有效用户',
  `account_non_expired` tinyint(1) NULL DEFAULT NULL COMMENT '账号是否未过期',
  `credentials_non_expired` tinyint(1) NULL DEFAULT NULL COMMENT '密码是否未过期',
  `account_non_locked` tinyint(1) NULL DEFAULT NULL COMMENT '是否未锁定',
  `created_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updated_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `created_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建人',
  `updated_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ux_users_username`(`username`) USING BTREE,
  UNIQUE INDEX `ux_users_mobile`(`mobile`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('101', 'admin', '$2a$10$W4aD90pBHdeX2LkWbYovWO9KofzK6.f8LN8F0wPTmbbgAB1Zr0PSC', '超级管理员', '13402312710', NULL, 'N', 1, 1, 1, 1, '2020-06-24 16:53:56', '2020-07-28 09:26:18', 'system', 'admin');
INSERT INTO `users` VALUES ('102', 'zhoutaoo', '$2a$10$HaX7Ao0QmVOvCd3NtO1GwuIajcqs8jB8jOZSuh.sh.jLGFfOZWKEG', '周涛', '15619841000', NULL, 'Y', 1, 1, 1, 1, '2020-06-24 16:53:56', '2020-07-17 09:51:13', 'system', 'admin');
INSERT INTO `users` VALUES ('104', 'zengjian', '$2a$10$fXUzooKqhodUOqM7SSIt3eHmdP7n7gM2ntJ12dcAJOMQ2QqO3w2.S', '曾剑', '13402312713', '开发人员', 'N', 1, 1, 1, 1, '2020-06-27 01:08:38', '2020-07-22 16:44:52', 'zengjian', 'admin');
INSERT INTO `users` VALUES ('105', 'fengrongsheng', '$2a$10$8gHRNtnIplrO5Ug3z93OJ.jjAkEFudg.6LlMcR4huDTobAp.p4eqK', '冯荣生', '13402312777', '超级大boss', 'Y', 1, 1, 1, 1, '2020-06-27 16:58:18', '2020-07-17 09:56:19', 'zengjian', 'liuxue');
INSERT INTO `users` VALUES ('106', 'liuxue', '$2a$10$Zq4Cz/RQIi6bbKUUvkyJw.aTxZ.hhvrn.mdKGfqauCEwXo0tCDtGW', '刘学', '13402312772', '刘学', 'Y', 1, 1, 1, 1, '2020-06-30 22:01:31', '2020-07-17 14:18:10', 'zengjian', 'fengrongsheng');
INSERT INTO `users` VALUES ('107', 'zhuchaojian', '$2a$10$rlxZLKdQ2Wae2OexHKdD5uTA6EXbSyt/DN2uENbs9XLPX9wyagCuG', '朱超见', '15631810611', '朱超见', 'N', 1, 1, 1, 1, '2020-07-06 10:04:19', '2020-07-22 11:01:00', 'zengjian', 'xinyonghu');
INSERT INTO `users` VALUES ('108', 'liushifeng', '$2a$10$NNDTgCqGLAqANPgYpdiegOBdutSr3ioeQBkI5p58OueG8BrEX8GoS', '刘士峰', '1548741234', '刘士峰', 'N', 1, 1, 1, 1, '2020-07-06 10:55:34', '2020-07-22 11:01:24', 'zengjian', 'xinyonghu');
INSERT INTO `users` VALUES ('1283705843145097217', 'albert', '$2a$10$miHzTJQ.naDZqFiEw7qrROOFO0AXhdA./BGknGxQeZAWeYHTE1xHu', 'albert', '13402312374', 'albert', 'Y', 1, 1, 1, 1, '2020-07-16 18:11:38', '2020-07-17 09:57:16', 'admin', 'fengrongsheng');
INSERT INTO `users` VALUES ('1283938404551204866', 'qwer', '$2a$10$lBkvXP/tAe9RDU3MVVMKAuG9AChaLu5zzh9bv.ZjDLJQEQIbnxreu', 'qwer', '12342134124', 'qwer', 'Y', 1, 1, 1, 1, '2020-07-17 09:35:45', '2020-07-17 09:54:13', 'admin', 'admin');
INSERT INTO `users` VALUES ('1284010851669397505', 'gunkai', '$2a$10$A2/BAvNfnJApDWs943UWQuTxIyZHpkWVIcACL7bpXBP259qviqbZq', '根坚强', '12345678912', '', 'Y', 1, 1, 1, 1, '2020-07-17 14:23:37', '2020-07-17 14:46:06', 'fengrongsheng', 'fengrongsheng');
INSERT INTO `users` VALUES ('1284016775163301890', 'zhangxiaoqiang', '$2a$10$O9H3uGQSDuwwewlPoQQyo.Akv/fPQg7OBk1zSQUwDo1G3Rd6GxYEW', '张小强', '1478529631', '', 'Y', 1, 1, 1, 1, '2020-07-17 14:47:10', '2020-07-17 14:47:10', 'liuxue', 'liuxue');
INSERT INTO `users` VALUES ('1284017151195238401', 'liuhuan', '$2a$10$WRgYLN7atrB6G/0sNvRZ7uj.W7YYULcF12YThxuFRNXYfgeLnGLEO', '刘欢', '12345678914', '', 'Y', 1, 1, 1, 1, '2020-07-17 14:48:39', '2020-07-17 16:03:24', 'zhangxiaoqiang', 'admin');
INSERT INTO `users` VALUES ('1284036315444170753', 'zhangdacheng', '$2a$10$hnTCThkrafTIQ/eQFiBsSewdlY/MenTiuX5GHqNUW8ct4b/q6NfdS', '张大成', '14785296312', '', 'Y', 1, 1, 1, 1, '2020-07-17 16:04:49', '2020-07-17 16:24:27', 'liuhuan', 'admin');
INSERT INTO `users` VALUES ('1284036874477785089', 'liudehua', '$2a$10$1WM..MGFcpDQT7uYmE9.2.436v1SPQug0Gp9xN50u.B8uKholmlEe', '刘德华', '15948762314', '', 'Y', 1, 1, 1, 1, '2020-07-17 16:07:02', '2020-07-17 16:07:02', 'zhangdacheng', 'zhangdacheng');
INSERT INTO `users` VALUES ('1284042446526763009', 'huge', '$2a$10$QX/rlqDVAgL3At33n88Ic.Hj1yHDZFVeThcXG2ICgHcih72wEK/3C', '胡歌', '15874236917', '', 'Y', 1, 1, 1, 1, '2020-07-17 16:29:10', '2020-07-17 16:29:10', 'liuhuan', 'liuhuan');
INSERT INTO `users` VALUES ('1284044318180397057', 'tanghao', '$2a$10$UF3k2gyhy/WbVMZLKuvB6OkECPnJI.u5JwLanJiGaXJpA4Of9oVte', '唐浩', '14785962315', '', 'Y', 1, 1, 1, 1, '2020-07-17 16:36:37', '2020-07-17 16:36:37', 'admin', 'admin');
INSERT INTO `users` VALUES ('1285766782346399746', 'guozhenfang', '$2a$10$wc1lI7yK6Gxj/WC9VRNPueLb.xP2LyCN3WMsD9UovdUspLo2MLtF2', '郭振方', '18688907170', '', 'N', 1, 1, 1, 1, '2020-07-22 10:41:04', '2020-07-22 10:41:04', 'zengjian', 'zengjian');
INSERT INTO `users` VALUES ('1285770711637495809', 'xinyonghu', '$2a$10$OuMcRjjetuNdQKDMjKtzSu0Pb1IzBp164TGSEMNhkbcGtze5vqSpO', '新用户', '12345678901', '', 'N', 1, 1, 1, 1, '2020-07-22 10:56:41', '2020-07-27 21:29:26', 'admin', 'admin');
INSERT INTO `users` VALUES ('1285771781201793026', 'xing', '$2a$10$Cr7i3V.W5HkRmNYhC5sazeJOaxhPO1OtQlWt8vH0Gbdd3YmIGZa92', '庞海杏', '18218437099', '', 'N', 1, 1, 1, 1, '2020-07-22 11:00:56', '2020-07-22 11:00:56', 'xinyonghu', 'xinyonghu');
INSERT INTO `users` VALUES ('1285772156772356098', 'hedonghong', '$2a$10$F1vwqVLZAclKHUyhVhHGe.4pxKH6OtbQcDPbaegjdGZrFcE3a./w6', '何东鸿', '13129139940', '', 'N', 1, 1, 1, 1, '2020-07-22 11:02:25', '2020-07-22 11:02:25', 'xinyonghu', 'xinyonghu');
INSERT INTO `users` VALUES ('1285772624223342593', 'zhuanghaoran', '$2a$10$OFvuHJPdlZ.8w/sCJZVjk.1uFwsbzpKF3TYU1Zxxp0xfT3SmCwjri', '庄浩然', '13790100128', '', 'N', 1, 1, 1, 1, '2020-07-22 11:04:17', '2020-07-22 11:04:17', 'xinyonghu', 'xinyonghu');

SET FOREIGN_KEY_CHECKS = 1;
