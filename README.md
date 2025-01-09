# devops-training-docker

Madjinda Lucas

```bash
# 3.a
docker pull httpd

# 3.b
docker images

# 3.d
docker run --name my-apache -v ./html:/usr/local/apache2/htdocs -p 80:80 -d httpd

# 3.e
docker stop my-apache
docker rm my-apache
# ou bien
docker rm -f my-apache

# 3.f
docker run --name my-apache -p 80:80 -d httpd
docker cp ./html/index.html my-apache:/usr/local/apache2/htdocs/index.html

# 4.b
docker build -t my-apache-image .
docker run --name my-apache-container-with-my-image -p 80:80 -d my-apache-image

# 4.c
# Le mount volume (`-v`) est flexible, car il permet de modifier les fichiers sur l’hôte
# et de voir les changements en temps réel dans le container, mais il est moins portable
# et dépend de l’environnement de l’hôte. La méthode COPY dans un Dockerfile est idéale
# pour la production, car elle garantit que tous les fichiers nécessaires sont intégrés
# directement dans l'image, rendant celle-ci autonome et portable. Le mount volume est
# plus rapide et simple à configurer pour tester des changements, tandis que COPY offre
# de meilleures performances et une structure stable pour un déploiement.

# 5.b
docker network create -d bridge my-network
docker run --name my-mysql --network my-network -e MYSQL_ROOT_PASSWORD=a -d mysql
docker run --name my-phpmyadmin --network my-network -e PMA_HOST=my-mysql -p 80:80 -d phpmyadmin
# reste de la question fait sur phpmyadmin

# 6.a
# La commande docker-compose permet de définir et de gérer plusieurs containers dans un
# seul fichier de configuration (docker-compose.yml). Contrairement à docker run, qui
# lance un seul container avec des options en ligne de commande, docker-compose simplifie
# la gestion des dépendances et automatise le déploiement d’applications multi-containers.

# 6.b
docker-compose up
docker-compose down

# 6.c
# docker-compose.yaml disponible et rédigé
```
