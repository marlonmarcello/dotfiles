set -gx EDITOR nvim

set -gx VISUAL code --wait

fish_config theme choose "DraculaOfficial"

set fzf_fd_opts --hidden --max-depth 5 -E .git

alias ns="zellij action close-tab && zellij action new-tab --layout $HOME/.config/zellij/layouts/node.kdl"

fish_ssh_agent

if status is-interactive
  # Commands to run in interactive sessions can go here
  # eval (zellij setup --generate-auto-start fish | string collect)
end


