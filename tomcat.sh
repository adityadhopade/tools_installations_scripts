cd /opt
sudo wget https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.65/bin/apache-tomcat-9.0.65.tar.gz
sudo tar -xvf apache-tomcat-9.0.65.tar.gz


# TO add the username roles and pasword

sudo su
cd /opt/apache-tomcat-9.0.65/conf
sudo vi tomcat-users.xml

# ---add-below-line at the end (2nd-last line)----
# <user username="admin" password="admin1234" roles="admin-gui, manager-gui"/>

# For starting and stopping Tomcat

sudo ln -s /opt/apache-tomcat-9.0.65/bin/startup.sh /usr/bin/startTomcat
sudo ln -s /opt/apache-tomcat-9.0.65/bin/shutdown.sh /usr/bin/stopTomcat

# Need to comment some lines in the following 

sudo vi /opt/apache-tomcat-9.0.65/webapps/manager/META-INF/context.xml
comment:
<!-- Valve className="org.apache.catalina.valves.RemoteAddrValve"
  allow="127\.\d+\.\d+\.\d+|::1|0:0:0:0:0:0:0:1" /> -->

sudo vi /opt/apache-tomcat-9.0.65/webapps/host-manager/META-INF/context.xml

comment:
<!-- Valve className="org.apache.catalina.valves.RemoteAddrValve"
  allow="127\.\d+\.\d+\.\d+|::1|0:0:0:0:0:0:0:1" /> -->

# TO start and stop the Tomcat

sudo stopTomcat
sudo startTomcat

#to copy the folder containing war to the webapps folder
cp /opt/apache-tomcat-9.0.65/conf/petclinic/target/petclinic.war /opt/apache-tomcat-9.0.65/webapps/