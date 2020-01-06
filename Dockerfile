FROM java:8-jre
WORKDIR /usr/app
ENV MYVAR=myvalue
COPY ./target/demoapp-0.-0.1-SNAPSHOT.jar /usr/app/demo-docker-0.0.1-SNAPSHOT.jar
RUN sh -c 'touch demo-docker-0.0.1-SNAPSHOT.jar'
ENTRYPOINT ["java","-jar","/usr/app/demo-docker-0.0.1-SNAPSHOT.jar"]