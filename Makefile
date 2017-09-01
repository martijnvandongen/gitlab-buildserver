

build:
	docker build -t gitlabci .

run:
	docker run -it gitlabci /bin/sh