source ~/.zplugin/bin/zplugin.zsh

zinit ice wait lucid
zinit light skywind3000/z.lua

export FZ_HISTORY_CD_CMD=_zlua
zinit ice wait lucid
zinit light changyuheng/fz

zinit ice wait lucid
zinit light changyuheng/zsh-interactive-cd

zinit ice wait lucid
zinit light zdharma/fast-syntax-highlighting

zinit ice wait lucid atload'_zsh_autosuggest_start'
zinit light zsh-users/zsh-autosuggestions

zinit ice wait lucid
zinit light zdharma/history-search-multi-word

PURE_GIT_DOWN_ARROW='↓'
PURE_GIT_UP_ARROW='↑'

zinit ice compile'(pure|async).zsh' pick'async.zsh' src'pure.zsh'
zinit light sindresorhus/pure

#typeset -A pure_halloween_scheme=(
#	color1 "#888" # English Vermillion
#	color2 "#363B3F" # Onyx
#	color3 "#EE7867" # Coral Reef
#	color4 "#F2C359" # Maize (Crayola)
#	color5 "#E2B44E" # Sunray
#	color6 "#494F55" # Quartz
#)
#zstyle :prompt:pure:execution_time      color $pure_halloween_scheme[color3]
#zstyle :prompt:pure:git:arrow           color $pure_halloween_scheme[color5]
#zstyle :prompt:pure:git:branch          color $pure_halloween_scheme[color2]
#zstyle :prompt:pure:git:branch:cached   color $pure_halloween_scheme[color1]
#zstyle :prompt:pure:git:dirty           color $pure_halloween_scheme[color4]
#zstyle :prompt:pure:path                color $pure_halloween_scheme[color1]
#zstyle :prompt:pure:prompt:error        color $pure_halloween_scheme[color1]
#zstyle :prompt:pure:prompt:success      color $pure_halloween_scheme[color4]
#zstyle :prompt:pure:user                color $pure_halloween_scheme[color4]
#zstyle :prompt:pure:user:root           color $pure_halloween_scheme[color3]
#zstyle :prompt:pure:virtualenv          color $pure_halloween_scheme[color6]


zstyle :prompt:pure:prompt:success color green
zstyle :prompt:pure:user color 237
zstyle :prompt:pure:host color 237
zstyle :prompt:pure:user:root  color 237
zstyle :prompt:pure:git:branch color 237

zinit ice wait lucid as"program" pick"$ZPFX/bin/git-*" make"PREFIX=$ZPFX"
zinit light tj/git-extras

bindkey "^A" vi-beginning-of-line
bindkey "^E" vi-end-of-line

# zinit ice atload'!_zsh_git_prompt_precmd_hook' lucid
# zinit light woefe/git-prompt.zsh
