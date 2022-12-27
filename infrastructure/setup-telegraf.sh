#!/bin/bash
microk8s.kubectl apply -f telegraf-secrets.yaml
microk8s.kubectl apply -f telegraf-config.yaml
microk8s.kubectl apply -f telegraf-deployment.yaml
microk8s.kubectl expose deployment telegraf -n monitoring --port=8125 --target-port=8125 --protocol=UDP --type=NodePort

