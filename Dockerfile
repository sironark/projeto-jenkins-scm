FROM ubuntu:latest
WORKDIR /home
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get -y install default-jre-headless git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
RUN git clone https://github.com/sironark/projeto-jenkins-scm.git
RUN git config --global user.email "gabriel_lopeslomeu@hotmail.com"
RUN git config --global user.name "sironark"
WORKDIR /home/projeto-jenkins-scm
CMD ["./gradlew", "build"]