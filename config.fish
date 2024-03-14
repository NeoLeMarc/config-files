if status is-interactive
    # Commands to run in interactive sessions can go here
    birthday
end

set -x PATH /Users/marcel/Library/Python/3.9/bin/ /Library/Python/3.9/bin/ /usr/local/bin /System/Cryptexes/App/usr/bin /usr/bin /bin /usr/sbin /sbin /opt/X11/bin /usr/local/MacGPG2/bin /opt/homebrew/bin/ ~/bin
set -x DOCKER_HOST unix://$HOME/.colima/docker.sock
test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

# Created by `pipx` on 2024-03-14 11:05:17
set PATH $PATH /home/marcel/.local/bin

if type -q nvim
    set -x EDITOR nvim
else
    set -x EDITOR vim
end

## SSH Agent
# wget https://gitlab.com/kyb/fish_ssh_agent/raw/master/functions/fish_ssh_agent.fish -P ~/.config/fish/functions/
fish_ssh_agent

