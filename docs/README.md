# Gestión Empresarial - Base de Datos

Este proyecto consiste en la creación de una base de datos para la gestión empresarial, que incluye información sobre empleados, departamentos, proyectos y asignaciones de empleados a proyectos.

## Estructura de la base de datos

La base de datos `gestion_empresarial` consta de las siguientes tablas:

### 1. Tabla `departamentos`
Almacena los departamentos dentro de la empresa.

| Campo             | Tipo            | Descripción                              |
|-------------------|-----------------|------------------------------------------|
| `id_departamento`  | INT (PK)        | Identificador único del departamento.    |
| `nombre_departamento` | VARCHAR(50)  | Nombre del departamento.                 |

### 2. Tabla `empleados`
Guarda la información sobre los empleados de la empresa.

| Campo              | Tipo            | Descripción                              |
|--------------------|-----------------|------------------------------------------|
| `id_empleado`      | INT (PK)        | Identificador único del empleado.        |
| `nombre`           | VARCHAR(100)    | Nombre completo del empleado.            |
| `salario`          | DECIMAL(10, 2)  | Salario mensual del empleado.            |
| `id_departamento`  | INT (FK)        | Departamento al que pertenece el empleado.|
| `fecha_contratacion` | DATE          | Fecha de contratación del empleado.      |

### 3. Tabla `proyectos`
Contiene información sobre los proyectos en los que trabajan los empleados.

| Campo             | Tipo            | Descripción                              |
|-------------------|-----------------|------------------------------------------|
| `id_proyecto`      | INT (PK)        | Identificador único del proyecto.        |
| `nombre_proyecto`  | VARCHAR(100)    | Nombre del proyecto.                     |
| `presupuesto`      | DECIMAL(12, 2)  | Presupuesto asignado al proyecto.        |
| `fecha_inicio`     | DATE            | Fecha de inicio del proyecto.            |
| `fecha_fin`        | DATE            | Fecha de finalización del proyecto.      |

### 4. Tabla `asignaciones_proyectos`
Esta tabla relaciona empleados con proyectos, almacenando las asignaciones realizadas.

| Campo              | Tipo            | Descripción                              |
|--------------------|-----------------|------------------------------------------|
| `id_asignacion`    | INT (PK)        | Identificador único de la asignación.    |
| `id_empleado`      | INT (FK)        | Identificador del empleado asignado.     |
| `id_proyecto`      | INT (FK)        | Identificador del proyecto asignado.     |
| `fecha_asignacion` | DATE            | Fecha en que se realizó la asignación.   |

## Datos Iniciales

### Datos en la tabla `departamentos`:

| id_departamento | nombre_departamento  |
|-----------------|----------------------|
| 1               | Recursos Humanos     |
| 2               | Tecnología           |
| 3               | Ventas               |
| 4               | Marketing            |

### Datos en la tabla `empleados`:

| id_empleado | nombre            | salario | id_departamento | fecha_contratacion |
|-------------|-------------------|---------|-----------------|--------------------|
| 1           | Juan Pérez        | 5000    | 1               | 2020-01-15         |
| 2           | Ana Gómez         | 6000    | 2               | 2019-11-23         |
| 3           | Sofía Torres      | 4500    | 3               | 2021-06-30         |
| 4           | Miguel García     | 7000    | 2               | 2018-09-12         |
| 5           | Daniel Martínez   | 5500    | 4               | 2020-03-10         |

### Datos en la tabla `proyectos`:

| id_proyecto | nombre_proyecto          | presupuesto | fecha_inicio | fecha_fin  |
|-------------|--------------------------|-------------|--------------|------------|
| 1           | Implementación ERP        | 150000      | 2021-01-01   | 2021-12-31 |
| 2           | Desarrollo Web            | 90000       | 2022-03-15   | 2022-10-01 |
| 3           | Campaña Marketing Digital | 75000       | 2021-07-01   | 2021-12-15 |

### Datos en la tabla `asignaciones_proyectos`:

| id_asignacion | id_empleado | id_proyecto | fecha_asignacion |
|---------------|-------------|-------------|------------------|
| 1             | 2           | 1           | 2021-01-15       |
| 2             | 4           | 1           | 2021-01-20       |
| 3             | 3           | 3           | 2021-07-10       |
| 4             | 5           | 3           | 2021-07-15       |
| 5             | 2           | 2           | 2022-03-20       |

## Instrucciones para crear la base de datos

1. Crear la base de datos:

   ```sql
   CREATE DATABASE gestion_empresarial;


2. USE gestion_empresarial;

3. Crear las tablas departamentos, empleados, proyectos y asignaciones_proyectos con las estructuras indicadas.

4. Insertar los datos iniciales en cada tabla.
