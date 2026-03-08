return {
	"nvim-neo-tree/neo-tree.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	lazy = false,

	keys = {
		{
			"<leader>e",
			function()
				require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
			end,
			desc = "Explorer (NeoTree)",
		},
	},

	opts = {
		filesystem = {
			follow_current_file = {
				enabled = true,
			},
			hijack_netrw_behavior = "open_default",
		},
	},
}

-- Original Config: I'm saving this just in case

-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

--return {
--  'nvim-neo-tree/neo-tree.nvim',
--  version = '*',
--  dependencies = {
--    'nvim-lua/plenary.nvim',
--    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
--    'MunifTanjim/nui.nvim',
--  },
--  lazy = false,
--  keys = {
--    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
--  },
--  opts = {
--    filesystem = {
--      window = {
--        mappings = {
--          ['\\'] = 'close_window',
--        },
--      },
--    },
--  },
--}
