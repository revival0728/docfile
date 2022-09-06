#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

neofetch

alias ls='exa -l --icons --header'

# exitstatus()
# {
#     if [[ $? == 0 ]]; then
#         echo ':)'
#     else
#         echo 'D:'
#     fi
# }
PS0='\n'
# PS1='\n\e[0m\e[35m[\e[0m \e[4m\e[33m\u\e[0m\e[1m\e[35m @\e[0m \e[0m\e[4m\e[31m\h\e[0m (\e[1m\e[32m\W\e[0m) \e[35m]\e[0m \$ \e[0m'
# PS1='[\u@\h \W]$'
PS1="\[\033[0;37m\]\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo \"[\[\033[0;31m\]\342\234\227\[\033[0;37m\]]\342\224\200\")[$(if [[ ${EUID} == 0 ]]; then echo '\[\033[0;31m\]\h'; else echo '\[\033[0;33m\]\u\[\033[0;37m\]@\[\033[0;96m\]\h'; fi)\[\033[0;37m\]]\342\224\200[\[\033[0;32m\]\w\[\033[0;37m\]]\n\[\033[0;37m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\033[0m\]"

. /usr/share/z/z.sh
