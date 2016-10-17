# Sample Application to use with Refinery

## Prereqs
- `brew` - Mac Install - `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
- `zsh` - Mac Install - `brew install zsh`
- `docker` - [Mac Install](https://www.docker.com/products/docker#/mac)

## Running Packer
- [Install Packer](https://www.packer.io/downloads.html) from Hashicorp
- `mkdir -R ~/refinery && cd ~/refinery`
- `git clone https://github.com/castingclouds/hubuild && cd hubuild`
- `git checkout refinery`
- `packer build packer-puppet.json`

## Running Hubuild Maven Example
- `git checkout master`
- `docker build refinery/maven maven/`
- `mkdir tmp && cd tmp`
- `docker run -v $(pwd):/home/root -w /home/root refinery/maven git clone https://github.com/castingclouds/springboot-api-microservice`
- `docker run -v $(pwd)/springboot-api-microservice:/home/root -w /home/root refinery/maven mvn package`
- `docker run -i -t -v $(pwd)/springboot-api-microservice:/home/root -w /home/root -p 8080:8080 refinery/springboot-api-microservice:0.1 java -jar target/springboot-api-microservice-0.0.1-SNAPSHOT.jar` 

```
  .   ____          _            __ _ _
 /\\ / ___'_ __ _ _(_)_ __  __ _ \ \ \ \
( ( )\___ | '_ | '_| | '_ \/ _` | \ \ \ \
 \\/  ___)| |_)| | | | | || (_| |  ) ) ) )
  '  |____| .__|_| |_|_| |_\__, | / / / /
 =========|_|==============|___/=/_/_/_/
 :: Spring Boot ::        (v1.3.3.RELEASE)

2016-10-17 21:08:44.370  INFO 1 --- [           main] com.example.DemoApplication              : Starting DemoApplication v0.0.1-SNAPSHOT on dbd47b28d934 with PID 1 (/home/root/target/springboot-api-microservice-0.0.1-SNAPSHOT.jar started by root in /home/root)
```  

- [_Open Browser_](http://localhost:8080/hello-world) 

