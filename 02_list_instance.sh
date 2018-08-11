#!/bin/bash

set -Ceu
set -o pipefail

error(){
  echo "Error" >&2
  exit 1
}

gcloud compute instances list | tail -n +2 | sed -e 's/\ \ */\t/g' | cut -f 1
status1=$?
if [ $status1 -ne 0 ]; then
  echo "Get Instances Error!!" >&2
  eixt $status1
fi

exit 0
