#!/bin/bash

set -e

oc login -u developer

# Create Projects
oc new-project dev --display-name="SampleJava - Dev"
oc new-project stage --display-name="SampleJava - Stage"
oc new-project cicd --display-name="CI/CD"

# Grant Jenkins Access to Projects
oc policy add-role-to-group edit system:serviceaccounts:cicd -n dev
oc policy add-role-to-group edit system:serviceaccounts:cicd -n stage

oc new-app -n cicd -f cicd-template.yaml
