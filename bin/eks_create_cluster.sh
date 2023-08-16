#!/usr/bin/env bash

if kubectl config get-clusters | grep -q myCluster; then
    echo
    echo "Cluster 'myCluster' already exists!"
    echo
else
    echo
    echo "Creating cluster..."
    eksctl create cluster --config-file=./infrastructure/my_cluster.yml --timeout=60m --profile=eks
fi