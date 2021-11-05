#!/bin/sh
MSRV_RESULT=$(cargo msrv --bisect --path $1 --output-format json | tail -1)
MSRV=$(echo $MSRV_RESULT | jq -r '.msrv')
echo "::set-output name=msrv::$MSRV"
