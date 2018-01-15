# Pull base image
FROM openjdk:8-alpine


# Set variables
ENV PORT 8080

# Copy to images tomcat path
ADD target/77925288T-0.2.0.jar /opt/webapp/
ADD target/dependency/jetty-runner.jar /opt/webapp/
WORKDIR /opt/webapp

# Launch the server
CMD java -jar jetty-runner.jar --port $PORT 77925288T-0.2.0.jar
