function config-update
  if [ $argv = "fish" ]
    set --local fish_home  ~/.config/fish

    set --function config_files $fish_home/config.fish
    set -a config_files $fish_home/functions/*
    set -a config_files  $fish_home/conf.d/*
    set -a config_files  $fish_home/completions/*
  else if [ $argv = "brew" ]
    brew bundle dump --file=$HOME/Brewfile --force
    set --function config_files ~/Brewfile
  else if [ $argv = "asdf" ]
    set --function config_files $HOME/.asdfrc
  else
    set --function config_files $argv
  end

  config add $config_files
  config commit -m "Update $argv"
  config push &> /dev/null
end