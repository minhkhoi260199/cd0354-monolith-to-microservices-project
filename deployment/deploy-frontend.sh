kubectl delete deployment frontend
kubectl delete service frontend
kubectl delete service pub-frontend

kubectl apply -f frontend-deployment.yaml 
kubectl apply -f frontend-service.yaml 
kubectl expose deployment frontend --type=LoadBalancer --name=pub-frontend


