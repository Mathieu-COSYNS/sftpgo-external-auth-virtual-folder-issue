FROM drakkan/sftpgo:v2.6.0-alpine-slim

COPY ./ExternalAuth.sh /var/lib/sftpgo/ExternalAuth.sh
COPY ./test_file.txt /srv/sftpgo/data/my_virtual_folder/test_file.txt

USER root
RUN chown 1000:1000 /var/lib/sftpgo/ExternalAuth.sh
RUN chmod u+x /var/lib/sftpgo/ExternalAuth.sh
USER 1000:1000

ENV SFTPGO_DATA_PROVIDER__EXTERNAL_AUTH_HOOK="/var/lib/sftpgo/ExternalAuth.sh"
