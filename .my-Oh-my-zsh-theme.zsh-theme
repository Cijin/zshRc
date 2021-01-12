# af-magic.zsh-theme
# Repo: https://github.com/andyfleming/oh-my-zsh
# Direct Link: https://github.com/andyfleming/oh-my-zsh/blob/master/themes/af-magic.zsh-theme

vcs_branch_glyph=$(print -P $'\Ue0a0') #  

# settings
typeset +H return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
typeset +H my_gray="$FG[237]"
typeset +H my_orange="$FG[214]"
typeset +H my_green="$FG[042]"

# primary prompt
PS1='%{$reset_color%}$FG[032]%c$(git_prompt_info)$(hg_prompt_info) $FG[045]%(!.#.»)%{$reset_color%} '
PS2='%{$fg[red]%}\ %{$reset_color%}'
RPS1='${return_code}'

# right prompt
(( $+functions[virtualenv_prompt_info] )) && RPS1+='$(virtualenv_prompt_info)'
RPS1+=' $my_gray%~%{$reset_color%}%'

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX="$FG[075] [$FG[078]"
ZSH_THEME_GIT_PROMPT_CLEAN="$my_green ${vcs_branch_glyph}%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="$my_orange ${vcs_branch_glyph}%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$FG[075]]%{$reset_color%}"

# hg settings
ZSH_THEME_HG_PROMPT_PREFIX="$FG[075] [$FG[078]"
ZSH_THEME_HG_PROMPT_CLEAN=""
ZSH_THEME_HG_PROMPT_DIRTY="$my_orange${vcs_branch_glyph}%{$reset_color%}"
ZSH_THEME_HG_PROMPT_SUFFIX="$FG[075]]%{$reset_color%}"

# virtualenv settings
ZSH_THEME_VIRTUALENV_PREFIX=" $FG[075]["
ZSH_THEME_VIRTUALENV_SUFFIX="]%{$reset_color%}"


