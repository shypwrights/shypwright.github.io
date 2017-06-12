NAME=shypwright
HOST_PORT=8015
DOCK_PORT=8000

all : clean build

clean :
	-@docker stop `docker ps -q -f ancestor=$(NAME)` 2>/dev/null || true
	-@docker rm `docker ps -aq -f ancestor=$(NAME)` 2>/dev/null || true
	-@docker rmi `docker images -aq -f ancestor=$(NAME)` 2>/dev/null || true

build :
	-@docker build --rm -t $(NAME) .

restart : 
	-@docker stop $(NAME)
	-@docker rm $(NAME)
	-@docker run --name $(NAME) -p $(HOST_PORT):$(DOCK_PORT) --rm -t -v "$(CURDIR)":/$(NAME) $(NAME) &

run start : 
	-@docker run --name $(NAME) -p $(HOST_PORT):$(DOCK_PORT) --rm -t -v "$(CURDIR)":/$(NAME) $(NAME) &

shell :
	-@docker run --rm -t -i -v "$(CURDIR)":/$(NAME) $(NAME) /bin/bash -l

exec :
	-@docker exec -t -i $(NAME) /bin/bash -l

stop :
	-@docker stop $(NAME)
