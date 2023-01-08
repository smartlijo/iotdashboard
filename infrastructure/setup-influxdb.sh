#!/bin/bash
helm3 repo add influxdata https://helm.influxdata.com/
helm3 install -f ./influxdb/values.yaml  --namespace=monitoring iotdb influxdata/influxdb2
echo $(kubectl get secret iotdb-influxdb2-auth -o "jsonpath={.data['admin-password']}" --namespace monitoring | base64 --decode)
