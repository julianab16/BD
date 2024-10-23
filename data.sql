INSERT INTO cliente (clienteID, nombreCliente, apellidoCliente, observaciones) VALUES
    (23453, 'Juliana', 'Bolaños', 'excelente'),
    (34556, 'Sofia', 'Urdemalas', 'bueno'),
    (53433, 'Isabella', 'Muñoz', 'normal'),
    (23454, 'Laura', 'Salazar', 'mal atención'),
    (23953, 'Juan', 'Cortes', 'excelente'),
    (38956, 'Miguel', 'Suarez',  'muy bueno'),
    (55773, 'Gabriela', 'Salazar', 'comida rica'),
    (22464, 'Johan', 'Perdomo', 'buena sazón'),
    (29643, 'Melissa', 'Araujo', 'rico'),
    (30546, 'Simón', 'Hoyos', 'bueno');


INSERT INTO platillo (platilloID, nombrePlatillo, importePlatillo) VALUES
    (621, 'Tamal', 80),
    (942, 'Pan', 90),
    (533, 'Arroz con Pollo', 75),
    (544, 'Sopa de Huevo', 60),
    (905, 'Bandeja Paisa', 120),
    (876, 'Calentao', 50),
    (677, 'Changua', 100),
    (928, 'Pasta con Champiñones', 45),
    (729, 'Consome', 35),
    (510, 'Filete de Pollo', 85);

INSERT INTO bebida (bebidaID, nombreBebida, importeBebida) VALUES
    (190, 'Coca-Cola', 25),
    (289, 'Agua Mineral', 20),
    (367, 'Cerveza', 50),
    (445, 'Agua de Panela', 15),
    (325, 'Té Helado', 30),
    (385, 'Agua de Limón', 15),
    (453, 'Café Americano', 20),
    (128, 'Chocolate Caliente', 35),
    (239, 'Jugo de Naranja', 25),
    (110, 'Limonada', 25);

INSERT INTO mesa (mesaID, ubicacionMesa, numComensales) VALUES
    (11, 'Terraza', 4),
    (22, 'Jardín', 6),
    (33, 'Interior', 2),
    (44, 'Bar', 4),
    (55, 'Balcón', 8),
    (66, 'Patio', 6),
    (77, 'Privado', 10),
    (88, 'Salón Principal', 12),
    (99, 'Cerca de la ventana', 4),
    (100, 'Terraza', 2);

INSERT INTO mesero (meseroID, nombreMesero, apellido1Mesero, apellido2Mesero) VALUES
    (1, 'Juan', 'Pérez', 'García'),
    (2, 'Ana', 'López', 'Martínez'),
    (3, 'Carlos', 'Hernández', 'Ramírez'),
    (4, 'Lucía', 'Gómez', 'Sánchez'),
    (5, 'Miguel', 'Díaz', 'Torres'),
    (6, 'Valu', 'Ortiz', 'Mendoza'),
    (7, 'Jhorman', 'Vargas', 'Ruiz'),
    (8, 'Paula', 'Cruz', 'Luna'),
    (9, 'Nicolas', 'Reyes', 'Fernández'),
    (10, 'María', 'Castro', 'Morales');


INSERT INTO factura (facturaID, fechaFactura, meseroID, mesaID, bebidaID, platilloID, clienteID) VALUES
    (1, '2024-10-22 11:45:00', 1, 22, 190, 942, 23453),
    (2, '2024-10-22 12:00:00', 2, 33, 190, 533, 34556),
    (3, '2024-10-22 12:15:00', 2, 66, 289, 876, 53433),
    (4, '2024-10-22 12:30:00', 4, 11, 325, 544, 23454),
    (5, '2024-10-22 12:45:00', 3, 55, 385, 928, 23953),
    (6, '2024-10-22 1:00:00', 3, 22, 239, 510, 38956),
    (7, '2024-10-22 1:15:00', 7, 99, 128, 729, 55773),
    (8, '2024-10-22 1:30:00', 5, 100, 385, 621, 22464),
    (9, '2024-10-22 1:45:00', 9, 44, 289, 942, 29643),
    (10, '2024-10-22 2:00:00', 6, 33, 190, 928, 30546);

