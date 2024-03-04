#!/bin/sh

#cd $HOME/docker/ && echo "\n*** Descargando imagenes nuevas SISTEMA ***\n" && docker compose pull && echo "\n*** Instalando imagenes nuevas ***\n" &&  docker compose up -d && echo "\n*** Borrando imagenes viejas ***\n" && docker image prune -a -f

for c in $(docker ps --filter "name=$1" --format '{{.Names}}')
        do 
        nombre=$c
        directory_name=$(docker inspect $nombre --format '{{index .Config.Labels "com.docker.compose.project.working_dir"}}')
        service_name=$(docker inspect $nombre --format '{{index .Config.Labels "com.docker.compose.service"}}')
        cd $directory_name
        # docker compose stop $service_name
        # read -p "I am going to wait for 5 seconds only ..."
        docker compose pull $service_name
        docker compose up -d $service_name
        docker image prune -a -f
#        docker-compose up -d
        echo "\n"
done
docker compose up -d
