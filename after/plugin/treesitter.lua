require("nvim-treesitter.configs").setup({
	context_commentstring = {
		enable = true,
		enable_autocmd = false,
		-- commentary_integration = {
		-- 	Commentary = "<c-_>",
		-- 	CommentaryLine = "<c-_>",
		-- },
	},
	ignore_install = {},
	modules = {},
	auto_install = true,
	incremental_selection = { enable = true },
	textobjects = { enable = true },
	ensure_installed = {
		"lua",
		"c",
		"cpp",
		"go",
		"javascript",
		"typescript",
		"python",
		"bash",
		"dockerfile",
		"astro",
		"csv",
		"svelte",
		-- "comment",
		"vue",
		"c_sharp",
		"gitignore",
		"gitcommit",
		"git_rebase",
		"git_config",
		"gitattributes",
		"java",
		"cmake",
		"css",
		"scss",
		"diff",
		"gomod",
		"gosum",
		"gowork",
		"graphql",
		"prisma",
		"json",
		"html",
		"http",
		"htmldjango",
		"jsdoc",
		"ini",
		"json5",
		"llvm",
		-- "latex",
		"make",
		"markdown",
		"markdown_inline",
		"ninja",
		"php",
		"pug",
		"regex",
		"rust",
		"solidity",
		"ruby",
		"sql",
		"toml",
		"tsx",
		"vim",
		"yaml",
	},
	sync_install = false,
	indent = {
		enable = true,
	},
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	autotag = {
		enable = true,
	},
})
