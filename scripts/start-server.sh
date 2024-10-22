#!/bin/bash

echo "-------서버 시작----------"
cd /home/ubuntu/CICDSpringBootTest
sudo fuser -k -n tcp 80 ||true
sudo fuser -k -n tcp 8080 ||true

nuhup java -jar project.jar > ./output.log 2>&1 &
echo "------서버 배포 끝--------"

