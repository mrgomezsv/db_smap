CREATE TABLE public.core_product (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    category INTEGER NOT NULL,
    featured_image VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    additional_images JSONB
);


Entendido, para realizar los cambios que deseas en la estructura de tu tabla core_product en PostgreSQL, puedes usar la sentencia ALTER TABLE. Aquí tienes cómo puedes hacerlo:

sql
Copy code
-- Cambiar el nombre del campo 'title' a 'product_name'
ALTER TABLE public.core_product
RENAME COLUMN title TO product_name;

-- Eliminar los campos 'category', 'featured_image' y 'additional_images'
ALTER TABLE public.core_product
DROP COLUMN category,
DROP COLUMN featured_image,
DROP COLUMN additional_images;

-- Agregar un nuevo campo llamado 'size'
ALTER TABLE public.core_product
ADD COLUMN size VARCHAR(255);

-- Agregar un nuevo campo llamado 'price' de tipo NUMERIC para manejar números con decimales
ALTER TABLE public.core_product
ADD COLUMN price NUMERIC;




INSERT INTO public.core_product (title, category, featured_image, description, additional_images) 
VALUES 
('Producto de Ejemplo', 1, 'imagen_destacada.jpg', 'Descripción del producto de ejemplo', '[{"url": "imagen1.jpg", "alt": "Imagen 1"}, {"url": "imagen2.jpg", "alt": "Imagen 2"}]');

-- Producto 2
INSERT INTO public.core_product (title, category, featured_image, description, additional_images) 
VALUES 
('Producto 2', 2, 'imagen_destacada_2.jpg', 'Descripción del producto 2', '[{"url": "imagen1_2.jpg", "alt": "Imagen 1"}, {"url": "imagen2_2.jpg", "alt": "Imagen 2"}]');

-- Producto 3
INSERT INTO public.core_product (title, category, featured_image, description, additional_images) 
VALUES 
('Producto 3', 1, 'imagen_destacada_3.jpg', 'Descripción del producto 3', '[{"url": "imagen1_3.jpg", "alt": "Imagen 1"}, {"url": "imagen2_3.jpg", "alt": "Imagen 2"}]');

-- Producto 4
INSERT INTO public.core_product (title, category, featured_image, description, additional_images) 
VALUES 
('Producto 4', 3, 'imagen_destacada_4.jpg', 'Descripción del producto 4', '[{"url": "imagen1_4.jpg", "alt": "Imagen 1"}, {"url": "imagen2_4.jpg", "alt": "Imagen 2"}]');

-- Producto 5
INSERT INTO public.core_product (title, category, featured_image, description, additional_images) 
VALUES 
('Producto 5', 2, 'imagen_destacada_5.jpg', 'Descripción del producto 5', '[{"url": "imagen1_5.jpg", "alt": "Imagen 1"}, {"url": "imagen2_5.jpg", "alt": "Imagen 2"}]');
