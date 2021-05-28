FROM diannao99/debian

COPY ./start.sh /home/start.sh
COPY ./limspro.conf /etc/apache2/sites-enabled/limspro.conf
COPY ./sources.list /etc/apt/

RUN chmod 777 /home/start.sh && \
    apt update && \
    apt install -y curl zip && \
    apt install -y php-mongodb

COPY ./mongodb-org-4.2.list /etc/apt/sources.list.d/

RUN  apt install -y gnupg2 && \
     curl -fsSL https://www.mongodb.org/static/pgp/server-4.2.asc | apt-key add - && \
     apt update && \ 
     apt install mongodb-org -y && \
     touch /var/log/mongodb/mongodb.log && \
     mkdir /root/mongo_data && \
     sed 's/bindIp: 127.0.0.1/bindIp: 0.0.0.0/' /etc/mongod.conf  -i 

CMD /home/start.sh
