
CREATE TABLE cliente (
	clienteID INTEGER PRIMARY KEY,
    nombreCliente  VARCHAR(45),
    apellidoCliente VARCHAR(45),
    observaciones VARCHAR(205)
);


CREATE TABLE platillo (
	platilloID INTEGER PRIMARY KEY,
    nombrePlatillo VARCHAR(45),
    importePlatillo DECIMAL(10,2)
);

CREATE TABLE bebida (
	bebidaID INTEGER PRIMARY KEY,
    nombreBebida VARCHAR(45),
    importeBebida DECIMAL(10,2)
);


CREATE TABLE mesa (
	mesaID INTEGER PRIMARY KEY,
    ubicacionMesa VARCHAR(45),
    numComensales INTEGER
);


CREATE TABLE mesero (
	meseroID INTEGER PRIMARY KEY,
    nombreMesero VARCHAR(45),
    apellido1Mesero VARCHAR(45),
    apellido2Mesero VARCHAR(45)
);


CREATE TABLE factura (
    facturaID INTEGER PRIMARY KEY,
    fechaFactura DATE,
    meseroID INTEGER NOT NULL,
    mesaID INTEGER NOT NULL,
    bebidaID INTEGER NOT NULL,
    platilloID INTEGER,
    clienteID INTEGER NOT NULL DEFAULT 1,
    FOREIGN KEY (meseroID) REFERENCES mesero(meseroID) ON DELETE SET RESTRICT ON UPDATE ACTION,
    FOREIGN KEY (mesaID) REFERENCES mesa(mesaID) ON DELETE SET RESTRICT ON UPDATE ACTION,
    FOREIGN KEY (bebidaID ) REFERENCES bebida(bebidaID) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (platilloID ) REFERENCES platillo(platilloID) N DELETE SET NULL ON UPDATE ACTION,
    FOREIGN KEY (clienteID ) REFERENCES cliente(clienteID) ON DELETE SET DEFAULT ON UPDATE ACTION
);
