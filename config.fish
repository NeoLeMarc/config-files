if status is-interactive
    # Commands to run in interactive sessions can go here
    birthday
end

set EDITOR vim

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
set PATH /Users/marcel/Library/Python/3.9/bin/ /Library/Python/3.9/bin/ /usr/local/bin /System/Cryptexes/App/usr/bin /usr/bin /bin /usr/sbin /sbin /opt/X11/bin /usr/local/MacGPG2/bin /opt/homebrew/bin/

set DOCKER_HOST unix://$HOME/.colima/docker.sock
