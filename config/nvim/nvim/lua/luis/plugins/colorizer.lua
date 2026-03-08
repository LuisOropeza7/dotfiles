return {

	"catgoose/nvim-colorizer.lua",
	enabled = true,
	event = "BufReadPre",

	config = function()
		require("colorizer").setup({

			"*",
			"conf",

			conf = {
				RGB = true,
				RRGGBB = true,
				RRGGBBAA = true,
				names = false,
				mode = "background",
			},
		})
	end,
}
