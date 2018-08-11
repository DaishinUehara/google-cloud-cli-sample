#!/bin/bash

set -Ceu
set -o pipefail

error(){
  echo "Command Error" >&2
  exit 1
}

instances=$(gcloud compute instances list | tail -n +2 | sed -e 's/\ \ */\t/g' | cut -f 1 | tr '\n' ' ')
status1=$?
if [ $status1 -ne 0 ]; then
  echo "Get Instances Error!!" >&2
  eixt $status1
fi

gcloud compute instances delete ${instances}
status1=$?
if [ $status1 -ne 0 ]; then
  echo "Delete Instances Error!!" >&2
  eixt $status1
fi

exit 0
