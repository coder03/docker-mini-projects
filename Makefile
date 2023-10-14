build:
	docker build -t htmlserverimage .
	docker run -d -p 80:80 --name htmlservercontainer htmlserverimage
	echo "Succesfully built image htmlserverimage and container htmlservercontainer"
	echo "Run test with make test"

test:
	curl http://localhost

clean:
	docker stop htmlservercontainer
	docker rm htmlservercontainer
	docker rmi htmlserverimage
