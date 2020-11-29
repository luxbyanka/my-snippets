# my-snippets
Random stuff that I've made in the past... that when I need to use again, I never remember.

## Shell

Move all the files with a certain ext from one dir to another dir. All the files will lose their og dir structure and will be 'flattened' at the destiny dir.

`find "/Users/carantesk/development/shell-stuff" -type f -name "*.sh" -exec mv -v {} "/Volumes/Seagate Backup Plus Drive/development/shell-stuff" \;`
