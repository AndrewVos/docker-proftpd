    docker pull andrewvos/docker-proftpd
    docker run -p 21:21 -p 20:20 -e USERNAME=username -e PASSWORD=password -v `pwd`/ftp:/ftp andrewvos/docker-proftpd

    ftp -p localhost 21
    Name (0.0.0.0:andrew): username
    Password:
    ftp> ls
