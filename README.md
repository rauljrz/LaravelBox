
![LaravelBox](https://raw.githubusercontent.com/rauljrz/LaravelBox/main/docs/banner.png)  
# LaravelBox 🚀📦  

### The perfect container for your Laravel projects + Alpine + NGINX + PHP-FPM + OPCache + Docker

Welcome to **LaravelBox**! This repository is your go-to recipe for deploying Laravel 11 applications with Docker, made simple and optimized. 📈  
It includes Laravel 11, Alpine, Nginx, PHP-FPM, Supervisor, and OPCache to ensure lightning-fast performance 🚀.

## 🚀 Let's get started!

Clone this repo, and you’re all set! All you need is Docker installed to run LaravelBox.  
It’s super flexible, tweak it, adjust it, and customize it to your heart’s content. 😎 Just follow the steps to set it up in your local environment and give it a try.

---

## 🧰 Prerequisites
The only thing you need is **Docker** installed on your machine. If you don’t have it yet, download it from the [official Docker website](https://www.docker.com/get-started).  
No worries! It’s easy to install and, of course, free. 😜

---

## 🛠️ Step-by-step installation

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

4. Install Laravel inside Docker:

    ```bash
    docker exec -it app /opt/install.sh
    ```

5. 🎉 Bingo! Access your Laravel app at [http://localhost:80](http://localhost:80).

6. Access PHPMyAdmin at [http://localhost:8891](http://localhost:8891). 

---

## 📁 Working directory

```
laravel
```

---

## 🧳 What’s in the box? 📦

LaravelBox is packed with everything you need to get your Laravel project flying:

- **🐧 Alpine Linux**: A super lightweight Linux distribution as the base image.
- **👨‍💼 Supervisor**: Process control to manage multiple processes without stress 💥.
- **💻 Nginx**: The web server that powers your Laravel app.
- **⚡ PHP-FPM**: Handles PHP requests at lightning speed.
- **💾 OPCache**: Opcode cache for that extra turbo performance boost 🚀.

---

## 🎨 Customization

LaravelBox is yours to modify! Just drop your Laravel code into the `laravel` directory, and you’re good to go.  
Alternatively, you can copy just the following files into your project:

- `Dockerfile`
- `entrypoint.sh`
- `conf.d`

It should work perfectly. Easy peasy, right? 😎

Inside the `conf.d` folder, the `install.sh` script performs a clean installation of Laravel, setting up `.env.example` and `.env` with the following details:

```
DB_CONNECTION=mysql
DB_HOST=mysql
DB_PORT=3306
DB_DATABASE=laravel
DB_USERNAME=root
DB_PASSWORD=secret
```

⚠️ **Heads up!** Make sure these details match the *mysql* configuration in your `docker-compose.yml` file.

---

## ⚡ Handy aliases to speed up your workflow

Here are some aliases to help you run commands faster:

```
alias dca='docker compose run --rm artisan'
alias dcc='docker compose run --rm composer'
alias dc='docker compose'
alias dup='docker compose up -d --build'
alias ddown='docker compose down'
```

**Example usage:**

```
dca config:cache
dcc dump
```

---

## 🤝 Contributions

All ideas and improvements are more than welcome! 💡  
If you have any suggestions, feel free to reach out. Fork the repo, make your changes, and submit a **PR**. Let’s connect and grow this project together! 💪

---

## 👨‍💻 Contributors

| <a href="http://rauljrz.github.io" target="_blank">**Raul Juarez**</a>  

---

## 📜 License

This project is licensed under the **MIT** license, which means you can use it freely. For more information, check out the [LICENSE](LICENSE) file.  

---

Thanks for using LaravelBox! ⚡🚀
