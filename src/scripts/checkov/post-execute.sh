#!/bin/bash

echo "Performing any post checkov actions..."

ls ./checkov

if test -f checkov/results*.sarif; then
    echo "Renaming checkov file to $3/checkov.sarif"
    mv checkov/results*.sarif $3/checkov.sarif
fi