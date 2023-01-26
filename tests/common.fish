set current_dir (dirname (status --current-filename))
set set_vars

for file in {$current_dir}/../functions/*.fish
    source $file
end

function _get_set_vars
    for var in $argv
        if set -q $var
            set -a set_vars $var
        end
    end
end

function setup
    _get_set_vars __fish_pacman_initialized __fish_pacman_abbreviations

    set -g __tmp_fish_pacman_initialized $__fish_pacman_initialized
    set -g __tmp_fish_pacman_abbreviations $__fish_pacman_abbreviations
end

function teardown
    for var in $set_vars
        set -l tmp (string join "" _tmp $var)
        set -U $var $$tmp
    end
end


function setup_test
    set -U __fish_pacman_initialized
    abbr -a _fish_pacman_foo bar
    set -U __fish_pacman_abbreviations _fish_pacman_foo
end
