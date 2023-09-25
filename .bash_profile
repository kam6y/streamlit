# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba init' !!
export MAMBA_EXE="/Users/goodapple/.micromamba/bin/micromamba";
export MAMBA_ROOT_PREFIX="/Users/goodapple/micromamba";
__mamba_setup="$("$MAMBA_EXE" shell hook --shell bash --prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    if [ -f "/Users/goodapple/micromamba/etc/profile.d/micromamba.sh" ]; then
        . "/Users/goodapple/micromamba/etc/profile.d/micromamba.sh"
    else
        export  PATH="/Users/goodapple/micromamba/bin:$PATH"  # extra space after export prevents interference from conda init
    fi
fi
unset __mamba_setup
# <<< mamba initialize <<<

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/goodapple/micromamba/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/goodapple/micromamba/etc/profile.d/conda.sh" ]; then
        . "/Users/goodapple/micromamba/etc/profile.d/conda.sh"
    else
        export PATH="/Users/goodapple/micromamba/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

