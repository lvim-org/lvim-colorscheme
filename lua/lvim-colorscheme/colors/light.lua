local utils = require("lvim-colorscheme.utils")

local colors = {
    none = "NONE",
    color_01 = "#242B30",
    color_02 = "#272F35",
    color_03 = "#2A3339",
    color_04 = "#364249",
    color_05 = "#415058",
    color_06 = "#4C5D67",
    color_07 = "#00839F",
    color_08 = "#1C9898",
    color_09 = "#2AA198",
    color_10 = "#20ACAC",
    color_11 = "#41A6B5",
    color_12 = "#609F9E",
    color_13 = "#70A9A8",
    color_14 = "#8fBCBB",
    color_15 = "#83A598",
    color_16 = "#90C1A3",
    color_17 = "#7CB692",
    color_18 = "#A7C080",
    color_19 = "#95B365",
    color_20 = "#F08628",
    color_21 = "#F2994B",
    color_22 = "#F2AF5C",
    color_23 = "#E6C068",
    color_24 = "#F05F4E",
    color_25 = "#F16A5B",
    git = { add = "#A7C080", change = "#F2AF5C", delete = "#F05F4E", conflict = "#F2994B", ignore = "#2AA198" },
    gitSigns = { add = "#A7C080", change = "#F2AF5C", delete = "#F05F4E" },
    diff = { add = "#323926", change = "#48341B", delete = "#481C17", text = "#242B30" },
}
colors.border_highlight = colors.color_06
colors.border = utils.darken(colors.color_03, 0.5, "#161a1d")
colors.bg_popup = utils.darken(colors.color_01, 0.7, "#161a1d")
colors.bg_statusline = utils.darken(colors.color_01, 0.7, "#161a1d")
colors.bg_sidebar = utils.darken(colors.color_01, 0.7, "#161a1d")
colors.bg_float = utils.darken(colors.color_01, 0.7, "#161a1d")
colors.bg_visual = colors.color_05
colors.bg_search = colors.color_05
colors.fg_sidebar = colors.color_22
colors.success = colors.color_18
colors.error = colors.color_24
colors.warning = colors.color_21
colors.info = colors.color_07
colors.hint = colors.color_09

return colors