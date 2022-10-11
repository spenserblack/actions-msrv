#!/bin/sh
MSRV_RESULT=$(cargo msrv --path $1 --output-format json | tail -1)
MSRV=$(echo $MSRV_RESULT | jq -r '.msrv')
echo "msrv=$MSRV" >> $GITHUB_OUTPUT

if [ "$2" = "true" ] || [ "$2" = "yes" ]; then
	cargo msrv set "$MSRV";
fi
