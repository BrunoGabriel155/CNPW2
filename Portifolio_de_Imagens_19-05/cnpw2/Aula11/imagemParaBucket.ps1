# Script PowerShell para criar bucket S3 com LocalStack


$Endpoint = "http://localhost:4566"
$Bucket = Read-Host -Prompt "Insira o nome do bucket"
$Pasta = Read-Host -Prompt "Insira o nome da Pasta"

# 1. Criar um bucket
Write-Host "Copiando as imagens para o Bucket..."
aws s3 cp --recursive $Pasta "s3://$Bucket" --endpoint-url $Endpoint --profile "localstack"

# 2. Lista as imagens copiadas para o Bucket
aws s3 ls "s3://$Bucket/$Pasta" --endpoint-url $Endpoint --profile "localstack"