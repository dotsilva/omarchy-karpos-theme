return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
		priority = 1000,
		opts = {
			flavour = "mocha",
			term_colors = false,
			color_overrides = {
				mocha = {
					base = "#1E1E1E", -- darkness_6 - Matthew 27:45
					mantle = "#1E1E1E", -- darkness_6 - Matthew 27:45
					crust = "#1E1E1E", -- darkness_6 - Matthew 27:45
					surface0 = "#8A8A8A", -- darkness_1 - Matthew 27:45
					surface1 = "#8A8A8A", -- darkness_1 - Matthew 27:45
					surface2 = "#8A8A8A", -- darkness_1 - Matthew 27:45
					overlay0 = "#8A8A8A", -- darkness_1 - Matthew 27:45
					overlay1 = "#8A8A8A", -- darkness_1 - Matthew 27:45
					overlay2 = "#8A8A8A", -- darkness_1 - Matthew 27:45
					text = "#D2D2D2", -- broken_bread_1 - Matthew 26:17,26
					subtext0 = "#D2D2D2", -- broken_bread_1 - Matthew 26:17,26
					subtext1 = "#D2D2D2", -- broken_bread_1 - Matthew 26:17,26
					red = "#F34E4E", -- poured_wine_1 - Matthew 26:27-29
					maroon = "#F34E4E", -- poured_wine_1 - Matthew 26:27-29
					peach = "#CFCF2A", -- royal_sash_1 - Revelation 1:13
					yellow = "#CFCF2A", -- royal_sash_1 - Revelation 1:13
					green = "#36DB36", -- gethsemane_1 - Exodus 27:20; Matthew 26:36
					teal = "#38D5D5", -- water_of_life_1 - Revelation 22:1,17
					sky = "#38D5D5", -- water_of_life_1 - Revelation 22:1,17
					lavender = "#7E7EFF", -- first_day_1 - Mark 16:2
					sapphire = "#7E7EFF", -- first_day_1 - Mark 16:2
					blue = "#7E7EFF", -- first_day_1 - Mark 16:2
					rosewater = "#E742E7", -- thorned_veil_1 - Exodus 26:31; Matthew 27:51
					flamingo = "#E742E7", -- thorned_veil_1 - Exodus 26:31; Matthew 27:51
					pink = "#E742E7", -- thorned_veil_1 - Exodus 26:31; Matthew 27:51
					mauve = "#E742E7", -- thorned_veil_1 - Exodus 26:31; Matthew 27:51
				},
			},
			custom_highlights = function(c)
				return {
					-- Base UI (Cyan = Active Focus/Interaction)
					Cursor = { fg = c.base, bg = c.teal },
					lCursor = { fg = c.base, bg = c.teal },
					CursorIM = { fg = c.base, bg = c.teal },
					Search = { fg = c.base, bg = c.teal },
					IncSearch = { fg = c.base, bg = c.teal },

					-- Visual Selection: Cyan background, Terminal Base text (Active/Ephemeral)
					Visual = { bg = c.teal, fg = c.base, bold = true },

					-- Cursor Line: Subtle structural underline so Treesitter syntax highlighting survives
					CursorLine = { bg = "NONE", underdouble = true, sp = c.teal },
					CursorLineNr = { fg = c.teal, bold = true }, -- Cyan anchor for the eyes

					-- Popup Menus (Autocomplete for Cmdline & Code)
					Pmenu = { fg = c.text, bg = c.base }, -- Standard text on dark background
					PmenuSel = { fg = c.base, bg = c.teal, bold = true }, -- Active selection is Cyan
					PmenuSbar = { bg = c.base },
					PmenuThumb = { bg = c.surface0 },
					WildMenu = { fg = c.base, bg = c.teal, bold = true }, -- Native command line selection

					-- Blink Autocomplete Specifics
					BlinkCmpMenu = { fg = c.text, bg = c.base },
					BlinkCmpMenuSelection = { fg = c.base, bg = c.teal, bold = true },
					BlinkCmpLabel = { fg = c.text }, -- Force unselected text to be fully readable
					BlinkCmpLabelMatch = { fg = c.teal, bold = true }, -- Matching typed chars are Cyan

					-- Word under cursor (Bold Cyan text, no background, so it does not merge with the cursor)
					LspReferenceText = { fg = c.teal, bg = "NONE", bold = true, italic = true },
					LspReferenceRead = { fg = c.teal, bg = "NONE", bold = true, italic = true },
					LspReferenceWrite = { fg = c.teal, bg = "NONE", bold = true, italic = true },

					-- Picker UI (Telescope/Snacks active prompts)
					TelescopeMatching = { fg = c.teal, bold = true },
					TelescopeSelectionCaret = { fg = c.teal },
					TelescopeBorder = { fg = c.surface0 },
					TelescopePromptBorder = { fg = c.teal },

					-- Gray/Dim (Secondary context, Background elements)
					Comment = { fg = c.surface0, italic = true },
					-- Indent Lines (Cyan for the active scope you are currently inside)
					SnacksIndent = { fg = c.surface0, nocombine = true }, -- Inactive lines stay dim gray
					SnacksIndentScope = { fg = c.teal, nocombine = true }, -- Active scope lights up Cyan
					SnacksIndentChunk = { fg = c.teal, nocombine = true },

					-- Noice UI (Command line interactions)
					NoiceCmdlinePopupBorder = { fg = c.teal },
					NoiceCmdlineIcon = { fg = c.teal },
					NoiceCmdlinePopupBorderSearch = { fg = c.teal },
					NoiceCmdlineIconSearch = { fg = c.teal },

					-- Flash.nvim (Prevent jump labels from using Red/Yellow Alarms)
					FlashLabel = { fg = c.base, bg = c.teal, bold = true },
					FlashMatch = { fg = c.text, bg = c.surface0 },
					FlashCurrent = { fg = c.base, bg = c.teal, bold = true },

					-- Magenta (Structural Logic, Brackets & Punctuation)
					["@punctuation"] = { fg = c.mauve },
					["@punctuation.bracket"] = { fg = c.mauve },
					["@punctuation.delimiter"] = { fg = c.mauve },
					["@punctuation.special"] = { fg = c.mauve }, -- String Interpolation brackets
					["@operator"] = { fg = c.mauve },
					["@keyword"] = { fg = c.mauve, italic = true },
					["@keyword.control"] = { fg = c.mauve, italic = true, bold = true },
				}
			end,
		},
	},

	-- 2. Noice UI
	{
		"folke/noice.nvim",
		opts = {
			presets = { lsp_doc_border = true },
			views = {
				cmdline_popup = { border = { style = "single" } },
				cmdline_popupmenu = { border = { style = "single" } },
				popup = { border = { style = "single" } },
				mini = { border = { style = "single" } },
				hover = { border = { style = "single" } },
			},
		},
	},

	-- 3. Which-Key UI
	{
		"folke/which-key.nvim",
		opts = {
			win = { border = "single" },
		},
	},

	-- 4. Mason UI
	{
		"mason-org/mason.nvim",
		opts = {
			ui = { border = "single" },
		},
	},

	-- 5. Telescope UI (Optional)
	{
		"nvim-telescope/telescope.nvim",
		optional = true,
		opts = {
			defaults = {
				borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
			},
		},
	},

	-- 6. Blink.cmp UI (Optional)
	{
		"saghen/blink.cmp",
		optional = true,
		opts = {
			completion = {
				menu = { border = "single" },
				documentation = { window = { border = "single" } },
			},
			signature = { window = { border = "single" } },
		},
	},

	-- 7. Neo-tree UI (Optional)
	{
		"nvim-neo-tree/neo-tree.nvim",
		optional = true,
		opts = {
			popup_border_style = "single",
		},
	},

	-- 8. Native Neovim UI Overrides & LazyVim Core
	{
		"LazyVim/LazyVim",
		opts = { colorscheme = "catppuccin" },
		init = function()
			-- Native Diagnostics
			vim.diagnostic.config({
				float = { border = "single" },
			})

			-- Native Floating Windows
			vim.o.winborder = "single"
		end,
	},
}
