#!/bin/bash

if [[ $2 == *.csproj ]]; then
    echo "Execute Puma Scan for target..."

    dotnet restore $2

    mkdir -p ./build-logs

    dotnet build "/flp:logfile=./build-logs/build.log;verbosity=normal" "/flp1:logfile=./build-logs/errors.log;errorsonly" "/flp2:logfile=./build-logs/warnings.log;warningsonly" $2
fi