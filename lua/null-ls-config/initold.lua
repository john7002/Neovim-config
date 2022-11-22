-- local null_ls = require('null-ls')
--
-- local formatting = null_ls.builtins.formatting
--
-- null_ls.setup({
--   sources = {
--     formatting.prettier, formatting.black, formatting.shfmt,
--     formatting.clang_format, formatting.cmake_format,
--     formatting.lua_format.with({
--       extra_args = {
--         '--no-keep-simple-function-one-line', '--no-break-after-operator', '--column-limit=100',
--         '--break-after-table-lb', '--indent-width=2'
--       }
--     }), formatting.isort, formatting.codespell.with({filetypes = {'markdown'}})
--   },
--   on_attach = function(client)
--     if client.server_capabilities.documentFormattingProvider then
--       -- vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.format")
--      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
--         vim.api.nvim_create_autocmd("BufWritePre", {
--             group = augroup,
--             buffer = bufnr,
--             -- on 0.8, you should use vim.lsp.buf.format instead
--             callback = vim.lsp.buf.formatting_sync,
--         })
--     end
--    -- vim.cmd [[
--    --    augroup document_highlight
--    --      autocmd! * <buffer>
--    --      autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
--    --      autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
--    --    augroup END
--    --  ]]
--   end
-- })

-- local ok, null_ls = pcall(require, "null-ls")
-- if not ok then
--     return
-- end
--
-- local formatting = null_ls.builtins.formatting
-- local diagnostics = null_ls.builtins.diagnostics
-- local code_actions = null_ls.builtins.code_actions
--
-- null_ls.setup({
--     sources = {
--         -- Python
--         --diagnostics.flake8.with({ extra_args = { "--max-line-length", "88" } }),
--         formatting.black.with({ extra_args = { "--fast" } }),
--         --formatting.isort.with({ extra_args = { "--profile", "black" } }),
--         -- Typescript
--         diagnostics.eslint_d,
--         code_actions.eslint_d,
--         formatting.prettier,
--         -- Lua
--         formatting.stylua,
--         -- Go
--         formatting.gofmt,
--     },
--     on_attach = function(client, bufnr)
--         if client.server_capabilities.documentFormattingProvider then
--             local group = vim.api.nvim_create_augroup("LspFormatting", { clear = true })
--             vim.api.nvim_create_autocmd(
--                 "BufWritePre",
--                 { buffer = bufnr, callback = vim.lsp.buf.formatting_sync, group = group }
--             )
--         end
--     end,
-- })


local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
    return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

-- https://github.com/prettier-solidity/prettier-plugin-solidity
-- npm install --save-dev prettier prettier-plugin-solidity
null_ls.setup {
    debug = false,
    sources = {
        formatting.prettier.with {
            extra_filetypes = { "toml", "solidity" },
            extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" },
        },
        formatting.black.with { extra_args = { "--fast" } },
        formatting.stylua,
        formatting.google_java_format,
        diagnostics.flake8,
    },
}
