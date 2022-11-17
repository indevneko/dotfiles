#install fish
#install Oh-my-fish for theme
#install fisher for installing plugin
#install shellder(theme) z(jump) colored_man_pages

source ~/.zshrc

set fish_greeting ""

set -gx TERM xterm-256color

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 0
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# aliases
alias ls "ls -p -G"
alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"
alias lah "ll -Ah"
alias g git
alias vim "nvim"
alias v "nvim"
alias y "yarn"
alias d "docker"
alias k "kubectl"
alias c "clear"
command -qv nvim && alias vim nvim

if type -q exa
  alias ll "exa -l -g --icons"
  alias lla "ll -a"
end

set -gx EDITOR nvim

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH
set -gx PATH /opt/homebrew/bin $PATH
set -gx PATH /opt/homebrew/sbin $PATH
set -gx PATH /usr/sbin $PATH
set -gx PATH /sbin $PATH
set -gx PATH /usr/local/bin $PATH
set -gx PATH /Library/Apple/usr/bin $PATH
set -gx PATH /Library/Frameworks/Python.framework/Versions/3.9/bin $PATH
set -gx PATH /Users/chunn/Library/Python/3.9/bin $PATH
set -gx PATH /Users/chunn/.yarn/bin $PATH
set -gx PATH ~/Library/Android/sdk/emulator $PATH
set -gx PATH ~/Library/Android/sdk/tools $PATH
set -gx PATH ~/Library/Android/sdk/tools/bin $PATH
set -gx PATH ~/Library/Android/sdk/platform-tools $PATH
set -gx PATH /usr/local/opt/ruby/bin $PATH
set -gx PATH ~/.rbenv/bin $PATH
set -gx PATH ~/.rbenv/shims $PATH
set -gx PATH /usr/local/opt/ruby/bin $PATH
set -gx PATH /usr/local/lib/ruby/gems/3.0.0/bin $PATH

