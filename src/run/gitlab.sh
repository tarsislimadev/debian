
# RUNNER_TOKEN=

docker run --rm -it --name gitlab-runner \
  -v /srv/gitlab-runner/config:/etc/gitlab-runner \
  -v /var/run/docker.sock:/var/run/docker.sock \
  gitlab/gitlab-runner:alpine  register \
  --executor "docker" \
  --token "$RUNNER_TOKEN" \
  --docker-image alpine:latest \
  --description "docker-runner" \
  --url "https://gitlab.com"

docker run --rm --name gitlab-runner \
  -v /srv/gitlab-runner/config:/etc/gitlab-runner \
  -v /var/run/docker.sock:/var/run/docker.sock \
  gitlab/gitlab-runner:alpine
