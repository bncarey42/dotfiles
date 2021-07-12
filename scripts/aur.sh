#/bin/bash

# Installs a package from the link in the AUR entry
# updates manifest file stored at $AUR_DIR/manifest for update checking

CURRENTPATH=$(pwd)
GIT=$1
echo "changing directory to $AUR_DIR"
cd $AUR_DIR

echo "cloneing $GIT"
#clone source to APPDIR
git clone $GIT
#strip git location for app name
tmpApp=${GIT:26}
APP=${tmpApp%.*}

echo "building and installing $APP"
#enter cloned folder
cd "$APP/"
echo y | makepkg -csi
rm *.tar.*

echo "$GIT" >> $AUR_DIR/manifest

cd $CURRENTPATH

