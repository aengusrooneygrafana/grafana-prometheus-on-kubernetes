#!/bin/bash
kubectl create ns monitoring
sleep 5
kubectl apply -f grafana/grafana-config-map-datasource.yml
sleep 5
kubectl apply -f grafana/grafana-config-map-ini.yml
sleep 5
kubectl apply -f grafana/grafana-config-map-dashboard-providers.yml
sleep 5
kubectl apply -f grafana/grafana-config-map-dashboards-k8s-cluster.yml
sleep 5
kubectl apply -f grafana/grafana-config-map-dashboards-node-exporter.yml
sleep 5
kubectl apply -f grafana/grafana-secret-tls.yml
sleep 5 
kubectl apply -f grafana/grafana-pv.yml
sleep 5 
kubectl apply -f grafana/grafana-pvc.yml
sleep 5 
kubectl apply -f grafana/grafana-deployment.yml
sleep 5 
kubectl apply -f grafana/grafana-service.yml
sleep 5 
# kubectl -n monitoring get all -l app=grafana
sleep 5 
# kubectl port-forward -n monitoring grafana-8584d6d8b8-nscnz 3000 3000
