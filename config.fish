if status is-interactive
    # Commands to run in interactive sessions can go here
end

if type -q exa
  alias ll "exa -l -g --icons"
  alias ls "exa -l -g --icons"
  alias lsa "ll -a"
end

if type -q nvim
    alias vi "nvim"
end
