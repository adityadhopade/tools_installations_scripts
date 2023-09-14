# INSTALL SONARQUBE
  
    docker run -d --name sonarqube -p 9000:9000 -p 9092:9092 sonarqube


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
