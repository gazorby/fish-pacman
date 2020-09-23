# Adapted from here https://github.com/zimfw/pacman

# build package in current directory, cleanup, and install
abbr -a pacb 'makepkg -sci'

#
# Install
#

#NOTE: Installing/upgrading individual packages is NOT supported. Sync and upgrade ALL on install.

# install, sync, and upgrade packages
abbr -a paci 'pacman -Syu'

# install packages without syncing
abbr -a pacI 'pacman -S'

# install, sync, and upgrade packages (forcibly refresh package lists)
abbr -a pacu 'pacman -Syyu'

# install packages by filename
abbr -a pacU 'pacman -U'

# install all packages in current directory
abbr -a pacd 'pacman -U *.pkg.*'


#
# Remove
#

# remove package and unneeded dependencies
abbr -a pacr 'pacman -R'

# remove package, unneeded dependencies, and configuration files
abbr -a pacrm 'pacman -Rns'


#
# Query
#

# query package information from the remote repository
abbr -a pacq 'pacman -Si'

# query package information from the local repository
abbr -a pacQ 'pacman -Qi'


#
# Search
#

# search for package in the remote repository
abbr -a pacs 'pacman -Ss'

# search for the package in the local repository
abbr -a pacS 'pacman -Qs'


#
# Orphans
#

# list orphan packages
abbr -a pacol 'pacman -Qdt'

# remove orphan packages
abbr -a pacor 'pacman -Rns (pacman -Qtdq)'


#
# Ownership
#

# list all files that belong to a package
abbr -a pacown 'pacman -Ql'

# show package(s) owning the specified file
abbr -a pacblame 'pacman -Qo'

# Upgrade using powerpill to download from all mirrors simultaneously
abbr -a upgrade 'sudo pacman -Sy && sudo powerpill -Su && yay -Su'


function __fish_pacman_uninstall --on-event fish_pacman_uninstall
    abbr --erase pacb
    abbr --erase paci
    abbr --erase pacI
    abbr --erase pacu
    abbr --erase pacU
    abbr --erase pacd
    abbr --erase pacr
    abbr --erase pacrm
    abbr --erase pacq
    abbr --erase pacQ
    abbr --erase pacs
    abbr --erase pacS
    abbr --erase pacol
    abbr --erase pacor
    abbr --erase pacown
    abbr --erase pacblame
    abbr --erase upgrade
    functions --erase aurb
    functions --erase aurd
    functions --erase auru
end
