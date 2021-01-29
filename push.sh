#!/bin/bash

aws s3 cp bucket/index.html s3://"$BUCKET_NAME"
aws s3 cp bucket/data.geojson s3://"$BUCKET_NAME"
