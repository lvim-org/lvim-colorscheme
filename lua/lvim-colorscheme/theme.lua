local util = require("lvim-colorscheme.util")
local colors = require("lvim-colorscheme.colors")

local M = {}

function M.setup(config)
	config = config or require("lvim-colorscheme.config")

	local theme = {}
	theme.config = config
	theme.colors = colors.setup(config)
	local c = theme.colors

	theme.base = {
		Comment = { fg = c.color_15, style = config.commentStyle },
		ColorColumn = { bg = c.color_04 },
		Conceal = { fg = c.color_06 },
		Cursor = { fg = c.color_03, bg = c.color_21 },
		lCursor = { fg = c.color_03, bg = c.color_21 },
		CursorIM = { fg = c.color_03, bg = c.color_21 },
		CursorColumn = { bg = c.color_04 },
		CursorLine = { bg = c.color_03 },
		Directory = { fg = c.color_13 },
		DiffAdd = { bg = c.diff.add, fg = c.color_01, style = "bold" },
		DiffChange = { bg = c.diff.change, fg = c.color_01, style = "bold" },
		DiffDelete = { bg = c.diff.delete, fg = c.color_01, style = "bold" },
		DiffText = { bg = c.diff.text },
		EndOfBuffer = { fg = c.color_06 },
		ErrorMsg = { fg = c.error },
		WarningMsg = { fg = c.warning },
		FocusedSymbol = { bg = c.none, style = "bold" },
		VertSplit = { bg = c.color_01, fg = c.color_01 },
		Folded = { fg = c.color_13, bg = c.color_04 },
		FoldColumn = { bg = c.color_03, fg = c.color_15 },
		SignColumn = { bg = c.none },
		SignColumnSB = { bg = c.bg_sidebar },
		Substitute = { bg = c.color_25, fg = c.color_04 },
		LineNr = { fg = c.color_06 },
		CursorLineNr = { fg = c.color_18, style = "bold" },
		MatchParen = { fg = c.color_20, style = "bold" },
		ModeMsg = { fg = c.color_16, bg = c.none, style = "bold" },
		MsgArea = { fg = c.color_16 },
		MoreMsg = { fg = c.color_13 },
		NonText = { fg = c.color_05 },
		Normal = { fg = c.color_21, bg = c.color_01 },
		NormalNC = { fg = c.color_21, bg = c.color_03 },
		NormalSB = { fg = c.fg_sidebar, bg = c.bg_sidebar },
		NormalFloat = { fg = c.color_21, bg = c.bg_float },
		FloatBorder = { fg = c.bg_float, bg = c.bg_float },
		Pmenu = { bg = c.bg_popup, fg = c.color_21, style = "bold" },
		PmenuSel = { bg = c.color_02, style = "bold" },
		PmenuSbar = { bg = c.color_03 },
		PmenuThumb = { bg = c.color_21 },
		Winbar = { bg = c.bg_statusline, fg = c.color_22 },
		Question = { fg = c.color_13 },
		QuickFixLine = { bg = c.color_03, style = "bold" },
		Search = { bg = c.bg_search, fg = c.color_21 },
		IncSearch = { bg = c.bg_search, fg = c.color_21, style = "bold" },
		Replace = { bg = c.bg_search, fg = c.color_21 },
		SpecialKey = { fg = c.color_05 },
		SpellBad = { sp = c.error, style = "undercurl" },
		SpellCap = { sp = c.warning, style = "undercurl" },
		SpellLocal = { sp = c.info, style = "undercurl" },
		SpellRare = { sp = c.hint, style = "undercurl" },
		StatusLine = { fg = c.fg_sidebar, bg = c.bg_statusline },
		StatusLineNC = { fg = c.color_04, bg = c.bg_statusline },
		TabLine = { bg = c.bg_statusline, fg = c.color_19, style = "bold" },
		TabLineFill = { bg = c.color_02 },
		TabLineSel = { fg = c.color_02, bg = c.color_13 },
		Title = { fg = c.color_13, style = "bold" },
		Visual = { bg = c.bg_visual },
		VisualNOS = { bg = c.bg_visual },
		Whitespace = { fg = c.color_04 },
		WildMenu = { bg = c.bg_visual },
		Character = { fg = c.color_18 },
		Identifier = { fg = c.color_24, style = config.variableStyle },
		Statement = { fg = c.color_24 },
		PreProc = { fg = c.color_23 },
		Underlined = { style = "underline" },
		Bold = { style = "bold" },
		Italic = { style = "italic" },
		Include = { fg = c.color_09 },
		Parameter = { fg = c.color_19 },
		MatchParem = { fg = c.color_16 },
		Delimiter = { fg = c.color_08 },
		Type = { fg = c.color_17 },
		Function = { fg = c.color_21, style = config.functionStyle },
		Macro = { fg = c.color_14 },
		Keyword = { fg = c.color_19, style = config.keywordStyle },
		Operator = { fg = c.color_17 },
		Label = { fg = c.color_08 },
		Special = { fg = c.color_14 },
		Structure = { fg = c.color_25 },
		Tag = { fg = c.color_21 },
		Boolean = { fg = c.color_16 },
		Constant = { fg = c.color_07 },
		Float = { fg = c.color_18 },
		String = { fg = c.color_13 },
		Number = { fg = c.color_17 },
		Error = { fg = c.error },
		Exception = { fg = c.color_19 },
		Todo = { bg = c.color_19, fg = c.color_03 },
		qfLineNr = { fg = c.color_06 },
		qfFileName = { fg = c.color_13 },
		mkdCodeDelimiter = { bg = c.color_03, fg = c.color_21 },
		mkdCodeStart = { fg = c.color_09, style = "bold" },
		mkdCodeEnd = { fg = c.color_09, style = "bold" },
		debugPC = { bg = c.bg_sidebar },
		debugBreakpoint = { bg = colors.bg_statusline, fg = c.info },
		LspReferenceText = { bg = c.color_04 },
		LspReferenceRead = { bg = c.color_04 },
		LspReferenceWrite = { bg = c.color_04 },
		DiagnosticError = { fg = c.error },
		DiagnosticWarn = { fg = c.warning },
		DiagnosticInfo = { fg = c.info },
		DiagnosticHint = { fg = c.hint },
		DiagnosticVirtualTextError = { bg = c.bg_statusline, fg = c.error },
		DiagnosticVirtualTextWarn = { bg = c.bg_statusline, fg = c.warning },
		DiagnosticVirtualTextInfo = { bg = c.bg_statusline, fg = c.info },
		DiagnosticVirtualTextHint = { bg = c.bg_statusline, fg = c.hint },
		DiagnosticUnderlineError = { style = "undercurl", sp = c.error },
		DiagnosticUnderlineWarn = { style = "undercurl", sp = c.warning },
		DiagnosticUnderlineInfo = { style = "undercurl", sp = c.info },
		DiagnosticUnderlineHint = { style = "undercurl", sp = c.hint },
		LspSignatureActiveParameter = { fg = c.color_20 },
		LspCodeLens = { fg = c.color_15 },
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
				theme.base["LspDiagnostics" .. type .. sold] = {
					link = "Diagnostic" .. (type == "Default" and "" or type) .. snew,
				}
			end
		end
	end
	theme.plugins = {
		TSInclude = { link = "Include" },
		TSParameter = { link = "Parameter" },
		TSPunctBracket = { link = "Delimiter" },
		TSPunctDelimiter = { link = "Delimiter" },
		TSType = { link = "Type" },
		TSFunction = { link = "Function" },
		TSMethod = { link = "Function" },
		TSFuncMacro = { link = "Macro" },
		TSKeyword = { link = "Keyword" },
		TSKeywordOperator = { link = "Operator" },
		TSPunctSpecial = { link = "Special" },
		TSStructure = { link = "Structure" },
		TSTag = { link = "Tag" },
		TSBoolean = { link = "Boolean" },
		TSConstant = { link = "Constant" },
		TSFloat = { link = "Float" },
		TSString = { link = "String" },
		TSNumber = { link = "Number" },
		TSError = { link = "ErrorMsg" },
		TSException = { link = "Exception" },
		TSFuncBuiltin = { fg = c.color_18 },
		TSKeywordFunction = { fg = c.color_24, style = config.keywordStyle },
		TSStringRegex = { fg = c.color_14 },
		TSVariable = { fg = c.color_17, style = config.variableStyle },
		TSVariableBuiltin = { fg = c.color_25 },
		TSProperty = { fg = c.color_21 },
		TSNote = { bg = c.info, fg = c.color_03 },
		TSWarning = { bg = c.warning, fg = c.color_03 },
		TSDanger = { bg = c.error, fg = c.color_03 },
		TSConstructor = { fg = c.color_24 },
		TSField = { fg = c.color_08 },
		TSLabel = { fg = c.color_13 },
		TSOperator = { fg = c.color_24 },
		TSStringEscape = { fg = c.color_24 },
		TSTextReference = { fg = c.color_09 },
		TreesitterContext = { bg = c.bg_statusline },
		TreesitterContextLineNumber = { bg = c.bg_statusline, fg = c.color_24, style = "bold" },
		TroubleNormal = { bg = c.color_01 },
		TroubleError = { bg = c.error },
		TroubleWarning = { bg = c.warning },
		TroubleInformation = { bg = c.info },
		TroubleTextError = { fg = c.error },
		TroubleTextWarning = { fg = c.warning },
		TroubleTextHint = { fg = c.hint },
		TroubleTextInformation = { fg = c.info },
		TroubleText = { fg = c.color_19 },
		TroubleCount = { fg = c.color_23 },
		illuminatedWord = { bg = c.color_04 },
		illuminatedCurWord = { bg = c.color_04 },
		diffAdded = { fg = c.git.add },
		diffRemoved = { fg = c.git.delete },
		diffChanged = { fg = c.git.change },
		diffOldFile = { fg = c.conflict },
		diffNewFile = { fg = c.color_18 },
		diffFile = { fg = c.color_13 },
		diffLine = { fg = c.color_15 },
		diffIndexLine = { fg = c.color_24 },
		NeogitBranch = { fg = c.color_24 },
		NeogitRemote = { fg = c.color_22 },
		NeogitHunkHeader = { bg = c.color_02, fg = c.color_21 },
		NeogitHunkHeaderHighlight = { bg = c.color_04, fg = c.color_13 },
		NeogitDiffContextHighlight = { bg = util.darken(c.color_04, 0.5), fg = c.color_16 },
		NeogitDiffDeleteHighlight = { bg = c.diff.delete, fg = c.git.delete },
		NeogitDiffAddHighlight = { bg = c.diff.add, fg = c.git.add },
		GitGutterAdd = { fg = c.gitSigns.add },
		GitGutterChange = { fg = c.gitSigns.change },
		GitGutterDelete = { fg = c.gitSigns.delete },
		GitSignsAdd = { fg = c.gitSigns.add },
		GitSignsChange = { fg = c.gitSigns.change },
		GitSignsDelete = { fg = c.gitSigns.delete },
		TelescopeBorder = { bg = c.color_01, fg = c.color_01 },
		TelescopeNormal = { bg = c.color_01, fg = c.color_21 },
		TelescopePromptBorder = { bg = c.bg_sidebar, fg = c.bg_sidebar },
		TelescopePromptNormal = { bg = c.bg_sidebar, fg = c.color_21 },
		TelescopePromptPrefix = { bg = c.bg_sidebar, fg = c.color_21 },
		TelescopePreviewTitle = { bg = c.color_18, fg = c.color_04, style = "bold" },
		TelescopePromptTitle = { bg = c.color_18, fg = c.color_04, style = "bold" },
		TelescopeResultsTitle = { bg = c.none, fg = c.none },
		TelescopeMatching = { bg = c.color_21, fg = c.color_01, style = "bold" },
		TelescopeSelection = { bg = c.color_03, fg = c.color_21 },
		TelescopeSelectionCaret = { bg = c.color_05, fg = c.color_21 },
		TelescopeMultiSelection = { bg = c.color_05, fg = c.color_21 },
		NvimTreeNormal = { bg = c.bg_sidebar, fg = c.color_23 },
		NvimTreeNormalNC = { bg = c.bg_sidebar, fg = c.color_23 },
		NvimTreeRootFolder = { fg = c.color_07, style = "bold" },
		NvimTreeGitDirty = { fg = c.git.change },
		NvimTreeGitNew = { fg = c.git.add },
		NvimTreeGitDeleted = { fg = c.git.delete },
		NvimTreeFile = { fg = c.color_25 },
		NvimTreeSpecialFile = { fg = c.color_18 },
		NvimTreeImageFile = { fg = c.color_11 },
		NvimTreeExecFile = { fg = c.color_25 },
		NvimTreeIndentMarker = { fg = c.color_22 },
		NvimTreeSymlink = { fg = c.color_22 },
		NvimTreeSignError = { fg = c.error },
		NvimTreeSignWarning = { fg = c.warning },
		NvimTreeSignInformation = { fg = c.info },
		NvimTreeSignHint = { fg = c.hint },
		NvimTreeLspDiagnosticsError = { fg = c.error },
		NvimTreeLspDiagnosticsWarning = { fg = c.warning },
		NvimTreeLspDiagnosticsInformation = { fg = c.info },
		NvimTreeLspDiagnosticsHint = { fg = c.hint },
		NvimTreeFolderName = { fg = c.color_21, style = "bold" },
		NvimTreeOpenedFolderName = { fg = c.color_21, style = "bold" },
		NvimTreeEmptyFolderName = { fg = c.color_21, style = "bold" },
		NvimTreeFolderIcon = { fg = c.color_07 },
		NvimTreeWindowPicker = { bg = c.color_22, fg = c.color_03, style = "bold" },
		FernBranchText = { fg = c.color_13 },
		GlyphPalette1 = { fg = c.color_25 },
		GlyphPalette2 = { fg = c.color_18 },
		GlyphPalette3 = { fg = c.color_19 },
		GlyphPalette4 = { fg = c.color_13 },
		GlyphPalette6 = { fg = c.color_08 },
		GlyphPalette7 = { fg = c.color_21 },
		GlyphPalette9 = { fg = c.color_25 },
		DashboardShortCut = { fg = c.color_23 },
		DashboardHeader = { fg = c.color_22 },
		DashboardCenter = { fg = c.color_25, style = "bold" },
		DashboardFooter = { fg = c.color_07, style = "bold" },
		AlphaHeader = { fg = c.color_25 },
		AlphaButton = { fg = c.color_21, style = "bold" },
		AlphaFooter = { fg = c.color_23 },
		AlphaQuote = { fg = c.color_19 },
		WhichKey = { fg = c.color_23 },
		WhichKeyGroup = { fg = c.color_13 },
		WhichKeyDesc = { fg = c.color_24 },
		WhichKeySeperator = { fg = c.color_15 },
		WhichKeySeparator = { fg = c.color_15 },
		WhichKeyFloat = { bg = c.bg_sidebar },
		WhichKeyValue = { fg = c.color_06 },
		DiagnosticWarning = { link = "DiagnosticWarn" },
		DiagnosticInformation = { link = "DiagnosticInfo" },
		LspFloatWinNormal = { bg = c.bg_float },
		LspFloatWinBorder = { fg = c.border_highlight },
		LspSagaBorderTitle = { fg = c.color_23 },
		LspSagaHoverBorder = { fg = c.color_13 },
		LspSagaRenameBorder = { fg = c.color_18 },
		LspSagaDefPreviewBorder = { fg = c.color_18 },
		LspSagaCodeActionBorder = { fg = c.color_13 },
		LspSagaFinderSelection = { fg = c.bg_visual },
		LspSagaCodeActionTitle = { fg = c.color_12 },
		LspSagaCodeActionContent = { fg = c.color_22 },
		LspSagaSignatureHelpBorder = { fg = c.color_25 },
		ReferencesCount = { fg = c.color_22 },
		DefinitionCount = { fg = c.color_22 },
		DefinitionIcon = { fg = c.color_13 },
		ReferencesIcon = { fg = c.color_13 },
		TargetWord = { fg = c.color_23 },
		healthError = { fg = c.error },
		healthSuccess = { fg = c.success },
		healthWarning = { fg = c.warning },
		BufferLineIndicatorSelected = { fg = c.git.change },
		BufferLineFill = { bg = c.color_02 },
		BufferCurrent = { bg = c.color_04, fg = c.color_21 },
		BufferCurrentIndex = { bg = c.color_04, fg = c.info },
		BufferCurrentMod = { bg = c.color_04, fg = c.warning },
		BufferCurrentSign = { bg = c.color_04, fg = c.info },
		BufferCurrentTarget = { bg = c.color_04, fg = c.color_25 },
		BufferVisible = { bg = c.bg_statusline, fg = c.color_21 },
		BufferVisibleIndex = { bg = c.bg_statusline, fg = c.info },
		BufferVisibleMod = { bg = c.bg_statusline, fg = c.warning },
		BufferVisibleSign = { bg = c.bg_statusline, fg = c.info },
		BufferVisibleTarget = { bg = c.bg_statusline, fg = c.color_25 },
		BufferInactive = { bg = c.bg_statusline, fg = c.color_06 },
		BufferInactiveIndex = { bg = c.bg_statusline, fg = c.color_06 },
		BufferInactiveMod = { bg = c.bg_statusline, fg = util.darken(c.warning, 0.7) },
		BufferInactiveSign = { bg = c.bg_statusline, fg = c.border_highlight },
		BufferInactiveTarget = { bg = c.bg_statusline, fg = c.color_25 },
		BufferTabpages = { bg = c.bg_statusline, fg = c.none },
		BufferTabpage = { bg = c.bg_statusline, fg = c.border_highlight },
		Sneak = { bg = c.color_24, fg = c.color_02 },
		SneakScope = { bg = c.bg_visual },
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
		CmpDocumentation = { bg = c.bg_float, fg = c.color_21 },
		CmpDocumentationBorder = { bg = c.bg_float, fg = c.border_highlight },
		CmpItemAbbr = { bg = c.none, fg = c.color_21 },
		CmpItemAbbrDeprecated = { bg = c.none, fg = c.color_04, style = "strikethrough" },
		CmpItemAbbrMatch = { bg = c.none, fg = c.color_12 },
		CmpItemAbbrMatchFuzzy = { bg = c.none, fg = c.color_12 },
		CmpItemKindDefault = { bg = c.none, fg = c.color_16 },
		CmpItemMenu = { bg = c.none, fg = c.color_15 },
		CmpItemKindKeyword = { bg = c.none, fg = c.color_23 },
		CmpItemKindVariable = { bg = c.none, fg = c.color_24 },
		CmpItemKindConstant = { bg = c.none, fg = c.color_24 },
		CmpItemKindReference = { bg = c.none, fg = c.color_24 },
		CmpItemKindValue = { bg = c.none, fg = c.color_24 },
		CmpItemKindFunction = { bg = c.none, fg = c.color_13 },
		CmpItemKindMethod = { bg = c.none, fg = c.color_13 },
		CmpItemKindConstructor = { bg = c.none, fg = c.color_13 },
		CmpItemKindClass = { bg = c.none, fg = c.color_20 },
		CmpItemKindInterface = { bg = c.none, fg = c.color_20 },
		CmpItemKindStruct = { bg = c.none, fg = c.color_20 },
		CmpItemKindEvent = { bg = c.none, fg = c.color_20 },
		CmpItemKindEnum = { bg = c.none, fg = c.color_20 },
		CmpItemKindUnit = { bg = c.none, fg = c.color_20 },
		CmpItemKindModule = { bg = c.none, fg = c.color_19 },
		CmpItemKindProperty = { bg = c.none, fg = c.color_08 },
		CmpItemKindField = { bg = c.none, fg = c.color_08 },
		CmpItemKindTypeParameter = { bg = c.none, fg = c.color_08 },
		CmpItemKindEnumMember = { bg = c.none, fg = c.color_08 },
		CmpItemKindOperator = { bg = c.none, fg = c.color_08 },
		CmpItemKindSnippet = { bg = c.none, fg = c.color_19 },
		LspInstallerHeader = { bg = c.color_18, fg = c.color_03, style = "bold" },
		LspInstallerHeaderHelp = { bg = c.color_18, fg = c.color_03, style = "bold" },
		LspInstallerHeading = { fg = c.color_18, style = "bold" },
		LspInstallerGreen = { fg = c.success },
		LspInstallerError = { fg = c.error },
		LspInstallerOrange = { fg = c.warnings },
		LspInstallerMuted = { fg = c.color_16 },
		LspInstallerHighlighted = { bg = c.none, fg = c.warnings, style = "bold" },
		LspInstallerVersionCheckLoader = { bg = c.bg_visual, fg = c.color_25, style = "bold" },
		LspInstallerVersionCheckLoaderDone = { bg = c.bg_visual, fg = c.color_18, style = "bold" },
		LspInstallerVaderSaber = { bg = c.none, fg = c.color_22, style = "bold" },
		NotifyERRORBorder = { fg = c.error },
		NotifyWARNBorder = { fg = c.warning },
		NotifyINFOBorder = { fg = c.info },
		NotifyDEBUGBorder = { fg = c.hint },
		NotifyTRACEBorder = { fg = c.hint },
		NotifyERRORIcon = { fg = c.error },
		NotifyWARNIcon = { fg = c.warning },
		NotifyINFOIcon = { fg = c.info },
		NotifyDEBUGIcon = { fg = c.hint },
		NotifyTRACEIcon = { fg = c.hint },
		NotifyERRORTitle = { fg = c.error },
		NotifyWARNTitle = { fg = c.warning },
		NotifyINFOTitle = { fg = c.info },
		NotifyDEBUGTitle = { fg = c.hint },
		NotifyTRACETitle = { bg = c.hint },
		NotifyERRORBody = { bg = c.none },
		NotifyWARNBody = { bg = c.none },
		NotifyINFOBody = { bg = c.none },
		NotifyDEBUGBody = { bg = c.none },
		NotifyTRACEBody = { bg = c.none },
		SniprunVirtualTextOk = { fg = c.success, style = "bold" },
		SniprunFloatingWinOk = { fg = c.success, style = "bold" },
		SniprunVirtualTextErr = { fg = c.error, style = "bold" },
		SniprunFloatingWinErr = { fg = c.error, style = "bold" },
		CalNormal = { bg = c.bg_sidebar },
		CalToday = { fg = c.color_19, style = "bold" },
		CalSaturday = { fg = c.color_08 },
		CalSunday = { fg = c.color_08 },
		OrgTSHeadlineLevel1 = { fg = c.color_07, style = "bold" },
		OrgTSHeadlineLevel2 = { fg = c.color_09, style = "bold" },
		OrgTSHeadlineLevel3 = { fg = c.color_19, style = "bold" },
		OrgTSHeadlineLevel4 = { fg = c.color_25, style = "bold" },
		OrgTSHeadlineLevel5 = { fg = c.color_07, style = "bold" },
		OrgTSHeadlineLevel6 = { fg = c.color_09, style = "bold" },
		OrgTSHeadlineLevel7 = { fg = c.color_19, style = "bold" },
		OrgTSHeadlineLevel8 = { fg = c.color_25, style = "bold" },
		OrgTSCheckbox = { fg = c.color_24, style = "bold" },
		OrgTSCheckboxHalfChecked = { fg = c.color_23, style = "bold" },
		OrgTSCheckboxChecked = { fg = c.color_19, style = "bold" },
		OrgTSBlock = { fg = c.color_15 },
		OrgTSBlockCode = { bg = c.bg_statusline },
		CtrlSpaceNormal = { bg = c.bg_sidebar },
		NuiBorder = { bg = c.bg_statusline, fg = c.color_24, style = "bold" },
		NuiBody = { bg = c.bg_statusline, fg = c.color_19 },
		LvimFocusNormal = { bg = c.color_01 },
		LvimFocusNormalNC = { bg = c.color_03 },
		LvimHelperNormal = { bg = c.color_01 },
		LvimHelperTitle = { fg = c.color_18, style = "bold" },
		NavicIconsFile = { bg = c.bg_statusline, fg = c.color_07 },
		NavicIconsModule = { bg = c.bg_statusline, fg = c.color_08 },
		NavicIconsNamespace = { bg = c.bg_statusline, fg = c.color_09 },
		NavicIconsPackage = { bg = c.bg_statusline, fg = c.color_10 },
		NavicIconsClass = { bg = c.bg_statusline, fg = c.color_11 },
		NavicIconsMethod = { bg = c.bg_statusline, fg = c.color_12 },
		NavicIconsProperty = { bg = c.bg_statusline, fg = c.color_13 },
		NavicIconsField = { bg = c.bg_statusline, fg = c.color_14 },
		NavicIconsConstructor = { bg = c.bg_statusline, fg = c.color_15 },
		NavicIconsEnum = { bg = c.bg_statusline, fg = c.color_16 },
		NavicIconsInterface = { bg = c.bg_statusline, fg = c.color_17 },
		NavicIconsFunction = { bg = c.bg_statusline, fg = c.color_18 },
		NavicIconsVariable = { bg = c.bg_statusline, fg = c.color_19 },
		NavicIconsConstant = { bg = c.bg_statusline, fg = c.color_20 },
		NavicIconsString = { bg = c.bg_statusline, fg = c.color_21 },
		NavicIconsNumber = { bg = c.bg_statusline, fg = c.color_22 },
		NavicIconsBoolean = { bg = c.bg_statusline, fg = c.color_23 },
		NavicIconsArray = { bg = c.bg_statusline, fg = c.color_24 },
		NavicIconsObject = { bg = c.bg_statusline, fg = c.color_25 },
		NavicIconsKey = { bg = c.bg_statusline, fg = c.color_07 },
		NavicIconsNull = { bg = c.bg_statusline, fg = c.color_08 },
		NavicIconsEnumMember = { bg = c.bg_statusline, fg = c.color_09 },
		NavicIconsStruct = { bg = c.bg_statusline, fg = c.color_16 },
		NavicIconsEvent = { bg = c.bg_statusline, fg = c.color_17 },
		NavicIconsOperator = { bg = c.bg_statusline, fg = c.color_19 },
		NavicIconsTypeParameter = { bg = c.bg_statusline, fg = c.color_23 },
		NavicText = { bg = c.bg_statusline, fg = c.color_22 },
		NavicSeparator = { bg = c.bg_statusline, fg = c.color_22 },
		BqfPreviewRange = { bg = c.none, fg = c.color_19 },
		BqfPreviewBorder = { bg = c.color_01, fg = c.color_07 },
		DifbufFile = { fg = c.color_07 },
		DirbufDirectory = { fg = c.color_07 },
		DirbufLink = { fg = c.color_07 },
		DirbufFifo = { fg = c.color_07 },
		DirbufSocket = { fg = c.color_07 },
		DirbufChar = { fg = c.color_07 },
		DirbufBlock = { fg = c.color_07 },
		DirbufHash = { fg = c.color_07 },
		LspInlayHint = { fg = c.color_07 },
		OctoViewer = { fg = c.color_23 },
		OctoBubble = { bg = c.color_18, fg = c.color_04 },
		OctoStateOpen = { fg = c.color_24 },
		OctoStateClosed = { fg = c.color_17 },
		MasonHeader = { bg = c.color_03, fg = c.color_22, style = "bold" },
		MasonHeaderSecondary = { bg = c.color_03, fg = c.color_07, style = "bold" },
		MasonHighlight = { fg = c.color_07 },
		MasonHighlightBlock = { bg = c.color_07, fg = c.color_03 },
		MasonHighlightBlockBold = { bg = c.color_07, fg = c.color_03, style = "bold" },
		MasonHighlightSecondary = { fg = c.color_22 },
		MasonHighlightBlockSecondary = { bg = c.color_22, fg = c.color_03 },
		MasonHighlightBlockBoldSecondary = { bg = c.color_22, fg = c.color_03, style = "bold" },
		MasonLink = { bg = c.color_03, fg = c.color_22 },
		MasonMuted = { fg = c.color_17 },
		MasonMutedBlock = { bg = c.color_03, fg = c.color_07 },
		MasonMutedBlockBold = { bg = c.color_03, fg = c.color_07, style = "bold" },
		MasonError = { fg = c.color_24 },
		MasonHeading = { style = "bold" },
	}
	theme.defer = {}
	return theme
end

return M
