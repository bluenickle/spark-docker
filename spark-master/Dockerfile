FROM spark-base

COPY master.sh ./

ENV SPARK_MASTER_PORT 7077
ENV SPARK_MASTER_WEBUI_PORT 8080
ENV SPARK_MASTER_LOG /usr/local/spark/logs

EXPOSE 7077 8080 6066

CMD ["/bin/bash", "master.sh"]
