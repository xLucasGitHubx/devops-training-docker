# Utiliser l'image officielle Apache
FROM httpd:latest

# Copier le fichier local dans le répertoire par défaut d'Apache
COPY ./index.html /usr/local/apache2/htdocs/

# Exposer le port 80
EXPOSE 80
