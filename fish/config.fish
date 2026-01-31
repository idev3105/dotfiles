if status is-interactive
    # Commands to run in interactive sessions can go homebrew

    # Add homebrew bin path to $PATH
    eval "$(/opt/homebrew/bin/brew shellenv)"

    # Init StarShip theme
    # You must install StartShip
    # https://starship.rs/
    starship init fish | source
end

# editor
set -gx EDITOR nvim
set -gx VISUAL nvim

alias brew="env PATH=(string replace (pyenv root)/shims '' \"\$PATH\") brew"

pyenv init - | source

# Added by Windsurf
fish_add_path /Users/idev/.codeium/windsurf/bin

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :

# Added by Antigravity
fish_add_path /Users/idev/.antigravity/antigravity/bin
