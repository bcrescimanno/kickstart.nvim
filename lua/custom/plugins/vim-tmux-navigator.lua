-- vim-tmux-navigator: seamless <C-h/j/k/l> navigation between nvim splits and tmux panes
vim.pack.add { 'https://github.com/christoomey/vim-tmux-navigator' }

vim.keymap.set('n', '<C-h>', '<cmd>TmuxNavigateLeft<cr>', { silent = true, desc = 'Tmux navigate left' })
vim.keymap.set('n', '<C-j>', '<cmd>TmuxNavigateDown<cr>', { silent = true, desc = 'Tmux navigate down' })
vim.keymap.set('n', '<C-k>', '<cmd>TmuxNavigateUp<cr>', { silent = true, desc = 'Tmux navigate up' })
vim.keymap.set('n', '<C-l>', '<cmd>TmuxNavigateRight<cr>', { silent = true, desc = 'Tmux navigate right' })
vim.keymap.set('n', '<C-\\>', '<cmd>TmuxNavigatePrevious<cr>', { silent = true, desc = 'Tmux navigate previous' })
