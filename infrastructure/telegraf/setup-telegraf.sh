#!/bin/bash

microk8s.helm3 repo add influxdata https://helm.influxdata.com/
microk8s.helm3 upgrade -f values.yaml --install iottelegraf influxdata/telegraf -n monitoring


