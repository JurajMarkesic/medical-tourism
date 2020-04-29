### Setup

```bash
$ cp .env.example

Edit starter.XYZ.lan host

$ docker-compose up

# List running containers

$ docker ps
CONTAINER ID        IMAGE                         COMMAND                  CREATED              STATUS              PORTS                                            NAMES
0cb83a30e47d        medical-tourism_nginx         "/entrypoint.sh"         About a minute ago   Up About a minute   0.0.0.0:80->80/tcp                               nginx
62126e3f1b8f        medical-tourism_api           "docker-entrypoint.s…"   About a minute ago   Up About a minute   0.0.0.0:3000->3000/tcp, 0.0.0.0:9229->9229/tcp   api
214c46ccc25f        grafana/grafana               "/run.sh"                About a minute ago   Up About a minute   0.0.0.0:3002->3000/tcp                           medical-tourism_grafana_1
65fc9806591e        wrouesnel/postgres_exporter   "/postgres_exporter"     About a minute ago   Up About a minute   0.0.0.0:9187->9187/tcp                           medical-tourism_postgres_exporter_1
c3a1b787d232        redis:5                       "docker-entrypoint.s…"   About a minute ago   Up About a minute   6379/tcp                                         redis
372964590df1        medical-tourism_frontend      "docker-entrypoint.s…"   About a minute ago   Up About a minute   0.0.0.0:3001->3001/tcp                           frontend
ed7727554915        prom/node-exporter            "/bin/node_exporter …"   About a minute ago   Up About a minute   0.0.0.0:9100->9100/tcp                           medical-tourism_node_exporter_19a6f59806e5c        prom/prometheus:latest        "/bin/prometheus --c…"   About a minute ago   Up About a minute   0.0.0.0:9090->9090/tcp                           medical-tourism_prometheus_1
37d6c6d1f8ef        postgres:12                   "docker-entrypoint.s…"   About a minute ago   Up About a minute   0.0.0.0:5432->5432/tcp                           postgres
c7b9d04dbca0        weaveworks/scope:1.13.0       "/home/weave/entrypo…"   About a minute ago   Up About a minute                                                    medical-tourism_scope_1

# Enter container shell to add new packages

$ docker exec -it 372964590df1 sh

# Exit container shell

$ exit

```
