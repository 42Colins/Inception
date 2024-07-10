DOCKER_COMPOSE	= srcs/docker-compose.yml

all :	build	upload

build : 	
		mkdir -p /home/cprojean/data/mariadb/
		mkdir -p /home/cprojean/data/wordpress/
		sudo docker compose -f ${DOCKER_COMPOSE} build
upload :
		sudo docker compose -f ${DOCKER_COMPOSE} up -d;

clean :
		sudo docker compose -f ${DOCKER_COMPOSE} down --volumes --rmi all
		sudo rm -rf /home/cprojean/data/mariadb/*;
		sudo rm -rf /home/cprojean/data/wordpress/*;

fclean :	rm
		sudo docker system prune -af;

re :		rm all

.PHONY :	all build up rm rmf re
