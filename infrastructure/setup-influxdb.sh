#!/bin/bash
microk8s.kubectl create namespace monitoring
microk8s.kubectl create secret generic -n monitoring influxdb-creds \
  --from-literal=INFLUXDB_DATABASE=local_monitoring \
  --from-literal=INFLUXDB_USERNAME=root \
  --from-literal=INFLUXDB_PASSWORD=root1234 \
  --from-literal=INFLUXDB_HOST=influxdb

microk8s.kubectl apply -f influx-storage.yaml
microk8s.kubectl apply -f influx-deployment.yaml
microk8s.kubectl expose deployment influxdb  -n monitoring --port=8086 --target-port=8086 --protocol=TCP --type=ClusterIP

