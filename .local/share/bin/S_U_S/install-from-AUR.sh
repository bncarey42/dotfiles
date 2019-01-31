#!/usr/bin/bash
###########################################################################
#									  #
#	      add this script to a directory on your PATH or add		  #
#		the working directory to your path. 			  #
#									  #
#									  #
#	The script takes an argument which is intended to be the  	  #
#                     Git Clone URL: from the AUR	   		  #
#									  #
###########################################################################

DOWNLOADDIR="Downloads/";
#get git location
GIT=$1
cd
echo "changing directory to ~/$DOWNLOADDIR"
cd $DOWNLOADDIR

echo "cloneing $GIT"
#clone source to APPDIR
git clone $GIT

#strip git location for app name and make directory to extract source to
tmpApp=${GIT:26}
APP=${tmpApp%.*}

echo "building and installing $APP"
#enter cloned folder
cd "$APP/"
makepkg -csi
