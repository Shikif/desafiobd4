CREATE DATABASE biblioteca

CREATE TABLE libros(codigo INT PRIMARY KEY, nombre VARCHAR(100) not null);
CREATE TABLE editoriales(id serial primary key, nombre varchar(100) NOT NULL);
CREATE TABLE autores(id SERIAL PRIMARY KEY, nombre varchar(100) not null);
CREATE TABLE lectores(id SERIAL PRIMARY KEY, nombre varchar(100) not null);

CREATE TABLE editoriales_libros(libro_cod INT UNIQUE, editorial_id INT, FOREIGN KEY(libro_cod) REFERENCES libros(codigo), foreign key(editorial_id) REFERENCES editoriales(id));
CREATE TABLE prestamos(id SERIAL, fecha_devolucion DATE NOT NULL, lector_id INT NOT NULL, libro_cod INT not null, PRIMARY KEY(id), FOREIGN KEY(lector_id) REFERENCES lectores(id), FOREIGN KEY(libro_cod) REFERENCES libros(codigo));

INSERT INTO libros(codigo, nombre) VALUES(515, 'Ecuaciones diferenciales para ingenieros y cientificos');
INSERT INTO libros(codigo, nombre) VALUES(540, 'Quimica');
INSERT INTO libros(codigo, nombre) VALUES(530, 'Fisica');
INSERT INTO libros(codigo, nombre) VALUES(519, 'Estadistica');
INSERT INTO libros(codigo, nombre) VALUES(512, 'Algebra lineal');

INSERT INTO editoriales(nombre) VALUES('UTHEA');
INSERT INTO editoriales(nombre) VALUES('Reverté');
INSERT INTO editoriales(nombre) VALUES('McCrawHill');
INSERT INTO editoriales(nombre) VALUES('MIR');

INSERT INTO autores(nombre) VALUES('Lambe, C.G');
INSERT INTO autores(nombre) VALUES('Tranter, C.J');
INSERT INTO autores(nombre) VALUES('Christen, Hans Rudolf');
INSERT INTO autores(nombre) VALUES('Serway, Raymon A');
INSERT INTO autores(nombre) VALUES('Murray Spiegel');
INSERT INTO autores(nombre) VALUES('Voevodin, Valentin V');

INSERT INTO lectores(nombre) VALUES('Perez Gomez, Juan');
INSERT INTO lectores(nombre) VALUES('Ortega Pereira, Margarita');
INSERT INTO lectores(nombre) VALUES('Garcia Contreras, Rosa');
INSERT INTO lectores(nombre) VALUES('Lopez Molina, Ana');

INSERT INTO autores_libros(libro_cod, autor_id) VALUES(1, 515);
INSERT INTO autores_libros(libro_cod, autor_id) VALUES(515, 1);
INSERT INTO autores_libros(libro_cod, autor_id) VALUES(515, 2);
INSERT INTO autores_libros(libro_cod, autor_id) VALUES(540, 3);
INSERT INTO autores_libros(libro_cod, autor_id) VALUES(519, 4);
INSERT INTO autores_libros(libro_cod, autor_id) VALUES(512, 5);
INSERT INTO autores_libros(libro_cod, autor_id) VALUES(5, 6);
INSERT INTO autores_libros(libro_cod, autor_id) VALUES(530, 6);

INSERT INTO editoriales_libros(libro_cod, editorial_id) VALUES(515,1);
INSERT INTO editoriales_libros(libro_cod, editorial_id) VALUES(540,2);
INSERT INTO editoriales_libros(libro_cod, editorial_id) VALUES(530,3);
INSERT INTO editoriales_libros(libro_cod, editorial_id) VALUES(519,3);
INSERT INTO editoriales_libros(libro_cod, editorial_id) VALUES(512,4);

INSERT INTO prestamos(fecha_devolucion, lector_id, libro_cod) VALUES('2019-09-15', 1, 515);
INSERT INTO prestamos(fecha_devolucion, lector_id, libro_cod) VALUES('2019-08-23', 2, 540);
INSERT INTO prestamos(fecha_devolucion, lector_id, libro_cod) VALUES('2019-09-24', 3, 530);
INSERT INTO prestamos(fecha_devolucion, lector_id, libro_cod) VALUES('2019-09-18', 4, 519);
INSERT INTO prestamos(fecha_devolucion, lector_id, libro_cod) VALUES('2019-09-17', 1, 512);
