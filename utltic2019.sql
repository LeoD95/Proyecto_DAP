/*
Navicat MySQL Data Transfer

Source Server         : utltic2019
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : utlitic2019

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2019-05-19 20:38:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for alumnos
-- ----------------------------
DROP TABLE IF EXISTS `alumnos`;
CREATE TABLE `alumnos` (
`id_alumno`  int(11) NOT NULL AUTO_INCREMENT ,
`no_control`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`id_carrera`  int(11) NULL DEFAULT NULL ,
`id_persona`  int(11) NULL DEFAULT NULL ,
`id_registro`  int(11) NULL DEFAULT NULL ,
`fecha_registro`  date NULL DEFAULT NULL ,
`hora_registro`  time NULL DEFAULT NULL ,
`activo`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`id_alumno`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=3

;

-- ----------------------------
-- Records of alumnos
-- ----------------------------
BEGIN;
INSERT INTO `alumnos` VALUES ('1', '8479', '1', '1', '1', '2019-05-13', '21:53:12', '1'), ('2', null, null, null, null, null, null, null);
COMMIT;

-- ----------------------------
-- Table structure for carreras
-- ----------------------------
DROP TABLE IF EXISTS `carreras`;
CREATE TABLE `carreras` (
`id_carrera`  int(11) NOT NULL AUTO_INCREMENT ,
`nombre`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`abreviatura`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`id_registro`  int(11) NULL DEFAULT NULL ,
`fecha_registro`  date NULL DEFAULT NULL ,
`hora_registro`  time NULL DEFAULT NULL ,
`activo`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`id_carrera`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=2

;

-- ----------------------------
-- Records of carreras
-- ----------------------------
BEGIN;
INSERT INTO `carreras` VALUES ('1', 'Ingenieria en Tecnologias de la Informacion y Comunicacion', 'ITIC', '1', '2019-05-13', '21:32:55', '1');
COMMIT;

-- ----------------------------
-- Table structure for personas
-- ----------------------------
DROP TABLE IF EXISTS `personas`;
CREATE TABLE `personas` (
`id_persona`  int(11) NOT NULL AUTO_INCREMENT ,
`nombre`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ap_paterno`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ap_materno`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`sexo`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`direccion`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`telefono`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`fecha_nacimiento`  date NULL DEFAULT NULL ,
`correo`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`tipo_persona`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`id_registro`  int(11) NULL DEFAULT NULL ,
`fecha_registro`  date NULL DEFAULT NULL ,
`hora_registro`  time NULL DEFAULT NULL ,
`activo`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`id_persona`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=3

;

-- ----------------------------
-- Records of personas
-- ----------------------------
BEGIN;
INSERT INTO `personas` VALUES ('1', 'Daniel Leobardo', 'Dueñas', 'Reyes', 'M', 'Las Bugambilias', '8211450399', '2019-05-13', 'leobardodreyes95@gmail.com', 'estudiante', '1', '2019-05-19', '20:19:32', '1'), ('2', 'Jessica Alejandra', 'Delgado', 'Rubio', 'F', 'La petaca', '8211450399', '1998-05-02', 'gary.reyes98@gmail.com', 'estudiante', '1', '2019-05-19', '20:19:33', '1');
COMMIT;

-- ----------------------------
-- Table structure for registros
-- ----------------------------
DROP TABLE IF EXISTS `registros`;
CREATE TABLE `registros` (
`id_registro`  int(11) NOT NULL AUTO_INCREMENT ,
`id_alumno`  int(11) NULL DEFAULT NULL ,
`matricula`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`fecha_ingreso`  date NULL DEFAULT NULL ,
`hora_ingreso`  time NULL DEFAULT NULL ,
`fecha_salida`  date NULL DEFAULT NULL ,
`hora_salida`  time NULL DEFAULT NULL ,
`fecha_actualiza`  date NULL DEFAULT NULL ,
`hora_actualiza`  time NULL DEFAULT NULL ,
`activo`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`id_registro`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of registros
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
`id_usuario`  int(11) NOT NULL AUTO_INCREMENT ,
`usuario`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`contra`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`id_persona`  int(11) NULL DEFAULT NULL ,
`id_registro`  int(11) NULL DEFAULT NULL ,
`fecha_registro`  date NULL DEFAULT NULL ,
`hora_registro`  time NULL DEFAULT NULL ,
`activo`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`id_usuario`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=3

;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
BEGIN;
INSERT INTO `usuarios` VALUES ('1', 'LeoR', '1234', '1', '1', '2019-05-18', '20:27:51', '1'), ('2', null, null, null, null, null, null, null);
COMMIT;

-- ----------------------------
-- Auto increment value for alumnos
-- ----------------------------
ALTER TABLE `alumnos` AUTO_INCREMENT=3;

-- ----------------------------
-- Auto increment value for carreras
-- ----------------------------
ALTER TABLE `carreras` AUTO_INCREMENT=2;

-- ----------------------------
-- Auto increment value for personas
-- ----------------------------
ALTER TABLE `personas` AUTO_INCREMENT=3;

-- ----------------------------
-- Auto increment value for registros
-- ----------------------------
ALTER TABLE `registros` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for usuarios
-- ----------------------------
ALTER TABLE `usuarios` AUTO_INCREMENT=3;
