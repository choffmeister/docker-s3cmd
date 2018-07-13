#!/bin/sh -e

s3cmd \
  --access_key=${ACCESS_KEY} \
  --secret_key=${SECRET_KEY} \
  --host=${HOST} \
  --host-bucket=${HOST_BUCKET} \
  --region=${REGION} \
  $@