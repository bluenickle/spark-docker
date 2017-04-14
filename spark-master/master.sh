#!/bin/bash

#export SPARK_MASTER_HOST=`hostname`

sbin/spark-config.sh
cd bin && sh load-spark-env.sh && cd ..

mkdir -p $SPARK_MASTER_LOG

export SPARK_HOME=.

bin/spark-class org.apache.spark.deploy.master.Master \
  --port $SPARK_MASTER_PORT \
  --webui-port $SPARK_MASTER_WEBUI_PORT \
  >> $SPARK_MASTER_LOG/spark-master.out

