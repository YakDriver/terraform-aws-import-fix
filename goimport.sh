#!/bin/zsh

for filename in aws/*.go(.); do
  echo "${filename}..."
  goimports "${filename}" > "${filename}.2"
  mv "${filename}.2" "${filename}"
done
