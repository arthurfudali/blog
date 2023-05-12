-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.1.33-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para web
DROP DATABASE IF EXISTS `web`;
CREATE DATABASE IF NOT EXISTS `web` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `web`;

-- Copiando estrutura para tabela web.blog
CREATE TABLE IF NOT EXISTS `blog` (
  `blog_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `blog_bloginfo_codigo` int(11) NOT NULL DEFAULT '0',
  `blog_blogimgs_codigo` int(11) NOT NULL DEFAULT '0',
  `blog_usuario_codigo` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`blog_codigo`),
  KEY `FK_blog_bloginfo` (`blog_bloginfo_codigo`),
  KEY `FK_blog_blogimgs` (`blog_blogimgs_codigo`),
  KEY `FK_blog_usuario` (`blog_usuario_codigo`),
  CONSTRAINT `FK_blog_blogimgs` FOREIGN KEY (`blog_blogimgs_codigo`) REFERENCES `blogimgs` (`blogimgs_codigo`),
  CONSTRAINT `FK_blog_bloginfo` FOREIGN KEY (`blog_bloginfo_codigo`) REFERENCES `bloginfo` (`bloginfo_codigo`),
  CONSTRAINT `FK_blog_usuario` FOREIGN KEY (`blog_usuario_codigo`) REFERENCES `usuario` (`usuario_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela web.blog: ~3 rows (aproximadamente)
DELETE FROM `blog`;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` (`blog_codigo`, `blog_bloginfo_codigo`, `blog_blogimgs_codigo`, `blog_usuario_codigo`) VALUES
	(2, 1, 3, 2),
	(3, 1, 4, 2),
	(4, 2, 2, 1);
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;

-- Copiando estrutura para tabela web.blogimgs
CREATE TABLE IF NOT EXISTS `blogimgs` (
  `blogimgs_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `blogimgs_nome` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`blogimgs_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela web.blogimgs: ~5 rows (aproximadamente)
DELETE FROM `blogimgs`;
/*!40000 ALTER TABLE `blogimgs` DISABLE KEYS */;
INSERT INTO `blogimgs` (`blogimgs_codigo`, `blogimgs_nome`) VALUES
	(1, 'hulk.jpg'),
	(2, 'hulk2.webp'),
	(3, 'wolverine.jpg'),
	(4, 'ww.webp'),
	(5, 'ww2.jpg');
/*!40000 ALTER TABLE `blogimgs` ENABLE KEYS */;

-- Copiando estrutura para tabela web.bloginfo
CREATE TABLE IF NOT EXISTS `bloginfo` (
  `bloginfo_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `bloginfo_corpo` longtext,
  `bloginfo_data` timestamp NULL DEFAULT NULL,
  `bloginfo_titulo` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`bloginfo_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela web.bloginfo: ~4 rows (aproximadamente)
DELETE FROM `bloginfo`;
/*!40000 ALTER TABLE `bloginfo` DISABLE KEYS */;
INSERT INTO `bloginfo` (`bloginfo_codigo`, `bloginfo_corpo`, `bloginfo_data`, `bloginfo_titulo`) VALUES
	(1, '    Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo porro voluptatibus iste eius error incidunt? Corrupti, consequuntur minima? Dicta quam temporibus ad recusandae quibusdam doloremque labore beatae sunt ex, asperiores, quae distinctio? Sequi, vero. Quam earum obcaecati, magni ullam quo quas accusantium deleniti maiores illo impedit at in. Neque, nulla? Modi corrupti officiis inventore veritatis voluptate mollitia sit earum vel, praesentium voluptatibus eum itaque incidunt ipsam soluta quaerat iure, iste voluptas necessitatibus laboriosam voluptates et dolor suscipit! Id, rerum eos. Facere aspernatur tenetur perferendis unde, nam possimus natus at eveniet. Perferendis rem, doloribus necessitatibus culpa voluptatem assumenda adipisci ipsum voluptatibus ex aliquid nihil nesciunt illum quae delectus, libero officiis error. Soluta perspiciatis modi omnis? Ullam, vero? Eveniet, doloribus culpa id iste illum nemo est expedita facilis autem rerum libero, inventore itaque laboriosam facere natus accusantium quisquam rem cum vero commodi, consectetur dolorem praesentium repudiandae! Repellat saepe inventore fugiat blanditiis, sint atque eaque accusantium, explicabo soluta, provident nesciunt. Unde quia eius ipsa non odit iusto dolores? Deserunt consequatur, repudiandae suscipit excepturi tenetur odit nesciunt vitae doloremque ea magni, ex, neque sit dolorum esse ullam officia. Delectus sequi exercitationem fugit, officia voluptate illum ex similique id, tempore eligendi eaque! Veniam excepturi quos ut alias tempore autem eius! Autem quidem blanditiis eveniet asperiores, dolore voluptate? Quo fugiat odit, voluptates odio id, dolore vel porro praesentium laboriosam repellat in iste voluptas, accusamus quasi. Neque magni laborum eius iusto consequatur nesciunt quaerat tenetur illum? Nulla earum laborum libero, officiis sequi reprehenderit consectetur nihil quasi nostrum!\r\n    Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo porro voluptatibus iste eius error incidunt? Corrupti, consequuntur minima? Dicta quam temporibus ad recusandae quibusdam doloremque labore beatae sunt ex, asperiores, quae distinctio? Sequi, vero. Quam earum obcaecati, magni ullam quo quas accusantium deleniti maiores illo impedit at in. Neque, nulla? Modi corrupti officiis inventore veritatis voluptate mollitia sit earum vel, praesentium voluptatibus eum itaque incidunt ipsam soluta quaerat iure, iste voluptas necessitatibus laboriosam voluptates et dolor suscipit! Id, rerum eos. Facere aspernatur tenetur perferendis unde, nam possimus natus at eveniet. Perferendis rem, doloribus necessitatibus culpa voluptatem assumenda adipisci ipsum voluptatibus ex aliquid nihil nesciunt illum quae delectus, libero officiis error. Soluta perspiciatis modi omnis? Ullam, vero? Eveniet, doloribus culpa id iste illum nemo est expedita facilis autem rerum libero, inventore itaque laboriosam facere natus accusantium quisquam rem cum vero commodi, consectetur dolorem praesentium repudiandae! Repellat saepe inventore fugiat blanditiis, sint atque eaque accusantium, explicabo soluta, provident nesciunt. Unde quia eius ipsa non odit iusto dolores? Deserunt consequatur, repudiandae suscipit excepturi tenetur odit nesciunt vitae doloremque ea magni, ex, neque sit dolorum esse ullam officia. Delectus sequi exercitationem fugit, officia voluptate illum ex similique id, tempore eligendi eaque! Veniam excepturi quos ut alias tempore autem eius! Autem quidem blanditiis eveniet asperiores, dolore voluptate? Quo fugiat odit, voluptates odio id, dolore vel porro praesentium laboriosam repellat in iste voluptas, accusamus quasi. Neque magni laborum eius iusto consequatur nesciunt quaerat tenetur illum? Nulla earum laborum libero, officiis sequi reprehenderit consectetur nihil quasi nostrum!\r\n', '2023-04-26 15:20:33', 'Titulo 1'),
	(2, '    Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo porro voluptatibus iste eius error incidunt? Corrupti, consequuntur minima? Dicta quam temporibus ad recusandae quibusdam doloremque labore beatae sunt ex, asperiores, quae distinctio? Sequi, vero. Quam earum obcaecati, magni ullam quo quas accusantium deleniti maiores illo impedit at in. Neque, nulla? Modi corrupti officiis inventore veritatis voluptate mollitia sit earum vel, praesentium voluptatibus eum itaque incidunt ipsam soluta quaerat iure, iste voluptas necessitatibus laboriosam voluptates et dolor suscipit! Id, rerum eos. Facere aspernatur tenetur perferendis unde, nam possimus natus at eveniet. Perferendis rem, doloribus necessitatibus culpa voluptatem assumenda adipisci ipsum voluptatibus ex aliquid nihil nesciunt illum quae delectus, libero officiis error. Soluta perspiciatis modi omnis? Ullam, vero? Eveniet, doloribus culpa id iste illum nemo est expedita facilis autem rerum libero, inventore itaque laboriosam facere natus accusantium quisquam rem cum vero commodi, consectetur dolorem praesentium repudiandae! Repellat saepe inventore fugiat blanditiis, sint atque eaque accusantium, explicabo soluta, provident nesciunt. Unde quia eius ipsa non odit iusto dolores? Deserunt consequatur, repudiandae suscipit excepturi tenetur odit nesciunt vitae doloremque ea magni, ex, neque sit dolorum esse ullam officia. Delectus sequi exercitationem fugit, officia voluptate illum ex similique id, tempore eligendi eaque! Veniam excepturi quos ut alias tempore autem eius! Autem quidem blanditiis eveniet asperiores, dolore voluptate? Quo fugiat odit, voluptates odio id, dolore vel porro praesentium laboriosam repellat in iste voluptas, accusamus quasi. Neque magni laborum eius iusto consequatur nesciunt quaerat tenetur illum? Nulla earum laborum libero, officiis sequi reprehenderit consectetur nihil quasi nostrum!\r\n', '2023-04-26 15:20:33', 'Titulo 2'),
	(3, '    Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo porro voluptatibus iste eius error incidunt? Corrupti, consequuntur minima? Dicta quam temporibus ad recusandae quibusdam doloremque labore beatae sunt ex, asperiores, quae distinctio? Sequi, vero. Quam earum obcaecati, magni ullam quo quas accusantium deleniti maiores illo impedit at in. Neque, nulla? Modi corrupti officiis inventore veritatis voluptate mollitia sit earum vel, praesentium voluptatibus eum itaque incidunt ipsam soluta quaerat iure, iste voluptas necessitatibus laboriosam voluptates et dolor suscipit! Id, rerum eos. Facere aspernatur tenetur perferendis unde, nam possimus natus at eveniet. Perferendis rem, doloribus necessitatibus culpa voluptatem assumenda adipisci ipsum voluptatibus ex aliquid nihil nesciunt illum quae delectus, libero officiis error. Soluta perspiciatis modi omnis? Ullam, vero? Eveniet, doloribus culpa id iste illum nemo est expedita facilis autem rerum libero, inventore itaque laboriosam facere natus accusantium quisquam rem cum vero commodi, consectetur dolorem praesentium repudiandae! Repellat saepe inventore fugiat blanditiis, sint atque eaque accusantium, explicabo soluta, provident nesciunt. Unde quia eius ipsa non odit iusto dolores? Deserunt consequatur, repudiandae suscipit excepturi tenetur odit nesciunt vitae doloremque ea magni, ex, neque sit dolorum esse ullam officia. Delectus sequi exercitationem fugit, officia voluptate illum ex similique id, tempore eligendi eaque! Veniam excepturi quos ut alias tempore autem eius! Autem quidem blanditiis eveniet asperiores, dolore voluptate? Quo fugiat odit, voluptates odio id, dolore vel porro praesentium laboriosam repellat in iste voluptas, accusamus quasi. Neque magni laborum eius iusto consequatur nesciunt quaerat tenetur illum? Nulla earum laborum libero, officiis sequi reprehenderit consectetur nihil quasi nostrum!\r\n', '2023-04-26 15:20:33', 'Titulo 3'),
	(4, '    Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo porro voluptatibus iste eius error incidunt? Corrupti, consequuntur minima? Dicta quam temporibus ad recusandae quibusdam doloremque labore beatae sunt ex, asperiores, quae distinctio? Sequi, vero. Quam earum obcaecati, magni ullam quo quas accusantium deleniti maiores illo impedit at in. Neque, nulla? Modi corrupti officiis inventore veritatis voluptate mollitia sit earum vel, praesentium voluptatibus eum itaque incidunt ipsam soluta quaerat iure, iste voluptas necessitatibus laboriosam voluptates et dolor suscipit! Id, rerum eos. Facere aspernatur tenetur perferendis unde, nam possimus natus at eveniet. Perferendis rem, doloribus necessitatibus culpa voluptatem assumenda adipisci ipsum voluptatibus ex aliquid nihil nesciunt illum quae delectus, libero officiis error. Soluta perspiciatis modi omnis? Ullam, vero? Eveniet, doloribus culpa id iste illum nemo est expedita facilis autem rerum libero, inventore itaque laboriosam facere natus accusantium quisquam rem cum vero commodi, consectetur dolorem praesentium repudiandae! Repellat saepe inventore fugiat blanditiis, sint atque eaque accusantium, explicabo soluta, provident nesciunt. Unde quia eius ipsa non odit iusto dolores? Deserunt consequatur, repudiandae suscipit excepturi tenetur odit nesciunt vitae doloremque ea magni, ex, neque sit dolorum esse ullam officia. Delectus sequi exercitationem fugit, officia voluptate illum ex similique id, tempore eligendi eaque! Veniam excepturi quos ut alias tempore autem eius! Autem quidem blanditiis eveniet asperiores, dolore voluptate? Quo fugiat odit, voluptates odio id, dolore vel porro praesentium laboriosam repellat in iste voluptas, accusamus quasi. Neque magni laborum eius iusto consequatur nesciunt quaerat tenetur illum? Nulla earum laborum libero, officiis sequi reprehenderit consectetur nihil quasi nostrum!\r\n', '2023-04-26 15:20:33', 'Titulo 4');
/*!40000 ALTER TABLE `bloginfo` ENABLE KEYS */;

-- Copiando estrutura para tabela web.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `usuario_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_nome` varchar(250) DEFAULT NULL,
  `usuario_email` varchar(250) DEFAULT NULL,
  `usuario_senha` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`usuario_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela web.usuario: ~2 rows (aproximadamente)
DELETE FROM `usuario`;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`usuario_codigo`, `usuario_nome`, `usuario_email`, `usuario_senha`) VALUES
	(1, 'João', 'joao@gmail.com', 'joao123'),
	(2, 'Arthur', 'arthur@gmail.com', 'arthur123');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
