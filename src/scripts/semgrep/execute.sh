#!/bin/bash

echo "Execute Semgrep for target..."

docker run --rm -v "$1:/src" -v "$3:/scan-results" returntocorp/semgrep semgrep scan /src --config=auto --output /scan-results/semgrep.sarif --sarif