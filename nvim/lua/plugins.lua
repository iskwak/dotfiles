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

    -- alignment
    { "junegunn/vim-easy-align" },

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

    -- status line
    {
        "itchyny/lightline.vim",
        config = function()
            vim.g.lightline = {
                colorscheme = "wombat",
                component_function = { gitbranch = "FugitiveHead" },
                active = {
                    left = {
                        { "mode", "fugitive" },
                        { "gitbranch", "readonly", "relativepath", "modified" },
                        { "ctrlpmark" },
                    },
                    right = { { "lineinfo" }, { "percent" } },
                },
                inactive = {
                    left  = { { "relativepath", "modified" } },
                    right = { { "lineinfo" }, { "percent" } },
                },
            }
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

})

-- colorscheme (set after plugins are loaded)
vim.cmd("colorscheme seoul256")
