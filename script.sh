#!/bin/bash
service=`cat service.txt`
name=`sed "s/\//-/g" service.txt`
for s in $service;
do
	name=`echo $s | sed 's/\//-/g'`
	kubectl get $s -n loki -oyaml > $name.yaml
done
