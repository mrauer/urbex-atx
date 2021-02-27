#!/bin/bash

for entry in "bucket"/*
do
  if [ $entry != "bucket/run.sh" ];
  then
    aws s3 cp "$entry" s3://"$BUCKET_NAME"
  fi
done
