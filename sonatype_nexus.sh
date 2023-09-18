#TO install nexus we need to install java first
sudo apt-get install openjdk-8-jdk
# to install nexus only

wget https://download.sonatype.com/nexus/3/nexus-3.60.0-02-unix.tar.gz
tar -xvzf nexus-3.60.0-02-unix.tar.gz
cd nexus-3.60.0-02/bin
./nexus start
./nexus status

## ACCESS USING THE PORT 8081  => IP ADDRESS:8081


# IF JAVA_HOME IS NOT SET TO JAVA 8 THEN DO THE FOLLOWING STEPS

sudo alternatives --config java
nano ~/.bashrc
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64" #[Append it to the bottom]
source ~/.bashrc
java -version
