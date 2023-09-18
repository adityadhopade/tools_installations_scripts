#TO install nexus we need to install java first

# to install nexus only

wget https://download.sonatype.com/nexus/3/nexus-3.60.0-02-unix.tar.gz
tar -xvzf nexus-3.60.0-02-unix.tar.gz
cd nexus-3.60.0-02/bin
./nexus start
./nexus status

## ACCESS USING THE PORT 8081  => IP ADDRESS:8081
