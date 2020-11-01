FROM diannao99/debian
COPY ./start.sh /home/start.sh
RUN chmod 777 /home/start.sh && \ 
    sed -i "/<\/VirtualHost\>/i\ProxyPass /water/limspro http://127.0.0.1:2031" /etc/apache2/sites-enabled/limspro.conf
CMD /home/start.sh
