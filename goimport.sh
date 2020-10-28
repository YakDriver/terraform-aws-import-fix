#!/bin/bash

for filename in "${TF_AWS_PATH}/*.go"; do
  echo "${filename}..."
  goimports "${filename}" > "${filename}.2"
  mv "${filename}.2" "${filename}"
done
