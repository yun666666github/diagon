FROM java:8
VOLUME /tmp
ADD basic-services-service-registy-1.1.0-SNAPSHOT-exec.jar app.jar
#RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar","--spring.profiles.active=peer1"]
EXPOSE 8761
CMD exec java -Djava.security.egd=file:/dev/./urandom -jar /app.jar

