#!/bin/bash
microk8s.kubectl create secret generic grafana-creds -n monitoring \
  --from-literal=GF_SECURITY_ADMIN_USER=admin \
  --from-literal=GF_SECURITY_ADMIN_PASSWORD=admin1234

microk8s.kubectl apply -f grafana-deployment.yaml

microk8s.kubectl expose deployment grafana -n monitoring --type=LoadBalancer --port=3000 --target-port=3000 --protocol=TCP

