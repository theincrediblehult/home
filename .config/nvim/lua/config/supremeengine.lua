-- vim.keymap.set('n', '<C-r>', "<cmd>!tmux new-window -c .. ./supremeExecute.sh<CR>")
vim.keymap.set('n', '<leader>g', [[:lua TmuxNewWindow()<CR>]], { noremap = true, silent = true })

function TmuxNewWindow()
  local window_name = "my_window"

  -- Kill the existing window if it exists
  local kill_cmd = 'tmux kill-window -t ' .. window_name
  vim.fn.system(kill_cmd)

  -- Open a new window with the given name and keep it open
  local new_window_cmd = 'tmux new-window -n ' .. window_name .. ' -c .. "bash -c \'./supremeExecute.sh; exec bash\'"'
  vim.fn.system(new_window_cmd)
end

-- !tmux new-window -c .. ./supremeExecute.sh
