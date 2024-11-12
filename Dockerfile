# Usa la imagen base de Alpine
FROM alpine:latest

# Establece variables de entorno para la configuración de buildah
ENV STORAGE_DRIVER=vfs

# Instala dependencias necesarias, buildah y git
RUN apk update && \
    apk add --no-cache \
    bash \
    podman \
    fuse-overlayfs \
    git \
    shadow \
    runc \
    openssl && \
    rm -rf /var/cache/apk/*

# Para verificar instalacion
CMD ["podman", "--version"]
