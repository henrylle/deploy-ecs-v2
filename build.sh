aws ecr get-login-password --region us-east-1  | docker login --username AWS --password-stdin [SUA_CONTA].dkr.ecr.us-east-1.amazonaws.com
#docker build -t aula-ecs-v2 .
docker buildx build --platform linux/amd64 -t aula-ecs-v2 .
docker tag aula-ecs-v2:latest [SUA_CONTA].dkr.ecr.us-east-1.amazonaws.com/aula-ecs-v2:latest
docker push [SUA_CONTA].dkr.ecr.us-east-1.amazonaws.com/aula-ecs-v2:latest

