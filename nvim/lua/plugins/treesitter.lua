return {
  {
    "nvim-treesitter/nvim-treesitter",

    -- Disable version checking
    version = false,

    -- Update parsers upon installation or update
    build = ":TSUpdate",


    -- Load on opening a new file or correct filetype
        event = {
        "BufNewFile",
        "BufEnter *.sh",        -- shellscript
        "BufEnter *.c",         -- c
        "BufEnter *.h",         -- c and cpp
        "BufEnter *.cpp",       -- cpp
        "BufEnter *.css",       -- css
        "BufEnter *.htm",       -- html
        "BufEnter *.html",      -- html
        "BufEnter *.java",      -- java
        "BufEnter *.jar",       -- java
        "BufEnter *.jmod",      -- java
        "BufEnter *.js",        -- javascript
        "BufEnter *.json",      -- json
        "BufEnter *.lua",       -- lua
        "BufEnter *.md",        -- markdown
        "BufEnter *.markdown",  -- markdown
        "BufEnter *.py",        -- python
        "BufEnter *.rb",        -- ruby
        "BufEnter *.rs",        -- rust
        "BufEnter *.rlib",      -- rust
        "BufEnter *.vim",       -- vim
        "BufEnter *.yaml",      -- yaml
        "BufEnter *.yml",       -- yaml
        },

    -- Custom Config
    config = function()
      require("nvim-treesitter").setup({

        -- Install custom list of langauges to support
        -- You can also do "all" for every parser
        ensure_installed = {
            "bash",
            "c",
            "cpp",
            "css",
            "html",
            "java",
            "javascript",
            "json",
            "lua",
            "markdown",
            "markdown_inline",
            "python",
            "ruby",
            "rust",
            "vim",
            "yaml",
        },

        highlight = {
            enable = true, -- false will disable the whole extension
            disable = {""},
        },

        autopairs = {
            enable = true,
        },

        indent = {
            enable = true,
            disable = { "python", "css" },
        },
    })
    end,
  },
}
