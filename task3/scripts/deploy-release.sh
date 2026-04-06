#!/bin/bash
set -e

docker pull YOUR_DOCKERHUB_USERNAME/devops-exam-pt2:1.0.0
docker rm -f app-release || true

docker run -d \
	--name app-release \
	-p 8003:8000 \
	YOUR_DOCKERHUB_USERNAME/devops-exam-pt2:1.0.0

