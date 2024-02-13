-- First we will need lush, and the colorscheme we wish to modify
local lush = require("lush")
local theme = require("lush_theme.darcula-solid")

-- Now we will extend the colorscheme
local spec = lush.extends({ theme }).with(function()
  local hsl = lush.hsl
  local yellow = hsl(37, 100, 71)
  local gray00 = hsl("#DFDFE0")
  local gray01 = hsl("#B0BEC5")
  local gray02 = hsl("#BDC3C2")
  local gray06 = hsl("#7C8083")
  local green03 = hsl("#AFD700")
  local visualSelection = hsl("#1f477d")
  return {
    String({ theme.String, gui = "italic" }),
    -- Function({ fg = theme.Normal.fg, gui = "italic" }),
    -- Constant({ fg = theme.Constant.fg, gui = "italic" }),
    -- Statement({ fg = theme.Statement.fg, gui = "italic" }), -- (preferred) any statement

    Conditional({ theme.Statement, gui = "italic" }), -- (preferred) any statement
    Keyword({ theme.Statement, gui = "italic" }), -- (preferred) any statement
    Operator({ theme.Statement, gui = "italic" }), -- (preferred) any statement
    Label({ theme.Statement, gui = "italic" }), -- (preferred) any statement
    LineNr({ theme.LineNr, gui = "italic" }), -- (preferred) any statement
    -- Tag({ theme.Tag, gui = "italic" }), -- HTML tags
    -- PreProc({ fg = theme.PreProc.fg, gui = "italic" }), --  generic Preprocessor
    Typedef({ fg = theme.Type.fg, gui = "italic" }),
    Visual({ theme.Visual, bg = visualSelection }), -- Visual mode selection
    Special({ theme.Special, gui = "italic" }),
    Structure({ theme.Structure, gui = "italic" }),
    TelescopeNormal({ theme.pmenu }),

    -- NeoTree
    NeoTreeDirectoryName({ fg = gray01 }),
    NeoTreeDotfile({ fg = gray06 }),
    NeoTreeRootName({ fg = gray02 }),
    NeoTreeFileName({ fg = gray01 }),
    NeoTreeGitModified({ fg = yellow }),
    NeoTreeGitIgnored({ fg = gray06 }),
    NeoTreeGitAdded({ fg = green03 }),
    NeoTreeDirectoryIcon({ fg = yellow }),
  }
end)
lush(spec)
