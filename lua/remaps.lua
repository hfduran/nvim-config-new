local telescope_builtin = require("telescope.builtin")

vim.api.nvim_set_keymap('n', '<A-q>', '<Cmd>bdel<CR>', { noremap = true })

-- LSP
vim.api.nvim_set_keymap('n', '<C-k><C-f>', '<Cmd>lua vim.lsp.buf.format()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>f', '<Cmd>lua vim.lsp.buf.format()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gl', '<Cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true, desc="open diagnostics" })
vim.api.nvim_set_keymap('n', 'g]', '<Cmd>lua vim.diagnostic.goto_next()<CR>', { noremap = true, silent = true, desc="next diagnostic"})
vim.api.nvim_set_keymap('n', 'g[', '<Cmd>lua vim.diagnostic.goto_prev()<CR>', { noremap = true, silent = true, desc="prev diagnostic"})
vim.api.nvim_set_keymap('n', 'ga', '<Cmd>lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true, desc="code actions" })
vim.api.nvim_set_keymap('n', 'gr', '<Cmd>lua vim.lsp.buf.references()<CR>', { noremap = true, silent = true, desc="references"})
vim.api.nvim_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true, desc="type definition"})
vim.api.nvim_set_keymap('n', 'gi', '<Cmd>lua vim.lsp.buf.implementation()<CR>', { noremap = true, silent = true, desc="type definition"})
vim.api.nvim_set_keymap('n', 'gn', '<Cmd>lua vim.lsp.buf.rename()<CR>', { noremap = true, silent = true, desc="rename"})
vim.api.nvim_set_keymap('n', 'gt', '<Cmd>lua vim.lsp.buf.type_definition()<CR>', { noremap = true, silent = true, desc="rename"})

-- telescope
vim.keymap.set('n', '<leader>ff',
  telescope_builtin.find_files,
{ noremap = true, silent = true, desc="find file"})

vim.keymap.set('n', '<leader>fw',
  telescope_builtin.live_grep,
{ noremap = true, silent = true, desc="find word"})

-- NERDTree
vim.keymap.set('n', '<C-n>',
  '<Cmd>NERDTreeToggle<CR>'
  , { remap = true })

-- hop
vim.keymap.set('n', '<leader><leader>j',
  '<Cmd>HopLineAC<CR>'
  , { remap = true })
vim.keymap.set('n', '<leader><leader>k',
  '<Cmd>HopLineBC<CR>'
  , { remap = true })
vim.keymap.set('n', '<leader><leader>w',
  '<Cmd>HopWordAC<CR>'
  , { remap = true })
vim.keymap.set('n', '<leader><leader>b',
  '<Cmd>HopWordBC<CR>'
  , { remap = true })

  -- bufferline
vim.api.nvim_set_keymap('n', '<leader>tt', '<Cmd>BufferLinePick<CR>', { noremap = true, silent = true, desc="pick tab"})
vim.api.nvim_set_keymap('n', '<leader>tp', '<Cmd>BufferLineTogglePin<CR>', { noremap = true, silent = true, desc="pin tab"})
vim.api.nvim_set_keymap('n', '<leader>to', '<Cmd>BufferLineCloseOthers<CR>', { noremap = true, silent = true, desc="close others"})
vim.api.nvim_set_keymap('n', '<leader>td', '<Cmd>BufferLineSortByDirectory<CR>', { noremap = true, desc="sort tabs by dir" })
vim.api.nvim_set_keymap('n', '<leader>th', '<Cmd>BufferLineMovePrev<CR>', { noremap = true, desc="tab move prev"  })
vim.api.nvim_set_keymap('n', '<leader>tl', '<Cmd>BufferLineMoveNext<CR>', { noremap = true, desc="tab move next" })

vim.api.nvim_set_keymap('n', '<A-1>', '<Cmd>BufferLineGoToBuffer 1<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<A-2>', '<Cmd>BufferLineGoToBuffer 2<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<A-3>', '<Cmd>BufferLineGoToBuffer 3<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<A-4>', '<Cmd>BufferLineGoToBuffer 4<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<A-5>', '<Cmd>BufferLineGoToBuffer 5<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<A-6>', '<Cmd>BufferLineGoToBuffer 6<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<A-7>', '<Cmd>BufferLineGoToBuffer 7<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<A-8>', '<Cmd>BufferLineGoToBuffer 8<CR>', { noremap = true })
