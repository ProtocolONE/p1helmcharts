#!/bin/bash
set -e

pushd $(pwd)

cd ./p1admin
helm lint . && helm package .
cd ../p1api
helm lint . && helm package .
cd ../p1auth
helm lint . && helm package .

cd ..
helm repo index .

popd