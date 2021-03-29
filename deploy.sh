docker build -t fume-node .
aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws
docker tag fume-node:latest public.ecr.aws/a8t0x0j9/fume-node:latest
docker push public.ecr.aws/a8t0x0j9/fume-node:latest
