#!/usr/bin/bash
# This file takes a list of packages, verifies that they are all available and
# installs them. If the packages are not available then a list of packages that
# are not available is provided.

set -x

CheckRepoForPackage ()
{
FILENAME="${1}"
for PACKAGE in $(cut -d "-" -f 1 "${FILENAME}"); do
  echo "$PACKAGE"
  if [ if(yum install -y -q "$PACKAGE") ]
    then
      echo "installed"
  fi
done
}
CheckRepoForPackage "${1}"
