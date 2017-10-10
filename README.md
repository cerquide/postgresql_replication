# Example of PostgreSQL logical replication

This small repo contains a simple example of PostgreSQL logical replication using docker-compose.
To test it do:
1. Install docker and docker-compose as described in the [docker documentation](https://docs.docker.com/engine/installation/).
2. Bring up the two databases each in its own docker container by doing `docker-compose up -d`. Details of the containers appear on `docker-compose.yml`
3. Create the master database by doing `docker-compose exec master /my_data/master.sh` 
4. Create the slave database by doing `docker-compose exec slave /my_data/slave.sh` 
5. This will create two databases where the master table `films` is copied into the slave table `films`. You can play with the system doing modifications to the master table and seeing how they are automatically replicated into the slave database.

Enjoy!