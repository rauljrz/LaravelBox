
![LaravelBox](https://raw.githubusercontent.com/rauljrz/LaravelBox/main/docs/banner.png)  
# LaravelBox 🚀📦  

### El contenedor perfecto para tus proyectos Laravel + Alpine + NGINX + PHP-FPM + OPCache + Docker

¡Bienvenido a **LaravelBox**! Este repo es tu receta para desplegar aplicaciones Laravel 11 usando Docker de manera fácil y optimizada. 📈  
Incluye Laravel 11, Alpine, Nginx, PHP-FPM, Supervisor y OPCache para un rendimiento más ágil que una moto 🚀.

## 🚀 ¡Manos a la obra!

Clona este repo y ¡listo! Solo necesitas tener Docker instalado para correr LaravelBox.  
Es súper flexible, cámbialo, ajustalo y juégalo como quieras. 😎 Solo sigue los pasos para que lo configures en tu entorno local y lo pruebes.

---

## 🧰 Requisitos previos
Lo único que necesitas tener en tu máquina es **Docker**. Si aún no lo tienes, descárgalo desde la [web oficial de Docker](https://www.docker.com/get-started).  
Tranquilo, es gratis y fácil de instalar. 😜

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

4. ¡Bingo! Ahora accede a tu app Laravel en [http://localhost:8080](http://localhost:8080). 🎉

---

## 🧳 ¿Qué hay en la caja? 📦

LaravelBox viene repleto de cositas útiles para tu proyecto Laravel:

- **🐧 Alpine Linux**: Una distro súper ligera como base del contenedor.
- **👨‍💼 Supervisor**: Para gestionar múltiples procesos sin que nada explote 💥.
- **💻 Nginx**: El servidor web que se encarga de tu aplicación Laravel.
- **⚡ PHP-FPM**: Para que PHP corra a la velocidad de la luz.
- **💾 OPCache**: Cache de opcodes para un rendimiento turbo 🚀.

---

## 🎨 Personalización

¡LaravelBox es tuyo! Solo pega tu código de Laravel en la carpeta `laravel` y estarás listo.  
Si prefieres, puedes copiar solo los siguientes archivos y pegarlos en tu proyecto:

- `Dockerfile`
- `entrypoint.sh`
- `conf.d`

Y debería funcionar perfectamente. ¡Fácil, verdad? 😎

---

## 🤝 Contribuciones

¡Todas las ideas y mejoras son más que bienvenidas! 💡  
Si tienes alguna sugerencia, no dudes en ponerte en contacto conmigo. Haz un **fork**, realiza tus cambios y manda un **PR**. ¡Hablemos y hagamos crecer este proyecto juntos! 💪

---

## 👨‍💻 Colaboradores

| <a href="http://rauljrz.github.io" target="_blank">**Raul Juarez**</a>  

---

## 📜 Licencia

Este proyecto está bajo la licencia **MIT**, lo que significa que puedes usarlo libremente. Para más info, mira el archivo [LICENSE](LICENSE).  

---

¡Gracias por usar LaravelBox! ⚡🚀
