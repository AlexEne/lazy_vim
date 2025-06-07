-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.cmd("colorscheme catppuccin")

vim.api.nvim_create_autocmd('VimEnter', {
  callback = function()
    -- Command key mappings for macOS
    vim.keymap.set('i', '<D-z>', '<Esc>ua', { desc = 'Undo in insert mode' })
    -- vim.keymap.set('v', '<D-c>', '"+y', { desc = 'Copy in visual mode', silent = true })
    vim.keymap.set('n', '<D-z>', 'u', { desc = 'Undo in normal mode' })
    vim.keymap.set('n', '<D-v>', '"+p', { desc = 'Paste in normal mode' })
    vim.keymap.set('v', '<D-v>', '"+p', { desc = 'Paste in visual mode' })
    vim.keymap.set('i', '<D-v>', '<C-r>+', { desc = 'Paste in insert mode' })
    vim.keymap.set('v', '<D-x>', '"+d', { desc = 'Cut in visual mode' })
    
    
    -- Press Space+Space to open the smart file picker
    vim.keymap.set('n', '<leader><space>', function() Snacks.picker.smart() end)

    -- Press Space+/ to open the grep picker
    vim.keymap.set('n', '<leader>/', function() Snacks.picker.grep() end)

    -- Press Space+f+f to find files
    vim.keymap.set('n', '<leader>ff', function() Snacks.picker.files() end)

  end,
})

vim.api.nvim_create_autocmd('VimEnter', {
  callback = function()
    -- if vim.fn.has('mac') == 1 then
      vim.cmd([[
        vnoremap <D-c> "+y
        vnoremap <D-x> "+d
        nnoremap <D-v> "+p
        inoremap <D-v> <C-r>+
      ]])
    -- end
  end,
})


vim.keymap.set({'n', 'i', 'v'}, '<D-s>', function()
    vim.cmd('write')
    if vim.fn.mode() == 'i' then
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<Esc>a', true, false, true), 'n', true)
    end
end, {
    desc = 'Save file (Cmd+S)'
})

vim.keymap.set({'n', 'i', 'v'}, '<C-s>', function()
    vim.cmd('write')
    if vim.fn.mode() == 'i' then
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<Esc>a', true, false, true), 'n', true)
    end
end, {
    desc = 'Save file (Cmd+S)'
})