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
PS1='\n\e[0m\e[35m[\e[0m \e[4m\e[33m\u\e[0m\e[1m\e[35m @\e[0m \e[0m\e[4m\e[31m\h\e[0m (\e[1m\e[32m\W\e[0m) \e[35m]\e[0m \$\e[0m '

. /usr/share/z/z.sh
