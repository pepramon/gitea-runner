# Gitea runer

Este repositorio contiene un runer para utilizar en una instalación propia con Gitea y ACT para poder crear imagenes de docker y todo lo que pueda necesitar en un futuro.

En lugar de crear las imagenes de docker mediante un contenedor que tenga docker al completo, se utiliza podman, que a su tiempo utiliza buildah (ver [https://github.com/containers/buildah](https://github.com/containers/buildah)).

La imagen se basa en Alpine Linux y a parte de git para poder gestionar el repositorio.

## A tener en cuenta

- No se utilizan las acciones de Github para mantenerlo todo lo más aislado posible y ser independiente de esa plataforma
- El nombre la acción que hay en el runer, lo pide al host interno, por tanto no hay acceso desde el exterior. La acción de Checkout está publicada en (PENDIENTE)
- Se trabaja con la instancia interna de Gitea y esta actualiza los repositorios de Github
- Las imagenes generadas son púlbicas y están en dockerhub (ver [Repo en DockerHub](https://hub.docker.com/r/pepramon/gitea-runer))
- Cada dia se mira si hay actualizaciones de Alpine que instalar o si la imagen base ha cambiado, en ese caso, se rehace la imagen

## Concepto de la image

El concpeto principal es KISS, o sea, dejarlo todo lo más simple y liviano posible. En los momentos de escribir este README, solo tiene instalada Podma y Git. El primero es para construir imágenes y el segundo para poder gestionar el repositorio.

Cualquier idea, es bienvenida.