#!/bin/bash -e

echo Setting credentials to $USERNAME:$PASSWORD
PASSWORD=$(perl -e 'print crypt($ARGV[0], "password")' $PASSWORD)
useradd --shell /bin/sh --create-home --password $PASSWORD $USERNAME
chown -R $USERNAME:$USERNAME /ftp
exec proftpd --nodaemon
