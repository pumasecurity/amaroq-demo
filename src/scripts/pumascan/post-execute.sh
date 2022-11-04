#!/bin/bash

echo "Performing any post Puma Scan actions..."

if test -f ./build-logs/warnings.log; then
    echo "dotnet ~/.nuget/packages/puma.security.rules.2022/2.4.23/tools/parser/Puma.Security.Parser.dll -w $3 -f ./build-logs/warnings.log -o puma.sarif -r Sarif"
    dotnet ~/.nuget/packages/puma.security.rules.2022/2.4.23/tools/parser/Puma.Security.Parser.dll -w $3 -f ./build-logs/warnings.log -o puma.sarif -r Sarif
fi