local util = require("lvim-colorscheme.util")

local colors = require("lvim-colorscheme.colors")

local M = {}

function M.setup()
    local config = require("lvim-colorscheme.config")
    local options = config.options
    local theme = {
        config = options,
        colors = colors.setup(),
    }
    local c = theme.colors
    theme.highlights = {
        Boolean = { fg = c.color_16 },
        Character = { fg = c.color_24 },
        Comment = { fg = c.color_15, style = options.styles.comments },
        Conditional = { fg = c.color_11 }, -- fix
        Constant = { fg = c.color_07 },
        Constructor = { fg = c.color_16 },
        Danger = { bg = c.error, fg = c.color_03 },
        Debug = { fg = c.color_18 }, -- fix
        Define = { fg = c.color_11 }, -- fix
        Delimiter = { fg = c.color_07 },
        Exception = { fg = c.color_19 },
        Field = { fg = c.color_20 },
        Float = { fg = c.color_18 },
        FuncBuiltin = { fg = c.color_18 },
        Function = { fg = c.color_24, style = options.styles.functions },
        Identifier = { fg = c.color_24, style = options.styles.variables },
        Include = { fg = c.color_09 },
        Keyword = { fg = c.color_19, style = options.styles.keywords },
        KeywordFunction = { fg = c.color_24, style = options.styles.keywords },
        Label = { fg = c.color_13 },
        Macro = { fg = c.color_14 },
        Note = { bg = c.info, fg = c.color_03 },
        Number = { fg = c.color_17 },
        Operator = { fg = c.color_23, style = "bold" },
        Parameter = { fg = c.color_17 },
        PreProc = { fg = c.color_23 },
        Property = { fg = c.color_21 },
        Repeat = { fg = c.color_18 }, -- fix
        Special = { fg = c.color_09 },
        SpecialChar = { fg = c.color_07 }, -- fix
        SpecialComment = { fg = c.color_18 }, -- fix
        StorageClass = { fg = c.color_07 }, -- fix
        String = { fg = c.color_13 },
        StringEscape = { fg = c.color_24 },
        StringRegex = { fg = c.color_14 },
        Structure = { fg = c.color_25 },
        Tag = { fg = c.color_21 },
        TextReference = { fg = c.color_09 },
        Title = { fg = c.color_13, style = "bold" },
        Todo = { bg = c.color_19, fg = c.color_03 },
        Type = { fg = c.color_19 },
        Typedef = { fg = c.color_24 },
        Variable = { fg = c.color_17, style = options.styles.variables },
        VariableBuiltin = { fg = c.color_25 },
        --
        Error = { bg = c.error, fg = c.color_03 },
        ErrorMsg = { fg = c.error },
        ModeMsg = { bg = c.none, fg = c.color_16, style = "bold" },
        MoreMsg = { fg = c.color_13 },
        MsgArea = { fg = c.color_16 },
        Warning = { bg = c.warning, fg = c.color_03 },
        WarningMsg = { fg = c.warning },
        --
        ColorColumn = { bg = c.color_04 },
        Conceal = { fg = c.color_06 },
        Cursor = { bg = c.color_21, fg = c.color_03 },
        CursorColumn = { bg = c.color_04 },
        CursorIM = { bg = c.color_21, fg = c.color_03 },
        CursorLine = { bg = c.color_03 },
        CursorLineNr = { fg = c.color_18, style = "bold" },
        Directory = { fg = c.color_13 },
        EndOfBuffer = { fg = c.color_06 },
        FloatBorder = { bg = c.bg_float, fg = c.bg_float },
        FocusedSymbol = { bg = c.none, style = "bold" },
        FoldColumn = { bg = c.color_03, fg = c.color_15 },
        Folded = { bg = c.color_04, fg = c.color_13 },
        LineNr = { fg = c.color_06 },
        MatchParen = { fg = c.color_20, style = "bold" },
        NonText = { fg = c.color_05 },
        Normal = { bg = c.color_01 },
        NormalFloat = { bg = c.bg_float, fg = c.color_21 },
        NormalNC = { bg = c.color_03 },
        NormalSB = { bg = c.bg_sidebar, fg = c.fg_sidebar },
        Pmenu = { bg = c.bg_popup, fg = c.color_21 },
        PmenuSbar = { bg = c.color_03 },
        PmenuSel = { bg = c.color_03, fg = c.color_21 },
        PmenuThumb = { bg = c.color_21 },
        SignColumn = { bg = c.none },
        SignColumnSB = { bg = c.bg_sidebar },
        Substitute = { bg = c.color_25, fg = c.color_04 },
        VertSplit = { bg = c.color_01, fg = c.color_01 },
        Winbar = { bg = c.bg_statusline, fg = c.color_22 },
        lCursor = { bg = c.color_21, fg = c.color_03 },
        --
        DiffAdd = { bg = c.diff.add },
        DiffChange = { bg = c.diff.change },
        DiffDelete = { bg = c.diff.delete },
        DiffText = { bg = c.bg_sidebar },
        --
        IncSearch = { bg = c.bg_search, fg = c.color_18, style = "bold" },
        Question = { fg = c.color_13 },
        QuickFixLine = { bg = c.color_03, style = "bold" },
        Replace = { bg = c.bg_search, fg = c.color_25 },
        Search = { bg = c.bg_search, fg = c.color_18 },
        SpecialKey = { fg = c.color_05 },
        SpellBad = { sp = c.error, style = "undercurl" },
        SpellCap = { sp = c.warning, style = "undercurl" },
        SpellLocal = { sp = c.info, style = "undercurl" },
        SpellRare = { sp = c.hint, style = "undercurl" },
        Statement = { fg = c.color_22 },
        StatusLine = { bg = c.bg_statusline, fg = c.fg_sidebar },
        StatusLineNC = { bg = c.bg_statusline, fg = c.color_04 },
        TabLine = { bg = c.bg_statusline, fg = c.color_19, style = "bold" },
        TabLineFill = { bg = c.color_02 },
        TabLineSel = { bg = c.color_13, fg = c.color_02 },
        Visual = { bg = c.bg_visual },
        VisualNOS = { bg = c.bg_visual },
        Whitespace = { fg = c.color_04 },
        WildMenu = { bg = c.bg_visual },
        --
        Underlined = { style = "underline" },
        Bold = { style = "bold" },
        Italic = { style = "italic" },
        --
        AlphaButton = { fg = c.color_21, style = "bold" },
        AlphaFooter = { fg = c.color_23 },
        AlphaHeader = { fg = c.color_25 },
        AlphaQuote = { fg = c.color_19 },
        BqfPreviewBorder = { bg = c.color_01, fg = c.color_07 },
        BqfPreviewRange = { bg = c.none, fg = c.color_19 },
        BufferCurrent = { bg = c.color_04, fg = c.color_21 },
        BufferCurrentIndex = { bg = c.color_04, fg = c.info },
        BufferCurrentMod = { bg = c.color_04, fg = c.warning },
        BufferCurrentSign = { bg = c.color_04, fg = c.info },
        BufferCurrentTarget = { bg = c.color_04, fg = c.color_25 },
        BufferInactive = { bg = c.bg_statusline, fg = c.color_06 },
        BufferInactiveIndex = { bg = c.bg_statusline, fg = c.color_06 },
        BufferInactiveMod = { bg = c.bg_statusline, fg = c.warning },
        BufferInactiveSign = { bg = c.bg_statusline, fg = c.border_highlight },
        BufferInactiveTarget = { bg = c.bg_statusline, fg = c.color_25 },
        BufferLineFill = { bg = c.color_02 },
        BufferLineIndicatorSelected = { fg = c.git.change },
        BufferTabpage = { bg = c.bg_statusline, fg = c.border_highlight },
        BufferTabpages = { bg = c.bg_statusline, fg = c.none },
        BufferVisible = { bg = c.bg_statusline, fg = c.color_21 },
        BufferVisibleIndex = { bg = c.bg_statusline, fg = c.info },
        BufferVisibleMod = { bg = c.bg_statusline, fg = c.warning },
        BufferVisibleSign = { bg = c.bg_statusline, fg = c.info },
        BufferVisibleTarget = { bg = c.bg_statusline, fg = c.color_25 },
        CalNormal = { bg = c.bg_sidebar },
        CalSaturday = { fg = c.color_08 },
        CalSunday = { fg = c.color_08 },
        CalToday = { fg = c.color_19, style = "bold" },
        CmpDocumentation = { bg = c.bg_float, fg = c.color_21 },
        CmpDocumentationBorder = { bg = c.bg_float, fg = c.border_highlight },
        CmpItemAbbr = { bg = c.none, fg = c.color_21 },
        CmpItemAbbrDeprecated = { bg = c.none, fg = c.color_04, style = "strikethrough" },
        CmpItemAbbrMatch = { bg = c.none, fg = c.color_12 },
        CmpItemAbbrMatchFuzzy = { bg = c.none, fg = c.color_12 },
        CmpItemKindClass = { bg = c.none, fg = c.color_20 },
        CmpItemKindConstant = { bg = c.none, fg = c.color_24 },
        CmpItemKindConstructor = { bg = c.none, fg = c.color_13 },
        CmpItemKindDefault = { bg = c.none, fg = c.color_16 },
        CmpItemKindEnum = { bg = c.none, fg = c.color_20 },
        CmpItemKindEnumMember = { bg = c.none, fg = c.color_08 },
        CmpItemKindEvent = { bg = c.none, fg = c.color_20 },
        CmpItemKindField = { bg = c.none, fg = c.color_08 },
        CmpItemKindFunction = { bg = c.none, fg = c.color_13 },
        CmpItemKindInterface = { bg = c.none, fg = c.color_20 },
        CmpItemKindKeyword = { bg = c.none, fg = c.color_23 },
        CmpItemKindMethod = { bg = c.none, fg = c.color_13 },
        CmpItemKindModule = { bg = c.none, fg = c.color_19 },
        CmpItemKindOperator = { bg = c.none, fg = c.color_08 },
        CmpItemKindProperty = { bg = c.none, fg = c.color_08 },
        CmpItemKindReference = { bg = c.none, fg = c.color_24 },
        CmpItemKindSnippet = { bg = c.none, fg = c.color_19 },
        CmpItemKindStruct = { bg = c.none, fg = c.color_20 },
        CmpItemKindTypeParameter = { bg = c.none, fg = c.color_08 },
        CmpItemKindUnit = { bg = c.none, fg = c.color_20 },
        CmpItemKindValue = { bg = c.none, fg = c.color_24 },
        CmpItemKindVariable = { bg = c.none, fg = c.color_24 },
        CmpItemMenu = { bg = c.none, fg = c.color_15 },
        CtrlSpaceNormal = { bg = c.bg_sidebar },
        DapUIBreakpointsCurrentLine = { fg = c.color_19, style = "bold" },
        DapUIBreakpointsDisabledLine = { fg = c.color_01 },
        DapUIBreakpointsInfo = { fg = c.color_19 },
        DapUIBreakpointsLine = { fg = c.color_16 },
        DapUIBreakpointsPath = { fg = c.color_16 },
        DapUICurrentFrameName = { fg = c.color_19 },
        DapUIDecoration = { fg = c.color_16 },
        DapUIFloatBorder = { fg = c.color_10 },
        DapUIFrameName = { fg = c.color_18 },
        DapUILineNumber = { fg = c.color_10 },
        DapUIModifiedValue = { fg = c.color_16 },
        DapUIScope = { fg = c.color_10 },
        DapUISource = { fg = c.color_16 },
        DapUIStoppedThread = { fg = c.color_16 },
        DapUIThread = { fg = c.color_19 },
        DapUIType = { fg = c.color_16 },
        DapUIValue = { fg = c.color_18, style = "bold" },
        DapUIVariable = { fg = c.color_15 },
        DapUIWatchesEmpty = { fg = c.color_24 },
        DapUIWatchesError = { fg = c.color_24 },
        DapUIWatchesValue = { fg = c.color_19 },
        DashboardCenter = { fg = c.color_25, style = "bold" },
        DashboardFooter = { fg = c.color_07, style = "bold" },
        DashboardHeader = { fg = c.color_22 },
        DashboardShortCut = { fg = c.color_23 },
        DefinitionCount = { fg = c.color_22 },
        DefinitionIcon = { fg = c.color_13 },
        DiagnosticError = { fg = c.error },
        DiagnosticHint = { fg = c.hint },
        DiagnosticInfo = { fg = c.info },
        DiagnosticInformation = { link = "DiagnosticInfo", default = true }, -- TODO: Delete
        DiagnosticUnderlineError = { style = "undercurl", sp = c.error },
        DiagnosticUnderlineHint = { style = "undercurl", sp = c.hint },
        DiagnosticUnderlineInfo = { style = "undercurl", sp = c.info },
        DiagnosticUnderlineWarn = { style = "undercurl", sp = c.warning },
        DiagnosticVirtualTextError = { bg = c.bg_statusline, fg = c.error },
        DiagnosticVirtualTextHint = { bg = c.bg_statusline, fg = c.hint },
        DiagnosticVirtualTextInfo = { bg = c.bg_statusline, fg = c.info },
        DiagnosticVirtualTextWarn = { bg = c.bg_statusline, fg = c.warning },
        DiagnosticWarn = { fg = c.warning },
        DiagnosticWarning = { link = "DiagnosticWarn", default = true }, -- TODO: Delete
        DifbufFile = { fg = c.color_07 },
        DirbufBlock = { fg = c.color_07 },
        DirbufChar = { fg = c.color_07 },
        DirbufDirectory = { fg = c.color_07 },
        DirbufFifo = { fg = c.color_07 },
        DirbufHash = { fg = c.color_07 },
        DirbufLink = { fg = c.color_07 },
        DirbufSocket = { fg = c.color_07 },
        FernBranchText = { fg = c.color_13 },
        FidgetTask = { bg = c.bg_statusline, fg = c.color_15 },
        FidgetTitle = { bg = c.bg_statusline, fg = c.color_25 },
        GitGutterAdd = { fg = c.gitSigns.add },
        GitGutterChange = { fg = c.gitSigns.change },
        GitGutterDelete = { fg = c.gitSigns.delete },
        GitSignsAdd = { fg = c.gitSigns.add },
        GitSignsChange = { fg = c.gitSigns.change },
        GitSignsDelete = { fg = c.gitSigns.delete },
        GlyphPalette1 = { fg = c.color_25 },
        GlyphPalette2 = { fg = c.color_18 },
        GlyphPalette3 = { fg = c.color_19 },
        GlyphPalette4 = { fg = c.color_13 },
        GlyphPalette6 = { fg = c.color_08 },
        GlyphPalette7 = { fg = c.color_21 },
        GlyphPalette9 = { fg = c.color_25 },
        HlSearchFloat = { fg = c.color_25 },
        HlSearchLens = { fg = c.color_19 },
        HlSearchLensNear = { fg = c.color_25 },
        HlSearchNear = { fg = c.color_16 },
        HopNextKey = { fg = c.color_24, style = "bold" },
        HopNextKey1 = { fg = c.color_21, style = "bold" },
        HopNextKey2 = { fg = c.color_23, style = "bold" },
        HopUnmatched = { fg = c.color_15 },
        LightspeedGreyWash = { fg = c.color_05 },
        LightspeedLabel = { fg = c.color_17, style = "bold,underline" },
        LightspeedLabelDistant = { fg = c.color_08, style = "bold,underline" },
        LightspeedLabelDistantOverlapped = { fg = c.color_11, style = "underline" },
        LightspeedLabelOverlapped = { fg = c.color_17, style = "underline" },
        LightspeedMaskedChar = { fg = c.color_20 },
        LightspeedOneCharMatch = { bg = c.color_17, fg = c.color_21, style = "bold" },
        LightspeedPendingOpArea = { bg = c.color_17, fg = c.color_21 },
        LightspeedShortcut = { bg = c.color_17, fg = c.color_21, style = "bold,underline" },
        LightspeedUnlabeledMatch = { fg = c.color_10, style = "bold" },
        LspCodeLens = { fg = c.color_15 },
        LspFloatWinBorder = { fg = c.border_highlight },
        LspFloatWinNormal = { bg = c.bg_float },
        LspInlayHint = { fg = c.color_07 },
        LspInstallerError = { fg = c.error },
        LspInstallerGreen = { fg = c.success },
        LspInstallerHeader = { bg = c.color_18, fg = c.color_03, style = "bold" },
        LspInstallerHeaderHelp = { bg = c.color_18, fg = c.color_03, style = "bold" },
        LspInstallerHeading = { fg = c.color_18, style = "bold" },
        LspInstallerHighlighted = { bg = c.none, fg = c.warning, style = "bold" },
        LspInstallerMuted = { fg = c.color_16 },
        LspInstallerOrange = { fg = c.warning },
        LspInstallerVaderSaber = { bg = c.none, fg = c.color_22, style = "bold" },
        LspInstallerVersionCheckLoader = { bg = c.bg_visual, fg = c.color_25, style = "bold" },
        LspInstallerVersionCheckLoaderDone = { bg = c.bg_visual, fg = c.color_18, style = "bold" },
        LspReferenceRead = { bg = c.color_04 },
        LspReferenceText = { bg = c.color_04 },
        LspReferenceWrite = { bg = c.color_04 },
        LspSagaBorderTitle = { fg = c.color_23 },
        LspSagaCodeActionBorder = { fg = c.color_13 },
        LspSagaCodeActionContent = { fg = c.color_22 },
        LspSagaCodeActionTitle = { fg = c.color_12 },
        LspSagaDefPreviewBorder = { fg = c.color_18 },
        LspSagaFinderSelection = { fg = c.bg_visual },
        LspSagaHoverBorder = { fg = c.color_13 },
        LspSagaRenameBorder = { fg = c.color_18 },
        LspSagaSignatureHelpBorder = { fg = c.color_25 },
        LspSignatureActiveParameter = { fg = c.color_20 },
        LvimFocusFloat = { bg = c.bg_float },
        LvimFocusNormal = { bg = c.color_01 },
        LvimFocusNormalNC = { bg = c.color_03 },
        LvimHelperNormal = { bg = c.color_01 },
        LvimHelperTitle = { fg = c.color_18, style = "bold" },
        MasonError = { fg = c.color_24 },
        MasonHeader = { bg = c.color_03, fg = c.color_22, style = "bold" },
        MasonHeaderSecondary = { bg = c.color_03, fg = c.color_07, style = "bold" },
        MasonHeading = { style = "bold" },
        MasonHighlight = { fg = c.color_07 },
        MasonHighlightBlock = { bg = c.color_07, fg = c.color_03 },
        MasonHighlightBlockBold = { bg = c.color_07, fg = c.color_03, style = "bold" },
        MasonHighlightBlockBoldSecondary = { bg = c.color_22, fg = c.color_03, style = "bold" },
        MasonHighlightBlockSecondary = { bg = c.color_22, fg = c.color_03 },
        MasonHighlightSecondary = { fg = c.color_22 },
        MasonLink = { bg = c.color_03, fg = c.color_22 },
        MasonMuted = { fg = c.color_17 },
        MasonMutedBlock = { bg = c.color_03, fg = c.color_07 },
        MasonMutedBlockBold = { bg = c.color_03, fg = c.color_07, style = "bold" },
        NavicIconsArray = { bg = c.bg_statusline, fg = c.color_24 },
        NavicIconsBoolean = { bg = c.bg_statusline, fg = c.color_23 },
        NavicIconsClass = { bg = c.bg_statusline, fg = c.color_11 },
        NavicIconsConstant = { bg = c.bg_statusline, fg = c.color_20 },
        NavicIconsConstructor = { bg = c.bg_statusline, fg = c.color_15 },
        NavicIconsEnum = { bg = c.bg_statusline, fg = c.color_16 },
        NavicIconsEnumMember = { bg = c.bg_statusline, fg = c.color_09 },
        NavicIconsEvent = { bg = c.bg_statusline, fg = c.color_17 },
        NavicIconsField = { bg = c.bg_statusline, fg = c.color_14 },
        NavicIconsFile = { bg = c.bg_statusline, fg = c.color_07 },
        NavicIconsFunction = { bg = c.bg_statusline, fg = c.color_18 },
        NavicIconsInterface = { bg = c.bg_statusline, fg = c.color_17 },
        NavicIconsKey = { bg = c.bg_statusline, fg = c.color_07 },
        NavicIconsMethod = { bg = c.bg_statusline, fg = c.color_12 },
        NavicIconsModule = { bg = c.bg_statusline, fg = c.color_08 },
        NavicIconsNamespace = { bg = c.bg_statusline, fg = c.color_09 },
        NavicIconsNull = { bg = c.bg_statusline, fg = c.color_08 },
        NavicIconsNumber = { bg = c.bg_statusline, fg = c.color_22 },
        NavicIconsObject = { bg = c.bg_statusline, fg = c.color_25 },
        NavicIconsOperator = { bg = c.bg_statusline, fg = c.color_19 },
        NavicIconsPackage = { bg = c.bg_statusline, fg = c.color_10 },
        NavicIconsProperty = { bg = c.bg_statusline, fg = c.color_13 },
        NavicIconsString = { bg = c.bg_statusline, fg = c.color_21 },
        NavicIconsStruct = { bg = c.bg_statusline, fg = c.color_16 },
        NavicIconsTypeParameter = { bg = c.bg_statusline, fg = c.color_23 },
        NavicIconsVariable = { bg = c.bg_statusline, fg = c.color_19 },
        NavicSeparator = { bg = c.bg_statusline, fg = c.color_22 },
        NavicText = { bg = c.bg_statusline, fg = c.color_22 },
        NeoTreeDimText = { fg = c.color_15 },
        NeoTreeDirectoryIcon = { fg = c.color_18 },
        NeoTreeDirectoryName = { fg = c.color_18 },
        NeoTreeDotfile = { fg = c.color_16 },
        NeoTreeExpander = { fg = c.color_13 },
        NeoTreeFileName = { fg = c.color_19 },
        NeoTreeFloatBorder = { bg = c.bg_float, fg = c.bg_float },
        NeoTreeFloatTitle = { fg = c.color_07, style = "bold" },
        NeoTreeMessage = { fg = c.color_15 },
        NeoTreeModified = { fg = c.color_18 },
        NeoTreeNormal = { bg = c.bg_sidebar, fg = c.color_23 },
        NeoTreeNormalNC = { bg = c.bg_sidebar, fg = c.color_23 },
        NeoTreeRootName = { fg = c.color_07, style = "bold" },
        NeoTreeStatusLine = { fg = c.color_08 },
        NeogitBranch = { fg = c.color_24 },
        NeogitDiffAddHighlight = { bg = c.diff.add, fg = c.git.add },
        NeogitDiffContextHighlight = { bg = c.bg_statusline, fg = c.color_16 },
        NeogitDiffDeleteHighlight = { bg = c.diff.delete, fg = c.git.delete },
        NeogitHunkHeader = { bg = c.color_02, fg = c.color_21 },
        NeogitHunkHeaderHighlight = { bg = c.color_04, fg = c.color_13 },
        NeogitRemote = { fg = c.color_22 },
        NoiceBody = { link = "NuiBody", default = true },
        NoiceBorder = { link = "NuiBorder", default = true },
        NoiceText = { fg = c.color_18 },
        NoiceLspProgressSpinner = { fg = c.color_24 },
        NoiceLspProgressTitle = { fg = c.color_19 },
        NoiceLspProgressClient = { fg = c.color_20 },
        NoiceFormatProgressTodo = { fg = c.color_24 },
        NoiceFormatProgressDone = { fg = c.color_19 },
        NoiceFormatConfirm = { bg = c.bg_statusline, fg = c.color_19 },
        NoiceFormatConfirmDefault = { bg = c.bg_statusline, fg = c.color_19 },
        NotifyDEBUGBody = { bg = c.bg_statusline, fg = c.color_14 },
        NotifyDEBUGBorder = { bg = c.bg_statusline, fg = c.hint },
        NotifyDEBUGIcon = { bg = c.bg_statusline, fg = c.hint },
        NotifyDEBUGTitle = { bg = c.bg_statusline, fg = c.hint },
        NotifyERRORBody = { bg = c.bg_statusline, fg = c.color_14 },
        NotifyERRORBorder = { bg = c.bg_statusline, fg = c.error },
        NotifyERRORIcon = { bg = c.bg_statusline, fg = c.error },
        NotifyERRORTitle = { bg = c.bg_statusline, fg = c.error },
        NotifyINFOBody = { bg = c.bg_statusline, fg = c.color_14 },
        NotifyINFOBorder = { bg = c.bg_statusline, fg = c.info },
        NotifyINFOIcon = { bg = c.bg_statusline, fg = c.info },
        NotifyINFOTitle = { bg = c.bg_statusline, fg = c.info },
        NotifyTRACEBody = { bg = c.bg_statusline, fg = c.color_14 },
        NotifyTRACEBorder = { bg = c.bg_statusline, fg = c.hint },
        NotifyTRACEIcon = { bg = c.bg_statusline, fg = c.hint },
        NotifyTRACETitle = { bg = c.bg_statusline, fg = c.hint },
        NotifyWARNBody = { bg = c.bg_statusline, fg = c.color_14 },
        NotifyWARNBorder = { bg = c.bg_statusline, fg = c.warning },
        NotifyWARNIcon = { bg = c.bg_statusline, fg = c.warning },
        NotifyWARNTitle = { bg = c.bg_statusline, fg = c.warning },
        NuiBody = { bg = c.bg_statusline, fg = c.color_19 },
        NuiBorder = { bg = c.bg_statusline, fg = c.color_24, style = "bold" },
        NvimTreeEmptyFolderName = { fg = c.color_21, style = "bold" },
        NvimTreeExecFile = { fg = c.color_25 },
        NvimTreeFile = { fg = c.color_25 },
        NvimTreeFolderIcon = { fg = c.color_07 },
        NvimTreeFolderName = { fg = c.color_21, style = "bold" },
        NvimTreeGitDeleted = { fg = c.git.delete },
        NvimTreeGitDirty = { fg = c.git.change },
        NvimTreeGitNew = { fg = c.git.add },
        NvimTreeImageFile = { fg = c.color_11 },
        NvimTreeIndentMarker = { fg = c.color_22 },
        NvimTreeLspDiagnosticsError = { fg = c.error },
        NvimTreeLspDiagnosticsHint = { fg = c.hint },
        NvimTreeLspDiagnosticsInformation = { fg = c.info },
        NvimTreeLspDiagnosticsWarning = { fg = c.warning },
        NvimTreeNormal = { bg = c.bg_sidebar, fg = c.color_23 },
        NvimTreeNormalNC = { bg = c.bg_sidebar, fg = c.color_23 },
        NvimTreeOpenedFolderName = { fg = c.color_21, style = "bold" },
        NvimTreeRootFolder = { fg = c.color_07, style = "bold" },
        NvimTreeSignError = { fg = c.error },
        NvimTreeSignHint = { fg = c.hint },
        NvimTreeSignInformation = { fg = c.info },
        NvimTreeSignWarning = { fg = c.warning },
        NvimTreeSpecialFile = { fg = c.color_18 },
        NvimTreeSymlink = { fg = c.color_22 },
        NvimTreeWindowPicker = { bg = c.color_22, fg = c.color_03, style = "bold" },
        OctoBubble = { bg = c.color_18, fg = c.color_04 },
        OctoStateClosed = { fg = c.color_17 },
        OctoStateOpen = { fg = c.color_24 },
        OctoViewer = { fg = c.color_23 },
        OrgTSBlock = { fg = c.color_15 },
        OrgTSBlockCode = { bg = c.bg_statusline },
        OrgTSCheckbox = { fg = c.color_24, style = "bold" },
        OrgTSCheckboxChecked = { fg = c.color_19, style = "bold" },
        OrgTSCheckboxHalfChecked = { fg = c.color_23, style = "bold" },
        OrgTSHeadlineLevel1 = { fg = c.color_07, style = "bold" },
        OrgTSHeadlineLevel2 = { fg = c.color_09, style = "bold" },
        OrgTSHeadlineLevel3 = { fg = c.color_19, style = "bold" },
        OrgTSHeadlineLevel4 = { fg = c.color_25, style = "bold" },
        OrgTSHeadlineLevel5 = { fg = c.color_07, style = "bold" },
        OrgTSHeadlineLevel6 = { fg = c.color_09, style = "bold" },
        OrgTSHeadlineLevel7 = { fg = c.color_19, style = "bold" },
        OrgTSHeadlineLevel8 = { fg = c.color_25, style = "bold" },
        ReferencesCount = { fg = c.color_22 },
        ReferencesIcon = { fg = c.color_13 },
        Sneak = { bg = c.color_24, fg = c.color_02 },
        SneakScope = { bg = c.bg_visual },
        SniprunFloatingWinErr = { fg = c.error, style = "bold" },
        SniprunFloatingWinOk = { fg = c.success, style = "bold" },
        SniprunVirtualTextErr = { fg = c.error, style = "bold" },
        SniprunVirtualTextOk = { fg = c.success, style = "bold" },
        TargetWord = { fg = c.color_23 },
        TelescopeBorder = { bg = c.color_01, fg = c.color_01 },
        TelescopeMatching = { bg = c.color_18, fg = c.color_01, style = "bold" },
        TelescopeMultiSelection = { bg = c.color_05, fg = c.color_18 },
        TelescopeNormal = { bg = c.color_01, fg = c.color_15 },
        TelescopePreviewTitle = { bg = c.color_18, fg = c.color_04, style = "bold" },
        TelescopePromptBorder = { bg = c.bg_sidebar, fg = c.bg_sidebar },
        TelescopePromptNormal = { bg = c.bg_sidebar, fg = c.color_18 },
        TelescopePromptPrefix = { bg = c.bg_sidebar, fg = c.color_18 },
        TelescopePromptTitle = { bg = c.color_18, fg = c.color_04, style = "bold" },
        TelescopeResultsTitle = { bg = c.none, fg = c.none },
        TelescopeSelection = { bg = c.color_03, fg = c.color_18 },
        TelescopeSelectionCaret = { bg = c.color_05, fg = c.color_18 },
        TroubleCount = { fg = c.color_23 },
        TroubleError = { bg = c.error },
        TroubleInformation = { bg = c.info },
        TroubleNormal = { bg = c.color_01 },
        TroubleText = { fg = c.color_19 },
        TroubleTextError = { fg = c.error },
        TroubleTextHint = { fg = c.hint },
        TroubleTextInformation = { fg = c.info },
        TroubleTextWarning = { fg = c.warning },
        TroubleWarning = { bg = c.warning },
        WhichKey = { fg = c.color_23 },
        WhichKeyBorder = { bg = c.bg_sidebar, fg = c.bg_sidebar },
        WhichKeyDesc = { fg = c.color_24 },
        WhichKeyFloat = { bg = c.bg_sidebar },
        WhichKeyGroup = { fg = c.color_13 },
        WhichKeySeparator = { fg = c.color_15 },
        WhichKeyValue = { fg = c.color_06 },
        debugBreakpoint = { bg = colors.bg_statusline, fg = c.info },
        debugPC = { bg = c.bg_sidebar },
        diffAdded = { fg = c.git.add },
        diffChanged = { fg = c.git.change },
        diffFile = { fg = c.color_13 },
        diffIndexLine = { fg = c.color_24 },
        diffLine = { fg = c.color_15 },
        diffNewFile = { fg = c.color_18 },
        diffOldFile = { fg = c.color_17 },
        diffRemoved = { fg = c.git.delete },
        healthError = { fg = c.error },
        healthSuccess = { fg = c.success },
        healthWarning = { fg = c.warning },
        illuminatedCurWord = { bg = c.color_04 },
        illuminatedWord = { bg = c.color_04 },
        mkdCodeDelimiter = { bg = c.color_03, fg = c.color_21 },
        mkdCodeEnd = { fg = c.color_09, style = "bold" },
        mkdCodeStart = { fg = c.color_09, style = "bold" },
        qfFileName = { fg = c.color_13 },
        qfLineNr = { fg = c.color_06 },

        TSAnnotation = { link = "PreProc", default = true },
        TSAttribute = { link = "PreProc", default = true }, --
        ["@attribute"] = { link = "PreProc", default = true },
        TSBoolean = { link = "Boolean", default = true }, --
        ["@boolean"] = { link = "Boolean", default = true },
        TScharacter = { link = "Character", default = true }, --
        ["@character"] = { link = "Character", default = true },
        TSCharacterSpecial = { link = "SpecialChar", default = true }, --
        ["@character.special"] = { link = "SpecialChar", default = true },
        TSComment = { link = "Comment", default = true }, --
        ["@comment"] = { link = "Comment", default = true },
        TSConditional = { link = "Conditional", default = true }, --
        ["@conditional"] = { link = "Conditional", default = true },
        TSConstBuiltin = { link = "Special", default = true },
        TSConstMacro = { link = "Define", default = true },
        TSConstant = { link = "Constant", default = true }, --
        ["@constant"] = { link = "Constant", default = true },
        TSConstructor = { link = "Constructor", default = true }, --
        ["@constructor"] = { link = "Constructor", default = true },
        TSDanger = { link = "Danger", default = true }, --
        ["@text.danger"] = { link = "Danger", default = true },
        TSDebug = { link = "Debug", default = true },
        TSDefine = { link = "Define", default = true },
        TSEmphasis = { italic = true, default = true },
        TSEnvironment = { link = "Macro", default = true },
        TSEnvironmentName = { link = "Type", default = true },
        TSError = { link = "ErrorMsg" },
        TSException = { link = "Exception", default = true },
        TSField = { link = "Field", default = true }, --
        ["@field"] = { link = "Field", default = true },
        TSFloat = { link = "Float", default = true },
        ["@float"] = { link = "Float", default = true },
        TSFuncBuiltin = { link = "FuncBuiltin", default = true },
        TSFuncMacro = { link = "Macro", default = true },
        TSFunction = { link = "Function", default = true },
        TSFunctionCall = { link = "TSFunction", default = true },
        TSInclude = { link = "Include", default = true },
        TSKeyword = { link = "Keyword", default = true }, --
        ["@keyword"] = { link = "Keyword", default = true },
        TSKeywordFunction = { link = "KeywordFunction", default = true }, --
        ["@keyword.function"] = { link = "KeywordFunction", default = true },
        TSKeywordOperator = { link = "Operator", default = true },
        TSKeywordReturn = { link = "TSKeyword", default = true },
        TSLabel = { link = "Label", default = true },
        ["@label"] = { link = "Label", default = true },
        TSLiteral = { link = "String", default = true },
        TSMath = { link = "Special", default = true },
        TSMethod = { link = "Function", default = true },
        TSMethodCall = { link = "TSMethod", default = true },
        TSNamespace = { link = "Include", default = true },
        TSNone = { default = true },
        TSNote = { link = "Note", default = true },
        TSNumber = { link = "Number", default = true },
        TSOperator = { link = "Operator", default = true }, --
        ["@operator"] = { link = "Operator", default = true },
        TSParameter = { link = "Parameter", default = true },
        ["@parameter"] = { link = "Parameter", default = true },
        TSParameterReference = { link = "TSParameter", default = true },
        TSPreProc = { link = "PreProc", default = true },
        TSProperty = { link = "Property", default = true }, --
        ["@property"] = { link = "Property", default = true },
        TSPunctBracket = { link = "Delimiter", default = true }, --
        ["@punctuation.bracket"] = { link = "Delimiter", default = true },
        TSPunctDelimiter = { link = "Delimiter", default = true }, --
        ["@punctuation.delimiter"] = { link = "Delimiter", default = true },
        TSPunctSpecial = { link = "Special", default = true }, --
        ["@punctuation.special"] = { link = "Special", default = true },
        TSRepeat = { link = "Repeat", default = true },
        TSStorageClass = { link = "StorageClass", default = true },
        TSStrike = { strikethrough = true },
        TSString = { link = "String", default = true }, --
        ["@string"] = { link = "String", default = true },
        TSStringEscape = { link = "StringEscape", default = true }, --
        ["@string.escape"] = { link = "StringEscape", default = true },
        TSStringRegex = { link = "StringRegex", default = true }, --
        ["@string.regex"] = { link = "StringRegex", default = true },
        TSStringSpecial = { link = "SpecialChar", default = true },
        TSStrong = { bold = true, default = true },
        TSSymbol = { link = "Identifier", default = true },
        TSTag = { link = "Tag", default = true }, --
        ["@tag"] = { link = "Tag", default = true },
        TSTagAttribute = { link = "TSProperty", default = true }, --
        ["@tag.attribute"] = { link = "TSProperty", default = true },
        TSTagDelimiter = { link = "Delimiter", default = true }, --
        ["@tag.delimiter"] = { link = "Delimiter", default = true },
        TSText = { link = "TSNone", default = true },
        TSTextReference = { link = "TextReference", default = true }, --
        ["@text.reference"] = { link = "TextReference", default = true },
        TSTitle = { link = "Title", default = true }, --
        ["@title"] = { link = "Title", default = true },
        TSTodo = { link = "Todo", default = true },
        TSType = { link = "Type", default = true }, --
        ["@type"] = { link = "Type", default = true },
        TSTypeBuiltin = { link = "Type", default = true }, --
        ["@type.builtin"] = { link = "Type", default = true },
        TSTypeDefinition = { link = "Typedef", default = true }, --
        ["@type.definition"] = { link = "Typedef", default = true },
        TSTypeQualifier = { link = "Type", default = true },
        TSURI = { link = "Underlined", default = true },
        TSUnderline = { underline = true },
        TSVariable = { link = "Variable", default = true }, --
        ["@variable"] = { link = "Variable", default = true },
        TSVariableBuiltin = { link = "VariableBuiltin", default = true }, --
        ["@variable.builtin"] = { link = "VariableBuiltin", default = true },
        TSWarning = { link = "Warning", default = true },
        ["@text.warning"] = { link = "Warning", default = true },
        TSStructure = { link = "Structure", default = true }, --
        ["@structure"] = { link = "Structure", default = true },
        TreesitterContext = { bg = c.bg_statusline },
        TreesitterContextLineNumber = { bg = c.bg_statusline, fg = c.color_24, style = "bold" },
    }
    if not vim.diagnostic then
        local severity_map = {
            Error = "Error",
            Warn = "Warning",
            Info = "Information",
            Hint = "Hint",
        }
        local types = { "Default", "VirtualText", "Underline" }
        for _, type in ipairs(types) do
            for snew, sold in pairs(severity_map) do
                theme.highlights["LspDiagnostics" .. type .. sold] = {
                    link = "Diagnostic" .. (type == "Default" and "" or type) .. snew,
                }
            end
        end
    end
    options.on_highlights(theme.highlights, theme.colors)
    if config.is_light() then
        util.invert_colors(theme.colors)
        util.invert_highlights(theme.highlights)
    end
    return theme
end

return M
