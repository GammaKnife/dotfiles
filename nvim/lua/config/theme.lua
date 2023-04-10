--background            #282a2e
--foreground            #dfce9d
--cursor                #dfce9d
--
--selection_background  #d8ad0d
--selection_foreground  #252525
--
--color0                #3f3f3c
--color8                #847c66
--
--color1                #d16363
--color9                #d16363
--color2                #63d1ab
--color10               #63d1ab
--color3                #d1b563
--color11               #d1b563
--color4                #63b4d1
--color12               #63b4d1
--color5                #d1a563
--color13               #d1a563
--color6                #63d0d1
--color14               #63d0d1
--
--color7                #bdb089
--color15               #dfce9d

-- Background and Foreground
bg = "#282a2e"
fg = "#dfce9d"

-- Other Netural Colors
bg_0 = "#3f3f3c"
fg_0 = "#847c66"

bg_1 = "#bdb089"
fg_1 = "#dfce9d"

-- Theme Colors
red = "#d16363"
green = "#63d1ab"
yellow = "#d1b563"
blue = "#63b4d1"
sand_orange = "#d1a563"
cyan = "#63d0d1"

-- Set highlights

-- Visual highlights
vim.api.nvim_set_hl(0, "SpecialKey", { ctermfg=6, fg=Cyan, })
vim.api.nvim_set_hl(0, "TermCursor", { cterm=reverse, gui=reverse, })
vim.api.nvim_set_hl(0, "NonText", { ctermfg=4, gui=bold, fg=Blue, })
vim.api.nvim_set_hl(0, "Directory", { ctermfg=6, fg=cyan, })
vim.api.nvim_set_hl(0, "ErrorMsg", { ctermfg=fg, ctermbg=1, fg=fg, ctermbg=red, })
vim.api.nvim_set_hl(0, "IncSearch", { cterm=reverse, gui=reverse, })
vim.api.nvim_set_hl(0, "Search",  { ctermfg=0, ctermbg=11, fg=Black, bg=Yellow, })
vim.api.nvim_set_hl(0, "MoreMsg", { ctermfg=6, gui=bold, fg=cyan, })
vim.api.nvim_set_hl(0, "ModeMsg", { cterm=bold, gui=bold, }) 
vim.api.nvim_set_hl(0, "LineNR", { ctermfg=8, fg=fg_0, })
vim.api.nvim_set_hl(0, "CursorLineNr", { ctermfg=8, fg=fg_0, })
vim.api.nvim_set_hl(0, "Question", { ctermfg=2, fg=green, })
--vim.api.nvim_set_hl(0, "StatusLine", {
vim.api.nvim_set_hl(0, "StatusLineNC", { cterm=reverse, gui=reverse, })
vim.api.nvim_set_hl(0, "Title", { ctermfg=5, gui=bold, fg=sand_orange, })
vim.api.nvim_set_hl(0, "Visual", { ctermbg=0, bg=bg_0, })
vim.api.nvim_set_hl(0, "WarningMsg", { ctermfg=1, fg=red, })
vim.api.nvim_set_hl(0, "WildMenu", { ctermfg=0, ctermbg=11, fg=bg_0, bg=yellow, })
vim.api.nvim_set_hl(0, "Folded", { ctermfg=14, ctermbg=242, fg=cyan, bg=bg_0, })
vim.api.nvim_set_hl(0, "FoldColumn", { ctermfg=14, ctermbg=242, fg=cyan, bg=bg_0, })
vim.api.nvim_set_hl(0, "DiffAdd", { ctermbg=4 bg=blue, })
vim.api.nvim_set_hl(0, "DiffChange", { 
vim.api.nvim_set_hl(0, "DiffDelete"
vim.api.nvim_set_hl(0, "DiffText"
vim.api.nvim_set_hl(0, "SignColumn"
vim.api.nvim_set_hl(0, "Conceal"
vim.api.nvim_set_hl(0, "SpellBad"
vim.api.nvim_set_hl(0, "SpellCap"
vim.api.nvim_set_hl(0, "SpellRare"
vim.api.nvim_set_hl(0, "SpellLocal"
vim.api.nvim_set_hl(0, "PMenu", { fg=fg, bg=bg_0, ctermfg="NONE", ctermbg=0, })
vim.api.nvim_set_hl(0, "PmenuSel"
vim.api.nvim_set_hl(0, "PmenuSbar"
vim.api.nvim_set_hl(0, "PmenuThumb"
vim.api.nvim_set_hl(0, "TabLine"
vim.api.nvim_set_hl(0, "TabLineSel"
vim.api.nvim_set_hl(0, "TabLineFill"
vim.api.nvim_set_hl(0, "CursorColumn"
vim.api.nvim_set_hl(0, "ColorColumn"
vim.api.nvim_set_hl(0, "WinBar"
vim.api.nvim_set_hl(0, "Cursor"
vim.api.nvim_set_hl(0, "lCursor"
vim.api.nvim_set_hl(0, "FloatShadow"
vim.api.nvim_set_hl(0, "FloatShadowThrough"
vim.api.nvim_set_hl(0, "RedrawDebugNormal"
vim.api.nvim_set_hl(0, "RedrawDebugClear"
vim.api.nvim_set_hl(0, "RedrawDebugComposed"
vim.api.nvim_set_hl(0, "RedrawDebugRecompose"

-- Syntax highlights
vim.api.nvim_set_hl(0, "Error"
vim.api.nvim_set_hl(0, "Todo"
vim.api.nvim_set_hl(0, "String", { fg="#63b4d1", ctermfg=2, })
vim.api.nvim_set_hl(0, "Constant"
vim.api.nvim_set_hl(0, "Character"
vim.api.nvim_set_hl(0, "Number"
vim.api.nvim_set_hl(0, "Boolean"
vim.api.nvim_set_hl(0, "Float"
vim.api.nvim_set_hl(0, "Function"
vim.api.nvim_set_hl(0, "Identifier"
vim.api.nvim_set_hl(0, "Conditional"
vim.api.nvim_set_hl(0, "Statement"
vim.api.nvim_set_hl(0, "Repeat"
vim.api.nvim_set_hl(0, "Label"
vim.api.nvim_set_hl(0, "Operator"
vim.api.nvim_set_hl(0, "Keyword"
vim.api.nvim_set_hl(0, "Exception"
vim.api.nvim_set_hl(0, "Include"
vim.api.nvim_set_hl(0, "PreProc"
vim.api.nvim_set_hl(0, "Define"
vim.api.nvim_set_hl(0, "Macro"
vim.api.nvim_set_hl(0, "PreCondit"
vim.api.nvim_set_hl(0, "StorageClass"
vim.api.nvim_set_hl(0, "Type"
vim.api.nvim_set_hl(0, "Structure"
vim.api.nvim_set_hl(0, "Typedef"
vim.api.nvim_set_hl(0, "Tag"
vim.api.nvim_set_hl(0, "Special"
vim.api.nvim_set_hl(0, "SpecialChar"
vim.api.nvim_set_hl(0, "Delimiter'
vim.api.nvim_set_hl(0, "SpecialComment"
vim.api.nvim_set_hl(0, "Debug"
vim.api.nvim_set_hl(0, "Comment", 
vim.api.nvim_set_hl(0, "Underlined"

-- Diag highlights
vim.api.nvim_set_hl(0, "DiagnosticError
vim.api.nvim_set_hl(0, "DiagnosticWarn
vim.api.nvim_set_hl(0, "DiagnosticInfo
vim.api.nvim_set_hl(0, "DiagnosticHint
vim.api.nvim_set_hl(0, "DiagnosticOk
vim.api.nvim_set_hl(0, "DiagnosticUnderlineError
vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn
vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo
vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint
vim.api.nvim_set_hl(0, "DiagnosticUnderlineOk


vim.api.nvim_set_hl(0, "MatchParen
vim.api.nvim_set_hl(0, "Ignore


