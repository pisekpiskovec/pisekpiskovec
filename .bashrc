# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"

		fi
	done
fi

unset rc

alias dnf='sudo dnf'
alias q="exit"
[[ -f /usr/bin/fastfetch ]] && alias neofetch="fastfetch"
[[ -f /usr/bin/fastfetch ]] && alias nfch="fastfetch"
alias din="dnf in"
alias dinf="dnf in -y"
alias drm="dnf rm"
alias drmf="dnf rm -y"
alias dns="dnf search"
alias dri="dnf reinstall"
alias drif="dnf reinstall -y"
alias dup="dnf up"
alias dupf="dnf up -y"
[[ -f /usr/bin/bat ]] && alias cat="bat"
[[ -f /usr/bin/yazi ]] && alias yz="yazi"
[[ -f /usr/bin/zoxide ]] && alias cd="z"

function mkcddir() {
	mkdir -p $1
	cd $1
}

# Ensure Helix is set as EDITOR if it isn't already set
if [ -z "$EDITOR" ]; then
	export EDITOR="/usr/bin/hx"
fi

eval "$(zoxide init bash)"
eval "$(oh-my-posh init bash --config /home/pisek/.config/ohmyposh/bsh.json)"
