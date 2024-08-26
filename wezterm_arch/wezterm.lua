local wezterm = require("wezterm")
return {
    --  color_scheme = 'termnial.sexy',
    color_scheme = "Catppuccin Mocha",
    font = wezterm.font("JetBrains Mono", { weight = "Regular" }),
    enable_tab_bar = false,
    font_size = 12.0,
    -- macos_window_background_blur = 40,
    --  	macos_window_background_blur = 30,
    --
    audible_bell = "Disabled",
    -- window_background_image = '/Users/omerhamerman/Downloads/3840x1080-Wallpaper-041.jpg',
    -- window_background_image_hsb = {
    -- 	brightness = 0.01,
    -- 	hue = 1.0,
    -- 	saturation = 0.5,
    -- },
    -- window_background_opacity = 0.92,
    window_background_opacity = 0.97,
    text_background_opacity = 0.6,
    -- window_background_image = "/home/wdek/priv/wallpapers/ED6GtF6.jpg",
    window_background_image = "/home/wdek/priv/wallpapers/FoYSdVJ.jpg",
    -- window_background_image = "/home/wdek/priv/wallpapers/road_to_samarkant.jpg",
    -- window_background_image = "/home/wdek/priv/wallpapers/24LrDFQ.jpg",

    -- window_background_opacity = 0.78,
    window_background_image_hsb = {
        brightness = 0.04,
        hue = 1.0,
        saturation = 0.80,
    },
    -- window_background_opacity = 0.20,
    -- 	window_decorations = 'RESIZE',
    -- 	keys = {
    -- 		{
    -- 			key = 'f',
    -- 			mods = 'CTRL',
    -- 			action = wezterm.action.ToggleFullScreen,
    -- 		},
    -- 	},
    -- 	mouse_bindings = {
    -- 	  -- Ctrl-click will open the link under the mouse cursor
    -- 	  {
    -- 	    event = { Up = { streak = 1, button = 'Left' } },
    -- 	    mods = 'CTRL',
    -- 	    action = wezterm.action.OpenLinkAtMouseCursor,
    -- 	  },
    -- 	},
    --
    wezterm.on("user-var-changed", function(window, pane, name, value)
        local overrides = window:get_config_overrides() or {}
        if name == "ZEN_MODE" then
            local incremental = value:find("+")
            local number_value = tonumber(value)
            if incremental ~= nil then
                while number_value > 0 do
                    window:perform_action(wezterm.action.IncreaseFontSize, pane)
                    number_value = number_value - 1
                end
                overrides.enable_tab_bar = false
            elseif number_value < 0 then
                window:perform_action(wezterm.action.ResetFontSize, pane)
                overrides.font_size = nil
                overrides.enable_tab_bar = false
            else
                overrides.font_size = number_value
                overrides.enable_tab_bar = false
            end
        end
        window:set_config_overrides(overrides)
    end),
}
