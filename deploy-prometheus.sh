#!/bin/bash
kubectl create ns monitoring
sleep 5
kubectl apply -f prometheus/prometheus-cluster-role.yml
sleep 5
kubectl apply -f prometheus/prometheus-config-map.yml
sleep 5
kubectl apply -f prometheus/prometheus-pv.yml
sleep 5
kubectl apply -f prometheus/prometheus-pvc.yml
sleep 5
kubectl apply -f prometheus/prometheus-deployment.yml
sleep 5
kubectl apply -f prometheus/prometheus-service.yml
sleep 5 
# kubectl -n monitoring get all -l app=prometheus-server 
sleep 5 
