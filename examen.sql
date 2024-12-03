CREATE TABLE IF NOT EXISTS `suscripcion` (
  `id_suscripcion` INT NOT NULL AUTO_INCREMENT,
  `id_usuario` INT NOT NULL,
  `cantidad` DECIMAL(5,2) NOT NULL,
  `fecha_pago` DATE NOT NULL,
  `tipo_pago` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  CONSTRAINT fk_usuario_id FOREIGN KEY(`id_usuario`) REFERENCES `usuario`(`id_usuario`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `suscripcion`(`id_suscripcion`, `id_usuario`, `cantidad`, `fecha_pago`, `tipo_pago`)
  VALUES
    (101, 29.99, '2024-12-01', 'Tarjeta de crédito'),
    (102, 19.99, '2024-12-02', 'PayPal'),
    (103, 15.50, '2024-12-03', 'Transferencia bancaria'),
    (104, 25.00, '2024-12-04', 'Tarjeta de débito'),
    (105, 35.75, '2024-12-05', 'PayPal');
