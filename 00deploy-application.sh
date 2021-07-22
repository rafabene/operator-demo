cd application
npm install
minikube profile operator
eval $(minikube -p operator docker-env)
docker build -t demo .
kubectl create namespace microservices
kubectl create -f kubernetes/deployment.yaml -f kubernetes/service.yaml