FROM openjdk:11-jre-stretch

ARG MC_VER="1.16.4"
ARG JAR_FILE="https://launcher.mojang.com/v1/objects/35139deedbd5182953cf1caa23835da59ca3d7cd/server.jar"

WORKDIR /tmp/install
RUN apt-get update && \
    apt-get install -y \
        vim \
        && \
    apt-get autoremove -y && \
    apt-get clean -y

WORKDIR /opt/minecraft
ADD ${JAR_FILE} ./server.jar
COPY ./backup.sh ./backup.sh

WORKDIR /var/minecraft
COPY ./eula.txt ./eula.txt

ENV MC_VERSION=${MC_VER}

VOLUME /var/minecraft
EXPOSE 25565/tcp

VOLUME /var/minecraft/logs
VOLUME /var/backup

CMD ["java", "-Xmx1024M", "-Xms1024M", "-jar", "/opt/minecraft/server.jar", "nogui"]
