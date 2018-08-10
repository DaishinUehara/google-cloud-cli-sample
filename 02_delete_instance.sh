#!/bin/bash -e

set -o pipefail

error(){
  echo "Error"
  exit 1
}

instances_lst=$(gcloud compute instances list | tail -n +2 | cut -f1)

for instance in $instances_lst
do
  echo $instance
done

exit 0
