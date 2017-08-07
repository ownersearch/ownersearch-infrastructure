#!/bin/bash

echo "Enter the name of the cluster to create:"
read clusterName

gcloud --quiet container clusters \
  create $clusterName \
  --zone australia-southeast1-a \
  --machine-type n1-standard-1 \
  --scopes https://www.googleapis.com/auth/cloud_debugger,https://www.googleapis.com/auth/pubsub,https://www.googleapis.com/auth/trace.append,https://www.googleapis.com/auth/devstorage.read_write
