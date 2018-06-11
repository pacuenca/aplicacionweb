# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
#
# Also note: You'll have to insert the output of 'django-admin sqlcustom [app_label]'
# into your database.
from __future__ import unicode_literals

from django.db import models


class Categoria(models.Model):
    idcategoria = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=45)

    class Meta:
        managed = False
        db_table = 'categoria'


class Detalles(models.Model):
    iddetalle = models.AutoField(primary_key=True)
    tipo = models.CharField(max_length=45, blank=True, null=True)
    contenido = models.CharField(max_length=425, blank=True, null=True)
    presentaciones_idpresentacione = models.ForeignKey('Infografias', db_column='presentaciones_idpresentacione')

    class Meta:
        managed = False
        db_table = 'detalles'


class Infografias(models.Model):
    idinfografia = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=45, blank=True, null=True)
    concepto = models.CharField(max_length=45, blank=True, null=True)
    fecha_creacion = models.DateField(blank=True, null=True)
    ultima_modificacion = models.DateTimeField(blank=True, null=True)
    usuarios_idusuario = models.ForeignKey('Usuarios', db_column='usuarios_idusuario')

    class Meta:
        managed = False
        db_table = 'infografias'


class Items(models.Model):
    iditem = models.AutoField(primary_key=True)
    campo = models.CharField(max_length=45, blank=True, null=True)
    valor = models.CharField(max_length=525, blank=True, null=True)
    registro_idregistro = models.ForeignKey('Registro', db_column='registro_idregistro')
    categoria_idcategoria = models.ForeignKey(Categoria, db_column='categoria_idcategoria')

    class Meta:
        managed = False
        db_table = 'items'


class Registro(models.Model):
    idregistro = models.AutoField(primary_key=True)
    fecha = models.DateField(blank=True, null=True)
    id_usuario = models.ForeignKey('Usuarios', db_column='id_usuario')

    class Meta:
        managed = False
        db_table = 'registro'


class Usuarios(models.Model):
    idusuario = models.AutoField(primary_key=True)
    nombres = models.CharField(max_length=65, blank=True, null=True)
    apellidos = models.CharField(max_length=65, blank=True, null=True)
    correo = models.CharField(max_length=125, blank=True, null=True)
    telefono = models.CharField(max_length=10, blank=True, null=True)
    departamento = models.CharField(max_length=125, blank=True, null=True)
    seccion = models.CharField(max_length=125, blank=True, null=True)
    password = models.CharField(max_length=45, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'usuarios'
