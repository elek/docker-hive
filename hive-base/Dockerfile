FROM elek/hadoop:latest
ENV CONF_DIR /opt/hive/conf
ENV HADOOP_HOME /opt/hadoop
ADD url ./
RUN wget `cat url` -O hive.tar.gz && tar zxf hive.tar.gz && rm hive.tar.gz && mv apache-hive* hive
ENV PATH $PATH:/opt/hive/bin
ADD defaults/* defaults/
