if status is-interactive
  # Commands to run in interactive sessions can go here
  eval (zellij setup --generate-auto-start fish | string collect)
end

fish_config theme choose "Dracula Official"
atuin init fish | source
