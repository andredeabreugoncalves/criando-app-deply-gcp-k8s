echo " ===================Criando imagens ==================="
sudo docker image build  -t andredeabreugoncalves/php-projeto:1.0 backend/
sudo docker image build  -t andredeabreugoncalves/db-projeto:1.1 dabase/

echo " ===================Criando push imagens para hub docker ==================="
sudo docker push andredeabreugoncalves/php-projeto:1.0 
sudo docker push andredeabreugoncalves/db-projeto:1.1 


echo " ===================Criando deployment k8s ==================="
kubectl apply -f deployment.yml


echo " ===================Criando serviço cluster k8s ==================="
kubectl apply -f services.yml

