FROM openjdk:8
COPY /target/demo-*.jar /demo.jar
EXPOSE 8080
CMD ["java","-jar","/demo.jar"]