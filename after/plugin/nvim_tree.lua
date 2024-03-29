local present, nvimtree = pcall(require, "nvim-tree")

if not present then
	return
end

local function my_on_attach(bufnr)
	local api = require("nvim-tree.api")

	local Event = require("nvim-tree.api").events.Event
	api.events.subscribe(Event.TreeOpen, function()
		vim.opt_local.fillchars = "eob: "
	end)

	local function opts(desc)
		return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end

	-- default mappings
	api.config.mappings.default_on_attach(bufnr)

	-- custom mappings
	vim.keymap.set("n", "[g", api.node.navigate.git.prev, opts("Prev Git"))
	vim.keymap.set("n", "]g", api.node.navigate.git.next, opts("Next Git"))
end

local options = {
	on_attach = my_on_attach,
	disable_netrw = false,
	hijack_netrw = true,
	hijack_cursor = true,
	hijack_unnamed_buffer_when_opening = true,
	sync_root_with_cwd = true,
	update_focused_file = {
		enable = true,
		update_root = true,
	},
	renderer = {
		highlight_git = true,
		indent_markers = {
			enable = true,
		},
		special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md" },
		symlink_destination = true,
	},
	auto_reload_on_write = true,
	actions = {
		open_file = {
			quit_on_open = true,
			resize_window = true,
			window_picker = {
				enable = true,
				chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
				exclude = {
					filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
					buftype = { "nofile", "terminal", "help" },
				},
			},
		},
	},
	view = {
		-- side = "right",
		width = 40,
		-- adaptive_size = true,
		preserve_window_proportions = true,
		cursorline = false,
	},
	diagnostics = {
		enable = true,
		show_on_dirs = true,
	},
	git = {
		enable = true,
		ignore = true,
		show_on_dirs = true,
		timeout = 400,
	},
	filters = {
		dotfiles = true,
		custom = { ".git" },
		exclude = { ".gitignore", ".env", ".github" },
	},
	filesystem_watchers = {
		enable = true,
	},
}

nvimtree.setup(options)
