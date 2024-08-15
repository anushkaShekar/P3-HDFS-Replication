#!/bin/bash
hdfs namenode -format
hdfs namenode -D dfs.namenode.stale.datanote.interval=10000 -D dfs.webhdfs.enabled=true -D dfs.namenode.heartbeat.recheck-interval=30000 -fs hdfs://main:9000 &
python3 -m jupyterlab --no-browser --ip=0.0.0.0 --port=5000 --allow-root --NotebookApp.token=''

