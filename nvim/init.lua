-- Enable syntax highlighting
vim.cmd("syntax enable")
--
-- Key mappings alias
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Leader key setup
vim.g.mapleader = ","              -- Set the global leader key to ","
vim.g.maplocalleader = ","         -- Set the local leader key to ","

-- Line numbering
vim.opt.number = true            -- Show line numbers
vim.opt.relativenumber = true    -- Show relative line numbers
vim.opt.spelllang = "es"         -- Set the spell check language to Spanish

-- Word counting
local function getWords()
  return tostring(vim.fn.wordcount().words)
end

-- Key mappings for clipboard
vim.keymap.set("n", "<S-Insert>", '"+gP', { noremap = true, silent = true }) -- Paste from the system clipboard
vim.keymap.set("v", "<S-Del>", '"+y', { noremap = true, silent = true })    -- Copy to the system clipboard

-- Tab expansion
vim.opt.tabstop = 8 -- Number of spaces a tab character represents
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.shiftwidth = 2 -- Number of spaces to write
vim.opt.autoindent = true -- Automatically indent

-- Visual enhancements
vim.opt.cursorline = true           -- Highlight the current line
vim.opt.cursorcolumn = true         -- Highlight the current column
vim.opt.scrolloff = 3               -- Keep at least 3 lines visible above/below the cursor when scrolling
vim.opt.colorcolumn = "80"          -- Highlight the 80th column
vim.opt.termguicolors = true        -- Allow for termgui colors
map("n", "<space>", "za", opts)             -- Toggle folds

-- Search settings
vim.opt.hlsearch = true   -- Highlight search results
vim.opt.incsearch = true  -- Incremental search (show matches as you type)
map("n", "<leader><space>", ":nohlsearch<CR>", opts) -- Clear highlight

-- Edit this file
map("n", "<leader>ev", ":tabedit ~/dotfiles/nvim/init.lua<CR>", opts)

-- Navigation
vim.opt.showtabline = 1 -- Show the tabline only when multiple tabs are open
map("n", "<C-Tab>", ":bn<CR>", opts)        -- Next buffer
map("n", "<C-S-Tab>", ":bp<CR>", opts)      -- Previous buffer
map("n", "<leader>1", ":b1<CR>", opts)      -- Go to the first buffer
map("n", "<C-t>", ":enew<CR>", opts)        -- Open a new buffer
map("n", "<C-q>", ":bd<CR>", opts)          -- Close the current buffer
map("n", "<C-e>", ":NERDTreeToggle<CR>", opts) -- Toggle NERDTree
map("n", "<C-f>", "<C-f>zz", opts)          -- Center screen after scrolling forward
map("n", "<C-b>", "<C-b>zz", opts)          -- Center screen after scrolling backward
map("n", "n", "nzzzv", opts)                -- Center screen after next search result
map("n", "N", "Nzzzv", opts)                -- Center screen after previous search result

-- Compilation
map("n", "<F9>", ":make<CR>", opts)         -- Run the make command

-- File specific Config -------------------------------------------------------
--- Markdown-specific settings
vim.api.nvim_create_autocmd("FileType", {
    pattern = "markdown,pandoc",
    callback = function()
        -- Set local formatting options
        vim.opt_local.formatoptions = "awtq" -- Auto-wrap text intelligently
        vim.opt_local.textwidth = 80         -- Set text width to 80 characters

        -- Enable Pandoc YAML folding
        vim.g["pandoc#folding#fold_yaml"] = 1

        -- Key mappings for Pandoc commands
        vim.keymap.set("n", "<F5>", ":Pandoc! pdf --citeproc<CR><CR>", { noremap = true, silent = true, buffer = true })
        vim.keymap.set("n", "<F6>", ":Pandoc! beamer --incremental=true --pdf-engine=xelatex --citeproc<CR><CR>", { noremap = true, silent = false, buffer = true })
        vim.keymap.set("n", "<F7>", ":Pandoc! odt --citeproc --reference-doc=~/dotfiles/pandoc-templates/referencia.odt<CR><CR>", { noremap = true, silent = true, buffer = true })
    end
})

--- Tex specific
vim.api.nvim_create_autocmd("FileType", {
    pattern = "tex",
    callback = function()
        vim.keymap.set("n", "<F5>", ":!xelatex % %:r.pdf<CR>", { noremap = true, silent = true, buffer = true })
        vim.keymap.set("n", "<F6>", ":!mupdf %:r.pdf &<CR>", { noremap = true, silent = true, buffer = true })
    end
})

--- Plugins
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

--- Setup lazy.nvim
require("lazy").setup({
  spec = {
    {
      "folke/tokyonight.nvim",
      lazy = false,
      priority = 1000,
      opts = {},
    },
    {"SirVer/ultisnips"},
    {"chrisbra/csv.vim"},
    {"dense-analysis/ale"},
    {"dhruvasagar/vim-table-mode"},
    {"godlygeek/tabular"},
    {"jalvesaq/Nvim-R"},
    {"jiangmiao/auto-pairs"},
    {"preservim/nerdtree"},
    {"tpope/vim-fugitive"},
    {"tpope/vim-surround"},
    {"vim-pandoc/vim-pandoc"},
    {"vim-pandoc/vim-pandoc-syntax"},
    {
      'nvim-lualine/lualine.nvim',
      dependencies = { 'nvim-tree/nvim-web-devicons' }
    }
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "tokyonight-storm" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})
vim.cmd("colorscheme tokyonight-storm") -- Set the colorscheme

--- R config
vim.g.R_external_term = 'kitty --start-as=maximized --config ~/dotfiles/kitty/r.conf'
vim.g.R_silent_term = 1  -- No mostrar errores de kitty
vim.g.R_auto_start = 2  -- Auto start when R file is open
vim.g.R_assign = 0  -- Manual <- assignment
vim.g.R_indent_commented = 0 -- Do not indent comments
vim.g.R_args = {'--no-save', '--quiet'} -- Clean start
vim.g.R_clear_line = 1 -- Clean written code
vim.g.R_pdfviewer = 'evince'
vim.g.R_openpdf = 1
vim.g.R_openhtml = 2
vim.g.R_hi_fun_paren = 1  -- Solo iluminar funciones con paréntesis

--- Ale config
vim.g.ale_linter_aliases = {pandoc = 'markdown'}
vim.g.ale_fixers = {['*'] = {'remove_trailing_lines'}}
vim.g.ale_fix_on_save = 1
vim.g.r_indent_align_args = 0
vim.g.ale_markdown_markdownlint_options = '--disable MD025'

--- Table mode
vim.g.table_mode_corner = '|'

--- Netrw
-- noma: no mappings
-- nomod: no modifications
-- nonu: no numbers
-- nobl: no buffer list
-- nowrap: no wrapping long filenames
-- ro: read-only
-- rnu: relative number
vim.g.netrw_bufsettings = "noma nomod nobl nowrap ro rnu"

--- Ultisnips
vim.g.UltiSnipsExpandTrigger = "<Tab>"
vim.g.UltiSnipsJumpForwardTrigger = "<Tab>"
vim.g.UltiSnipsJumpBackwardTrigger = "<s-Tab>"
vim.g.UltiSnipsSnippetDirectories = {"~/dotfiles/my_snippets/"}

--- Pandoc
vim.g.pandoc_formatting_equalprg = ''  -- Ignore = in Rmd files

--- lualine setup
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'powerline_dark',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    always_show_tabline = true,
    globalstatus = false,
    refresh = {
      statusline = 100,
      tabline = 100,
      winbar = 100,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'filetype', getWords},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
