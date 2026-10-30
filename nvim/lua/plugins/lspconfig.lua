return {
    "neovim/nvim-lspconfig",
    config = function()
        -- Impostazioni specifiche per tinymist
        vim.lsp.config("tinymist", {
            settings = {
                formatterMode = "typstyle",
                exportPdf = "onType",
                semanticTokens = "disable",
            },
        })

        -- Abilita i server LSP desiderati
        vim.lsp.enable({ "lua_ls", "clangd", "pyright", "tinymist" })

        -- Keymaps
        vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
        vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
        vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
}
-- return {
--     "neovim/nvim-lspconfig",
--     config = function()
--         local lspconfig = require("lspconfig")
--
--         lspconfig.lua_ls.setup({})
--         lspconfig.clangd.setup({})
--         lspconfig.pyright.setup({})
--
--         lspconfig.tinymist.setup({
--             settings = {
--                 formatterMode = "typstyle",
--                 exportPdf = "onType",
--                 semanticTokens = "disable",
--             },
--         })
--
--         vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
--         vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
--         vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
--         vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
--     end,
-- }
