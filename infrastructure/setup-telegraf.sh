#!/bin/bash
helm3 repo add influxdata https://helm.influxdata.com/
helm3 upgrade -f ./telegraf/values.yaml --install iottelegraf influxdata/telegraf -n monitoring
