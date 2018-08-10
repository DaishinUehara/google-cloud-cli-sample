#!/bin/bash -e

set -o pipefail

error(){
  echo "Error"
  exit 1
}
instances_lst=$(gcloud compute instances list)

for instance in $instances_list
do
  echo "abc"
#  echo $instance
done

exit 0
