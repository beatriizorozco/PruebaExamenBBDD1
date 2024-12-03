
-- Estructurado de la tabla usuario

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` INT AUTO_INCREMENT PRIMARY KEY,
  `nombre_completo` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL, 
  `fecha_nacimiento` DATE NOT NULL,
  `email` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL UNIQUE,
  `telefono` VARCHAR(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcado de datos para la tabla `usuario`

INSERT INTO `usuario` (`id_usuario`, `nombre_completo`, `fecha_nacimiento`, `email`, `telefono`, `direccion`) VALUES
(1, 'Juan Pérez', '1990-05-15', 'juan.perez@example.com', '5551234567', 'Calle Principal 123, Ciudad A'),
(2, 'Ana López', '1985-10-30', 'ana.lopez@example.com', '5559876543', 'Av. Central 456, Ciudad B'),
(3, 'Carlos Martínez', '2000-03-20', 'carlos.martinez@example.com', '5556789123', 'Calle Secundaria 789, Ciudad C'),
(4, 'María Gómez', '1995-07-25', 'maria.gomez@example.com', '5554567890', 'Plaza Mayor 101, Ciudad D'),
(6, 'Diego Jimenez', '1990-05-15', 'diego.jimenez@example.com', '672998308', 'Calle Principal 123, Ciudad J');


CREATE TABLE IF NOT EXISTS `suscripcion` (
  `id_suscripcion` INT NOT NULL AUTO_INCREMENT,
  `id_usuario` INT NOT NULL,
  `cantidad` DECIMAL(5,2) NOT NULL,
  `fecha_pago` DATE NOT NULL,
  `tipo_pago` VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  CONSTRAINT fk_usuario_id FOREIGN KEY(`id_usuario`) REFERENCES `usuario`(`id_usuario`),
  PRIMARY KEY (`id_suscripcion`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

  INSERT INTO `suscripcion`(`id_suscripcion`, `id_usuario`, `cantidad`, `fecha_pago`, `tipo_pago`)
  VALUES
    (1, 1, 29.99, '2024-12-01', 'Tarjeta de crédito'),
    (2, 3, 19.99, '2024-12-02', 'PayPal'),
    (3, 4, 15.50, '2024-12-03', 'Transferencia bancaria'),
    (4, 2, 25.00, '2024-12-04', 'Tarjeta de débito'),
    (5, 5, 35.75, '2024-12-05', 'PayPal');

CREATE TABLE IF NOT EXISTS `libros` (
  `id_libro` INT AUTO_INCREMENT NOT NULL,
  `titulo` VARCHAR(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `autor` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `año_publicacion` YEAR NOT NULL,
  `precio` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`id_libro`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

  INSERT INTO `libros`(`id_libro`, `titulo`, `autor`, `año_publicacion`, `precio`)
  VALUES
    (1, 'El gran Gatsby', 'F. Scott Fitzgerald', 1925, 15.99),
    (2, '1984', 'George Orwell', 1949, 12.50),
    (3, 'Matar a un ruiseñor', 'Harper Lee', 1960, 18.75),
    (4, 'Cien años de soledad', 'Gabriel García Márquez', 1967, 20.00),
    (5, 'Don Quijote de la Mancha', 'Miguel de Cervantes', 1605, 25.30);