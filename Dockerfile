FROM alpine:latest
WORKDIR '/app'
CMD curl -o https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-22.2.0/graalvm-ce-java11-linux-amd64-22.2.0.tar.gz
CMD tar -xzf graalvm-ce-java11-linux-amd64-22.2.0.tar.gz
ENV PATH="./graalvm-ce-java11-linux-amd64-22.2.0/bin:$PATH"
ENV JAVA_HOME="./graalvm-ce-java11-linux-amd64-22.2.0"
ADD target/taco-cloud-0.0.1-SNAPSHOT.jar taco-cloud-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "taco-cloud-0.0.1-SNAPSHOT.jar"]
EXPOSE 8080