#!/bin/bash

echo "Execute Snyk for target..."

snyk auth $SNYK_APIKEY
snyk test $1 --json-file-output=$3/snyk.json || true