#!/bin/bash

get_ynh_version_number()
{
    trivabble_ynh_git_tag=$(git tag -l --sort=-creatordate | head -n 1)
    if [[ $trivabble_ynh_git_tag =~ .*\.ynh([1-9]*) ]]
    then
	ynh_number=$(( ${BASH_REMATCH[1]} + 1 ))
	echo $ynh_number
    else
	echo "0"
    fi
}

if [[ ! -d ../conf ]]
then
    echo "[ERROR] $0 expected to be within build directory" >&2
    exit 1
fi

commonconf=../scripts/_common.sh

if [[ ! -f $commonconf ]]
then
    echo "[ERROR] expect to find $commonconf where trivabble_git_url znd trivabble_git_tag are defined" >&2
    exit 1
fi

. $commonconf

echo $trivabble_git_url
echo $trivabble_git_tag

source_tgz=$trivabble_git_tag.tar.gz

SOURCE_URL=${trivabble_git_url/.git/}/archive/$source_tgz

if [[ ! -d cache ]]
then
    mkdir cache
fi
pushd cache
if [[ ! -f $source_tgz ]]
then
    if wget $SOURCE_URL
    then
	echo "[INFO] $source_tgz retrieved" >&2
    else
	echo "[FATAL] can't retrieve $source_tgz frm $SOURCE_URL" >&2
	exit 1
    fi   
fi
popd

SOURCE_SUM_PRG=sha256sum
SOURCE_SUM=$($SOURCE_SUM_PRG cache/$source_tgz | awk '{ print $1 }')
SOURCE_FORMAT=tar.gz
SOURCE_IN_SUBDIR=true
SOURCE_FILENAME=

confappsrc=../conf/app.src
cat <<EOF >$confappsrc
SOURCE_URL=$SOURCE_URL
SOURCE_SUM=$SOURCE_SUM
SOURCE_SUM_PRG=$SOURCE_SUM_PRG
SOURCE_FORMAT=$SOURCE_FORMAT
SOURCE_IN_SUBDIR=$SOURCE_IN_SUBDIR
SOURCE_FILENAME=
EOF

echo "[INFO] generated $confappsrc"

manifest=../manifest.json

if [[ -f $manifest ]]
then
    version=1.$trivabble_git_tag.ynh$(get_ynh_version_number)
    trivabble_ynh_git_tag=$version
    sed -i "s/\"version\": \".*\"/\"version\": \"$version\"/" $manifest
    echo "Once commit is done, please tag it with :"
    echo "git tag $trivabble_ynh_git_tag"
else
    echo "[WARNING] Missing $manifest file. Can't update it" >&2
fi
