#!/bin/bash
sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release -y
 
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y
sudo apt-cache policy docker-ce
sudo apt install docker-ce -y
cd $home
sudo su
mkdir custom-docker
cd custom-docker
mkdir website
cd website
echo "<h1>Welcome to my webpage</h1>

<p>This is a sample HTML page</p>
<p>This is using tags to structure the text into HTML</p>

<h2>Thank yo for visiting</h2>" > web.html
cd ..
echo "FROM httpd:2.4
COPY ./website/ /usr/local/apache2/htdocs/" > Dockerfile
docker build -t dockfetch-httpd1  .
docker run -dit --name httpd-100 -p 8080:80 dockfetch-httpd1