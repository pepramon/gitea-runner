# Alpine como base para un entorno ligero
FROM alpine:latest

# Instalar Podman y dependencias necesarias
RUN apk update && \
    apk add --no-cache podman fuse-overlayfs shadow shadow-uidmap bash git openssh-client && \
    apk upgrade && \
    rm -rf /var/cache/apk/*

# Comprobar que todo funciona si se lanza manualmente.
# Al lanzarlo ACT runner, sobreescribe este comando
CMD ["podman", "--version"]
