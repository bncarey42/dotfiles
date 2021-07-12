# ./scripts

The scripts here are used for installing/updateing Arch User Repository(AUR) packages.

Are there existing solutions that are probably better for doing this? ... Most certainly

## Usage

All these scripts expect you to define a environmental variable `$AUR_DIR` that the cloned packages will resides in. When used in conjuction with eachother, `update.sh` relies on the manifest file created and appended to when using `aur.sh` which keeps a manifest of the installed clone links for future reference.

- `aur.sh` - installs packages based on the git link provided in AUR entry for a given package
- `update.sh` - loops through the entries in `$AUR_DIR/manifest` pulls any updates and installs them. For good mesure it then it runs `pacman -Syu`
- `aur_build_manifest.sh` - creates a new manifest based on the directories in `$AUR_DIR`
- `manifest.sh` - `cat`'s the manifest file (I'm lazy)

## Install

If for some reason you want to use these scripts I find the best way to implement them is:

1. Create the following directory structure:
```
~/
	.local/
		lib/
		bin/
```

2. Designate a directory to be `$AUR_DIR`. It should be only used as your AUR repository
3. Copy these scripts to `~/.local/lib` (make sure they remain executable I'm fairly sure that git maintains this... )
4. Create a link to each script in `~/.local/bin` with the name you'd like to use to call the script
5. Ensure that `~/.local/bin` is on your `$PATH`
