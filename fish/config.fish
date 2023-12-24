if status is-interactive
    # Commands to run in interactive sessions can go homebrew

    # Add homebrew bin path to $PATH
    eval "$(/opt/homebrew/bin/brew shellenv)"

    # Init StarShip theme
    # You must install StartShip
    # https://starship.rs/
    starship init fish | source
end
