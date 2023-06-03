function config-update
  if [ $argv = "fish" ]
    set --function config_files ~/.config/fish/config.fish ~/.config/fish/functions/*
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