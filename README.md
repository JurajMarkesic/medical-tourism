### Setup

```bash
$ cp .env.example

Edit starter.XYZ.lan host

$ docker-compose up

# List running containers
$ docker ps
CONTAINER ID			NAMES
0cb83a30e47d			nginx
62126e3f1b8f			api
214c46ccc25f			medical-tourism_grafana_1
65fc9806591e			medical-tourism_postgres_exporter_1
c3a1b787d232			redis
372964590df1			frontend
ed7727554915			medical-tourism_node_exporter_1
9a6f59806e5c			medical-tourism_prometheus_1
37d6c6d1f8ef			postgres
c7b9d04dbca0			medical-tourism_scope_1

# Enter container shell to add new packages
$ docker exec -it _CONTAINER_ID_FROM_LISTED_ sh

# Exit container shell

$ exit

```
