# Gitea runner

Este repositorio contiene un runner para utilizar en una instalación propia con Gitea y ACT para poder crear imágenes de docker y todo lo que pueda necesitar en un futuro.

En lugar de crear las imágenes de docker mediante un contenedor que tenga Docker al completo, se utiliza Podman, que a su tiempo utiliza Buildah (ver [https://github.com/containers/buildah](https://github.com/containers/buildah)).

La imagen se basa en Alpine Linux y tiene justo lo necesario para contruir imágenes de Docker

## A tener en cuenta

- No se utilizan las acciones de Github para mantenerlo todo lo más aislado posible y ser independiente de esa plataforma
- El nombre la acción que hay en el runner, lo pide al host interno, por tanto no hay acceso desde el exterior. La acción de Checkout está publicada en (PENDIENTE)
- Se trabaja con la instancia interna de Gitea y esta actualiza los repositorios de Github
- Las imágenes generadas son públicas y están en dockerhub (ver [Repo en DockerHub](https://hub.docker.com/r/pepramon/gitea-runner))
- Cada día se mira si hay actualizaciones de Alpine que instalar o si la imagen base ha cambiado, en ese caso, se rehace la imagen
-  El repositorio con el que se trabaja, está en una instancia privada de Gitea que se sincroniza con GitHub para publicar el código. No obstante, si alguien quiere aportar algo, un Pull Request en GitHub será bienvenido.

## Concepto de la imagen

El concepto principal es KISS, o sea, dejarlo todo lo más simple y liviano posible. En los momentos de escribir este README, solo tiene instalada Podman y Git. El primero es para construir imágenes y el segundo para poder gestionar el repositorio.

Cualquier idea, es bienvenida.