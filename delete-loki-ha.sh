#!/bin/bash


kubectl delete -f deployment/deployment.apps-consul.yaml -n loki

kubectl delete -f service/ -n loki
kubectl delete -f statefulset/ -n loki

kubectl delete -f deployment/deployment.apps-querier.yaml -n loki

kubectl delete -f deployment/deployment.apps-query-frontend.yaml -n loki
kubectl delete -f deployment/deployment.apps-ingester.yaml -n loki

kubectl delete -f deployment/deployment.apps-distributor.yaml -n loki

kubectl delete -f deployment/deployment.apps-table-manager.yaml -n loki
kubectl delete -f deployment/deployment.apps-gateway.yaml -n loki

kubectl delete -f daemonset/ -n loki
kubectl delete -f poddisruptionbudget.policy/ -f role/ -f serviceaccount/ -f secret-gateway/ -f configmap/ -f clusterrole/ -n loki

