# Add $HOME/.local/bin to PATH
# if the directory exists and if
# it's not already in the PATH
if [ -d "$HOME/.local/bin" ]; then
    if [ $(echo $PATH | grep -q "$HOME/\.local/bin") ]; then
        PATH="$HOME/.local/bin:$PATH"
    fi
fi

export BROWSER="firefox"
export EDITOR="vim"

# Set bat as manpager
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

#PS1='[\u@\h \W]\$ '

# Enable 256-color
export TERM="xterm-256color"

# Add XDG base directories
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"

# Make other programs XDG base directory compliant
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export GOPATH="$XDG_DATA_HOME/go"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0"
export HISTFILE="$XDG_CACHE_HOME/bash_history"
export ICEAUTHORITY="$XDG_CACHE_HOME/ICEauthority"
export INPUTRC="$XDG_CONFIG_HOME/shell/inputrc"
#export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME/java"
export LEIN_HOME="$XDG_DATA_HOME/lein"
export LESSHISTFILE="$XDG_CACHE_HOME/less/history"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export PYLINTHOME="$XDG_CACHE_HOME/pylint"
#export VIMINIT="if has("nvim") | so ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/init.vim | else | set nocp | so ${XDG_CONFIG_HOME:-$HOME/.config}/vim/vimrc | endif"
export VIMINIT='let $MYVIMRC = !has("nvim") ? "$XDG_CONFIG_HOME/vim/vimrc" : "$XDG_CONFIG_HOME/nvim/init.vim" | so $MYVIMRC'
#export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"
export WINEPREFIX="$XDG_DATA_HOME/wineprefixes/default"
#export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"

export QT_QPA_PLATFORMTHEME="qt5ct"
export QT_AUTO_SCREEN_SCALE_FACTOR=0

