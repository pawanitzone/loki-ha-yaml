#!/bin/bash

kubectl create -f poddisruptionbudget.policy/ -f role/ -f serviceaccount/ -f secret-gateway/ -f configmap/ -f clusterrole/ -n loki
kubectl create -f deployment/deployment.apps-consul.yaml -n loki
sleep 2m
kubectl create -f service/ -n loki
kubectl create -f statefulset/ -n loki
sleep 2m
kubectl create -f deployment/deployment.apps-querier.yaml -n loki
sleep 10
kubectl create -f deployment/deployment.apps-query-frontend.yaml -n loki
kubectl create -f deployment/deployment.apps-ingester.yaml -n loki
sleep 2m
kubectl create -f deployment/deployment.apps-distributor.yaml -n loki
sleep 1m
kubectl create -f deployment/deployment.apps-table-manager.yaml -n loki
kubectl create -f deployment/deployment.apps-gateway.yaml -n loki
sleep 1m
kubectl create -f daemonset/ -n loki
