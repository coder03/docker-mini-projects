# docker-mini-projects

Branch: host static html on nginx

Using ubuntu container host a static index.html on nginx server.

How to run?
make build runs following commands:
  docker build -t htmlserverimage .
  docker run -d -p 80:80 --name htmlservercontainer htmlserverimage

How to test?
make test runs this command:
  curl http://localhost

How to clean up?
make clean runs following command:
  docker stop htmlservercontainer
  docker rm htmlservercontainer 
  docker rmi htmlserverimage
