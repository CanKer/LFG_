/*
 Navicat Premium Data Transfer

 Source Server         : CanKer
 Source Server Type    : MySQL
 Source Server Version : 50542
 Source Host           : localhost
 Source Database       : LFG

 Target Server Type    : MySQL
 Target Server Version : 50542
 File Encoding         : utf-8

 Date: 11/24/2015 14:01:49 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `blog`
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contenido` longtext COLLATE utf8_unicode_ci NOT NULL,
  `id_categoria` int(10) unsigned NOT NULL,
  `id_user` int(10) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `blog_id_user_foreign` (`id_user`),
  KEY `blog_id_categoria_foreign` (`id_categoria`),
  CONSTRAINT `blog_id_categoria_foreign` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`),
  CONSTRAINT `blog_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `blog`
-- ----------------------------
BEGIN;
INSERT INTO `blog` VALUES ('1', 'Título 1', 'Aquí el contenido de esta entrada', '1', '1', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('2', 'Título 2', 'Aquí el contenido de esta entrada', '2', '2', null, '2015-11-18 11:07:52', '0000-00-00 00:00:00'), ('3', 'Título 3', 'Aquí el contenido de esta entrada', '1', '3', null, '2015-11-19 11:07:47', '0000-00-00 00:00:00'), ('4', 'Título 4', 'Aquí el contenido de esta entrada', '3', '1', null, '2015-11-19 11:07:42', '0000-00-00 00:00:00'), ('5', 'Título 5', 'Aquí el contenido de esta entrada', '1', '2', null, '2015-11-10 11:07:38', '0000-00-00 00:00:00');
COMMIT;

-- ----------------------------
--  Table structure for `categorias`
-- ----------------------------
DROP TABLE IF EXISTS `categorias`;
CREATE TABLE `categorias` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `categorias`
-- ----------------------------
BEGIN;
INSERT INTO `categorias` VALUES ('1', 'Informática', 'Aquí la descripción de esta categoría', '2015-11-01 11:08:07', '0000-00-00 00:00:00'), ('2', 'Arquitectura', 'Aquí la descripción de esta categoría', '2015-11-01 11:08:11', '0000-00-00 00:00:00'), ('3', 'Diseño', 'Aquí la descripción de esta categoría', '2015-11-01 11:08:16', '0000-00-00 00:00:00'), ('4', 'Literatura', 'Aquí la descripción de esta categoría', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
COMMIT;

-- ----------------------------
--  Table structure for `conocimientos`
-- ----------------------------
DROP TABLE IF EXISTS `conocimientos`;
CREATE TABLE `conocimientos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `id_categoria` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`,`id_categoria`),
  KEY `id_categoria` (`id_categoria`),
  CONSTRAINT `id_categoria_foreign` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `conocimientos`
-- ----------------------------
BEGIN;
INSERT INTO `conocimientos` VALUES ('1', 'Aerografía', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '3'), ('2', 'Autoedición', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '3'), ('3', 'Animación', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '3'), ('4', 'Laravel', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1'), ('5', 'PHP', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1'), ('6', 'C', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1'), ('7', 'Swift', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1'), ('8', 'iOS', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1'), ('9', 'Calibrados', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '3'), ('10', 'Bocetos', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '3'), ('11', 'Infografías', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '3'), ('12', 'AutoCAD', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2'), ('13', 'ArchiCAD', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2'), ('15', 'SketchUp', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2'), ('16', 'Historia', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '4'), ('17', 'WWI', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '4'), ('18', 'WWII', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '4');
COMMIT;

-- ----------------------------
--  Table structure for `examenes`
-- ----------------------------
DROP TABLE IF EXISTS `examenes`;
CREATE TABLE `examenes` (
  `id` int(10) unsigned NOT NULL,
  `id_conocimiento` int(10) unsigned NOT NULL,
  `pregunta` longtext NOT NULL,
  `respuesta` varchar(255) NOT NULL,
  PRIMARY KEY (`id`,`id_conocimiento`),
  KEY `id_conocimiento` (`id_conocimiento`),
  CONSTRAINT `id_conocimiento_foreign` FOREIGN KEY (`id_conocimiento`) REFERENCES `conocimientos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ideas`
-- ----------------------------
DROP TABLE IF EXISTS `ideas`;
CREATE TABLE `ideas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `ideas`
-- ----------------------------
BEGIN;
INSERT INTO `ideas` VALUES ('1', 'Prueba 1', 'Esto es una prueba @-@', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('2', 'Prueba 2', 'Esto es otra prueba @-@', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('3', 'Prueba 3', 'Esto también es otra prueba xD', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('4', 'Prueba 4', 'La prueba de la prueba x)', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('5', 'prueba', '', null, '2015-10-30 22:47:52', '2015-10-30 22:47:52'), ('6', ':D', '', null, '2015-10-30 22:54:33', '2015-10-30 22:54:33'), ('7', 'hola', 'oooh', null, '2015-10-30 23:03:57', '2015-10-30 23:03:57'), ('8', 'prueba de hola', 'holaaaa', null, '2015-10-30 23:09:18', '2015-10-30 23:09:18'), ('9', 'yolo', 'asdf', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('10', 'Idea10000', 'Ideota', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('11', 'Prueba 11', 'Esto es la prueba 11... @-@', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('12', 'Prueba 12', 'Esto es la prueba 12... @-@', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('13', 'Prueba 13', 'Esto es la prueba 13... @-@', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('14', 'Prueba 14', 'Esto es la prueba 14... @-@', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('15', 'Prueba 15', 'Esto es la prueba 15... @-@', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('16', 'Prueba 16', 'Esto es la prueba 16... @-@', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('17', 'Prueba 17', 'Esto es la prueba 17... @-@', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('18', 'Prueba 18', 'Esto es la prueba 18... @-@', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
COMMIT;

-- ----------------------------
--  Table structure for `ideas_categorias`
-- ----------------------------
DROP TABLE IF EXISTS `ideas_categorias`;
CREATE TABLE `ideas_categorias` (
  `id_ideas` int(10) unsigned NOT NULL,
  `id_categorias` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_ideas`,`id_categorias`),
  KEY `ideas_categorias_id_categorias_foreign` (`id_categorias`),
  CONSTRAINT `ideas_categorias_id_categorias_foreign` FOREIGN KEY (`id_categorias`) REFERENCES `categorias` (`id`),
  CONSTRAINT `ideas_categorias_id_ideas_foreign` FOREIGN KEY (`id_ideas`) REFERENCES `ideas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `ideas_categorias`
-- ----------------------------
BEGIN;
INSERT INTO `ideas_categorias` VALUES ('1', '1'), ('2', '1'), ('3', '1'), ('4', '2'), ('5', '3'), ('7', '3'), ('6', '4');
COMMIT;

-- ----------------------------
--  Table structure for `ideas_roles_users`
-- ----------------------------
DROP TABLE IF EXISTS `ideas_roles_users`;
CREATE TABLE `ideas_roles_users` (
  `id_ideas` int(10) unsigned NOT NULL,
  `id_roles` int(10) unsigned NOT NULL,
  `id_users` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_ideas`,`id_roles`,`id_users`),
  KEY `ideas_roles_users_id_roles_foreign` (`id_roles`),
  KEY `ideas_roles_users_id_users_foreign` (`id_users`),
  CONSTRAINT `ideas_roles_users_id_ideas_foreign` FOREIGN KEY (`id_ideas`) REFERENCES `ideas` (`id`),
  CONSTRAINT `ideas_roles_users_id_roles_foreign` FOREIGN KEY (`id_roles`) REFERENCES `roles` (`id`),
  CONSTRAINT `ideas_roles_users_id_users_foreign` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `migrations`
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES ('2014_10_12_100000_create_password_resets_table', '1');
COMMIT;

-- ----------------------------
--  Table structure for `password_resets`
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Table structure for `roles`
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `roles`
-- ----------------------------
BEGIN;
INSERT INTO `roles` VALUES ('1', 'Lider', ''), ('2', 'Programador', ''), ('3', 'Diseñador', ''), ('4', 'Animador', ''), ('5', 'Escritor', ''), ('6', 'Social Manager', ''), ('7', 'Community Manager', '');
COMMIT;

-- ----------------------------
--  Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `appellidoP` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `appellidoM` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `pais` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `estado` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ciudad` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lat` double DEFAULT NULL,
  `long` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `users`
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES ('1', 'CanKer', 'Jorge Arturo', 'Cesar', 'Martinez', 'cdialike@gmail.com', '.0142y4iou23y', 'México', 'DF', 'Benito Juarez', null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '19.380165100097656', '-99.24613189697266'), ('2', 'Yolenciotl', 'Enrigue Abel', 'Rodriguez', 'Montenegro', 'yolotl@gmail.com', '23485u23409', 'México', 'DF', 'Benito Juarez', null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '19.350706100463867', '-99.22003936767578'), ('3', 'Ernesto', 'Ernesto', 'Gazca', 'Macedo', 'e.macedo@tel.com', '2034u2304', 'México', 'DF', 'Coyoacán', null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '19.3724148', '-99.2076533'), ('4', 'Godo', 'Ernesto', 'Flores', 'Rosas', 'godo@hotmail.com', '3u8934u59', 'México', 'DF', 'Cuauhtémoc', null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '19.35070634345', '-99.2794533'), ('5', 'TazitoForever', 'Tadz', 'Mendez', 'Gonzalez', 'tazito@gmail.com', '3485u3045u0', 'México', 'DF', 'Cuauhtémoc', null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '19.84954385999', '-99.9485345');
COMMIT;

-- ----------------------------
--  Table structure for `users_conocimientos`
-- ----------------------------
DROP TABLE IF EXISTS `users_conocimientos`;
CREATE TABLE `users_conocimientos` (
  `id_users` int(10) unsigned NOT NULL,
  `id_conocimientos` int(10) unsigned NOT NULL,
  `calificacion` double(8,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id_users`,`id_conocimientos`),
  KEY `users_conocimientos_id_conocimientos_foreign` (`id_conocimientos`),
  CONSTRAINT `users_conocimientos_id_conocimientos_foreign` FOREIGN KEY (`id_conocimientos`) REFERENCES `conocimientos` (`id`),
  CONSTRAINT `users_conocimientos_id_users_foreign` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `users_conocimientos`
-- ----------------------------
BEGIN;
INSERT INTO `users_conocimientos` VALUES ('1', '2', '80.00', '2015-11-23 12:21:17', '0000-00-00 00:00:00'), ('1', '3', '70.00', '2015-11-23 12:21:13', '0000-00-00 00:00:00'), ('1', '4', '90.00', '2015-11-23 12:21:07', '0000-00-00 00:00:00'), ('2', '1', '90.00', '2015-11-23 12:21:22', '0000-00-00 00:00:00'), ('2', '3', '80.00', '2015-11-23 12:21:28', '0000-00-00 00:00:00'), ('3', '12', '50.00', '2015-11-23 12:21:32', '0000-00-00 00:00:00'), ('3', '16', '100.00', '2015-11-23 12:21:37', '0000-00-00 00:00:00'), ('3', '17', '95.00', '2015-11-23 12:21:45', '0000-00-00 00:00:00'), ('3', '18', '90.00', '2015-11-23 12:21:41', '0000-00-00 00:00:00'), ('4', '1', '90.00', '2015-11-23 12:21:50', '0000-00-00 00:00:00'), ('4', '2', '85.00', '2015-11-23 12:21:55', '0000-00-00 00:00:00'), ('4', '6', '80.00', '2015-11-23 12:22:00', '0000-00-00 00:00:00'), ('5', '5', '90.00', '2015-11-23 12:22:13', '0000-00-00 00:00:00'), ('5', '8', '80.00', '2015-11-23 12:22:05', '0000-00-00 00:00:00'), ('5', '9', '80.00', '2015-11-23 12:22:09', '0000-00-00 00:00:00');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
