#!/bin/bash

oc login -u developer

oc new-project myapp --display-name="My Application"

oc new-app --strategy=source --image-stream=jboss-webserver31-tomcat8-openshift:1.2 https://github.com/timspeetjens/os-sample-java-web.git --name sample
oc expose svc/sample
