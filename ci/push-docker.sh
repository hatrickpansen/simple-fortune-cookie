#!/bin/bash
echo "$docker_password" | docker login --username "$docker_username" --password-stdin
docker push "$docker_username/simple-fortune-cookie_frontend:1.0-${GIT_COMMIT::4}" 
docker push "$docker_username/simple-fortune-cookie_frontend:latest" &
wait

echo "$docker_password" | docker login --username "$docker_username" --password-stdin
docker push "$docker_username/simple-fortune-cookie_backend:1.0-${GIT_COMMIT::4}" 
docker push "$docker_username/simple-fortune-cookie_backend:latest" &
wait