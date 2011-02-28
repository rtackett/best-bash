# A first pass at sharing my bash environment

## Instalation
1. Put this folder in `~/.dotfiles/best-bash` and `cd` to the directory.
        cd ~/.dotfiles/best-bash
2. Copy the conf.sample file, name it conf, and edit conf define the variables within.
        cp conf.sample conf
        vi conf
3. Run the install.sh script. This will backup your home dir bash files and replace them with symlinks to the best-bash system.
        ./install.sh
