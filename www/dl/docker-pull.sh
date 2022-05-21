
echo
echo Alpine
echo

docker pull alpine:latest
docker image tag alpine:latest alpine:latest-real

echo
echo Node LTS
echo

docker pull node:lts
docker image tag node:lts node:lts-real

echo
echo Node LTS (alpine)
echo

docker pull node:lts-alpine
docker image tag node:lts-alpine node:lts-alpine-real

echo
echo Go Lang v1.17
echo

docker pull golang:1.17
docker image tag golang:1.17 golang:1.17-real

echo
echo Go Lang v1.18
echo

docker pull golang:1.18
docker image tag golang:1.18 golang:1.18-real

echo
echo Go Lang (alpine)
echo

docker pull golang:alpine
docker image tag golang:alpine golang:alpine-real

echo
echo Nginx (stable version)
echo

docker pull nginx:stable
docker image tag nginx:stable nginx:stable-real

echo
echo Nginx (alpine)
echo

docker pull nginx:alpine
docker image tag nginx:alpine nginx:alpine-real

echo
echo Swagger API Editor
echo

docker pull swaggerapi/swagger-editor:latest
docker image tag swaggerapi/swagger-editor:latest swaggerapi/swagger-editor:latest-real

echo
echo Postfix Admin
echo

docker pull postfixadmin:latest
docker image tag postfixadmin:latest postfixadmin:latest-real

echo
echo '"kind docker image"'
echo

docker pull kindest/node:v1.23.4
docker image tag kindest/node:v1.23.4 kindest/node:v1.23.4-real

echo
echo Ubuntu v21.04
echo

docker pull ubuntu:21.04
docker image tag ubuntu:21.04 ubuntu:21.04-real

echo
echo Ubuntu v22.04
echo

docker pull ubuntu:22.04
docker image tag ubuntu:22.04 ubuntu:22.04-real
