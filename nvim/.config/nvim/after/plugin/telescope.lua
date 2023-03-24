local status, telescope = pcall(require, "telescope")
if not status then
	return
end

telescope.setup({
	extensions = {
		file_browser = {
		--	theme = "ivy",
			theme = "dropdown",
			-- disables netrw and use telescope-file-browser in its place
			hijack_netrw = true,
			mappings = {
				["i"] = {
					-- your custom insert mode mappings
				},
				["n"] = {
					-- your custom normal mode mappings
				},
			},
	},
	},
})

local function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end



telescope.load_extension("file_browser")

vim.keymap.set("n", "sf", function()
  telescope.extensions.file_browser.file_browser({
    path = "%:p:h",
    cwd = telescope_buffer_dir(),
    respect_gitignore = false,
    hidden = true,
    grouped = true,
    previewer = false,
    initial_mode = "normal",
    layout_config = { height = 40 }
  })
end)

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>fr', function()
	telescope.grep_string({ search = vim.fn.input("Grep > ") })
end)
