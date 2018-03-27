FROM oraclejdk8:latest
VOLUME /tmp
ENV LC_ALL en_US.UTF-8
ADD target/agrdata-center.jar app.jar
ENV JAVA_OPTS=""
ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar
