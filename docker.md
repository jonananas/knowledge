# Docker

# Useful docker containers
* <https://github.com/docker/docker-bench-security> - check your container security
* <https://github.com/CenturyLinkLabs/watchtower> - automatic update of container
* <https://github.com/lbjay/apache-elk-in-five-minutes> - get elk running in container

# Useful commands

## Delete tag in private v1 registry
    curl -u 'username:password' -XDELETE https://private-registry.com/v1/repositories/project/tags/1.0.0-SNAPSHOT
    
## Docker volumes
Mounts filesystem from host on container, meaning container_dir is hidden 

    –v <hostdir>:<container_dir>

# Security
* Short blog on why Docker is more secure than running on host - <https://blog.docker.com/2016/08/software-security-docker-containers/>
* Container that tests and reports security issues with container and docker setup - <https://github.com/docker/docker-bench-security>
* Source and explanation of each issue from docker-bench-security - <https://benchmarks.cisecurity.org/tools2/docker/CIS_Docker_1.11.0_Benchmark_v1.0.0.pdf>
* On-site security scan if you are paying for private repo - <https://docs.docker.com/docker-cloud/builds/image-scan>

# In production
* <https://thehftguy.wordpress.com/2016/11/01/docker-in-production-an-history-of-failure/>
* <http://patrobinson.github.io/2016/11/05/docker-in-production/>

# Monitoring

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

# docker-machine

Create dockervm using virtualbox with 50 Gb disk

    docker-machine create -d virtualbox --virtualbox-disk-size 50000 dockervm
   
Put this in your .zshrc/.tcshrc or similar
    
    dockerenv() {                                 
        eval "$(docker-machine env dockervm)" 
	}

	if `docker-machine status dockervm|grep Running > /dev/null`; then
    dockerenv
    else
        echo Warning: dockervm is not running, will not be able to setup docker environment. Starting dockervm in the background, run dockerenv when done!
    docker-machine start dockervm > /dev/null &
    fi
    



