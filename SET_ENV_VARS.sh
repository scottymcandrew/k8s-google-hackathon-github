#!/bin/bash
export TF_VAR_my_gcp_project=$(gcloud config get-value core/project 2> /dev/null)

gcloud config set compute/region europe-west1
export TF_VAR_region=europe-west1

gcloud config set compute/zone europe-west1-b
export TF_VAR_zone=$(gcloud config get-value compute/zone 2> /dev/null)
export CLUSTER=$(gcloud config get-value container/cluster 2> /dev/null)
export TF_VAR_gce_ssh_pub_key='ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDK5+TUpQ+aGUNHoDFEI9txI1AfkqjJGqMCVo17cOcsTtLHmmlmLYRF5pRhua4lJlz2DfYNyXHlxxANegdKKO45spJotGlXNz6AfZ2NsVNY9DxlPM8V1XZqNMRDBKLzVa790WbZXcThOw6gQM+NAy67hDdOyhfZOpnmuqHRrJoRpVFDJ3y7mMDIOfSSfGmKTfseo2STDBHRsNNMIiW8/kLiuCC24haFoxSvSdRkhHezGJJiXNVJ+VPPmvfsz/QKeL77cShfaCQyBmbyv3rTXiov962Dd7JSq8J60xJPP+/Q3KJ1O/WZIyYyw45mh3eLxFpnyU1EgWYvVHN4bASs9Ysr rsakey@hack-alto-thon-gcp.com'

export TF_VAR_gce_ssh_user='rsakey@hack-alto-thon-gcp.com'

export TF_VAR_user_password='Pal0Alt0@123'

export TF_VAR_project_id=$(gcloud config get-value core/project 2> /dev/null)
