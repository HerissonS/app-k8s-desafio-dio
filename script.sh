echo "Criando as imagens!"
docker build -t herissonsilvam/app-desafio-dio-backend:1.0 backend/.
docker build -t herissonsilvam/app-desafio-dio-database:1.0 database/.

echo "Realizando push das imagens para Docker Hub!"
docker push herissonsilvam/app-desafio-dio-backend:1.0
docker push herissonsilvam/app-desafio-dio-database:1.0

echo "Criando serviços do cluster kubernetes!"
kubectl apply -f services.yml

echo "Criando os deployments!"
kubectl apply -f deployment.yml
