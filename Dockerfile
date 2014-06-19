FROM ubuntu

RUN apt-get update -y
RUN apt-get install -y vsftpd

ADD vsftpd.conf /etc/vsftpd.conf
ADD run-vsftpd /run-vsftpd
RUN sudo chown root:root /etc/vsftpd.conf
RUN mkdir -p /var/run/vsftpd/empty

EXPOSE 21
EXPOSE 20

CMD /run-vsftpd
