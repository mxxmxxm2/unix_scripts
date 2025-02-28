# User specific aliases and functions

alias ssh_make='ssh-keygen -t ed25519 -C "mxxmxxm@gmail.com" -f ~/.ssh/id_mxxmxxm1 -N ""'

alias s='sudo -E '

alias tt='tmux new-session -A -s main'
alias tt1='tmux new-session -A -s ses1'
alias tt2='tmux new-session -A -s ses2'

alias ch='cd $HOME'

alias t='top -c -d 1'
alias p='ps aux -H'

alias d='df -h'
alias l='ls -Alh --group-directories-first'

alias tr='traceroute'
alias n='netstat -lntup'

alias rrr='bash -c "(sleep 2; reboot)&"; exit'
alias sss='bash -c "(sleep 2; shutdown now)&"; exit'


alias lg='sudo journalctl --since "1 hour ago" --follow'
alias lg6h='sudo journalctl --since "6 hour ago"'
alias lg2d='sudo journalctl --since "2 days ago"'
alias lgw='sudo journalctl --since "1 week ago"'

sc() {
  service=$1
  command=$2

  if [ ! -z "$command" ]; then
    case $command in
      r|re)
        command=restart
        ;;
      0)
        command=stop
        ;;
      1)
        command=start
        ;;
    esac

    systemctl $command $service
  fi

  systemctl status $service
}

alias gpus='sudo systemctl start vm_gpu; systemctl --no-pager status vm_gpu'
alias gpuo='sudo systemctl stop vm_gpu; systemctl --no-pager status vm_gpu'

