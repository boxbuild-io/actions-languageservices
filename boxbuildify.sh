#!/bin/bash

# Find and process all package.json, package-lock.json and TypeScript files in the target directories
find ./package-lock.json ./expressions ./languageservice ./languageserver ./workflow-parser \( -name "package.json" -o -name "package-lock.json" -o -name "*.ts" \) -type f -exec sed -i 's/@actions\/\([a-z-]*\)/@boxbuild-io\/actions-\1/g' {} +
