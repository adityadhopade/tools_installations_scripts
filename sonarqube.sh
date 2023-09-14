# INSTALL SONARQUBE via Docker 
  
    docker run -d --name sonarqube -p 9000:9000 -p 9092:9092 sonarqube

# Most favorable via docker for AMAZON LINUX 3
sudo dnf update
sudo dnf install docker
sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl status docker
#  Allow docker to run without sudo
sudo usermod -aG docker $USER
newgrp docker
------------------------------------------------------------------------------------------------
# Install on Ubuntu 22.04

sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
apt-cache policy docker-ce
sudo apt install docker-ce
sudo systemctl status docker
sudo usermod -aG docker ${USER}
su - ${USER}
groups
sudo usermod -aG docker username

------------------------------------------------------------------------------------------

wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.0.zip
unzip sonarqube-9.0.zip
sudo mv sonarqube-9.0 /opt/sonarqube
sudo vi /opt/sonarqube/conf/sonar.properties
sonar.jdbc.username=sonar
sonar.jdbc.password=sonar

# Uncomment and update the following lines:

sonar.jdbc.url=jdbc:postgresql://localhost/sonar

#  start SonarQube:
sudo /opt/sonarqube/bin/linux-x86-64/sonar.sh start

# Check the status of SonarQube:

sudo /opt/sonarqube/bin/linux-x86-64/sonar.sh status

#Access SonarQube
http://<your-ec2-ip>:9000
