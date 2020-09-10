ARG BASE=latest
FROM flokkr/base:${BASE}
ARG ARTIFACTDIR
ENV HADOOP_HOME=/opt/hadoop
RUN useradd --uid 1000 hive --gid 1000 -G flokkr --home /opt/hive && chown hive /opt
USER hive
VOLUME /data
RUN sudo chown hive /data
ENV CONF_DIR /opt/hive/conf
ENV HADOOP_CONF_DIR /opt/hive/conf
WORKDIR /opt
ADD --chown=hive:flokkr ${ARTIFACTDIR} /opt/hive
WORKDIR /opt/hive
ENV PATH $PATH:/opt/hive/bin
ADD hive-log4j2.properties /opt/hive/conf
