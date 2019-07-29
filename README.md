# PROYECTO ASIR 1

Repositorio en el que se encuentra alojado el proyecto de ASIR 1. Se ha implementado en GitHub Pages con el tema [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/) y subido al repositorio a través de [Docker](https://hub.docker.com/r/squidfunk/mkdocs-material).

El comando ejecutado para subir al repositorio ha sido el siguiente:

```bash
docker run --rm -it -v ~/.ssh:/root/.ssh -v ~/.gitconfig:/root/.gitconfig -v ${PWD}:/docs squidfunk/mkdocs-material gh-deploy -m "Comentario"
```

Parámetros adicionales que difieren del comando que nos encontramos en Docker Hub:

- **-v ~/.gitconfig:/root/.gitconfig**: permite mostrar el usuario que ha hecho los commits.

- **-m "Comentario"**: permite personalizar el comentario del commit.
