# Usa la imagen base de Ubuntu
FROM ubuntu:latest

# Instala dependencias
RUN apt update && apt install -y wget curl tmux

# Descarga e instala Gotty
RUN wget -O /usr/local/bin/gotty https://github.com/yudai/gotty/releases/download/v1.0.1/gotty_linux_amd64 && \
    chmod +x /usr/local/bin/gotty

# Expone el puerto 8080
EXPOSE 8080

# Comando para iniciar la terminal con Gotty
CMD ["gotty", "-w", "bash"]
