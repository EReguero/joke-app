![alt text](./public/icon.png "Logo Title Text 1")

# Joke App

## Getting Started

First, we need install Docker compose in our computer. [How install Docker compose?](https://docs.docker.com/compose/install/), if you never work with Docker i recommend Docker Desktop version.

When we have docker installed and running, we need execute the next command in project folder:

```
docker-compose up --build
```

This command create and start database and Next.js build.

If you're running it in windows, its important accept shared file for create database. <br/>
After that app and database will be running in [http://localhost:3000/](http://localhost:3000/).

## Comments

- .env is upload with random data for do easier run
- I added a home screen with categories cards.
- Application have dark and light theme.
- Jokes don't repeat when you ask for more jokes
