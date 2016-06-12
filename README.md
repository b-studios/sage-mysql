# mysql database for sage software
The goal of this docker container is to provide configurations for mysql that
allow to host software by [sage](http://www.sage.de/) on your own company
servers.

To start a docker container running the mysql server use the following command.
It will publish the containers port 3306 under hosts port 4306.

```
  docker run --name sage-db
    -p 4306:3306
    -e MYSQL_ROOT_PASSWORD=my-secret-pw
    -e MYSQL_PASSWORD=admin-pw
    -d sage-mysql
```

The configs specific to sage can be found in [`sage.cnf`](sage.cnf)

To check whether the right configs are set in the running mysql container,
connect to the container like

```
mysql -h 192.168.99.100 --port=32776  -u root -p
```

and use the mysql command `SHOW VARIABLES`, such as:

```
> SHOW VARIABLES LIKE '%packet%';
```

For further reference see the [parent container docs](https://hub.docker.com/_/mysql/).

# Infos for pushing to docker hub
Changes to this [github repository](https://github.com/b-studios/sage-mysql) are [automatically](https://docs.docker.com/docker-hub/github/#github-service-hooks) built and pushed to [docker hub](https://docs.docker.com/docker-hub/builds/).
