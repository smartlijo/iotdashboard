#!/bin/bash
microk8s.helm3 repo add influxdata https://helm.influxdata.com/
microk8s.helm3 install -f values.yaml  --namespace=monitoring iotdb influxdata/influxdb2
echo $(kubectl get secret iotdb-influxdb2-auth -o "jsonpath={.data['admin-password']}" --namespace monitoring | base64 --decode)
