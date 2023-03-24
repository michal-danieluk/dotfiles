
local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

bufferline.setup({
  options = {
    mode = "tabs",
--    separator_style = 'slant',
    always_show_bufferline = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true
  },
-- highlights = {
--    separator = {
--      fg = '#2d2a2e',--'#403E41', --'#2e2e2e',
--      bg = '#2D2A2E',
--    },
--    separator_selected = {
--      fg = '#2e2e2e',
--    },
--   background = {
--     fg = '#FCFCFA',
--     bg = '#403E41',
--    },
--    buffer_selected = {
--      fg = '#fCfCFA',
--      bold = true,
--    },
--    fill = {
--      bg = '#403E41' --'#2d2a2e'
--      --bg = '#073642'
--    }
--  },
})
