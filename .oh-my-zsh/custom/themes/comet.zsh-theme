local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
local user_host='%{$terminfo[bold]$fg[green]%} %{$fg_bold[yellow]%}$(date +%H:%M)%{$reset_color%}'
local current_dir='%{$terminfo[bold]$fg[cyan]%} %~%{$reset_color%}'
local rvm_ruby='%{$fg_bold[red]%}$(ruby_prompt_info)%{$reset_color%}'
local git_branch='%{$fg_bold[red]%}%{$fg_bold[magenta]%}%{$fg_bold[blue]%} $(git_prompt_info)%{$reset_color%}'

PROMPT="${user_host} ${current_dir} ${rvm_ruby}
${git_branch} %B$%b "
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%} %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%} %{$reset_color%}"
