#!/bin/sh
cd $HOME/docker/compose/media && echo "\n*** Parando imagenes MEDIA ***\n" && docker compose stop
cd $HOME/docker/compose/nube && echo "\n*** Parando imagenes NUBE ***\n" && docker compose stop
cd $HOME/docker/compose/domotica && echo "\n*** Parando imagenes DOMOTICA ***\n" && docker compose stop
cd $HOME/docker/compose/sistema && echo "\n*** Parando imagenes SISTEMA ***\n" && docker compose stop
