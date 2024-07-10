#!/bin/bash -xv
if [ -z "$1" ]; then
echo ${IMAGE_VERSION}
exit 0
fi
targetVersion=$1

docker login acrassaisharedprd.azurecr.io -u acrassaisharedprd -p A/qCwRQhfz9mp96fp/kwbG9sjunQguLsA0ou4hhOnu+ACRCBnPs/
docker pull acrassaisharedprd.azurecr.io/assaibase:1.0.0.1
docker pull acrassaisharedprd.azurecr.io/assaiweb:$targetVersion
docker pull acrassaisharedprd.azurecr.io/assaiadmin:$targetVersion
docker pull acrassaisharedprd.azurecr.io/assaiepss:$targetVersion
docker pull acrassaisharedprd.azurecr.io/assaimobile:$targetVersion
docker pull acrassaisharedprd.azurecr.io/assaijobs:$targetVersion
docker pull acrassaisharedprd.azurecr.io/restgateway:$targetVersion
docker pull acrassaisharedprd.azurecr.io/assaiocr:$targetVersion
docker pull acrassaisharedprd.azurecr.io/assaidrawing:$targetVersion
docker pull acrassaisharedprd.azurecr.io/assairedis:1.0.0.0
docker pull acrassaisharedprd.azurecr.io/assaimail:$targetVersion
docker pull acrassaisharedprd.azurecr.io/assaibirtreports:$targetVersion
docker pull acrassaisharedprd.azurecr.io/assaisp:$targetVersion
docker pull acrassaisharedprd.azurecr.io/assaiidp:$targetVersion
docker pull acrassaisharedprd.azurecr.io/assainginx:1.0.0.0
docker pull acrassaisharedprd.azurecr.io/assaifilecrawler:$targetVersion
docker pull acrassaisharedprd.azurecr.io/assaisigner:$targetVersion
docker pull acrassaisharedprd.azurecr.io/databasepatch:$targetVersion
if [[ ! "$targetVersion" = 10.2.* ]]; then
docker pull acrassaisharedprd.azurecr.io/nassaiweb:$targetVersion
docker pull acrassaisharedprd.azurecr.io/assairedline:$targetVersion
fi