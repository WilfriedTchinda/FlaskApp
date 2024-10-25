# Utiliser une image Python comme base
FROM python:3.8-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers nécessaires
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

# Exposer le port 5000
EXPOSE 5000

# Commande pour exécuter l'application
CMD ["python", "app.py"]
