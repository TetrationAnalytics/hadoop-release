

Tetration Hadoop-Release Build Environment:
-------------------------------------------

Build docker image for centos 
 > docker build -t tetration/hadoop-dev:centos.7 centos

Build hadoop-release dist tar
 > docker run -v $PWD:/local/repo/hadoop-release tetration/hadoop-dev:centos.7 /root/compile.sh

