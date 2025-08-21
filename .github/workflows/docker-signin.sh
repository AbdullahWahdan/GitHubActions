name: Docker Login

on:
  push:
    branches:
      - main

jobs:
  docker-login:
    runs-on: ubuntu-latest

    steps:
      - name: login to docker hub
        uses: docker/login-action@v3
        with:
            username: ${{ vars.DOCKER_USERNAME }} 
            password: ${{ secrets.DOCKER_PASSWORD }}