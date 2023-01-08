#!/bin/bash
microk8s.kubectl create secret generic grafana-creds -n monitoring \
  --from-literal=GF_SECURITY_ADMIN_USER=admin \
  --from-literal=GF_SECURITY_ADMIN_PASSWORD=admin1234
kubectl apply -f ./grafana/grafana.yaml
