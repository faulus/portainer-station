FROM apache/nifi:1.4.0

VOLUME ["/opt/nifi/nifi-1.4.0"]
WORKDIR /opt/nifi/nifi-1.4.0

#Add JDK
USER root
RUN apt update && apt install -y \
	openjdk-8-jdk

USER nifi

ADD assets/images/*.svg images/
ADD assets/rebrand.sh .

RUN "./rebrand.sh"
#RUN "sleep 30"
#RUN "curl http://localhost:8080/nifi"
#RUN "bin/nifi.sh stop"




