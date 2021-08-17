#!/bin/bash
FILE=version.json

OLD_VERSION=`cat ${FILE} | jq -r .version`
PATCH=${OLD_VERSION##*.}
NEW_VERSION="${OLD_VERSION%.*}.$(( ${PATCH} + 1 ))"

echo 'old version: '${OLD_VERSION}
echo 'new version: '${NEW_VERSION}

echo 'Ready? [n/Y or Enter]:'
read input
if [ "${input}" = 'no' ] || [ "${input}" = 'NO' ] || [ "${input}" = 'n' ]; then
  exit 0
elif [ "${input}" = 'yes' ] || [ "${input}" = 'YES' ] || [ "${input}" = 'y' ]; then
  sed -i "s/${OLD_VERSION}/${NEW_VERSION}/g" ${FILE}
else
  sed -i "s/${OLD_VERSION}/${NEW_VERSION}/g" ${FILE}
fi

CURRENT_VERSION=`cat ${FILE} | jq -r .version`
echo 'current version: '${CURRENT_VERSION}

