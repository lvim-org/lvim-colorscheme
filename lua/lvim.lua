-- Theme: lvim
-- Author: lvim-org
-- License: BSD 3-Clause License
-- Source: https://github.com/lvim-org/lvim-colorscheme
local lvim = {
    base0 = "#2E3440",
    base1 = "#252A34",
    base2 = "#2B303B",
    bg = "#2E3440",
    bg1 = "#EBCB8B",
    bg_highlight = "#252A34",
    bg_visual = "#EBCB8B",
    fg = "#EBCB8B",
    color_0 = "#56adb7",
    color_1 = "#00839F",
    color_2 = "#90c1a3",
    color_3 = "#f78c6c",
    color_4 = "#1C9898",
    color_5 = "#8ec07c",
    color_6 = "#628b97",
    color_7 = "#ff5c57",
    color_8 = "#F2994B",
    color_9 = "#F2AF5C",
    color_10 = "#E6C068",
    color_11 = "#EBCB8B",
    color_12 = "#8fbcbb",
    color_13 = "#F05F4E",
    color_14 = "#0087d7",
    term_0 = "#2E3440",
    term_1 = "#F05F4E",
    term_2 = "#8ec07c",
    term_3 = "#1F8C8C",
    term_4 = "#EBCB8B",
    term_5 = "#83a598",
    term_6 = "#F2994B",
    term_7 = "#00839F",
    term_8 = "#2aa198",
    term_9 = "#F05F4E",
    term_10 = "#8ec07c",
    term_11 = "#1F8C8C",
    term_12 = "#EBCB8B",
    term_13 = "#83a598",
    term_14 = "#F2994B",
    term_15 = "#00839F",
    color_error = "#F05F4E",
    color_warning = "#F2994B",
    color_info = "#56adb7",
    color_add = "#90c1a3",
    color_delete = "#F05F4E",
    color_change = "#EBCB8B",
    color_change_delete = "#F2994B",
    black = "#1E222A",
    contrast = "#15181e",
    black_background = "#292E39",
    hl = "#4C566A",
    none = "NONE"
}

function lvim.terminal_color()
    vim.g.terminal_color_0 = lvim.term_0
    vim.g.terminal_color_1 = lvim.term_1
    vim.g.terminal_color_2 = lvim.term_2
    vim.g.terminal_color_3 = lvim.term_3
    vim.g.terminal_color_4 = lvim.term_4
    vim.g.terminal_color_5 = lvim.term_5
    vim.g.terminal_color_6 = lvim.term_6
    vim.g.terminal_color_7 = lvim.term_7
    vim.g.terminal_color_8 = lvim.term_8
    vim.g.terminal_color_9 = lvim.term_9
    vim.g.terminal_color_10 = lvim.term_10
    vim.g.terminal_color_11 = lvim.term_11
    vim.g.terminal_color_12 = lvim.term_12
    vim.g.terminal_color_13 = lvim.term_13
    vim.g.terminal_color_14 = lvim.term_14
    vim.g.terminal_color_15 = lvim.term_15
end

