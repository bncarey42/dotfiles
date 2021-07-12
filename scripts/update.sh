#/bin/bash
CURRENTPATH=$(pwd)
echo "changing directory to $AUR_DIR"
cd "$AUR_DIR"
while read pack; do
  #strip git location for app name
  tmpApp=${pack:26}
  APP=${tmpApp%.*}
  echo "building $APP"
  cd "$AUR_DIR/$APP"
  git pull
  echo y | makepkg -sci --needed
  cd ..
done < $AUR_DIR/manifest
cd $CURRENTPATH
sudo pacman -Syu
