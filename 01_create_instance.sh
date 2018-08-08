#!/bin/bash -e

set -o pipefail

error(){
  echo "Error"
  exit 1
}

gce_cnt=$(gcloud compute instances list | wc -l )
status1=$?
if [ $status1 -ne 0 ]; then
  eixt $status1
fi

if [ $gce_cnt -eq 0 ]; then
  gcloud compute instances create \
    tutorial01 \
      --machine-type f1-micro \
      --image-family centos-7 \
      --zone us-west1-a
    ret=$?
fi


exit $?
