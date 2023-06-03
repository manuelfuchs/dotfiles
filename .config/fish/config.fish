if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Configures alias for dotiles repository located at ~/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Command completions
source /opt/homebrew/opt/asdf/libexec/asdf.fish

