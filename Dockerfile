FROM fedora:23
COPY sbin/* /opt/greenlobster/sbin/
COPY bin/* /opt/greenlobster/bin/
COPY config /opt/greenlobster/lib/config
RUN /usr/bin/bash /opt/greenlobster/sbin/install.sh
VOLUME /opt/greenlobster/private
EXPOSE 8080
CMD ["/opt/greenlobster/sbin/init.sh"]
