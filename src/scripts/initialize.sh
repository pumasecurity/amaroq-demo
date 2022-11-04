#!/bin/bash

${0%/*}/pumascan/initialize.sh $1 $2 
${0%/*}/semgrep/initialize.sh
${0%/*}/snyk/initialize.sh
