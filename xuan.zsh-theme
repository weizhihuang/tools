PROMPT="%{$FG[152]%}%c%{$reset_color%}"
PROMPT+=' $(git_prompt_info)'
RPROMPT="%(?..%{$fg[red]%}%?%{$reset_color%})"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[189]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="!"
