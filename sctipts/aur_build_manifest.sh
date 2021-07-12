#/bin/bash
CURRENTPATH=$(pwd)
cd $AUR_DIR
mv manifest manifest.old
touch manifest
for dir in */; do
  cd $dir
  echo "adding $dir origin to manifest"
  git remote get-url origin >> $AUR_DIR/manifest
  cd ..
done

cd $CURRENTPATH