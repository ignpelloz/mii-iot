export IPVM=
sudo apt update
sudo apt install docker.io -y
sudo apt install docker-compose -y 
nano docker-compose.yml 
sudo OR_HOSTNAME=$IPVM docker-compose up
