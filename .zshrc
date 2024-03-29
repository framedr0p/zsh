# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.local/share/history
HISTSIZE=1000000
SAVEHIST=1000000
setopt beep extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/markus/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#----------#
# NEOFETCH #
#----------#
# neofetch --colors 4 4 4 4 4 3 --ascii_colors 4

#----------#
#   alias  #
#----------#
alias vim="nvim"
alias ls="ls --color=auto --group-directories-first"
alias ll="ls -alF"
alias la="ls -A"
alias l="ls -CF"
alias dir="dir --color=auto"
alias vdir="vdir --color=auto"
alias grep="grep --color=auto"
alias x="exit"
alias sc="cd ~/.local/bin/scripts"
alias ..="cd .."

# youtube-dl for Audio only - second line for Playlists
alias mp3="youtube-dl --ignore-errors -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0 -o '~/Musik/youtube/%(title)s.%(ext)s' "$1""
alias mp3p="youtube-dl --ignore-errors -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0 -o '~/Musik/youtube/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' "$1""

# youtube-dl for best Video - second line for Playlists (-k for keep Videos after Merging)
alias dlv="youtube-dl --ignore-errors -o '~/Videos/youtube/%(title)s.%(ext)s' "$1""
alias dlp="youtube-dl --ignore-errors -o '~/Videos/youtube/%(playlist)s/%(title)s.%(ext)s' "$1""

#-----------#
# bin files #
#-----------#
export PATH="$HOME/.local/bin/scripts:$PATH"

#-----------#
#  plugins  #
#-----------#
source /home/markus/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source /home/markus/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
