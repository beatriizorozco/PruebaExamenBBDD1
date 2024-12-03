DROP TABLE IF EXISTS `usuario`;

CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` INT AUTO_INCREMENT PRIMARY KEY,
  `nombre_completo` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL, 
  `fecha_nacimiento` DATE NOT NULL,
  `email` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL UNIQUE,
  `telefono` VARCHAR(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE IF NOT EXISTS `suscripcion` (
  `id_suscripcion` INT NOT NULL AUTO_INCREMENT,
  `id_usuario` INT NOT NULL,
  `cantidad` DECIMAL(5,2) NOT NULL,
  `fecha_pago` DATE NOT NULL,
  `tipo_pago` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  CONSTRAINT fk_usuario_id FOREIGN KEY(`id_usuario`) REFERENCES `usuario`(`id_usuario`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `Libros` (
  `id_libro` INT AUTO_INCREMENT NOT NULL,
  `titulo` VARCHAR(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `autor` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `año_publicacion` YEAR NOT NULL,
  `precio` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`id_libro`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
