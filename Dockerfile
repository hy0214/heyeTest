FROM openjdk:8-jdk-alpine

LABEL author="heye"

COPY target/*.jar /app.jar

ENV TZ=Asia/Shanghai
RUN ln -sf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \
touch /app.jar;

ENV JAVA_OPTS=""
ENV PARAMS=""

EXPOSE 8080

ENTRYPOINT ["/sh","-c","java -Djava.security.edg=file:/dev/./urandom $JAVA_OPTS -jar /app.jar $PARAMS"]
