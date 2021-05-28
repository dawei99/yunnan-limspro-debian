FROM diannao99/debian
COPY ./sources.list /etc/apt/
COPY ./start.sh /home/start.sh
COPY ./limspro.conf /etc/apache2/sites-enabled/limspro.conf
RUN chmod 777 /home/start.sh && \
    apt update && \
    apt install zip -y && \
    apt install -y php-mongodb
CMD /home/start.sh
