# Ramdom notes
Random stuff that I've made in the past... that when I need to use again, I never remember.

## Shell

Move all the files with a certain ext from one dir to another dir. All the files will lose their og dir structure and will be 'flattened' at the destiny dir.

```shell
find "/Users/CArantesK/development/shell-stuff" -type f -name "*.sh" -exec mv -v {} "/Volumes/Seagate Backup Plus Drive/development/shell-stuff" \;
```

### Useful when the Trash in macOS starts doing weird sh*t with deleted files

Locate files that are locked and then change their flags. First, do a `cd` and position yourself in the dir that you wish to check.

```shell
cd "/Volumes/Seagate Backup Plus Drive/.Trashes/501/something/something"
find . -flags uchg
find . -flags uchg -exec chflags nouchg {} \;
```

Locate files that are currently in use that contain a certain name.

```shell
lsof | grep -i "something"
```

## New Mac config for dev env

### Export stuff for .net Core, Java and NPM

To force NPM to install all its crap in a user defined dir:

Go to `~`, open `.zshrc` or `.zprofile` and add the following: 

```shell
npm config set prefix '~/.npm-global'
```

And then add *npm*'s *bin* dir to the *PATH*:

```shell
export PATH=$PATH:/Users/CArantesK/.npm-global/bin
```

To install new stuff via *npm*, use: `npm install -g electron@latest`. The `-g` makes *npm* install the dependencies in: `~/.npm-global`.

Additional *exports*:

```shell
export PATH=$PATH:/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin
export PATH=$PATH:/Users/CArantesK/Dev/Env/dotnet-sdk-5.0.100-osx-x64
export PATH=$PATH:/Users/CArantesK/Dev/Env/openjdk-15.0.1.jdk/Contents/Home/bin
```

Set defined vars:

```shell
export DOTNET_ROOT= #point to the directory that contains the dotnet app.
export JAVA_HOME= #point to the directory .../Contents/Home of the JDK that is being used.
```

### VS

*Visual Studio* requires a *symlink* to be created. That'll let VS run/debug projects. This needs to be performed manually only when VS is installed without *.net Core*. To create the *symlink*:

```shell
cd /usr/local/bin
ln -sfn /Users/CArantesK/Dev/Env/dotnet-sdk-5.0.100-osx-x64/dotnet dotnet
```

# Random links
* [Markdown-Cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)