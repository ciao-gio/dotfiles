return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").setup({})
		require("nvim-treesitter").install({ "lua", "c", "typst" })

		-- highlighting is now enabled manually per filetype
		vim.api.nvim_create_autocmd("FileType", {
			pattern = { "lua", "c", "typst" },
			callback = function()
				vim.treesitter.start()
			end,
		})
	end,
}
