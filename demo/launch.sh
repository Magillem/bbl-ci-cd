docker network create jenkins2


docker run -d --name sonarqube -p 9000:9000 -p 9092:9092 --network="jenkins2" sonarqube
#mvn sonar:sonar
#With boot2docker:
#mvn sonar:sonar -Dsonar.host.url=http://$(boot2docker ip):9000 -Dsonar.jdbc.url="jdbc:h2:tcp://$(boot2docker ip)/sonar"

# use full access to localhost (quick and dirty, TODO use docker network)
docker run -d --name blueocean -p 8080:8080 --network="jenkins2" -v /var/jenkins_home/jobs:jenkins-jobs/ jenkinsci/blueocean



