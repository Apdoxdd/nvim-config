   return {
   	"nvim-treesitter/nvim-treesitter",
   	branch = "master",
   	lazy = false,
   	build = ":TSUpdate",
   	config = function()
   		require("nvim-treesitter.configs").setup({
   			ensure_installed = {
   				"c", "cpp", "lua", "vim", "vimdoc", "query",
   				"markdown", "markdown_inline", "bash",
   			},
   			highlight = { enable = true },
   		})
   	end,
   }

