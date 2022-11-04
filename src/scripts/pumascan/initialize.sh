#!/bin/bash
if [[ $2 == *.csproj ]]; then
    echo "Initializing Puma Scan for target..."
    dotnet add $2 package Puma.Security.Rules.2022 -v 2.4.23
fi
