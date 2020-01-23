#!/bin/bash

kubectl apply -f namespace.yml

kubectl create -f postgres/configmap.yaml
kubectl create -f postgres/operator-service-account-rbac.yaml
kubectl create -f postgres/postgres-operator.yaml

kubectl create -f postgres/postgres.yaml -n owncloud

kubectl create -n owncloud -f owncloud/

kubectl create namespace cert-manager

kubectl apply --validate=false -f https://github.com/jetstack/cert-manager/releases/download/v0.12.0/cert-manager.yaml


kubectl apply -f le/le-prod.yaml

kubectl apply -f le/certificate.yaml

kubectl -n owncloud describe certificate owncloud-cert