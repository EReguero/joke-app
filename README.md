![alt text](./public/icon.png "Logo Title Text 1")

# Joke App

Show jokes of https://github.com/15Dkatz/official_joke_api/blob/master/jokes/index.json

## Getting Started 🚀

### Pre-requisites 📋

- Docker Compose. [(How install Docker compose?)](https://docs.docker.com/compose/)

### Installation 🔧

First we need have Docker compose installed, if you never work with Docker i recommend Docker Desktop version.

When we have docker installed and running, we need execute the next command in project folder:

```
docker-compose up --build
```

This command create and start database and Next.js build.

If you're running it in windows, its important accept shared file for create database. <br/>
After that app will be running in [http://localhost:3000/](http://localhost:3000/).

## Testing ⚙️

Unit test can be executed with:

```
npm run tests
```

## Comments 📝

- .env is upload with random data for do easier run
- Application have dark and light theme.
- Jokes don't repeat when you ask for more jokes
