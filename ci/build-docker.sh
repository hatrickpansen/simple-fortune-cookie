#!/bin/bash
[[ -z "${GIT_COMMIT}" ]] && Tag='local' || Tag="${GIT_COMMIT::4}"
[[ -z "${docker_username}" ]] && DockerRepo='' || DockerRepo="${docker_username}/"
docker build -t "${DockerRepo}simple-fortune-cookie_frontend:latest" -t "${DockerRepo}simple-fortune-cookie_frontend:1.0-$Tag" backend/
docker build -t "${DockerRepo}simple-fortune-cookie_backend:latest" -t "${DockerRepo}simple-fortune-cookie-backend:1.0-$Tag" frontend/