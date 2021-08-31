# Traefik training

<https://www.udemy.com/course/the-complete-traefik-training-course>
<https://doc.traefik.io/traefik/providers/docker/>

## TODO

- Take your time reviewing the Security Note material links in <https://doc.traefik.io/traefik/providers/docker/>
- `docker swarm init`

## 9. scale command is deprecated

Instead use --scale
`docker compose up -d --scale whoami=2`

## 13. Notes

Default configuration is in `/etc/traefik/`, traefik.yml or traefik.yaml.
All configuration is available in one of

- [configuration file](https://doc.traefik.io/traefik/v2.3/reference/static-configuration/file/)
- [command line](https://doc.traefik.io/traefik/v2.3/reference/static-configuration/cli/)
- [envvars](https://doc.traefik.io/traefik/v2.3/reference/static-configuration/env/)
They are **mutually exclusive**, ie use only one!

Environment variables is recommended, the easiest to automate for CI/CD pipeline

## 15. Notes

**Important**
Take your time reviewing the Security Note material links in <https://doc.traefik.io/traefik/providers/docker/>
Also use [Docker Bench](https://hub.docker.com/r/docker/docker-bench-security) to validate your setup.
