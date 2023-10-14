build:
	docker build -t springserverimage .
	docker run -d -p 80:8080 --name springservercontainer springserverimage
	echo "Succesfully built image springserverimage and container springservercontainer"
	echo "Run test with make test"

test:
	curl http://localhost:80/hello

clean:
	docker stop springservercontainer
	docker rm springservercontainer
	docker rmi springserverimage
