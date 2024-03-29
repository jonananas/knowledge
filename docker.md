# Docker

## Useful rules

- [Dockerfile Build Args Mustn’t Be Used For Secrets](https://www.dudley.codes/posts/2020.12.28-dockerfile-build-args-exposed)

## Useful docker containers

- <https://github.com/docker/docker-bench-security> - check your container security
- <https://github.com/CenturyLinkLabs/watchtower> - automatic update of container
- <https://github.com/lbjay/apache-elk-in-five-minutes> - get elk running in container

## Useful commands

```bash
# List docker volumes
docker volume ls

# Remove docker volumes
docker volume ls -q | xargs docker volume rm

# Prune
docker system prune -f

# Start shell in alpine container with current dir mounted as /app
docker run -it --rm -v "$PWD":/app -w /app alpine /bin/ash

# Show size of each layer in image
docker history --no-trunc <image-name>
```

## Execute on remote machine

```bash
docker context create <name> --docker host=tcp://host.domain.org:2376
docker context use <name>
docker ps
docker context use default
docker --context <name> ps
```

## Copy to container

`docker cp ./file.ext <name>:/`

## Prune

```bash
docker container prune
docker image prune
```

## Find out container id from within container

See <https://stackoverflow.com/questions/20995351/how-can-i-get-docker-linux-container-information-from-within-the-container-itsel/72565733#72565733>

Basically

- `hostname` or `echo $HOSTNAME`
- `cat /proc/self/cgroup`
- `cat /proc/self/mountinfo`

## List containers with formatted output

Also see <https://stackoverflow.com/questions/27380641/see-full-command-of-running-stopped-container-in-docker>

`sudo docker ps --no-trunc  --format "table{{.Image}}\t{{.Command}}"`

## Delete tag in private v1 registry

`curl -u 'username:password' -XDELETE https://private-registry.com/v1/repositories/project/tags/1.0.0-SNAPSHOT`

## v2 private registry

List repos https://private-registry.com/v2/_catalog

List tags https://private-registry.com/v2/repo/tags/list

## Restart updated containers (docker-compose)

To restart all updated containers:

    docker-compose up -d --build

To restart a specific updated container

    docker-compose up -d --build <container>

## List repos in private v2 registry

## Docker volumes

Mounts filesystem from host on container, meaning container_dir is hidden 

    –v <hostdir>:<container_dir>

## Docker Desktop - Mac

    # Data, images, volumes, etc (/var/lib/Docker on Linux?)
    ~/Library/Containers/com.docker.docker
    # Settings, conf
    ~/.docker

## Reach localhost from container on Mac

Also works if you want to [reach other containers with exposed ports](https://docs.docker.com/docker-for-mac/networking/)

    curl host.docker.internal:80

## Configure google dns

- Change below, specifically dns, in Preferences->Docker Engine to add google dns 8.8.8.8
{
  "features": {
    "buildkit": true
  },
  "experimental": false,
  "dns": [
    "8.8.8.8"
  ]
}

## Resolvers

Note that docker and docker-compose uses different resolv.conf, at this time
docker --> nameserver 192.168.65.1
docker-compose --> nameserver 127.0.0.11

## Docker clouds

* <https://codefresh.io/> is a Docker-native CI/CD platform.

## Articles

### Security

* Short blog on why Docker is more secure than running on host - <https://blog.docker.com/2016/08/software-security-docker-containers/>
* Container that tests and reports security issues with container and docker setup - <https://github.com/docker/docker-bench-security>
* Source and explanation of each issue from docker-bench-security - <https://benchmarks.cisecurity.org/tools2/docker/CIS_Docker_1.11.0_Benchmark_v1.0.0.pdf>
* On-site security scan if you are paying for private repo - <https://docs.docker.com/docker-cloud/builds/image-scan>

### root-access to host without user namespace

There are two ways to allow a user to run docker, either it can sudo to root, or it belongs to a docker-group. Either way, there is nothing preventing the docker-user from becoming root in docker, for example by running docker run --user root. There is also nothing preventing the user
from mounting / (root) from the host into docker. The net effect is that any user running Docker effectively has root access to the host.
*Unless* users are namespaced, which they are not by default, see <https://docs.docker.com/engine/reference/commandline/dockerd/#daemon-user-namespace-options> for more info. When users are namespaced, the root
user in the docker container will map to a different user on the host.

## Database in docker

[Comments](https://news.ycombinator.com/item?id=13582757) on [Why Databases Are Not for Docker Containers](https://myopsblog.wordpress.com/2017/02/06/why-databases-is-not-for-containers/)
Conclusion? Seems ok if you

* docker stop with long timeout to allow database to shut down properly
* Use volumes for database fileaccess to circumvent file storage complexity that might lead to corruption.

## In production

* <https://thehftguy.wordpress.com/2016/11/01/docker-in-production-an-history-of-failure/>
* <http://patrobinson.github.io/2016/11/05/docker-in-production/>

## Comparing to JVM

* <http://blog.codepipes.com/containers/docker-for-java-big-picture.html>

## Monitoring

[6 monitoring tools for Docker](http://www.infoworld.com/article/2976930/application-virtualization/6-monitoring-tools-docker-containers.html)

[cAdvisor](https://github.com/google/cadvisor)

    docker run \
    --volume=/var/run:/var/run:rw \
    --volume=/sys:/sys:ro \
    --volume=/var/lib/docker/:/var/lib/docker:ro \
    --publish=8080:8080 \
    --detach=true \
    --name=cadvisor \
    google/cadvisor:latest

## docker-machine

Create dockervm using virtualbox with 50 Gb disk

    docker-machine create -d virtualbox --virtualbox-disk-size 50000 dockervm

Put this in your .zshrc/.tcshrc or similar

    ```sh
    dockerenv() {
        eval "$(docker-machine env dockervm)"
    }

    if `docker-machine status dockervm|grep Running > /dev/null`; then
    dockerenv
    else
        echo Warning: dockervm is not running, will not be able to setup docker environment. Starting dockervm in the background, run dockerenv when done!
    docker-machine start dockervm > /dev/null &
    fi
    ```
