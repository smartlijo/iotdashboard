#!/bin/bash
microk8s.kubectl apply -f mosquitto-deployment.yaml
microk8s.kubectl apply -f mosquitto-service.yaml
