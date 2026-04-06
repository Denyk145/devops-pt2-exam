#!/bin/bash
set -e

docker pull YOUR_DOCKERHUB_USERNAME/devops-exam-pt2:develop
docker rm -f app-dev || true

docker run -d \
	--name app-dev \
	-p 8002:8000 \
	YOUR_DOCKERHUB_USERNAME/devops-exam-pt2:develop

