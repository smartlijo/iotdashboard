#!/bin/bash
helm repo add influxdata https://helm.influxdata.com/
helm upgrade -f ./telegraf/values.yaml --install iottelegraf influxdata/telegraf -n monitoring
