
-- -----------------------------------------------------
-- Table `usuarios`
-- -----------------------------------------------------
CREATE SEQUENCE usuarios_seq;

CREATE TABLE IF NOT EXISTS usuarios (
  idusuario INT NOT NULL DEFAULT NEXTVAL ('usuarios_seq'),
  nombres VARCHAR(65) NULL,
  apellidos VARCHAR(65) NULL,
  correo VARCHAR(125) NULL,
  telefono VARCHAR(10) NULL,
  departamento VARCHAR(125) NULL,
  seccion VARCHAR(125) NULL,
  password VARCHAR(45) NULL,
  PRIMARY KEY (idusuario))
;


-- -----------------------------------------------------
-- Table `presentaciones`
-- -----------------------------------------------------
CREATE SEQUENCE presentaciones_seq;

CREATE TABLE IF NOT EXISTS presentaciones (
  idpresentacione INT NOT NULL DEFAULT NEXTVAL ('presentaciones_seq'),
  nombre VARCHAR(45) NULL,
  concepto VARCHAR(45) NULL,
  fecha_creacion DATE NULL,
  ultima_modificacion TIMESTAMP(0) NULL,
  usuarios_idusuario INT NOT NULL,
  PRIMARY KEY (idpresentacione)
 ,
  CONSTRAINT fk_presentaciones_usuarios
    FOREIGN KEY (usuarios_idusuario)
    REFERENCES usuarios (idusuario)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;

CREATE INDEX fk_presentaciones_usuarios_idx ON presentaciones (usuarios_idusuario ASC);


-- -----------------------------------------------------
-- Table `items`
-- -----------------------------------------------------
CREATE SEQUENCE items_seq;

CREATE TABLE IF NOT EXISTS items (
  idItem INT NOT NULL DEFAULT NEXTVAL ('items_seq'),
  campo VARCHAR(45) NULL,
  valor VARCHAR(525) NULL,
  presentaciones_idpresentacione INT NOT NULL,
  PRIMARY KEY (idItem)
 ,
  CONSTRAINT fk_items_presentaciones1
    FOREIGN KEY (presentaciones_idpresentacione)
    REFERENCES presentaciones (idpresentacione)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;

CREATE INDEX fk_items_presentaciones1_idx ON items (presentaciones_idpresentacione ASC);


-- -----------------------------------------------------
-- Table `detalles`
-- -----------------------------------------------------
CREATE SEQUENCE detalles_seq;

CREATE TABLE IF NOT EXISTS detalles (
  iddetalle INT NOT NULL DEFAULT NEXTVAL ('detalles_seq'),
  tipo VARCHAR(45) NULL,
  contenido VARCHAR(425) NULL,
  presentaciones_idpresentacione INT NOT NULL,
  PRIMARY KEY (iddetalle)
 ,
  CONSTRAINT fk_detalles_presentaciones1
    FOREIGN KEY (presentaciones_idpresentacione)
    REFERENCES presentaciones (idpresentacione)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;

CREATE INDEX fk_detalles_presentaciones1_idx ON detalles (presentaciones_idpresentacione ASC);
