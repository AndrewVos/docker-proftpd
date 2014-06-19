    docker pull andrewvos/docker-vsftpd
    docker run \
      -p 21:21 -p 20:20 \
      -e USERNAME=username \
      -e PASSWORD=password \
      -v `pwd`/ftp:/ftp \
      andrewvos/docker-vsftpd

    ftp -p localhost 21
    Name (0.0.0.0:andrew): username
    Password:
    ftp> ls
