#!/bin/sh -e
ansible-playbook ./test.yml
docker-compose -f ./output/docker-compose.yml config > /dev/null
docker-compose -f ./output/docker-compose-nginx-tls-verify-client.yml config > /dev/null
docker-compose -f ./output/docker-compose-no_mysql_container.yml config > /dev/null
docker-compose -f ./output/docker-compose-no_mysql.yml config > /dev/null
python -m json.tool ./output/ca.json > /dev/null
