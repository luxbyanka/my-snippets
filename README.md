# Ramdom notes
Random stuff that I've made in the past... that when I need to use again, I never remember.

## Shell

Move all the files with a certain ext from one dir to another dir. All the files will lose their og dir structure and will be 'flattened' at the destiny dir.

> **IMPORTANT** The dir that is used as destiny MUST exist before executing this!!!

```shell
#Copy *.mp4 files from one dir to another.
find "~/VirtualBox VMs/Shared" -type f -name "*.mp4" -exec mv -v {} "/Volumes/Elements/backup" \;

#Delete .DS_Store, *.nfo, *.exe and *.txt files.
find "~/VirtualBox VMs/Shared" -type f  \( -name ".DS_Store" -o -name "*.nfo" -o -name "*.exe" -o -name "*.txt" \) -exec rm -v {} \;

#Delete empty dirs.
find "~/VirtualBox VMs/Shared" -type d -empty -delete

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
lsof | grep -i "a-certain-name"
```


### VLC

```shell
vlc Mary-RedQueen-YE053-FullHD.mp4 --no-audio --zoom=0.3
```

## New Mac config for dev env


### Using the dotnet core binaries

#### In macOS Catalina:

> To run `dotnet` from the Terminal and avoid getting the error message **"dotnet" can't be opened because Apple cannot check it for malicious software**, you can run `sudo spctl --master-disable`. This will disable **System Policy Control**. Now you can choose a new option at **System preferences** > **Security & Privacy** > **General** > **Allow apps downloaded from:** > **Anywhere**. This will let all unsigned programs to run. To enable **System Policy Control** again, run: `sudo spctl --master-enable`. To check **System Policy Control** current status, run: `sudo spctl --status`.

### Export stuff for .net Core, Java and NPM

To force *npm* to install all its crap in a user defined dir:

Go to `~`, open `.zshrc` or `.zprofile` file using a text editor and add the following lines:

```shell
npm config set prefix '~/.npm-global'
```

And then add *npm*'s *bin* dir to the *PATH*:

```shell
export PATH=$PATH:~/.npm-global/bin
```

To install new stuff via *npm*, use: `npm install -g electron@latest`. The `-g` makes *npm* install the dependencies in: `~/.npm-global`.

Additional *exports*:

```shell
export PATH=$PATH:/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin
export PATH=$PATH:~/Dev/Env/dotnet-sdk-5.0.100-osx-x64
export PATH=$PATH:~/Dev/Env/openjdk-15.0.1.jdk/Contents/Home/bin
```

Set defined vars:

```shell
export DOTNET_ROOT= #point to the directory that contains the dotnet app.
export JAVA_HOME= #point to the directory .../Contents/Home of the JDK that is being used.
```

Set alias:

```shell
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC' #This lets you call 'vlc Tenet.2020.IMAX.1080p.BluRay.x264.DTS-FGT.mkv --no-audio' from the command line.
```

### VS

*Visual Studio* requires a *symlink* to be created. That'll let VS run/debug projects. This needs to be performed manually only when VS is installed without *.net Core*. To create the *symlink*:

```shell
cd /usr/local/bin
ln -sfn /Users/CArantesK/Dev/Env/dotnet-sdk-5.0.100-osx-x64/dotnet dotnet
```

```shell
dotnet dev-certs https
dotnet dev-certs https --trust
```

> If the message `"Unable to attach to CoreCLR. Unknown Error: 0x80131c3c"`shows up and you are in macOS Big Sur, check: [Debugging not working with XCode 12 selected #42311](https://github.com/dotnet/runtime/issues/42311).

### Git

```shell
git config user.email "cro-marmot@outlook.com"
git config user.name "Celeste Arantes"
```

### ffmpeg
```shell
./ffmpeg -i tenet.mkv -map 0:s:0 subs-en.srt #Extract subs on track 1
./ffmpeg -i tenet.mkv -map 0:s:1 subs-es.srt #Extract subs on track 2
```

# Visual Studio Code

On **macOS**, press _shift_ + _command_ + _p_ to open the **Command Palette**.

Type 'keyboard' and choose **Preferences: Open Keyboard Shortcuts (JSON)**.

```json
// To move between open tabs respecting the order in which they appear.
[
  {
    "key": "shift+alt+right",
    "command": "workbench.action.nextEditor",
    "when": "editorTextFocus"
  },
  {
    "key": "shift+alt+left",
    "command": "workbench.action.previousEditor",
    "when": "editorTextFocus"
  }
]
```

- To open a file by typing it´s name, press _control_ + _r_.

- To format current document, press _shift_ + _option_ + _f_.

# macOS

- To open a new Finder window, press _command_ + _n_. Works only if you are in Finder.

- To view system/invisible files or directories, press _shift_ + _command_ + _._.

- To go to a specific directory, press _shift_ + _command_ + _g_.

- To switch desktop/space, press _control_ + [_right arrow_].

# Random links

* [Markdown-Cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)