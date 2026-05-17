-- Markdown rendering and preview
vim.pack.add {
  'https://github.com/MeanderingProgrammer/render-markdown.nvim',
  'https://github.com/iamcco/markdown-preview.nvim',
}

require('render-markdown').setup {
  render_modes = { 'n', 'c', 't' }, -- render in normal, command, terminal modes (not insert)
  heading = { sign = false },
  code = { sign = false },
}

-- Build step for markdown-preview after install/update
vim.api.nvim_create_autocmd('PackChanged', {
  callback = function(ev)
    if ev.data.spec.name == 'markdown-preview.nvim' and (ev.data.kind == 'install' or ev.data.kind == 'update') then
      if not ev.data.active then vim.cmd.packadd 'markdown-preview.nvim' end
      vim.fn['mkdp#util#install']()
    end
  end,
})

vim.keymap.set('n', '<leader>mp', '<cmd>MarkdownPreviewToggle<cr>', { desc = '[M]arkdown [P]review' })
