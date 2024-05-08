if status is-interactive
  # Commands to run in interactive sessions can go here
  eval (zellij setup --generate-auto-start fish | string collect)
end

fish_config theme choose "DraculaOfficial"

set fzf_fd_opts --hidden --max-depth 5 -E .git
