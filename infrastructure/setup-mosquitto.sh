#!/bin/bash
kubectl apply -f ./mosquitto/mosquitto-deployment.yaml
kubectl apply -f ./mosquitto/mosquitto-service.yaml
