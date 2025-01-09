# devops-training-docker

Madjinda Lucas

3.a docker pull httpd

3.b docker images

3.d docker run --name my-apache -v ./html:/usr/local/apache2/htdocs -p 80:80 -d httpd

3.e docker stop my-apache puis docker rm my-apache ou bien docker rm -f my-apache

3.f docker run --name my-apache -p 80:80 -d httpd
docker cp ./html/index.html my-apache:/usr/local/apache2/htdocs/index.html

4.b docker build -t my-apache-image .
docker run --name my-apache-container-with-my-image -p 80:80 -d my-apache-image
