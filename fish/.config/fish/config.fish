if status is-interactive
    # Commands to run in interactive sessions can go here
    atuin init fish | source  # atuin history

## Greating Message
set -g fish_greeting # empty (remove the default greeting)

starship init fish | source # Starship init
zoxide init fish | source   # zoxide init

## Aliases
alias cd="z"     # zoxide
alias ..="cd .."
alias ls="eza --icons"

end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /Users/mr/miniconda3/bin/conda
    eval /Users/mr/miniconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/Users/mr/miniconda3/etc/fish/conf.d/conda.fish"
        . "/Users/mr/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/Users/mr/miniconda3/bin" $PATH
    end
end
# <<< conda initialize <<<
