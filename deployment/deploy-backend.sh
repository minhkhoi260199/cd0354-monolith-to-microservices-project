kubectl delete all --all

kubectl apply -f aws-secret.yaml
kubectl apply -f env-secret.yaml
kubectl apply -f env-configmap.yaml
kubectl apply -f backend-feed-deployment.yaml
kubectl apply -f backend-feed-service.yaml
kubectl apply -f backend-user-deployment.yaml
kubectl apply -f backend-user-service.yaml 
kubectl apply -f reverseproxy-deployment.yaml
kubectl apply -f reverseproxy-service.yaml
kubectl expose deployment reverseproxy --type=LoadBalancer --name=pub-reverseproxy --port=8080

kubectl autoscale deployment backend-feed --cpu-percent=70 --min=2 --max=3
kubectl autoscale deployment backend-user --cpu-percent=70 --min=2 --max=3

