![LaravelBox](https://raw.githubusercontent.com/rauljrz/LaravelBox/main/docs/banner.png)  
# LaravelBox 🚀📦  

### El contenedor perfecto para tus proyectos Laravel + Alpine + NGINX + PHP-FPM + OPCache + Docker

¡Bienvenido a **LaravelBox**! Este repositorio es tu receta ideal para desplegar aplicaciones Laravel 11 con Docker de manera sencilla y optimizada. 📈  
Incluye Laravel 11, Alpine, Nginx, PHP-FPM, Supervisor y OPCache para un rendimiento que te dejará asombrado, más rápido que un cohete 🚀.

## 🚀 ¡Manos a la obra!

Clona este repo y listo, solo necesitas tener Docker instalado para correr LaravelBox.  
Es súper flexible, modifícalo, ajústalo y dale tu toque personal como quieras. 😎 Solo sigue los pasos para configurarlo en tu entorno local y empezar a usarlo.

---

## 🧰 Requisitos previos
Lo único que necesitas es tener **Docker** instalado. Si aún no lo tienes, descárgalo desde la [web oficial de Docker](https://www.docker.com/get-started).  
¡No te preocupes! Es fácil de instalar y, por supuesto, gratuito. 😜

---

## 🛠️ Instalación paso a paso

1. **Clona** este repositorio en tu máquina local:

    ```bash
    git clone https://github.com/rauljrz/LaravelBox.git
    ```

2. Entra en el directorio del proyecto:

    ```bash
    cd LaravelBox 
    ```

3. Construye y ejecuta los contenedores Docker:

    ```bash
    docker-compose up -d --build
    ```

4. Instala Laravel dentro de Docker:

    ```bash
    docker exec -it app /opt/install.sh
    ```

5. 🎉 ¡Bingo! Accede a tu app Laravel en [http://localhost:80](http://localhost:80).

6. Accede a PHPMyAdmin en [http://localhost:8891](http://localhost:8891). 

---

## 📁 Directorio de trabajo

```
laravel
```

---

## 🧳 ¿Qué hay en la caja? 📦

LaravelBox viene cargado con lo esencial para que tu proyecto Laravel vuele:

- **🐧 Alpine Linux**: Una distribución de Linux súper ligera para la base del contenedor.
- **👨‍💼 Supervisor**: Control de procesos para manejar varios procesos sin estrés 💥.
- **💻 Nginx**: El servidor web que se encarga de tu aplicación Laravel.
- **⚡ PHP-FPM**: Para gestionar las solicitudes de PHP a toda velocidad.
- **💾 OPCache**: Cache de opcodes para darle ese extra de rendimiento turbo 🚀.

---

## 🎨 Personalización

¡LaravelBox es todo tuyo! Solo tienes que pegar tu código de Laravel en la carpeta `laravel` y ¡ya estás listo!  
Si prefieres, puedes copiar los siguientes archivos y pegarlos en tu propio proyecto:

- `Dockerfile`
- `entrypoint.sh`
- `conf.d`

Funcionará perfectamente. ¡Fácil, verdad? 😎

Dentro de la carpeta `conf.d`, el script `install.sh` realiza una instalación limpia de Laravel y configura los archivos `.env.example` y `.env` con los siguientes datos:

```
DB_CONNECTION=mysql
DB_HOST=mysql
DB_PORT=3306
DB_DATABASE=laravel
DB_USERNAME=root
DB_PASSWORD=secret
```

⚠️ **¡Ojo!** Asegúrate de que estos datos coincidan con la configuración de *mysql* en `docker-compose.yml`.

---

## ⚡ Alias útiles para agilizar tu flujo de trabajo

Estos alias te ayudarán a ejecutar comandos más rápido:

```
alias dca='docker compose run --rm artisan'
alias dcc='docker compose run --rm composer'
alias dc='docker compose'
alias dup='docker compose up -d --build'
alias ddown='docker compose down'
```

**Ejemplo de uso:**

```
dca config:cache
dcc dump
```

---

## 🤝 Contribuciones

¡Cualquier sugerencia o mejora es más que bienvenida! 💡  
Si tienes alguna idea, no dudes en contactarme. Haz un **fork** del repositorio, realiza tus cambios y envía un **PR**. ¡Hablemos y hagamos crecer este proyecto juntos! 💪

---

## 👨‍💻 Colaboradores

| <a href="http://rauljrz.github.io" target="_blank">**Raul Juarez**</a>  

---

## 📜 Licencia

Este proyecto está bajo la licencia **MIT**, lo que significa que puedes usarlo libremente. Para más información, revisa el archivo [LICENSE](LICENSE).  

---

¡Gracias por usar LaravelBox! ⚡🚀
