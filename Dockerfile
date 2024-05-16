FROM dtr.metlife.com/infra/openjdk:11.0.14-jdk

#Attach the required labels to the image
LABEL com.metlife.docker.contact="" \
      com.metlife.docker.description="authentication-service microservice" \
      com.metlife.docker.eaicode="12821" \
      com.metlife.docker.dpccode="" \
      com.metlife.docker.dockerfile=https://dev.azure.com/MetLife-APAC/NPCSP/_git/authentication-service 

COPY target/authentication-service-*.jar authentication-service.jar

##The docker cp command allows you to copy files and directories from your local machine to a running container. Where: src_path is the path on your local machine of the file you want to copy.
                            or
I am trying to copy the generated jar file from the target folder to  in the Docker image

ENTRYPOINT ["java", "-jar", "authentication-service.jar"]

### we tell the container to run the app.jar using the java -jar command.
