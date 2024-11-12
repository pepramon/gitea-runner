# Gitea runer

Este repositorio contiene un runer para utilizar en una instalación propia con Gitea y ACT para poder crear imagenes de docker.

En lugar de crear las imagenes de docker mediante un contenedor que tenga docker al completo, se utiliza buildah (ver [https://github.com/containers/buildah](https://github.com/containers/buildah)).

La imagen se basa en Alpine Linux y a parte de git para poder gestionar el repositorio, solo tiene buildah.

