source (string join "/" (dirname (status --current-filename)) "common.fish")

setup

@test "Plugin initialization" (
    setup_test
    _fish_pacman_init
    test "$__fish_pacman_initialized" = "1"
) "$status" = 0

@test "Plugin removal abbreviations erased" (
    setup_test
    _fish_pacman_uninstall
    not abbr -q _fish_pacman_foo
) "$status" = 0

@test "Plugin removal __fish_pacman_abbreviations erased" (
    setup_test
    _fish_pacman_uninstall
    not set -q "__fish_pacman_abbreviations"
) "$status" = 0

teardown
