#For Linux The minikube installation steps are as follows

# OS = LINUX
# Architecture =  x86-64
# ReleaseType = Stable
# Installer Type = Binary

curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube

minikube start

#to check if everything is correctly installed or not ?!

kubectl get po -A #if kubectl installed