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
alias g git
alias vim "nvim"
alias y "yarn"
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

