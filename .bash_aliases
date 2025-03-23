shopt -s histappend
PROMPT_COMMAND="history -a;$PROMPT_COMMAND"

# User specific aliases and functions

alias s='sudo -E '

alias tt='tmux new-session -A -s main'
alias tt1='tmux new-session -A -s ses1'
alias tt2='tmux new-session -A -s ses2'

alias ch='cd $HOME'

alias t='sudo top -d 2'
alias p='sudo ps aux -H'

alias d='sudo df -hT && echo && sudo swapon'
alias l='sudo ls -Alh --group-directories-first'

alias tr='sudo traceroute '
alias pn='sudo ping -i 0.5 '
alias n='sudo netstat -lntup'

alias lg='sudo journalctl -n 50 --follow'
alias lg6h='sudo journalctl --since "6 hour ago"'
alias lg2d='sudo journalctl --since "2 days ago"'
alias lgw='sudo journalctl --since "1 week ago"'

gh() {
  git pull
  git add -u && \
  git commit -uno -m "ok" && \
  git push
}


# copy the .gitconig and .ssh dir to a new host
# mkdir _temp
# git clone git@github.com:mxxmxxm2/unix_scripts.git _temp
# mv _temp/.git .
# git checkout main -f
# rm -r _temp

#  ssh-keygen -t ed25519 -C "mxxmxxm@gmail.com" -f ~/.ssh/id_mxxmxxm1 -N ""

#  git config --global user.name "max" && git config --global user.email mxxmxxm@gmail.com
#  git init
#  git remote add origin git@github.com:mxxmxxm2/unix_scripts.git
#  git branch -M main
#  git add .bash_aliases
#  git commit -m "ok"
  
#  Host github.com
#  User git
#  HostName github.com
#  IdentityFile ~/.ssh/id_mxxmxxm
#  AddKeysToAgent yes  # Adds key to the agent automatically
