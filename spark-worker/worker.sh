#!/bin/bash

sbin/spark-config.sh

cd bin && sh load-spark-env.sh && cd ..

mkdir -p $SPARK_WORKER_LOG

export SPARK_HOME=/usr/local/spark

bin/spark-class org.apache.spark.deploy.worker.Worker \
    --webui-port $SPARK_WORKER_WEBUI_PORT $SPARK_MASTER \
    >> $SPARK_WORKER_LOG/spark-worker.out
