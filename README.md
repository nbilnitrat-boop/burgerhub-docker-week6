# BurgerHub Website — Docker Setup

## 1. Project Overview

BurgerHub is an existing static website built with HTML and CSS. It contains pages for the home page, menu, shopping cart, about us, and contact information.

This project is served using Docker and Nginx without adding new website features.

## 2. Technology Stack

- HTML
- CSS
- Docker
- Nginx Alpine

## 3. Prerequisites

- Docker Desktop installed and running
- Visual Studio Code or another text editor

## 4. Build Docker Image

Open a terminal in the project folder containing the Dockerfile and run:

```bash
docker build -t burgerhub .
```

## 5. Run the Website

Run the container:

```bash
docker run -d -p 8080:80 --name burgerhub burgerhub
```

Open the website in a browser:

http://localhost:8080

The website is served by Nginx on port 80 inside the container and accessed through port 8080 on the host computer.

## 6. Verification

Check whether the container is running:

```bash
docker ps
```

Check the HTTP response in Windows PowerShell:

```powershell
curl.exe -I http://localhost:8080
```

Inspect container logs:

```bash
docker logs burgerhub
```

Test the existing website by opening the Menu page and trying the Add to Cart interaction.

## 7. Stop the Container

Stop the container:

```bash
docker stop burgerhub
```

To remove the container after stopping it:

```bash
docker rm burgerhub
```

## 8. Troubleshooting

If the container name already exists, check the containers with:

```bash
docker ps -a
```

If the website does not load, check the container status and logs. Confirm that port 8080 is available and rebuild the image if necessary.

## 9. Project Notes

This project uses the existing BurgerHub website files. Docker and Nginx are used to package and serve the website without changing its original features.
~