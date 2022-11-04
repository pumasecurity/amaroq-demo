#!/bin/bash

${0%/*}/pumascan/execute.sh $1 $2 $3
${0%/*}/semgrep/execute.sh $1 $2 $3
${0%/*}/snyk/execute.sh $1 $2 $3