# Documentación de la tabla core_product

Este archivo README.md proporciona documentación sobre la estructura de la tabla `core_product` y las operaciones realizadas en ella.

## Estructura de la tabla

La tabla `core_product` se ha creado con los siguientes campos:

- `id` (Tipo: SERIAL) - Clave primaria autoincremental.
- `title` (Tipo: VARCHAR(255)) - Título del producto.
- `category` (Tipo: INTEGER) - Categoría del producto.
- `featured_image` (Tipo: VARCHAR(255)) - Imagen destacada del producto.
- `description` (Tipo: TEXT) - Descripción del producto.
- `additional_images` (Tipo: JSONB) - Lista JSON de imágenes adicionales.

## Operaciones realizadas

1. **Eliminación de la tabla y reinicio del contador de identificación:**
   Se eliminó la tabla `core_product` por completo y se reinició el contador de identificación a 1.

2. **Creación de la tabla `core_product` y campos correspondientes:**
   Se recreó la tabla `core_product` con los campos proporcionados en el modelo de Django.

3. **Inserción de datos de ejemplo:**
   Se insertaron varios registros de ejemplo en la tabla `core_product` para demostrar cómo se pueden insertar datos.

## Instrucciones para restaurar la tabla

Si necesitas recrear la tabla `core_product` y restaurar los datos, puedes seguir estos pasos:

1. Ejecuta el script de creación de la tabla proporcionado en este archivo.
2. Si tienes una copia de seguridad de los datos, restaura los datos desde allí.
3. Si no tienes una copia de seguridad, inserta los datos manualmente utilizando las consultas proporcionadas.

Recuerda ajustar los valores según sea necesario para tus necesidades específicas.

## Consultas SQL

Aquí están las consultas SQL utilizadas para las operaciones mencionadas anteriormente:

- Creación de la tabla:
```sql
CREATE TABLE public.core_product (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    category INTEGER NOT NULL,
    featured_image VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    additional_images JSONB
);



# Inserción de datos de ejemplo (solo se muestran algunos ejemplos):
-- Producto 1
INSERT INTO public.core_product (title, category, featured_image, description, additional_images) 
VALUES 
('Producto de Ejemplo', 1, 'imagen_destacada.jpg', 'Descripción del producto de ejemplo', '[{"url": "imagen1.jpg", "alt": "Imagen 1"}, {"url": "imagen2.jpg", "alt": "Imagen 2"}]');

-- Insertar más productos aquí...


## Este archivo README.md proporciona una guía básica 
## para restaurar la tabla core_product y documenta las operaciones realizadas en ella hasta el momento.

    Este es solo un ejemplo básico. Puedes agregar más detalles, como instrucciones para conectarte a la base de datos, cómo ejecutar consultas SQL, etc., según sea necesario para tu caso específico.
