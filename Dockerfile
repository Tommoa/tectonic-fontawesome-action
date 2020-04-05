FROM vinay0410/tectonic-image:latest

RUN apt-get install fonts-font-awesome

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
