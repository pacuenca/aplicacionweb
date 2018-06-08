# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Categoria',
            fields=[
                ('idcategoria', models.AutoField(serialize=False, primary_key=True)),
                ('nombre', models.CharField(max_length=45)),
            ],
            options={
                'db_table': 'categoria',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Detalles',
            fields=[
                ('iddetalle', models.AutoField(serialize=False, primary_key=True)),
                ('tipo', models.CharField(max_length=45, null=True, blank=True)),
                ('contenido', models.CharField(max_length=425, null=True, blank=True)),
            ],
            options={
                'db_table': 'detalles',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Infografias',
            fields=[
                ('idinfografia', models.AutoField(serialize=False, primary_key=True)),
                ('nombre', models.CharField(max_length=45, null=True, blank=True)),
                ('concepto', models.CharField(max_length=45, null=True, blank=True)),
                ('fecha_creacion', models.DateField(null=True, blank=True)),
                ('ultima_modificacion', models.DateTimeField(null=True, blank=True)),
            ],
            options={
                'db_table': 'infografias',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Items',
            fields=[
                ('iditem', models.AutoField(serialize=False, primary_key=True)),
                ('campo', models.CharField(max_length=45, null=True, blank=True)),
                ('valor', models.CharField(max_length=525, null=True, blank=True)),
            ],
            options={
                'db_table': 'items',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Registro',
            fields=[
                ('idregistro', models.AutoField(serialize=False, primary_key=True)),
                ('fecha', models.DateField(null=True, blank=True)),
            ],
            options={
                'db_table': 'registro',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Usuarios',
            fields=[
                ('idusuario', models.AutoField(serialize=False, primary_key=True)),
                ('nombres', models.CharField(max_length=65, null=True, blank=True)),
                ('apellidos', models.CharField(max_length=65, null=True, blank=True)),
                ('correo', models.CharField(max_length=125, null=True, blank=True)),
                ('telefono', models.CharField(max_length=10, null=True, blank=True)),
                ('departamento', models.CharField(max_length=125, null=True, blank=True)),
                ('seccion', models.CharField(max_length=125, null=True, blank=True)),
                ('password', models.CharField(max_length=45, null=True, blank=True)),
            ],
            options={
                'db_table': 'usuarios',
                'managed': False,
            },
        ),
    ]
