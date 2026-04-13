-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

    -- alignment (commented out -- not in use)
    -- { "junegunn/vim-easy-align" },

    -- file explorer (lazy-load on command)
    {
        "preservim/nerdtree",
        cmd = "NERDTreeToggle",
        dependencies = { "Xuyuanp/nerdtree-git-plugin" },
        config = function()
            vim.g.NERDTreeGitStatusIndicatorMapCustom = {
                Modified  = "M",
                Staged    = "+",
                Untracked = "U",
                Renamed   = "R",
                Unmerged  = "=",
                Deleted   = "x",
                Dirty     = "D",
                Clean     = "C",
                Unknown   = "?",
            }
        end,
    },

    -- status line (lightline kept for reference, lualine active)
    -- {
    --     "itchyny/lightline.vim",
    --     config = function()
    --         vim.g.lightline = {
    --             colorscheme = "wombat",
    --             component_function = { gitbranch = "FugitiveHead" },
    --             active = {
    --                 left = {
    --                     { "mode", "fugitive" },
    --                     { "gitbranch", "readonly", "relativepath", "modified" },
    --                     { "ctrlpmark" },
    --                 },
    --                 right = { { "lineinfo" }, { "percent" } },
    --             },
    --             inactive = {
    --                 left  = { { "relativepath", "modified" } },
    --                 right = { { "lineinfo" }, { "percent" } },
    --             },
    --         }
    --     end,
    -- },

    -- nyancat statusline component (requires lualine)
    {
        "abosnjakovic/nyan.nvim",
        config = function()
            require("nyan").setup({
                renderer = "space",
            })
        end,
    },

    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "abosnjakovic/nyan.nvim" },
        config = function()
            require("lualine").setup({
                options = { theme = "auto" },
                sections = {
                    lualine_a = { "mode" },
                    lualine_b = { "branch", "diff", "diagnostics" },
                    lualine_c = { { "filename", path = 1 } },  -- relative path
                    lualine_x = {
                        {
                            require("nyan").get,
                            -- cond = require("nyan").should_display,  -- disabled for debugging
                        },
                    },
                    lualine_y = { "progress" },
                    lualine_z = { "location" },
                },
                inactive_sections = {
                    lualine_c = { { "filename", path = 1 } },
                    lualine_x = { "location" },
                },
            })
        end,
    },

    -- git integration
    { "tpope/vim-fugitive" },
    {
        "lewis6991/gitsigns.nvim",   -- replaces vim-gitgutter
        config = function()
            require("gitsigns").setup()
        end,
    },

    -- color themes
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
    },
    { "embark-theme/vim", name = "embark" },
    { "junegunn/seoul256.vim" },
    { "kristiandupont/shades-of-teal" },
    { "widatama/vim-phoenix" },
    { "wutzara/vim-materialtheme" },
    { "crusoexia/vim-monokai" },

    -- markdown
    {
        "plasticboy/vim-markdown",
        dependencies = { "godlygeek/tabular" },
    },

    -- elixir
    { "elixir-editors/vim-elixir" },

    -- GitHub issues & PRs
    {
        "pwntester/octo.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope.nvim",
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("octo").setup()
        end,
    },

    -- telescope (required by octo)
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
    },

    -- claude code cli integration
    {
        "greggh/claude-code.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = true,
    },

})

-- colorscheme (set after plugins are loaded)
vim.cmd("colorscheme catppuccin-mocha")
