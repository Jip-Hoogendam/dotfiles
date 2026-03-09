-- In cool_name/lua/lush_theme/cool_name.lua

-- require lush
local lush = require("lush")
local hsl = lush.hsl

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
	local sym = injected_functions.sym
	return {
		-- Define Vim's Normal highlight group.
		-- You can provide values with hsl/hsluv or anything that responds to `tostring`
		-- but be aware if you don't "wrap" your color in a hsl/hsluv call you
		-- wont have chainable access to the color "operators" (darken, etc).

		Normal({ bg = hsl(233, 21, 16), fg = hsl(300, 100, 89) }),
		Whitespace({ bg = hsl(233, 21, 16) }),
		Comment({ fg = hsl(42, 100, 80), gui = "italic" }),
		Visual({ bg = Normal.bg.rotate(67), fg = Normal.fg }),
		CursorLine({ bg = Normal.bg.lighten(10) }),
		linenr({ fg = Normal.fg.rotate(55) }),

		-- ColorColumn    { }, -- Columns set with 'colorcolumn'
		-- Conceal        { }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
		-- Cursor({ bg = hsl(0, 54, 76), fg = hsl(0, 0, 0) }), -- Character under the cursor
		CurSearch({ Visual }), -- Highlighting a search pattern under the cursor (see 'hlsearch')
		-- lCursor({ bg = hsl(0, 54, 76), fg = hsl(0, 0, 0) }), -- Character under the cursor when |language-mapping| is used (see 'guicursor')
		-- CursorIM({ bg = hsl(0, 54, 76), fg = hsl(0, 0, 0) }), -- Like Cursor, but used when in IME mode |CursorIM|
		-- CursorColumn   { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
		Directory({ fg = hsl(222, 97, 85) }), -- Directory names (and other special names in listings)
		-- DiffAdd        { }, -- Diff mode: Added line |diff.txt|
		-- DiffChange     { }, -- Diff mode: Changed line |diff.txt|
		-- DiffDelete     { }, -- Diff mode: Deleted line |diff.txt|
		-- DiffText       { }, -- Diff mode: Changed text within a changed line |diff.txt|
		-- EndOfBuffer    { }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
		-- TermCursor     { }, -- Cursor in a focused terminal
		-- TermCursorNC   { }, -- Cursor in an unfocused terminal
		ErrorMsg({ fg = hsl(342, 100, 78) }), -- Error messages on the command line
		-- VertSplit      { }, -- Column separating vertically split windows
		-- Folded         { }, -- Line used for closed folds
		-- FoldColumn     { }, -- 'foldcolumn'
		-- SignColumn     { }, -- Column where |signs| are displayed
		IncSearch({ Visual }), -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		Substitute({ Visual, bg = Visual.bg.lighten(20) }), -- |:substitute| replacement text highlighting
		-- CursorLineNr   { }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		-- CursorLineFold { }, -- Like FoldColumn when 'cursorline' is set for the cursor line
		-- CursorLineSign { }, -- Like SignColumn when 'cursorline' is set for the cursor line
		-- MatchParen     { }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		ModeMsg({ fg = hsl(115, 54, 76) }), -- 'showmode' message (e.g., "-- INSERT -- ")
		-- MsgArea        { }, -- Area for messages and cmdline
		-- MsgSeparator   { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
		MoreMsg({ fg = Normal.fg, bg = Normal.bg.darken(30) }), -- |more-prompt|
		NonText({ fg = hsl(222, 40, 60), gui = "italic" }), -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		NormalFloat({ fg = Normal.fg, bg = Normal.bg.darken(30) }), -- Normal text in floating windows.
		FloatBorder({ NormalFloat }), -- Border of floating windows.
		-- FloatTitle     { }, -- Title of floating windows.
		-- NormalNC       { }, -- normal text in non-current windows
		-- Pmenu          { }, -- Popup menu: Normal item.
		-- PmenuSel       { }, -- Popup menu: Selected item.
		-- PmenuKind      { }, -- Popup menu: Normal item "kind"
		-- PmenuKindSel   { }, -- Popup menu: Selected item "kind"
		-- PmenuExtra     { }, -- Popup menu: Normal item "extra text"
		-- PmenuExtraSel  { }, -- Popup menu: Selected item "extra text"
		-- PmenuSbar      { }, -- Popup menu: Scrollbar.
		-- PmenuThumb     { }, -- Popup menu: Thumb of the scrollbar.
		Question({ NormalFloat }), -- |hit-enter| prompt and yes/no questions
		QuickFixLine({ NormalFloat }), -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		Search({ Visual }), -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
		-- SpecialKey     { }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
		SpellBad({ fg = Normal.fg, gui = "underCurl", sp = hsl(342, 100, 78) }), -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		SpellCap({ fg = Normal.fg, gui = "underCurl", sp = hsl(20, 100, 78) }), -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		SpellLocal({ fg = Normal.fg, gui = "underCurl", sp = hsl(115, 54, 76) }), -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		SpellRare({ fg = Normal.fg, gui = "underCurl", sp = hsl(180, 57, 73) }), -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
		StatusLine({ bg = Normal.bg.darken(40) }), -- Status line of current window
		-- StatusLineNC   { }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		-- TabLine        { }, -- Tab pages line, not active tab page label
		-- TabLineFill    { }, -- Tab pages line, where there are no labels
		-- TabLineSel     { }, -- Tab pages line, active tab page label
		-- Title          { }, -- Titles for output from ":set all", ":autocmd" etc.
		-- WarningMsg     { }, -- Warning messages
		-- Whitespace     { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
		-- Winseparator   { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
		-- WildMenu       { }, -- Current match in 'wildmenu' completion
		-- WinBar         { }, -- Window bar of current window
		-- WinBarNC       { }, -- Window bar of not-current windows

		Constant({ fg = hsl(20, 100, 78) }), -- (*) Any constant
		String({ fg = hsl(42, 100, 68) }), --   A string constant: "this is a string"
		Character({ fg = String.fg.lighten(50) }), --   A character constant: 'c', '\n'
		-- Number         { }, --   A number constant: 234, 0xff
		Boolean({ fg = Constant.fg.darken(20), gui = "bold" }), --   A boolean constant: TRUE, false
		-- Float          { }, --   A floating point constant: 2.3e10

		-- Identifier     { }, -- (*) Any variable name
		Function({ fg = hsl(115, 54, 79) }), --   Function name (also: methods for classes)

		Statement({ fg = Normal.fg.darken(10), gui = "bold" }), -- (*) Any statement
		-- Conditional    { }, --   if, then, else, endif, switch, etc.
		-- Repeat         { }, --   for, do, while, etc.
		-- Label          { }, --   case, default, etc.
		-- Operator       { }, --   "sizeof", "+", "*", etc.
		-- Keyword        { }, --   any other keyword
		-- Exception      { }, --   try, catch, throw

		PreProc({ Function, gui = "italic" }), -- (*) Generic Preprocessor
		-- Include        { }, --   Preprocessor #include
		-- Define         { }, --   Preprocessor #define
		-- Macro          { }, --   Same as Define
		-- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

		Type({ fg = hsl(222, 97, 85), gui = "bold" }), -- (*) int, long, char, etc.
		StorageClass({ fg = Type.fg.darken(10) }), --   static, register, volatile, etc.
		-- Structure      { }, --   struct, union, enum, etc.
		-- Typedef        { }, --   A typedef

		-- Special        { }, -- (*) Any special symbol
		SpecialChar({ fg = String.fg.lighten(50), gui = "bold,italic" }), --   Special character in a constant
		-- Tag            { }, --   You can use CTRL-] on this
		-- Delimiter      { }, --   Character that needs attention
		SpecialComment({ fg = String.fg.lighten(50), gui = "bold,italic" }), --   Special things inside a comment (e.g. '\n')
		-- Debug          { }, --   Debugging statements

		Underlined({ fg = hsl(255, 100, 78), gui = "underline" }), -- Text that stands out, HTML links
		-- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
		Error({ fg = hsl(342, 100, 78), bg = hsl(342, 21, 16) }), -- Any erroneous construct
		-- Todo           { }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

		-- These groups are for the native LSP client and diagnostic system. Some
		-- other LSP clients may use these groups, or use their own. Consult your
		-- LSP client's documentation.

		-- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
		--
		-- LspReferenceText            { } , -- Used for highlighting "text" references
		-- LspReferenceRead            { } , -- Used for highlighting "read" references
		-- LspReferenceWrite           { } , -- Used for highlighting "write" references
		-- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
		-- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
		LspSignatureActiveParameter({ fg = hsl(342, 100, 78) }), -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

		-- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
		--
		DiagnosticError({ fg = hsl(342, 100, 78), bg = hsl(342, 21, 16) }), -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticWarn({ fg = hsl(20, 100, 78), bg = hsl(20, 21, 16) }), -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticInfo({ fg = hsl(180, 57, 73), bg = hsl(180, 21, 16) }), -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticHint({ fg = hsl(217, 100, 78), bg = hsl(217, 21, 20) }), -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticOk({ fg = hsl(115, 54, 76), bg = hsl(115, 21, 16) }), -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		-- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
		-- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
		-- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
		-- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
		-- DiagnosticVirtualTextOk    { } , -- Used for "Ok" diagnostic virtual text.
		DiagnosticUnderlineError({ DiagnosticError, gui = "underline", sp = hsl(342, 100, 50) }), -- Used to underline "Error" diagnostics.
		DiagnosticUnderlineWarn({ DiagnosticWarn, gui = "underline", sp = hsl(20, 100, 50) }), -- Used to underline "Warn" diagnostics.
		DiagnosticUnderlineInfo({ DiagnosticInfo, gui = "underline", sp = hsl(180, 57, 50) }), -- Used to underline "Info" diagnostics.
		DiagnosticUnderlineHint({ DiagnosticHint, gui = "underline", sp = hsl(217, 100, 50) }), -- Used to underline "Hint" diagnostics.
		DiagnosticUnderlineOk({ DiagnosticOk, gui = "underline", sp = hsl(115, 54, 50) }), -- Used to underline "Ok" diagnostics.
		-- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
		-- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
		-- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
		-- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
		-- DiagnosticFloatingOk       { } , -- Used to color "Ok" diagnostic messages in diagnostics float.
		-- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
		-- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
		-- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
		-- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.
		-- DiagnosticSignOk           { } , -- Used for "Ok" signs in sign column.

		-- Tree-Sitter syntax groups.
		--
		-- See :h treesitter-highlight-groups, some groups may not be listed,
		-- submit a PR fix to lush-template!
		--
		-- Tree-Sitter groups are defined with an "@" symbol, which must be
		-- specially handled to be valid lua code, we do this via the special
		-- sym function. The following are all valid ways to call the sym function,
		-- for more details see https://www.lua.org/pil/5.html
		--
		-- sym("@text.literal")
		-- sym('@text.literal')
		-- sym"@text.literal"
		-- sym'@text.literal'
		--
		-- For more information see https://github.com/rktjmp/lush.nvim/issues/109

		-- sym"@text.literal"      { }, -- Comment
		-- sym"@text.reference"    { }, -- Identifier
		-- sym"@text.title"        { }, -- Title
		-- sym"@text.uri"          { }, -- Underlined
		-- sym"@text.underline"    { }, -- Underlined
		-- sym"@text.todo"         { }, -- Todo
		-- sym"@comment"           { }, -- Comment
		-- sym"@punctuation"       { }, -- Delimiter
		-- sym"@constant"          { }, -- Constant
		-- sym"@constant.builtin"  { }, -- Special
		-- sym"@constant.macro"    { }, -- Define
		-- sym"@define"            { }, -- Define
		-- sym"@macro"             { }, -- Macro
		-- sym"@string"            { }, -- String
		-- sym"@string.escape"     { }, -- SpecialChar
		-- sym"@string.special"    { }, -- SpecialChar
		-- sym"@character"         { }, -- Character
		-- sym"@character.special" { }, -- SpecialChar
		-- sym"@number"            { }, -- Number
		-- sym"@boolean"           { }, -- Boolean
		-- sym"@float"             { }, -- Float
		-- sym"@function"          { }, -- Function
		-- sym"@function.builtin"  { }, -- Special
		-- sym"@function.macro"    { }, -- Macro
		sym("@parameter")({ fg = hsl(342, 100, 78) }), -- Identifier
		-- sym"@method"            { }, -- Function
		-- sym"@field"             { }, -- Identifier
		-- sym"@property"          { }, -- Identifier
		-- sym"@constructor"       { }, -- Special
		-- sym"@conditional"       { }, -- Conditional
		-- sym"@repeat"            { }, -- Repeat
		-- sym"@label"             { }, -- Label
		-- sym"@operator"          { }, -- Operator
		-- sym"@keyword"           { }, -- Keyword
		-- sym"@exception"         { }, -- Exception
		-- sym"@variable"          { }, -- Identifier
		-- sym"@type"              { }, -- Type
		-- sym"@type.definition"   { }, -- Typedef
		-- sym"@storageclass"      { }, -- StorageClass
		-- sym"@structure"         { }, -- Structure
		-- sym"@namespace"         { }, -- Identifier
		-- sym"@include"           { }, -- Include
		-- sym"@preproc"           { }, -- PreProc
		-- sym"@debug"             { }, -- Debug
		-- sym"@tag"               { }, -- Tag
	}
end)

return theme
