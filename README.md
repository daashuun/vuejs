# Vue docker container

Container installs all your project
dependencies and starts for
development environment. Its use 'yarn
serve' for support hot reloading for
your projects.

## Usage
```
cd /path/to/your/project
docker run \
  -v $(pwd):/var/www/html \
  -p 8080:8080 \
  -d --rm \
  daashuun/vuejs:yarn-dev
```
## Usage in compose
```
app:
    image: daashuun/vuejs:yarn-dev
    ports:
      - '${APP_PORT:-8080}:8080'
    volumes:
      - .:/var/www/html
```
