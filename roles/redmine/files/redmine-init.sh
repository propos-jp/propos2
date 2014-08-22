#!/bin/sh

docker run --name redmine -it --rm --link mysql:mysql  -e "DB_USER=redmine" -e "DB_PASS=password"  -e "DB_NAME=redmine_production"   -v /opt/redmine/files:/redmine/files  sameersbn/redmine:2.5.2 app:db:migrate

