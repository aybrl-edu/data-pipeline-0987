# Commandes
Terraform automation

## Question 4

### 1- Delete Data Stream
```aws kinesis delete-stream --stream-name ayoub-berhili-stock-input-stream --region eu-north-1```

### 2- Create Data Stream
```aws kinesis create-stream --stream-name ayoub-berhili-stock-input-stream --region eu-north-1 --shard-count 1```


## Question 5

### 1- Premier lancement

Une erreur qui empêche le stream d'être envoyer

### 2- Résolution

Décommenter la ligne responsable de l'envoi du stream ainsi que mettre à jour les variables globales STREAM_NAME et REGION

```
STREAM_NAME = "ayoub-berhili-stock-input-stream"
REGION = "eu-north-1"
```