function lvim.highlight(group, color)
    local style = color.style and "gui=" .. color.style or "gui=NONE"
    local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
    local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
    local sp = color.sp and "guisp=" .. color.sp or ""
    vim.api.nvim_command("highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp)
end

function lvim.load_syntax()
    local syntax = {
        Normal = {fg = lvim.fg, bg = lvim.bg},
        Terminal = {fg = lvim.fg, bg = lvim.bg},
        SignColumn = {fg = lvim.fg, bg = lvim.black_background},
        FoldColumn = {fg = lvim.color_10, bg = lvim.black},
        VertSplit = {fg = lvim.black, bg = lvim.bg},
        Folded = {fg = lvim.color_12, bg = lvim.bg_highlight},
        EndOfBuffer = {fg = lvim.bg, bg = lvim.none},
        IncSearch = {fg = lvim.fg, bg = lvim.color_1, style = lvim.none},
        Search = {fg = lvim.fg, bg = lvim.color_1},
        ColorColumn = {fg = lvim.none, bg = lvim.bg_highlight},
        Conceal = {fg = lvim.color_12, bg = lvim.none},
        Cursor = {fg = lvim.none, bg = lvim.none, style = "reverse"},
        vCursor = {fg = lvim.none, bg = lvim.none, style = "reverse"},
        iCursor = {fg = lvim.none, bg = lvim.none, style = "reverse"},
        lCursor = {fg = lvim.none, bg = lvim.none, style = "reverse"},
        CursorIM = {fg = lvim.none, bg = lvim.none, style = "reverse"},
        CursorColumn = {fg = lvim.none, bg = lvim.bg_highlight},
        CursorLine = {fg = lvim.none, bg = lvim.bg_highlight},
        LineNr = {fg = lvim.hl, bg = lvim.black_background},
        qfLineNr = {fg = lvim.color_10, bg = lvim.black_background},
        CursorLineNr = {fg = lvim.color_10, bg = lvim.black_background},
        DiffAdd = {fg = lvim.black, bg = lvim.color_6},
        DiffChange = {fg = lvim.black, bg = lvim.color_3},
        DiffDelete = {fg = lvim.black, bg = lvim.color_0},
        DiffText = {fg = lvim.black, bg = lvim.fg},
        Directory = {fg = lvim.color_8, bg = lvim.none},
        ErrorMsg = {fg = lvim.color_error, bg = lvim.none},
        WarningMsg = {fg = lvim.color_warning, bg = lvim.none},
        ModeMsg = {fg = lvim.color_6, bg = lvim.none},
        FocusedSymbol = {fg = lvim.color_5},
        MatchParen = {fg = lvim.color_0, bg = lvim.none},
        NonText = {fg = lvim.bg1},
        Whitespace = {fg = lvim.base2},
        SpecialKey = {fg = lvim.bg1},
        Pmenu = {fg = lvim.color_10, bg = lvim.black},
        PmenuSel = {fg = lvim.base0, bg = lvim.color_10},
        PmenuSelBold = {fg = lvim.base0, bg = lvim.color_10},
        PmenuSbar = {fg = lvim.none, bg = lvim.black},
        PmenuThumb = {fg = lvim.color_9, bg = lvim.color_4},
        WildMenu = {fg = lvim.color_10, bg = lvim.color_5},
        Question = {fg = lvim.color_3},
        Tabline = {fg = lvim.color_10, bg = lvim.none},
        TabLineFill = {style = lvim.none},
        TabLineSel = {fg = lvim.bg1, bg = lvim.none},
        StatusLine = {fg = lvim.color_13, bg = lvim.base2, style = lvim.none},
        StatusLineNC = {fg = lvim.color_12, bg = lvim.base2, style = lvim.none},
        SpellBad = {fg = lvim.color_0, bg = lvim.none, style = "undercurl"},
        SpellCap = {fg = lvim.color_8, bg = lvim.none, style = "undercurl"},
        SpellLocal = {fg = lvim.color_7, bg = lvim.none, style = "undercurl"},
        SpellRare = {fg = lvim.color_9, bg = lvim.none, style = "undercurl"},
        Visual = {fg = lvim.color_12, bg = lvim.black},
        VisualNOS = {fg = lvim.color_12, bg = lvim.black},
        QuickFixLine = {fg = lvim.color_9},
        Debug = {fg = lvim.color_2},
        debugBreakpoint = {fg = lvim.bg, bg = lvim.color_0},
        Boolean = {fg = lvim.color_2},
        Number = {fg = lvim.color_13},
        Float = {bg = lvim.black},
        NormalFloat = {bg = lvim.black},
        FloatBorder = {fg = lvim.color_1, bg = lvim.none},
        PreProc = {fg = lvim.color_9},
        PreCondit = {fg = lvim.color_9},
        Include = {fg = lvim.color_9},
        Define = {fg = lvim.color_3},
        Conditional = {fg = lvim.color_5},
        Repeat = {fg = lvim.color_10},
        Keyword = {fg = lvim.color_2},
        Typedef = {fg = lvim.color_0},
        Exception = {fg = lvim.color_0},
        Statement = {fg = lvim.color_0},
        Error = {fg = lvim.color_error},
        StorageClass = {fg = lvim.color_2},
        Tag = {fg = lvim.color_8},
        Label = {fg = lvim.color_2},
        Structure = {fg = lvim.color_2},
        Operator = {fg = lvim.color_5},
        Title = {fg = lvim.color_2},
        Special = {fg = lvim.fg, style = "bold"},
        SpecialChar = {fg = lvim.fg, style = "bold"},
        Type = {fg = lvim.color_11},
        Function = {fg = lvim.color_3},
        String = {fg = lvim.color_4},
        Character = {fg = lvim.color_5},
        Constant = {fg = lvim.color_7},
        Macro = {fg = lvim.color_7},
        Identifier = {fg = lvim.color_8},
        Comment = {fg = lvim.color_6},
        SpecialComment = {fg = lvim.color_6},
        Todo = {fg = lvim.color_6},
        Delimiter = {fg = lvim.color_5},
        Ignore = {fg = lvim.color_12},
        Underlined = {style = "underline"},
        Bold = {style = "bold"},
        Italic = {style = "italic"},
        DashboardShortCut = {fg = lvim.color_10},
        DashboardHeader = {fg = lvim.color_0},
        DashboardCenter = {fg = lvim.color_7},
        DashboardFooter = {fg = lvim.color_5}
    }
    return syntax
end

function lvim.load_plugin_syntax()
    local plugin_syntax = {
        TSAnnotation = {fg = lvim.color_0},
        TSAttribute = {fg = lvim.color_1},
        TSBoolean = {fg = lvim.color_2},
        TSCharacter = {fg = lvim.color_5},
        TSConditional = {fg = lvim.color_4},
        TSConstant = {fg = lvim.color_5},
        TSEmphasis = {fg = lvim.color_3},
        TSError = {fg = lvim.color_7},
        TSException = {fg = lvim.color_1},
        TSField = {fg = lvim.color_9},
        TSFloat = {fg = lvim.color_10},
        TSFuncBuiltin = {fg = lvim.color_3},
        TSFuncMacro = {fg = lvim.color_12},
        TSKeywordFunction = {fg = lvim.color_3},
        TSLiteral = {fg = lvim.color_10},
        TSNamespace = {fg = lvim.color_5},
        TSNumber = {fg = lvim.color_1},
        TSParameterReference = {fg = lvim.color_2},
        TSPunctSpecial = {fg = lvim.color_3},
        TSRepeat = {fg = lvim.color_4},
        TSString = {fg = lvim.color_5},
        TSStringEscape = {fg = lvim.color_6},
        TSStringRegex = {fg = lvim.color_7},
        TSStrong = {fg = lvim.color_1},
        TSStructure = {fg = lvim.color_9},
        TSText = {fg = lvim.color_10},
        TSTitle = {fg = lvim.color_11},
        TSTypeBuiltin = {fg = lvim.color_3},
        TSUnderline = {fg = lvim.color_13},
        TSURI = {fg = lvim.color_10},
        TSInclude = {fg = lvim.color_0},
        TSPunctBracket = {fg = lvim.color_2},
        TSPunctDelimiter = {fg = lvim.color_2},
        TSType = {fg = lvim.color_11},
        TSFunction = {fg = lvim.color_2, style = "italic"},
        TSTagDelimiter = {fg = lvim.color_6},
        TSProperty = {fg = lvim.color_3},
        TSMethod = {fg = lvim.color_1, style = "italic"},
        TSParameter = {fg = lvim.color_9},
        TSConstructor = {fg = lvim.color_3},
        TSVariable = {fg = lvim.color_9},
        TSOperator = {fg = lvim.color_3},
        TSKeyword = {fg = lvim.color_3, style = "italic"},
        TSVariableBuiltin = {fg = lvim.color_10},
        TSTag = {fg = lvim.color_3},
        TSLabel = {fg = lvim.color_1},
        vimCommentTitle = {fg = lvim.color_12},
        vimLet = {fg = lvim.color_2},
        vimVar = {fg = lvim.color_7},
        vimFunction = {fg = lvim.color_1},
        vimIsCommand = {fg = lvim.fg},
        vimCommand = {fg = lvim.color_8},
        vimNotFunc = {fg = lvim.color_9},
        vimUserFunc = {fg = lvim.color_3},
        vimFuncName = {fg = lvim.color_3},
        diffAdded = {fg = lvim.color_add},
        diffRemoved = {fg = lvim.color_delete},
        diffChanged = {fg = lvim.color_change},
        diffOldFile = {fg = lvim.color_3},
        diffNewFile = {fg = lvim.color_2},
        diffFile = {fg = lvim.color_7},
        diffLine = {fg = lvim.color_12},
        diffIndexLine = {fg = lvim.color_9},
        gitcommitSummary = {fg = lvim.color_0},
        gitcommitUntracked = {fg = lvim.color_12},
        gitcommitDiscarded = {fg = lvim.color_12},
        gitcommitSelected = {fg = lvim.color_12},
        gitcommitUnmerged = {fg = lvim.color_12},
        gitcommitOnBranch = {fg = lvim.color_12},
        gitcommitArrow = {fg = lvim.color_12},
        gitcommitFile = {fg = lvim.color_6},
        NeogitBranch = {fg = lvim.color_6},
        NeogitRemote = {fg = lvim.color_6},
        NeogitHunkHeader = {fg = lvim.color_0, bg = lvim.black},
        NeogitHunkHeaderHighlight = {fg = lvim.color_0, bg = lvim.black},
        NeogitDiffContextHighlight = {fg = lvim.color_add, bg = lvim.black},
        NeogitDiffDeleteHighlight = {fg = lvim.color_delete, bg = lvim.black},
        NeogitDiffAddHighlight = {fg = lvim.color_add, bg = lvim.black},
        NeogitDiffAdd = {fg = lvim.color_add, bg = lvim.black},
        NeogitDiffDelete = {fg = lvim.color_delete, bg = lvim.black},
        VistaBracket = {fg = lvim.color_12},
        VistaChildrenNr = {fg = lvim.color_8},
        VistaKind = {fg = lvim.color_9},
        VistaScope = {fg = lvim.color_0},
        VistaScopeKind = {fg = lvim.color_8},
        VistaTag = {fg = lvim.color_9},
        VistaPrefix = {fg = lvim.color_12},
        VistaColon = {fg = lvim.color_9},
        VistaIcon = {fg = lvim.color_3},
        VistaLineNr = {fg = lvim.fg},
        GitGutterAdd = {fg = lvim.color_add},
        GitGutterChange = {fg = lvim.color_change},
        GitGutterDelete = {fg = lvim.color_delete},
        GitGutterChangeDelete = {fg = lvim.color_change_delete},
        GitSignsAdd = {fg = lvim.color_add, bg = lvim.black_background},
        GitSignsChange = {fg = lvim.color_change, bg = lvim.black_background},
        GitSignsDelete = {fg = lvim.color_delete, bg = lvim.black_background},
        GitSignsAddNr = {fg = lvim.color_add, bg = lvim.black_background},
        GitSignsChangeNr = {fg = lvim.color_change, bg = lvim.black_background},
        GitSignsDeleteNr = {fg = lvim.color_delete, bg = lvim.black_background},
        GitSignsAddLn = {fg = lvim.color_add, bg = lvim.black_background},
        GitSignsChangeLn = {fg = lvim.color_change, bg = lvim.black_background},
        GitSignsDeleteLn = {fg = lvim.color_delete, bg = lvim.black_background},
        SignifySignAdd = {fg = lvim.color_add},
        SignifySignChange = {fg = lvim.color_change},
        SignifySignDelete = {fg = lvim.color_delete},
        dbui_tables = {fg = lvim.color_8},
        LspDiagnosticsSignError = {fg = lvim.color_error, bg = lvim.black_background},
        LspDiagnosticsSignWarning = {fg = lvim.color_warning, bg = lvim.black_background},
        LspDiagnosticsSignInformation = {fg = lvim.color_info, bg = lvim.black_background},
        LspDiagnosticsSignHint = {fg = lvim.color_info, bg = lvim.black_background},
        LspDiagnosticsVirtualTextError = {fg = lvim.color_error, bg = lvim.black_background},
        LspDiagnosticsVirtualTextWarning = {fg = lvim.color_warning, bg = lvim.black_background},
        LspDiagnosticsVirtualTextInformation = {fg = lvim.color_info, bg = lvim.black_background},
        LspDiagnosticsVirtualTextHint = {fg = lvim.color_info, bg = lvim.black_background},
        LspSignatureActiveParameter = {fg = lvim.color_info, bg = lvim.black_background},
        LspDiagnosticsUnderlineError = {
            style = "undercurl",
            sp = lvim.color_error
        },
        LspDiagnosticsUnderlineWarning = {
            style = "undercurl",
            sp = lvim.color_warning
        },
        LspDiagnosticsUnderlineInformation = {
            style = "undercurl",
            sp = lvim.color_info
        },
        LspDiagnosticsUnderlineHint = {
            style = "undercurl",
            sp = lvim.color_info
        },
        DiagnosticSignError = {fg = lvim.color_error, bg = lvim.black_background},
        DiagnosticSignWarn = {fg = lvim.color_warning, bg = lvim.black_background},
        DiagnosticSignInfo = {fg = lvim.color_info, bg = lvim.black_background},
        DiagnosticSignHint = {fg = lvim.color_info, bg = lvim.black_background},
        DiagnosticVirtualTextError = {fg = lvim.color_error, bg = lvim.black_background},
        DiagnosticVirtualTextWarn = {fg = lvim.color_warning, bg = lvim.black_background},
        DiagnosticVirtualTextInfo = {fg = lvim.color_info, bg = lvim.black_background},
        DiagnosticVirtualTextHint = {fg = lvim.color_info, bg = lvim.black_background},
        SignatureAtiveParameter = {fg = lvim.color_info, bg = lvim.black_background},
        DiagnosticUnderlineError = {
            style = "undercurl",
            sp = lvim.color_error
        },
        DiagnosticUnderlineWarn = {
            style = "undercurl",
            sp = lvim.color_warning
        },
        DiagnosticUnderlineInfo = {
            style = "undercurl",
            sp = lvim.color_info
        },
        DiagnosticUnderlineHint = {
            style = "undercurl",
            sp = lvim.color_info
        },
        DiagnosticFloatingError = {fg = lvim.color_error},
        DiagnosticFloatingWarn = {fg = lvim.color_warning},
        DiagnosticFloatingInfo = {fg = lvim.color_info},
        DiagnosticFloatingHint = {fg = lvim.color_info},
        LspDiagnosticsFloatingError = {fg = lvim.color_error},
        LspDiagnosticsFloatingWarn = {fg = lvim.color_warning},
        LspDiagnosticsFloatingInfo = {fg = lvim.color_info},
        LspDiagnosticsFloatingHint = {fg = lvim.color_info},
        LvimFocus = {bg = lvim.black_background},
        LvimHelperNormal = {fg = lvim.color_6, bg = lvim.base2},
        LvimHelperTitle = {fg = lvim.color_9, bg = lvim.none},
        SnapNormal = {fg = lvim.color_6, bg = lvim.none},
        SnapBorder = {fg = lvim.color_1, bg = lvim.none},
        SnapSelect = {fg = lvim.bg, bg = lvim.color_9},
        SnapMultiSelect = {fg = lvim.bg, bg = lvim.color_9},
        SnapPrompt = {fg = lvim.color_9, bg = lvim.none},
        SnapPosition = {fg = lvim.color_9, bg = lvim.none},
        NvimTreeNormal = {bg = lvim.black_background},
        NvimTreeFolderName = {fg = lvim.color_4},
        NvimTreeOpenedFolderName = {fg = lvim.color_11},
        NvimTreeEmptyFolderName = {fg = lvim.color_4},
        NvimTreeRootFolder = {fg = lvim.color_4},
        NvimTreeSpecialFile = {fg = lvim.fg, bg = lvim.none, style = "NONE"},
        NvimTreeFolderIcon = {fg = lvim.color_4},
        NvimTreeIndentMarker = {fg = lvim.hl},
        NvimTreeSignError = {fg = lvim.color_error},
        NvimTreeSignWarning = {fg = lvim.color_warning},
        NvimTreeSignInformation = {fg = lvim.color_info},
        NvimTreeSignHint = {fg = lvim.color_info},
        NvimTreeLspDiagnosticsError = {fg = lvim.color_error},
        NvimTreeLspDiagnosticsWarning = {fg = lvim.color_warning},
        NvimTreeLspDiagnosticsInformation = {fg = lvim.color_info},
        NvimTreeLspDiagnosticsHint = {fg = lvim.color_info},
        NvimTreeWindowPicker = {gui = "bold", fg = lvim.bg, bg = lvim.color_9},
        TroubleNormal = {bg = lvim.black_background},
        TroublePreview = {bg = lvim.none},
        TelescopeBorder = {fg = lvim.color_1},
        TelescopePromptBorder = {fg = lvim.color_1},
        TelescopeMatching = {fg = lvim.color_11},
        TelescopeSelection = {fg = lvim.color_3, bg = lvim.bg_highlight},
        TelescopeSelectionCaret = {fg = lvim.color_3},
        TelescopeMultiSelection = {fg = lvim.color_11},
        Floaterm = {fg = lvim.color_9},
        FloatermBorder = {fg = lvim.color_1},
        BufferCurrent = {fg = lvim.color_8},
        BufferCurrentIndex = {fg = lvim.color_8},
        BufferCurrentMod = {fg = lvim.color_8},
        BufferCurrentSign = {fg = lvim.fg},
        BufferCurrentTarget = {fg = lvim.color_8},
        BufferVisible = {fg = lvim.color_3},
        BufferVisibleIndex = {fg = lvim.color_3},
        BufferVisibleMod = {fg = lvim.color_3},
        BufferVisibleSign = {fg = lvim.fg},
        BufferVisibleTarget = {fg = lvim.color_3},
        BufferInactive = {fg = lvim.color_3},
        BufferInactiveIndex = {fg = lvim.color_3},
        BufferInactiveMod = {fg = lvim.color_3},
        BufferInactiveSign = {fg = lvim.fg},
        BufferInactiveTarget = {fg = lvim.color_3},
        BufferTabpages = {fg = lvim.none},
        BufferTabpageFill = {fg = lvim.none},
        BufferCurrentIcon = {fg = lvim.color_3},
        BufferVisibleIcon = {fg = lvim.color_3},
        BufferInactiveIcon = {fg = lvim.color_3},
        IndentBlanklineChar = {fg = lvim.hl, bg = lvim.none},
        IndentBlanklineSpaceCharBlankline = {fg = lvim.color_1, bg = lvim.none},
        IndentBlanklineContextChar = {fg = lvim.color_1, bg = lvim.none},
        ClapDir = {fg = lvim.color_4, bg = lvim.bg},
        ClapFile = {fg = lvim.color_4, bg = lvim.bg},
        ClapCurrentSelection = {fg = lvim.color_8, bg = lvim.bg},
        ClapCurrentSelectionSign = {fg = lvim.color_8, bg = lvim.bg},
        ClapInput = {fg = lvim.fg, bg = lvim.bg},
        ClapSpinner = {fg = lvim.fg, bg = lvim.bg},
        ClapSearchText = {fg = lvim.color_4, bg = lvim.bg},
        ClapPreview = {fg = lvim.fg, bg = lvim.bg},
        ClapSelected = {fg = lvim.fg, bg = lvim.bg},
        ClapSelectedSign = {fg = lvim.fg, bg = lvim.bg},
        VimwikiHeader1 = {fg = lvim.color_1},
        VimwikiHeader2 = {fg = lvim.color_4},
        VimwikiHeader3 = {fg = lvim.color_5},
        VimwikiHeader4 = {fg = lvim.color_2},
        VimwikiHeader5 = {fg = lvim.color_3},
        VimwikiHeader6 = {fg = lvim.color_9},
        VimwikiLink = {fg = lvim.color_14},
        VimwikiHeaderChar = {fg = lvim.color_6},
        VimwikiHR = {fg = lvim.color_12},
        VimwikiList = {fg = lvim.color_13},
        VimwikiTag = {fg = lvim.color_1},
        SniprunVirtualTextOk = {bg = lvim.color_1},
        SniprunFloatingWinOk = {fg = lvim.color_1},
        SniprunVirtualTextErr = {bg = lvim.error, fg = lvim.fg},
        SniprunFloatingWinErr = {fg = lvim.error},
        HopNextKey = {fg = lvim.color_7, style = "bold"},
        HopNextKey1 = {fg = lvim.color_8, style = "bold"},
        HopNextKey2 = {fg = lvim.color_10, style = "bold"},
        HopUnmatched = {fg = lvim.color_6, sp = lvim.color_6}
    }
    return plugin_syntax
end

local async_load_plugin

async_load_plugin =
    vim.loop.new_async(
    vim.schedule_wrap(
        function()
            lvim.terminal_color()
            local syntax = lvim.load_plugin_syntax()
            for group, colors in pairs(syntax) do
                lvim.highlight(group, colors)
            end
            async_load_plugin:close()
        end
    )
)

function lvim.colorscheme()
    vim.api.nvim_command("hi clear")
    if vim.fn.exists("syntax_on") then
        vim.api.nvim_command("syntax reset")
    end
    vim.o.background = "dark"
    vim.o.termguicolors = true
    vim.g.colors_name = "lvim"
    local syntax = lvim.load_syntax()
    for group, colors in pairs(syntax) do
        lvim.highlight(group, colors)
    end
    async_load_plugin:send()
end

lvim.colorscheme()

return lvim
