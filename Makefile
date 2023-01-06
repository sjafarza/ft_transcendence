include ./srcs/.env
export #to load .env fully for docker

NAME = Transcendence

all: $(NAME)

$(NAME):
		docker-compose up --build -d
		docker exec -it postgres sh -c "chmod -R 777 /var/lib/postgresql/data/"

clean:
	-rm -rf /goinfre/$(USER)/data/*
	docker system prune -f
	docker image prune -f
	@-docker rmi -f $(shell docker images -qa | uniq)

fclean: clean

re: fclean all

.PHONY: all clean fclean re 