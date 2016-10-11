# Docker

# Useful docker containers
* https://github.com/docker/docker-bench-security - check your container security
* https://github.com/CenturyLinkLabs/watchtower - automatic update of container
* https://github.com/lbjay/apache-elk-in-five-minutes - get elk running in container

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
    
