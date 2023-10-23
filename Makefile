.DEFAULT_GOAL := all

all: 
	docker build -t aflplusplus_build .
	docker run -it --rm  --user `id -u`:`id -g` -v /etc/passwd:/etc/passwd:ro -v /etc/group:/etc/group:ro -v `pwd`:/opt aflplusplus_build

clean: 
	sudo rm-rf tcpdump