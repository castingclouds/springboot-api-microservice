# Sample Application to use with Refinery

## Prereqs
- `brew` - Mac Install - `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
- `zsh` - Mac Install - `brew install zsh`
- `docker` - [Mac Install](https://www.docker.com/products/docker#/mac)

## Running Hubuild Maven Example
- `mkdir -R ~/refinery && cd ~/refinery`
- `git clone https://github.com/castingclouds/hubuild && cd hubuild`
- `docker build refinery/maven maven/`
- `mkdir tmp && cd tmp`
- `docker run -v $(pwd):/home/root -w /home/root refinery/maven git clone https://github.com/castingclouds/springboot-api-microservice`
- `docker run -v $(pwd)/springboot-api-microservice:/home/root -w /home/root refinery/maven mvn package`
- `java -jar springboot-api-microservice/target/springboot-api-microservice-0.0.1-SNAPSHOT.jar`

## Running Packer
**Coming Soon**

