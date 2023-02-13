--Creacion de las tablas

--Creacion de coches
CREATE TABLE coches (
  id INT AUTO_INCREMENT PRIMARY KEY,
  marca VARCHAR(50) NOT NULL,
  modelo VARCHAR(50) NOT NULL,
  color VARCHAR(50) NOT NULL,
  precioBase INT NOT NULL
);

--Creacion de reservas
CREATE TABLE reservas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  id_coche INT NOT NULL,
  fechaIn DATE NOT NULL,
  fechaFin DATE NOT NULL,
  nombreCliente VARCHAR(50) NOT NULL,
  apellidoCliente VARCHAR(50) NOT NULL,
  emailCliente VARCHAR(255) NOT NULL,
  telefonoCliente VARCHAR(20) NOT NULL,
  precioTotal INT NOT NULL,
  FOREIGN KEY (id_coche) REFERENCES coches(id)
);

--rellenar coches 
INSERT INTO coches (marca, modelo, color, precioBase)
VALUES 
  ('Ferrari', '812GTS', 'rojo', 1000),
  ('Ferrari', 'SF90STRADALE', 'rojo', 1200),
  ('Rolls-Royce', 'Spectre', 'amarillo', 1500),
  ('Rolls-Royce', 'Dawn', 'azul', 1100),
  ('Bugatti', 'Chiron', 'azul', 1550),
  ('Mercedes', 'AMGGT', 'gris', 1400);


--rellenar reservas
INSERT INTO reservas (id_coche, fechaIn, fechaFin, nombreCliente, apellidoCliente, emailCliente, telefonoCliente, precioTotal)
VALUES
  (1, '2023-02-13', '2023-02-17', 'Juan', 'Pérez', 'juanperez@example.com', '555-555-1212', 5000),
  (2, '2023-02-15', '2023-02-19', 'María', 'Rodríguez', 'mariarodriguez@example.com', '555-555-1213', 6000),
  (3, '2023-02-16', '2023-02-20', 'Pedro', 'García', 'pedrogarcia@example.com', '555-555-1214', 7000),
  (4, '2023-02-18', '2023-02-22', 'Ana', 'Martínez', 'anamartinez@example.com', '555-555-1215', 8000);
