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
-- Table `registro`
-- -----------------------------------------------------
CREATE SEQUENCE registro_seq;

CREATE TABLE IF NOT EXISTS registro (
  idregistro INT NOT NULL DEFAULT NEXTVAL ('registro_seq'),
  fecha DATE NULL,
  id_usuario INT NOT NULL,
  PRIMARY KEY (idregistro)
 ,
  CONSTRAINT fk_registro_usuarios1
    FOREIGN KEY (id_usuario)
    REFERENCES usuarios (idusuario)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;

CREATE INDEX fk_registro_usuarios1_idx ON registro (id_usuario ASC);


-- -----------------------------------------------------
-- Table `categoria`
-- -----------------------------------------------------
CREATE SEQUENCE categoria_seq;

CREATE TABLE IF NOT EXISTS categoria (
  idcategoria INT NOT NULL DEFAULT NEXTVAL ('categoria_seq'),
  nombre VARCHAR(45) NOT NULL,
  PRIMARY KEY (idcategoria))
;


-- -----------------------------------------------------
-- Table `items`
-- -----------------------------------------------------
CREATE SEQUENCE items_seq;

CREATE TABLE IF NOT EXISTS items (
  idItem INT NOT NULL DEFAULT NEXTVAL ('items_seq'),
  campo VARCHAR(45) NULL,
  valor VARCHAR(525) NULL,
  registro_idregistro INT NOT NULL,
  categoria_idcategoria INT NOT NULL,
  PRIMARY KEY (idItem)
 ,
  CONSTRAINT fk_items_registro1
    FOREIGN KEY (registro_idregistro)
    REFERENCES registro (idregistro)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_items_categoria1
    FOREIGN KEY (categoria_idcategoria)
    REFERENCES categoria (idcategoria)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;

CREATE INDEX fk_items_registro1_idx ON items (registro_idregistro ASC);
CREATE INDEX fk_items_categoria1_idx ON items (categoria_idcategoria ASC);


-- -----------------------------------------------------
-- Table `infografias`
-- -----------------------------------------------------
CREATE SEQUENCE infografias_seq;

CREATE TABLE IF NOT EXISTS infografias (
  idinfografia INT NOT NULL DEFAULT NEXTVAL ('infografias_seq'),
  nombre VARCHAR(45) NULL,
  concepto VARCHAR(45) NULL,
  fecha_creacion DATE NULL,
  ultima_modificacion TIMESTAMP(0) NULL,
  usuarios_idusuario INT NOT NULL,
  PRIMARY KEY (idinfografia)
 ,
  CONSTRAINT fk_presentaciones_usuarios
    FOREIGN KEY (usuarios_idusuario)
    REFERENCES usuarios (idusuario)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;

CREATE INDEX fk_presentaciones_usuarios_idx ON infografias (usuarios_idusuario ASC);


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
    REFERENCES infografias (idinfografia)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;

CREATE INDEX fk_detalles_presentaciones1_idx ON detalles (presentaciones_idpresentacione ASC);


/* SET SQL_MODE=@OLD_SQL_MODE; */
/* SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS; */
/* SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS; */

