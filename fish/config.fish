if status is-interactive
    # Commands to run in interactive sessions can go homebrew

    # Add homebrew bin path to $PATH
    eval "$(/opt/homebrew/bin/brew shellenv)"

    # Init StarShip theme
    # You must install StartShip
    # https://starship.rs/
    starship init fish | source
end

# enviroment variable
# go
set -gx GOPATH $HOME/Documents/mybin/go/v1.20.5
set -gx GOBIN $HOME/go/bin
set -gx PATH $PATH $GOPATH/bin
set -gx PATH $PATH $HOME/go/bin

# node
set -gx PATH $PATH $HOME/Documents/mybin/node/node-v18.16.0-darwin-arm64/bin
set -x NPM_TOKEN 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

# protoc
set -gx PATH $PATH $HOME/Documents/mybin/protoc/v23.2/bin

# psql
set -gx PATH $PATH $HOME/Documents/mybin/postgresql/v15.3.2/bin

# yarn
set -gx PATH $PATH $(yarn global bin)

# gradle
set -gx PATH $PATH $HOME/Documents/mybin/gradle-8.3/bin

# editor
set -gx EDITOR nvim
set -gx VISUAL nvim

# jabba
if test -s "/Users/idev/.jabba/jabba.fish"
    source "/Users/idev/.jabba/jabba.fish"
end

# bun
set -gx BUN_INSTALL $HOME/.bun
set -gx PATH $PATH $BUN_INSTALL/bin

# zig
set -gx PATH $PATH $HOME/Documents/mybin/zig-macos-aarch64-0.12.0-dev.627+de4d1ea25

# android
set -gx ANDROID_HOME $HOME/Library/Android/sdk
set -gx PATH $PATH $ANDROID_HOME/emulator
set -gx PATH $PATH $ANDROID_HOME/platform-tools

set -gx PATH /opt/homebrew/opt/ruby/bin:$PATH
set -gx LDFLAGS -L/opt/homebrew/opt/ruby/lib
set -gx CPPFLAGS -I/opt/homebrew/opt/ruby/include

# neovim
set -gx PATH $PATH $HOME/.local/share/nvim/mason/bin

# xdg
set -gx XDG_CONFIG_HOME $HOME/.config

# pnpm
set -gx PNPM_HOME /Users/idev/Library/pnpm
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# rustup shell setup for fish
# Check if ~/.cargo/bin is already in PATH efficiently
if not contains "$HOME/.cargo/bin" $PATH
    # Prepend it for proper override of system-installed rustc
    set -gx PATH "$HOME/.cargo/bin" $PATH
end

# mysql
set -gx PATH $PATH $HOME/Documents/mybin/mysql-8.0.35-macos13-arm64/bin

# Setting PATH for Python 3.12
# The original version is saved in /Users/idev/.config/fish/config.fish.pysave
set -x PATH "/Library/Frameworks/Python.framework/Versions/3.12/bin" "$PATH"
