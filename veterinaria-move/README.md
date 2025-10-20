# Proyecto Veterinaria en Move

Este proyecto es un sistema de gestión para una veterinaria, implementado en el lenguaje de programación Move. A continuación se describen los componentes principales del proyecto y cómo utilizarlos.

## Estructura del Proyecto

El proyecto tiene la siguiente estructura de archivos:

```
veterinaria-move
├── Move.toml
├── README.md
├── sources
│   ├── Veterinaria.move
│   ├── Pet.move
│   └── Owner.move
├── tests
│   ├── veterinaria_tests.move
│   └── helpers.move
├── scripts
    └── setup_accounts.move

```

### Descripción de Archivos

- **Move.toml**: Archivo de configuración del proyecto Move. Define las dependencias y la estructura del módulo.

- README.md: Este archivo, que contiene la documentación del proyecto.

- sources/Veterinaria.move: Contiene el módulo `0x1::veterinaria`, que define las estructuras `Mascota` y `Dueno` (Dueño), así como las funciones para crear, leer, actualizar y eliminar mascotas y dueños.

- sources/Pet.move: Puede contener definiciones adicionales relacionadas con la estructura de las mascotas.

- sources/Owner.move: Puede contener definiciones adicionales relacionadas con la estructura de los dueños.

- tests/veterinaria_tests.move: Contiene pruebas unitarias para el módulo veterinaria, incluyendo funciones para probar la creación, actualización y eliminación de mascotas y dueños.

- tests/helpers.move: Puede contener funciones auxiliares para las pruebas.

- scripts/setup_accounts.move: Puede contener scripts para configurar cuentas necesarias para las pruebas o el despliegue.

- Makefile: Puede contener instrucciones para compilar el proyecto y ejecutar pruebas.

## Instrucciones para Compilar y Ejecutar Pruebas

1. Compilar el Proyecto: Utiliza el siguiente comando para compilar el proyecto:
   ```
   sui move build
   ```

2. Ejecutar Pruebas: Para ejecutar las pruebas unitarias, utiliza el siguiente comando:
   ```
   sui move test
   ```