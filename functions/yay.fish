if type -q yay
    function yaconf --wraps 'yay -Pg' --description 'Print current configuration'
        yay -Pg $argv
    end

    function yaclean --wraps 'yay -Sc' --description 'Clean out old and unused caches and packages'
        yay -Sc $argv
    end

    function yaclr --wraps 'yay -Scc' --description 'Remove all files from the cache'
        yay -Scc $argv
    end

    function yaupg --wraps 'yay -Syu' --description 'Sync with repositories before upgrading packages'
        yay -Syu $argv
    end

    function yasu --wraps 'yay -Syu --no-confirm' --description 'Same as `yaupg`, but without confirmation'
        yay -Syu --no-confirm $argv
    end

    function yain --wraps 'yay -S' --description 'Install packages from the repositories'
        yay -S $argv
    end

    function yains --wraps 'yay -U' --description 'Install a package from a local file'
        yay -U $argv
    end

    function yare --wraps 'yay -R' --description 'Remove packages, keeping its settings and dependencies'
        yay -R $argv
    end

    function yarem --wraps 'yay -Rns' --description 'Remove packages, including its settings and unneeded dependencies'
        yay -Rns $argv
    end

    function yarep --wraps 'yay -Si' --description 'Display information about a package in the repositories'
        yay -Si $argv
    end

    function yareps --wraps 'yay -Ss' --description 'Search for packages in the repositories'
        yay -Ss $argv
    end

    function yaloc --wraps 'yay -Qi' --description 'Display information about a package in the local database'
        yay -Qi $argv
    end

    function yalocs --wraps 'yay -Qs' --description 'Search for packages in the local database'
        yay -Qs $argv
    end

    function yalst --wraps 'yay -Qe' --description 'List installed packages including from AUR (tagged as "local")'
        yay -Qe $argv
    end

    function yaorph --wraps 'yay -Qtd' --description 'Remove orphans using yay'
        yay -Qtd $argv
    end

    function yainsd --wraps 'yay -S --asdeps' --description 'Install packages as dependencies of another package'
        yay -S --asdeps $argv
    end

    function yamir --wraps 'yay -Syy' --description 'Force refresh of all package lists after updating mirrorlist'
        yay -Syy $argv
    end

    function yaupd --wraps 'yay -Sy' --description 'Update and refresh local package, ABS and AUR databases'
        yay -Sy $argv
    end
end

