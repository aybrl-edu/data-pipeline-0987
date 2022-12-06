# Ayoub BERHILI CC1 Commandes
Terraform automation

## Question 4

### 1- Delete Data Stream
```aws kinesis delete-stream --stream-name ayoub-berhili-stock-input-stream --region eu-north-1```

### 2- Create Data Stream
```aws kinesis create-stream --stream-name ayoub-berhili-stock-input-stream --region eu-north-1 --shard-count 1```
