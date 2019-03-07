#!/bin/bash
docker pull monicamedusa/proxy:v1.13.4
docker pull monicamedusa/pause:3.1

docker tag monicamedusa/proxy:v1.13.4 k8s.gcr.io/kube-proxy-amd64:v1.13.4
docker tag monicamedusa/pause:3.1 k8s.gcr.io/pause:3.1

docker rmi monicamedusa/proxy:v1.13.4
docker rmi monicamedusa/pause:3.1
