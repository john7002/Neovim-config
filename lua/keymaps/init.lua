function map(mode, shortcut, command)
    vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
    map('n', shortcut, command)
end

function imap(shortcut, command)
    map('i', shortcut, command)
end



function vmap(shortcut, command)
    map('v', shortcut, command)
end

vim.g.mapleader = ' '

nmap('<C-Left>', '<cmd>:vertical resize +3<cr>')
nmap('<C-Right>', '<cmd>:vertical resize -3<cr>')
nmap('<C-Down>', '<cmd>:horizontal resize +3<cr>')
nmap('<C-Up>', '<cmd>:horizontal resize +3<cr>')


-- reselect visual block after indent/outdent

vmap('<', '<gv')
vmap('>', '>gv')

-- telescope
nmap('<leader>f', '<cmd>:Telescope find_files<cr>')
nmap('<leader>r', '<cmd>:Telescope live_grep<cr>')



nmap('<C-b>','<cmd>:NvimTreeToggle<cr>')
nmap('<C-a>', '<cmd>:ToggleTerm<cr>')
imap('<C-a>', '<cmd>:ToggleTerm<cr>')

nmap('gd', ':lua vim.lsp.buf.definition()<cr>')
nmap('gD', ':lua vim.lsp.buf.declaration()<cr>')
nmap('gi', ':lua vim.lsp.buf.implementation()<cr>')
nmap('gw', ':lua vim.lsp.buf.document_symbol()<cr>')
nmap('gw', ':lua vim.lsp.buf.workspace_symbol()<cr>')
nmap('gr', ':lua vim.lsp.buf.references()<cr>')
nmap('gt', ':lua vim.lsp.buf.type_definition()<cr>')
--nmap('K', ':lua vim.lsp.buf.hover()<cr>')
--nmap('<c-k>', ':lua vim.lsp.buf.signature_help()<cr>')
--nmap('<leader>af', ':lua vim.lsp.buf.code_action()<cr>')
--nmap('<leader>rn', ':lua vim.lsp.buf.rename()<cr>')

nmap('<C-j>','<cmd>:bnext<cr>')
nmap('<C-k>','<cmd>:bprev<cr>')

