FROM ubuntu

RUN apt-get update && apt-get install -y apt-transport-https && apt-get install -y proftpd && apt-get install sudo

ADD launch /launch
ADD proftpd.conf /etc/proftpd/proftpd.conf
RUN sudo chown root:root /etc/proftpd/proftpd.conf && mkdir /ftp

EXPOSE 21 20 37185-37190

ENTRYPOINT /launch
