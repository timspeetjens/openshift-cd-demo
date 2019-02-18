#!/bin/bash


oc new-app --strategy=source --image-stream=jboss-webserver31-tomcat8-openshift:1.2 https://github.com/timspeetjens/os-sample-java-web.git --name sample
oc expose svc/sample
