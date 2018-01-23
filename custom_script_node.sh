curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
#sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" xenial stable"
sudo apt-get update

# search docker-ce
apt-cache search docker-ce

# install docker
sudo apt-get install -y docker-ce

# pull docker image for redis
docker pull avarade/cb-node

# run docker image and start redis server
docker run -p 8080:8080 --restart always -e CB_ENV_NAME=10.0.0.5 avarade/cb-node
