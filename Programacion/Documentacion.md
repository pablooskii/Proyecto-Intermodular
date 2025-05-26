## Estructura del Proyecto
├── Main.java
├── DataBaseManager.java
├── Menu.java
├── Categoria.java
├── Plataforma.java
├── Plan.java

---

## Tecnologías Utilizadas

- **Base de Datos:** MySQL (en AWS RDS)
- **Conexión:** JDBC
- **Paradigma:** Programación Orientada a Objetos (POO)
- **Interfaz de Usuario:** Menú interactivo por consola

---

## Funcionamiento General

1. **Inicio del Programa**
   - El programa comienza con `Main.java`, donde se crea una instancia de `DataBaseManager`.
   - En el constructor de `DataBaseManager`, se realiza **una única conexión a la base de datos** para **cargar todos los datos** necesarios.

2. **Carga en Memoria**
   - Se consultan las tablas `categorias`, `plataformas` y `planes`.
   - Los datos se guardan en memoria en tres listas:
     - `ArrayList<Categoria> categorias`
     - `ArrayList<Plataforma> plataformas`
     - `ArrayList<Plan> planes`
   - Después de esta carga inicial, **no se realizan más consultas a la base de datos**.

3. **Menú de Usuario**
   - La clase `Menu` permite al usuario interactuar con los datos cargados en memoria:
     - Seleccionar una categoría.
     - Ver las plataformas de esa categoría.
     - Consultar los planes de una plataforma.

---

## Clases del Proyecto

### `DataBaseManager.java`
- Se encarga de la conexión a la base de datos y la carga de datos en los ArrayList correspondientes.
- Extrae los datos mediante JDBC y los guarda en listas estáticas accesibles por el resto del programa.

### `Menu.java`
- Contiene la lógica de navegación por consola.
- Utiliza los `ArrayList` cargados para mostrar información sin necesidad de hacer más consultas SQL.
- Organiza el flujo: **Categorías → Plataformas → Planes**.

### `Categoria.java`
Modelo que representa una categoría general de plataformas.  
**Atributos:**
- `id_categoria`
- `nombre`
- `descripcion`

### `Plataforma.java`
Modelo que representa una plataforma digital.  
**Atributos:**
- `id_plataforma`
- `id_categoria`
- `nombre`
- `fecha_creacion`
- `descripcion`
- `fundadores`
- `sitio_web`

### `Plan.java`
Modelo de planes de suscripción de cada plataforma.  
**Atributos:**
- `id_plataforma`
- `nombre_plan`
- `precio`
- `dispositivos_maximos`

---

## Acceso a Datos

> **Importante:**  
> Toda la interacción con los datos después de la conexión inicial se realiza **exclusivamente mediante los objetos en memoria** (`ArrayList`), sin volver a consultar la base de datos.

3. Ejecuta `Main.java`.
4. Sigue las instrucciones del menú para navegar por el sistema informativo.

---

## 🗄️ Estructura de la Base de Datos

