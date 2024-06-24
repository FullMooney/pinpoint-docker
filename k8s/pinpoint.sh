kubectl create ns pinpoint

kubectl create cm pinpoint-config -n pinpoint  --from-env-file=../.env

kubectl create -f chart/zookeeper/zk-statefulset.yaml -n pinpoint

kubectl create -f chart/zookeeper/zk-service.yaml -n pinpoint

kubectl create -f chart/mariadb/mariadb-statefulset.yaml -n pinpoint

kubectl create -f chart/mariadb/mariadb-service.yaml -n pinpoint

kubectl create -f chart/hbase/hbase-statefulset.yaml -n pinpoint

kubectl create -f chart/hbase/hbase-service.yaml -n pinpoint

kubectl create -f chart/collector/collector-deployment.yaml -n pinpoint

kubectl create -f chart/collector/collector-service.yaml -n pinpoint


