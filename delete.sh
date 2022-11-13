echo "===================APAGANDO DEPLOY ==================="

kubectl delete deploy --all

echo "===================APAGANDO SERVIÇO ==================="

kubectl delete service mysql-connection
kubectl delete service php 
echo "===================APAGANDO PODS ==================="

kubectl delete pods --all 

echo "===================VOLUME PC > OVC==================="

kubectl delete pv --all 
kubectl delete pvc --all 




