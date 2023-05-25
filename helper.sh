cd ./python-app
docker build . -t app-hw
cd ../
minikube image load app-hw
kubectl create ns demo
kubectl label ns demo istio-injection=enabled
kubectl config set-context --current --namespace=demo
kubectl apply -f ./k8s
