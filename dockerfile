# Usa la imagen oficial de Python como base
FROM python:3.9-slim

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia los archivos necesarios al contenedor
COPY . /app

# Instala las dependencias necesarias
RUN pip install --no-cache-dir -r requirements.txt

# Expón el puerto en el que tu aplicación Flask estará corriendo
EXPOSE 5001

# Ejecuta la aplicación Flask
CMD ["python", "app.py"]
