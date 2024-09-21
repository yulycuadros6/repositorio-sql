/*
SQLyog Ultimate v12.4.3 (64 bit)
MySQL - 10.4.32-MariaDB : Database - gestion_empresarial
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gestion_empresarial` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `gestion_empresarial`;

/*Table structure for table `asignaciones_proyectos` */

DROP TABLE IF EXISTS `asignaciones_proyectos`;

CREATE TABLE `asignaciones_proyectos` (
  `id_asignacion` int(11) NOT NULL AUTO_INCREMENT,
  `id_empleado` int(11) DEFAULT NULL,
  `id_proyecto` int(11) DEFAULT NULL,
  `fecha_asignacion` date DEFAULT NULL,
  PRIMARY KEY (`id_asignacion`),
  KEY `id_empleado` (`id_empleado`),
  KEY `id_proyecto` (`id_proyecto`),
  CONSTRAINT `asignaciones_proyectos_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`),
  CONSTRAINT `asignaciones_proyectos_ibfk_2` FOREIGN KEY (`id_proyecto`) REFERENCES `proyectos` (`id_proyecto`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `asignaciones_proyectos` */

LOCK TABLES `asignaciones_proyectos` WRITE;

insert  into `asignaciones_proyectos`(`id_asignacion`,`id_empleado`,`id_proyecto`,`fecha_asignacion`) values 
(1,2,1,'2021-01-15'),
(2,4,1,'2021-01-20'),
(3,3,3,'2021-07-10'),
(4,5,3,'2021-07-15'),
(5,2,2,'2022-03-20');

UNLOCK TABLES;

/*Table structure for table `departamentos` */

DROP TABLE IF EXISTS `departamentos`;

CREATE TABLE `departamentos` (
  `id_departamento` int(11) NOT NULL,
  `nombre_departamento` varchar(50) NOT NULL,
  PRIMARY KEY (`id_departamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `departamentos` */

LOCK TABLES `departamentos` WRITE;

insert  into `departamentos`(`id_departamento`,`nombre_departamento`) values 
(1,'Recursos Humanos'),
(2,'Tecnología'),
(3,'Ventas'),
(4,'Marketing');

UNLOCK TABLES;

/*Table structure for table `empleados` */

DROP TABLE IF EXISTS `empleados`;

CREATE TABLE `empleados` (
  `id_empleado` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  `id_departamento` int(11) DEFAULT NULL,
  `fecha_contratacion` date DEFAULT NULL,
  PRIMARY KEY (`id_empleado`),
  KEY `id_departamento` (`id_departamento`),
  CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`id_departamento`) REFERENCES `departamentos` (`id_departamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `empleados` */

LOCK TABLES `empleados` WRITE;

insert  into `empleados`(`id_empleado`,`nombre`,`salario`,`id_departamento`,`fecha_contratacion`) values 
(1,'Juan Pérez',5000.00,1,'2020-01-15'),
(2,'Ana Gómez',6000.00,2,'2019-11-23'),
(3,'Sofía Torres',4500.00,3,'2021-06-30'),
(4,'Miguel García',7000.00,2,'2018-09-12'),
(5,'Daniel Martínez',5500.00,4,'2020-03-10');

UNLOCK TABLES;

/*Table structure for table `proyectos` */

DROP TABLE IF EXISTS `proyectos`;

CREATE TABLE `proyectos` (
  `id_proyecto` int(11) NOT NULL,
  `nombre_proyecto` varchar(100) NOT NULL,
  `presupuesto` decimal(12,2) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  PRIMARY KEY (`id_proyecto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `proyectos` */

LOCK TABLES `proyectos` WRITE;

insert  into `proyectos`(`id_proyecto`,`nombre_proyecto`,`presupuesto`,`fecha_inicio`,`fecha_fin`) values 
(1,'Implementación ERP',150000.00,'2021-01-01','2021-12-31'),
(2,'Desarrollo Web',90000.00,'2022-03-15','2022-10-01'),
(3,'Campaña Marketing Digital',75000.00,'2021-07-01','2021-12-15');

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
