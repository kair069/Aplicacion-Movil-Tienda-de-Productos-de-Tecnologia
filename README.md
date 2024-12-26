
# 📱🛍️ Aplicación Móvil Tienda de Productos de Tecnología

Este repositorio contiene dos proyectos principales: uno desarrollado en **Java Spring Boot** y otro en **Flutter**. La aplicación simula una tienda de productos de tecnología con funcionalidades como la visualización de productos, el consumo de APIs y una interfaz móvil interactiva.

---

## 📸 GIFs de la Aplicación

A continuación se presentan algunos GIFs que muestran el funcionamiento de la aplicación:

1. **Pantalla de Inicio**:  
   El primer GIF muestra la pantalla principal de la aplicación donde el usuario puede ver los productos disponibles en la tienda.  
   ![Aplicación Home](https://raw.githubusercontent.com/kair069/Aplicacion-Movil-Tienda-de-Productos-de-Tecnologia/master/2024-12-25%2021-35-55.gif)

2. **Consumo de API**:  
   El segundo GIF muestra cómo la aplicación realiza solicitudes a la API para obtener información de los productos.  
   ![Consumo de API](https://raw.githubusercontent.com/kair069/Aplicacion-Movil-Tienda-de-Productos-de-Tecnologia/master/2024-12-25%2021-36-30.gif)

3. **Flutter Consumiento API**:  
   El tercer GIF muestra cómo la aplicación Flutter consume la API de manera eficiente para mostrar los productos en la interfaz móvil.  
   ![Flutter Consumiento API](https://github.com/kair069/Aplicacion-Movil-Tienda-de-Productos-de-Tecnologia/blob/master/2024-12-25%2021-36-59%20(1).gif)
|   
---
```markdown
## 🚀 Proyecto 1: Backend - Java Spring Boot (API REST)

Este proyecto es una **API REST** desarrollada con **Java Spring Boot** para gestionar el backend de la tienda de productos de tecnología.

### 🧑‍💻 Tecnologías utilizadas:
- **Java 17**
- **Spring Boot 3**
- **Maven 3**
- **JPA / Hibernate** para la gestión de bases de datos
- **MySQL** para almacenamiento de productos y usuarios

### ⚙️ Instalación y ejecución local:
1. Clona el repositorio:
   ```bash
   git clone https://github.com/kair069/Aplicacion-Movil-Tienda-de-Productos-de-Tecnologia.git
   cd Aplicacion-Movil-Tienda-de-Productos-de-Tecnologia
   ```

2. Configura las variables de entorno para la base de datos MySQL (si es necesario).

3. Compila y ejecuta el proyecto con Maven:
   ```bash
   mvn clean install
   mvn spring-boot:run
   ```

### 📝 Endpoints:
- `GET /api/products`: Obtiene todos los productos.
- `GET /api/products/{id}`: Obtiene un producto por su ID.
- `POST /api/products`: Crea un nuevo producto.
- `PUT /api/products/{id}`: Actualiza un producto.
- `DELETE /api/products/{id}`: Elimina un producto.

---

## 🖥️ Proyecto 2: Frontend - Flutter

Este proyecto es una **aplicación móvil** desarrollada con **Flutter** que consume la **API REST** mencionada anteriormente para mostrar los productos de la tienda.

### 🧑‍💻 Tecnologías utilizadas:
- **Flutter 3.27.1**
- **Dart**
- **HTTP** para consumir la API

### ⚙️ Instalación y ejecución local:

1. **Clona el repositorio:**
   ```bash
   git clone https://github.com/kair069/Aplicacion-Movil-Tienda-de-Productos-de-Tecnologia.git
   cd Aplicacion-Movil-Tienda-de-Productos-de-Tecnologia
   ```

2. **Cambia a la rama `demo-demo`:**
   ```bash
   git checkout demo-demo
   ```

3. **Navega al directorio del proyecto de Flutter:**
   ```bash
   cd flutter_application_1
   ```

4. **Instala las dependencias:**
   ```bash
   flutter pub get
   ```

5. **Ejecuta la aplicación:**
   ```bash
   flutter run
   ```

### 🌟 Características:
- **Pantalla principal**: Muestra una lista de productos de tecnología disponibles en la tienda.
- **Consumo de API**: Obtiene datos del backend (Java Spring Boot) y los muestra en la interfaz móvil.
```
