#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

#display posh git
export PROMPT_COMMAND='__posh_git_ps1 "\\[\[\e[0;32m\]\u@\h \[\e[0;33m\]\w" " \[\e[1;34m\]\$\[\e[0m\] ";'$PROMPT_COMMAND

export PATH=/usr/lib/ccache/bin/:"$PATH"
export MAKEFLAG='-j9 -l8'

alias ..='cd ..;' # can then do .. .. .. to move up multiple directories.
alias ls='ls -lshGg --hyperlink --color=always'
alias la='ls -a'
alias x="clear"
alias s="sudo "

#Arch
#install a package
alias install='sudo pacman -S'
#check for system and package updates
alias update='sudo pacman -Syu'
#uninstall specified package
alias uninstall='sudo pacman -R'
#suspend system
alias sleep="systemctl suspend"
#update grub
alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg; sudo grub-mkconfig'

#reboot to windows
alias winboot='sudo grub-reboot 2 && shutdown -r now'


#git
alias gitlog='git log --graph --decorate --pretty=oneline --abbrev-commit'
#needed for git completion
source ~/.local/share/bin/git-flow-completion/git-flow-completion.bash
#needed for posh-git-sh
source ~/.local/share/bin/posh-git-sh/git-prompt.sh

function aur() {
	CURRENTPATH=$(pwd)
	DOWNLOADDIR="Downloads/AUR"
	GIT=$1
	echo "changing directory to ~/$DOWNLOADDIR"
	cd ~/$DOWNLOADDIR

	echo "cloneing $GIT"
	#clone source to APPDIR
	git clone $GIT

	#strip git location for app name
	tmpApp=${GIT:26}
	APP=${tmpApp%.*}

	echo "building and installing $APP"
	#enter cloned folder
	cd "$APP/"
	makepkg -csi
	cd $CURRENTPATH
}
export -f aur
