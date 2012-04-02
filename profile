[ -d "/usr/local/texlive/2011/bin/x86_64-linux" ] &&
    PATH=$PATH:/usr/local/texlive/2011/bin/x86_64-linux
[ -d "$HOME/Dropbox/t/local/bin/" ] &&
    PATH=$PATH:$HOME/Dropbox/t/local/bin
[ -d "$HOME/.cabal/bin/" ] &&
    PATH=$PATH:$HOME/.cabal/bin

which vi 2>1 >/dev/null && EDITOR="vi"
which vim 2>1 >/dev/null && EDITOR="vim"

export PATH EDITOR
echo $PATH
