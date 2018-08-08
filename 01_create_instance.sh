#!/bin/bash

pipestatus() {
  local _status="${PIPESTATUS[*]-}${pipestatus[*]-}"
  [[ ${_status//0 /} == 0 ]]
  return $?
}

gce_cnt=$(gcloud compute instances list | wc -l )
local _status1=pipestatus
if [ $_status1 -eq 1 ]; then
  eixt 1
fi


if [ $gce_cnt -eq 0 ]; then
  gcloud compute instances create \
    tutorial01
      --machine-type f1-micro
      --image-family centos-7
    ret=$?
fi


exit $?
