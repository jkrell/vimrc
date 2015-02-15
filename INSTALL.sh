
COPY_VIMRC=0
COPY_VIM=0

VIMRC_SOURCE=vimrc
VIMRC_DEST=$HOME/.vimrc
VIM_SOURCE=vim
VIM_DEST=$HOME/.vim

# Confirm replace action if .vimrc file already exists
if [ -a $VIMRC_DEST ]; then
    read -r -p ".vimrc file already exists, replace? [y/N] " response
    response=${response,,}    # tolower
    if [[ $response =~ ^(yes|y)$ ]]; then
        COPY_VIMRC=1
    fi
else
    COPY_VIMRC=1
fi

# Confirm replace action if .vim directory already exists
if [ -d $VIM_DEST ]; then
    read -r -p ".vim directory already exists, replace? [y/N] " response
    response=${response,,}    # tolower
    if [[ $response =~ ^(yes|y)$ ]]; then
        COPY_VIM=1
    fi
else
    COPY_VIM=1
fi


# Install .vimrc file
if [ $COPY_VIMRC ]; then
    if [ -a $VIMRC_DEST ]; then
        echo "Removing existing .vimrc file"
        rm $VIMRC_DEST
    fi
    echo "Installing .vimrc file"
    cp $VIMRC_SOURCE $VIMRC_DEST
fi

# Install .vim directory
if [ $COPY_VIM ]; then
    if [ -d $VIM_DEST ]; then
        echo "Removing existing .vim directory"
        rm -rf $VIM_DEST
    fi
    echo "Installing .vim directory"
    cp -r $VIM_SOURCE $VIM_DEST
fi
