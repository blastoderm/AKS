#!/bin/bash
if [ -z "$1" ]; then
    echo "/home/adminuser/onny/onny-docker-compose.yml"
    exit 0
fi
if [ -z "$2" ]; then
    echo "/home/adminuser/onny/instance.env"
    exit 0
fi
sudo docker-compose -f $1 --env-file $2 down
adminuser@vm-app-eutst-kirg:~/onny$ cat saveLoadImages.sh 
#!/bin/sh -xv
targetVersion=
#save or load
operation=save
#any name
fileName=assaiArchieve.tar.gz
if [ ! -z "$1" ]; then
  operation=$1
fi
if [ ! -z "$2" ]; then
  targetVersion=$2
  targetVersion="${targetVersion}"
fi
if [ ! -z "$3" ]; then
  fileName=$3
fi
echo "params are operation=${operation} targetversion=${targetVersion} fileName=${fileName}"
if [ "$operation" = "save" ]; then
    echo "operation is save"
    sudo docker save acrassaisharedprd.azurecr.io/assaiweb:$targetVersion acrassaisharedprd.azurecr.io/assaiadmin:$targetVersion acrassaisharedprd.azurecr.io/
assaiepss:$targetVersion acrassaisharedprd.azurecr.io/assaimobile:$targetVersion acrassaisharedprd.azurecr.io/assaijobs:$targetVersion acrassaisharedprd.azure
cr.io/restgateway:$targetVersion acrassaisharedprd.azurecr.io/assaiocr:$targetVersion acrassaisharedprd.azurecr.io/assaidrawing:$targetVersion acrassaisharedp
rd.azurecr.io/assairedis:1.0.0.0 acrassaisharedprd.azurecr.io/assaimail:$targetVersion acrassaisharedprd.azurecr.io/assaibirtreports:$targetVersion acrassaish
aredprd.azurecr.io/assaisp:$targetVersion acrassaisharedprd.azurecr.io/assaiidp:$targetVersion acrassaisharedprd.azurecr.io/assainginx:1.0.0.0 acrassaisharedp
rd.azurecr.io/assaifilecrawler:$targetVersion acrassaisharedprd.azurecr.io/assaisigner:$targetVersion acrassaisharedprd.azurecr.io/databasepatch:$targetVersio
n | gzip > $fileName
else
    if [ "$operation" = "load" ]; then
        echo "operation is save"
        sudo docker load < $fileName
    else
        echo "Invalid operation ${operation}; choose save or load."
    fi