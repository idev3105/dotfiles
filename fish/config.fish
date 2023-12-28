if status is-interactive
    # Commands to run in interactive sessions can go homebrew

    # Add homebrew bin path to $PATH
    eval "$(/opt/homebrew/bin/brew shellenv)"

    # Init StarShip theme
    # You must install StartShip
    # https://starship.rs/
    starship init fish | source

    # enviroment variable
    # go
    set -U GOPATH $HOME/Documents/mybin/go/v1.20.5
    set -x PATH $PATH $GOPATH/bin
    set -x PATH $PATH $HOME/go/bin

    # node
    set -x PATH $PATH $HOME/Documents/mybin/node/node-v18.16.0-darwin-arm64/bin
    set -U NPM_TOKEN XXXXX-XXXXX-XXXXX-XXXXX

    # protoc
    set -x PATH $PATH $HOME/Documents/mybin/protoc/v23.2/bin

    # psql
    set -x PATH $PATH $HOME/Documents/mybin/postgresql/v15.3.2/bin

    # yarn
    set -x PATH $PATH $(yarn global bin)

    # gradle
    set -x PATH $PATH $HOME/Documents/mybin/gradle-8.3/bin

    # editor
    set -U EDITOR nvim
    set -U VISUAL nvim

    # jabba
    if test -s "/Users/idev/.jabba/jabba.fish"
        source "/Users/idev/.jabba/jabba.fish"
    end

    # bun
    set -U BUN_INSTALL $HOME/.bun
    set -x PATH $PATH $BUN_INSTALL/bin

    # zig
    set -x PATH $PATH $HOME/Documents/mybin/zig-macos-aarch64-0.12.0-dev.627+de4d1ea25

    # android
    set -U ANDROID_HOME $HOME/Library/Android/sdk
    set -U PATH $PATH $ANDROID_HOME/emulator
    set -U PATH $PATH $ANDROID_HOME/platform-tools

    set -U PATH /opt/homebrew/opt/ruby/bin:$PATH
    set -U LDFLAGS -L/opt/homebrew/opt/ruby/lib
    set -U CPPFLAGS -I/opt/homebrew/opt/ruby/include

    # neovim
    set -x PATH $PATH $HOME/.local/share/nvim/mason/bin

    set -U XDG_CONFIG_HOME $HOME/.config
    set -U JAVA_HOME $HOME/Documents/mybin/jdk-21.0.1.jdk/Contents/Home
end
