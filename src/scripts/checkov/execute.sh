#!/bin/bash

echo "Execute checkov for target..."

checkov -d $1 -o sarif --output-file-path ./checkov -s