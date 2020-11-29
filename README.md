# my-snippets
Random stuff that I've made in the past... that when I need to use again, I never remember.

## Shell

Move all the files with a certain ext from one dir to another dir. All the files will lose their og dir structure and will be 'flattened' at the destiny dir.

`find "/Users/carantesk/development/shell-stuff" -type f -name "*.sh" -exec mv -v {} "/Volumes/Seagate Backup Plus Drive/development/shell-stuff" \;`

Locate files that are locked. First, do a `cd` and position yourself in the dir that you wish to check.

`cd "/Volumes/Seagate Backup Plus Drive/.Trashes/501/something/something"`

`find . -flags uchg`

`find . -flags uchg -exec chflags nouchg {} \;`

Locate files that are currently in use that contain a certain name.

`lsof | grep -i "GlobalResources"`
