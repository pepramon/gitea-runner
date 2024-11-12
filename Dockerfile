# Usa la imagen base de Alpine
FROM alpine:latest

# Establece variables de entorno para la configuración de buildah
ENV STORAGE_DRIVER=vfs

# Instala dependencias necesarias, buildah y git
RUN apk update && \
    apk add --no-cache \
    bash \
    buildah \
    git \
    shadow \
    runc \
    openssl && \
    rm -rf /var/cache/apk/*

# Crea una entrada de prueba opcional (puedes eliminarla si no la necesitas)
CMD ["buildah", "--help"]
