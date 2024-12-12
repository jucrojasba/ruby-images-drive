# Ruby Images Drive

## Requisitos

- Ruby 3.x
- Rails 6.x
- PostgreSQL (o el sistema de base de datos que estés utilizando)
- Cloudinary para almacenamiento de imágenes (opcional)

## Instalación

1. Clona el repositorio:

```bash
git clone https://github.com/jucrojasba/ruby-images-drive
```
2. Navega al directorio del proyecto:

```bash
cd nombre_del_proyecto
```

3. Instala las dependencias:

```bash
bundle install
```

4. Configura tu base de datos:

```bash
rails db:create
rails db:migrate
```

5. Copia el archivo `.env` de Moodle a la ruta principal del proyecto.

6. Si estás usando Cloudinary para el almacenamiento de imágenes, configura las credenciales de tu cuenta de Cloudinary en `config/storage.yml`.

7. Inicia el servidor:

```bash
rails server
```

El servidor debería estar corriendo en `http://localhost:3000`.

## Uso

1. Accede a `http://localhost:3000/images/new` para cargar nuevas imágenes.
2. Puedes ver las imágenes cargadas accediendo a la galería en `http://localhost:3000/images`.


