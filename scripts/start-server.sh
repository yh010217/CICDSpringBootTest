#!/bin/bash

echo "-------서버 시작----------"

docker stop cicd-server || true
docker rm cicd-server || true
docker pull 147997119644.dkr.ecr.ap-northeast-2.amazonaws.com/typehoon/cicd-test:latest
sudo docker run -d --name cicd-server -p 80:80 147997119644.dkr.ecr.ap-northeast-2.amazonaws.com/typehoon/cicd-test:latest

echo "------서버 배포 끝--------"



#cd /home/ubuntu/CICDSpringBootTest
#sudo fuser -k -n tcp 80 ||true
#sudo fuser -k -n tcp 8080 ||true

#sudo nohup java -jar project.jar > ./output.log 2>&1 &
