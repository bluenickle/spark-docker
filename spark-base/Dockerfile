FROM centos:7

RUN curl -LO "http://10.133.205.148:54321/java/server-jre-8u121-linux-x64.tar.gz" \
  && tar xvf server-jre-8u121-linux-x64.tar.gz \
  && mv jdk1.8.0_121 /usr/local/java \
  && rm server-jre-8u121-linux-x64.tar.gz \
  && curl -LO "http://10.133.205.148:54321/spark/spark-2.1.0-bin-hadoop2.6.tgz" \
  && tar xvf spark-2.1.0-bin-hadoop2.6.tgz \
  && mv spark-2.1.0-bin-hadoop2.6 /usr/local/spark \
  && rm spark-2.1.0-bin-hadoop2.6.tgz

ENV JAVA_HOME /usr/local/java
ENV PATH $PATH:$JAVA_HOME/bin
WORKDIR /usr/local/spark

CMD java -version
