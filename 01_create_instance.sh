#!/bin/bash

set -Ceu
set -o pipefail

error(){
  echo "Error" >&2
  exit 1
}

gce_cnt=$(gcloud compute instances list | wc -l )
status1=$?
if [ $status1 -ne 0 ]; then
  echo "Get Instances Error!!" >&2
  eixt $status1
fi

if [ $gce_cnt -eq 0 ]; then
  gcloud compute instances create \
    tutorial01 \
      --machine-type f1-micro \
      --image-project centos-cloud \
      --image-family centos-7 \
      --zone us-west1-b
    ret=$?
    if [ $ret -ne 0 ]; then
      echo "Create Instances Error!!" >&2
      eixt $ret
    fi
fi


exit 0
