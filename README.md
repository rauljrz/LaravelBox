
![LaravelBox](https://raw.githubusercontent.com/rauljrz/LaravelBox/main/docs/banner.png)  
# LaravelBox 🚀📦  

### The ultimate setup for Laravel + Alpine + NGINX + PHP-FPM + OPCache + Docker

Welcome to **LaravelBox**! This repo provides an easy and optimized recipe for deploying Laravel 11 applications with Docker. 📈  
Packed with Laravel 11, Alpine, Nginx, PHP-FPM, Supervisor, and OPCache, it's fast, efficient, and ready for action! 🚀

## 🚀 Getting Started

Clone the repo, and you’re good to go! All you need is Docker installed on your machine.  
Feel free to customize it any way you want. 😎 Just follow the steps below to get it up and running in your local environment and give it a try!

---

## 🧰 Prerequisites
The only thing you need is **Docker**. If you don’t have it yet, grab it from the [official Docker website](https://www.docker.com/get-started).  
Don’t worry, it’s easy and free to install. 😜

---

## 🛠️ Installation Steps

1. **Clone** this repository to your local machine:

    ```bash
    git clone https://github.com/rauljrz/LaravelBox.git
    ```

2. Navigate to the project directory:

    ```bash
    cd LaravelBox 
    ```

3. Build and run the Docker containers:

    ```bash
    docker-compose up -d --build
    ```

4. Voilà! Access your Laravel app at [http://localhost:8080](http://localhost:8080). 🎉

---

## 🧳 What’s in the box? 📦

LaravelBox comes fully loaded with everything you need to get your Laravel app running smoothly:

- **🐧 Alpine Linux**: A super lightweight Linux distribution as the base image.
- **👨‍💼 Supervisor**: Process control to handle multiple processes without blowing up 💥.
- **💻 Nginx**: The web server that serves your Laravel application.
- **⚡ PHP-FPM**: For lightning-fast PHP request handling.
- **💾 OPCache**: PHP opcode caching for that extra performance boost 🚀.

---

## 🎨 Customization

LaravelBox is yours to tweak! Just paste your Laravel app code into the `laravel` directory and you’re ready to go.  
Or if you prefer, copy only the following files to your project:

- `Dockerfile`
- `entrypoint.sh`
- `conf.d`

It should work just fine! Easy peasy, right? 😎

---

## 🤝 Contributing

Contributions are more than welcome! 💡  
Got an idea or improvement? Feel free to reach out to me. Fork this repo, make your changes, and send a **PR**. Let’s connect and grow this project together! 💪

---

## 👨‍💻 Contributors

| <a href="http://rauljrz.github.io" target="_blank">**Raul Juarez**</a>  

---

## 📜 License

This project is open-source and licensed under the **MIT** license. For more details, check out the [LICENSE](LICENSE) file.

---

Thanks for using LaravelBox! ⚡🚀
