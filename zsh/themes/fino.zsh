# fino.zsh-theme

# Use with a dark background and 256-color terminal!
# Meant for people with rbenv and git. Tested only on OS X 10.7.

# You can set your computer name in the ~/.box-name file if you want.

# Borrowing shamelessly from these oh-my-zsh themes:
#   bira
#   robbyrussell
#
# Also borrowing from http://stevelosh.com/blog/2010/02/my-extravagant-zsh-prompt/

function prompt_char {
  git branch >/dev/null 2>/dev/null && echo "±" && return
  echo '○'
}

function box_name {
    [ -f ~/.box-name ] && cat ~/.box-name || echo ${SHORT_HOST:-$HOST}
}

local current_dir='${PWD/#$HOME/~}'
local git_info='$(git_prompt_info)'
local prompt_char='$(prompt_char)'

PROMPT="%{$fg[yellow]%}╭─%n%{$reset_color%} %{$fg[white]%}at%{$reset_color%} %{$fg[white]%}$(box_name)%{$reset_color%} %{$fg[cyan]%}in%{$reset_color%} %{$terminfo[bold]$fg[white]%}${current_dir} %{$fg[magenta]%}${git_info}
╰─${prompt_char}%{$reset_color%} "

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[239]%}on%{$reset_color%} %{$fg[255]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[202]%}✘✘✘"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[040]%}✔"
