# User specific aliases and functions

alias s='sudo -E '

alias tt='tmux new-session -A -s main'
alias tt1='tmux new-session -A -s ses1'
alias tt2='tmux new-session -A -s ses2'

alias ch='cd $HOME'

alias t='top -d 2'
alias p='ps aux -H'

alias d='sudo df -hT && echo && sudo swapon'
alias l='ls -Alh --group-directories-first'

alias tr='traceroute'
alias n='netstat -lntup'

alias rrr='bash -c "(sleep 2; reboot)&"; exit'
alias sss='bash -c "(sleep 2; shutdown now)&"; exit'

alias lg='sudo journalctl --since "1 hour ago" --follow'
alias lg6h='sudo journalctl --since "6 hour ago"'
alias lg2d='sudo journalctl --since "2 days ago"'
alias lgw='sudo journalctl --since "1 week ago"'

gt() {
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
