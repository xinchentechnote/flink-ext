rm -rf flink-1.18.0
tar -zxvf flink-1.18.0-bin-scala_2.12.tgz
sh rebuild-flink-dist.sh
cp conf/flink-conf.yaml flink-1.18.0/conf/
./flink-1.18.0/bin/stop-cluster.sh
./flink-1.18.0/bin/start-cluster.sh
sleep 5
curl localhost:8081
