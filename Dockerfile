FROM jenkins/jenkins:lts

USER root

RUN apt-get update && \
    apt-get install -y python3 python3-pip python3-venv && \
    python3 -m venv /opt/robot && \
    /opt/robot/bin/pip install robotframework && \
    ln -s /opt/robot/bin/robot /usr/local/bin/robot

USER jenkins
