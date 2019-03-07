#!/bin/bash
docker pull monicamedusa/apiserver:v1.13.4
docker pull monicamedusa/controller:v1.13.4
docker pull monicamedusa/scheduler:v1.13.4
docker pull monicamedusa/proxy:v1.13.4
docker pull monicamedusa/pause:3.1
docker pull monicamedusa/etcd:3.2.24
docker pull monicamedusa/coredns:1.2.6

docker tag monicamedusa/apiserver:v1.13.4 k8s.gcr.io/kube-apiserver:v1.13.4
docker tag monicamedusa/controller:v1.13.4 k8s.gcr.io/kube-controller-manager:v1.13.4
docker tag monicamedusa/scheduler:v1.13.4 k8s.gcr.io/kube-scheduler:v1.13.4
docker tag monicamedusa/proxy:v1.13.4 k8s.gcr.io/kube-proxy:v1.13.4
docker tag monicamedusa/pause:3.1 k8s.gcr.io/pause:3.1
docker tag monicamedusa/etcd:3.2.24 k8s.gcr.io/etcd:3.2.24
docker tag monicamedusa/coredns:1.2.6 k8s.gcr.io/coredns:1.2.6

docker rmi monicamedusa/apiserver:v1.13.4
docker rmi monicamedusa/controller:v1.13.4
docker rmi monicamedusa/scheduler:v1.13.4
docker rmi monicamedusa/proxy:v1.13.4
docker rmi monicamedusa/pause:3.1
docker rmi monicamedusa/etcd:3.2.24
docker rmi monicamedusa/coredns:1.2.6
