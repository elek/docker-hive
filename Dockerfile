FROM flokkr/hadoop:latest
ENV HADOOP_HOME=/opt/hadoop
RUN sudo adduser -h /opt/ -s /bin/bash -G flokkr -D hive && sudo chown hive /opt
USER hive
VOLUME /data
RUN sudo chown hive /data
ENV CONF_DIR /opt/hive/conf
ENV PATH $PATH:/opt/hive/bin
ARG URL
WORKDIR /opt
RUN wget $URL -O hive.tar.gz && tar zxf hive.tar.gz && rm hive.tar.gz && mv apache-hive* hive
WORKDIR /opt/hive
ADD hive-log4j2.properties /opt/hive/conf
