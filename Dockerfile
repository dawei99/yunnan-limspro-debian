FROM diannao99/debian
COPY ./start.sh /home/start.sh
COPY ./limspro.conf /etc/apache2/sites-enabled/limspro.conf
COPY ./sources.list /etc/apt/sources.list
RUN chmod 777 /home/start.sh && \
    apt update && \
    apt -y install --assume-yes apt-utils && \  
    apt install zip -y && \
    apt install -y redis && \ 
    apt install -y php-redis && \ 
    sed -i 's/daemonize no/daemonize yes/' /etc/redis/redis.conf 
CMD /home/start.sh
