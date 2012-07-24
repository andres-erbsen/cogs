[ -d "/usr/local/texlive/2011/bin/x86_64-linux" ] &&
    PATH=$PATH:/usr/local/texlive/2011/bin/x86_64-linux
[ -d "$HOME/Dropbox/t/local/bin/" ] &&
    PATH=$PATH:$HOME/Dropbox/t/local/bin
[ -d "$HOME/.cabal/bin/" ] &&
    PATH=$PATH:$HOME/.cabal/bin
[ -d "$HOME/.gem/ruby/1.9.1/bin" ] &&
    PATH=$PATH:$HOME/.gem/ruby/1.9.1/bin

export PATH
