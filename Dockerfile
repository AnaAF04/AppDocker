FROM python:3.10

LABEL maintainer="ana.acunaf04@gmail.com"

# Instala git
#RUN apt-get update && apt-get install -y git

# Clona tu repositorio de GitHub 
#RUN git clone -q https://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@github.com/uteccognitive/2023-2-icc-python-flash-docker-rosquiya /app

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

EXPOSE 8080

# Define la variable de entorno NAME como FlaskApp
ENV NAME FlaskApp_2

# Comando para ejecutar la aplicación Flask
CMD ["python", "app.py"]