vim.lsp.config['ty'] = {
  cmd = { 'uvx', 'ty', 'server' },
  filetypes = { 'python' },
  root_markers = { { 'Pipfile', 'pyproject.toml', 'requirements.txt' }, '.git' },
}
vim.lsp.enable('ty')