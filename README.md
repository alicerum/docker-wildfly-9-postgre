#### What is this?
It's a docker container for wildfly 9.0.2.Final with postgresql jdbc driver and datasource installed.
#### How to acquire?
`docker pull wyvie/wildfly-9-postgre` or just clone the repo and run `docker-compose up -d` from the repo root.
#### How to deploy my ear?
Put your ear into ~/webapp while wildfly docker container is up and running.
#### More info?
Apps could be seen on http://localhost:8080/

Management console is on http://localhost:9990/, user 'admin' password 'admin'.
