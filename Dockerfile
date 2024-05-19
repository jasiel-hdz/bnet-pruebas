# Utiliza una imagen de NGINX como base
FROM nginx:latest

# Copia los archivos estáticos de tu proyecto Angular al directorio de NGINX
COPY dist/bnetprueba /usr/share/nginx/html

# Copia el archivo de configuración de NGINX
COPY nginx.conf /etc/nginx/nginx.conf

# Expone el puerto 80 para que NGINX sea accesible desde fuera del contenedor
EXPOSE 80

# Comando para iniciar NGINX cuando se inicie el contenedor
CMD ["nginx", "-g", "daemon off;"]
