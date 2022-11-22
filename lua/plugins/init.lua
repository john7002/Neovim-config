return require("packer").startup(function()
    -- Packer can manage itself
    use("wbthomason/packer.nvim")


    -- use 'nvim-treesitter/nvim-treesitter'
    use("tanvirtin/monokai.nvim")

    use({
        "goolord/alpha-nvim",
        requires = { "kyazdani42/nvim-web-devicons" },
        config = function()
            require("alpha").setup(require("alpha.themes.startify").config)
        end,
    })

    use({
        "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons", opt = true },
    })

    use({
        "nvim-tree/nvim-tree.lua",
        requires = {
            "nvim-tree/nvim-web-devicons", -- optional, for file icon
        },
        config = function()
            require("nvim-tree").setup({})
        end,
    })
    use({
        "akinsho/toggleterm.nvim",
        tag = "v1.*",
        config = function()
            require("toggleterm").setup()
        end,
    })

    -- managing lsp servers
    use("williamboman/mason.nvim")
    use("williamboman/mason-lspconfig.nvim")

    -- configuring lsp servers
    use("neovim/nvim-lspconfig") -- easily configure language servers
    use("hrsh7th/cmp-nvim-lsp") -- for autocompletion
    use({ "glepnir/lspsaga.nvim", branch = "main" }) -- enhanced lsp uis
    use("jose-elias-alvarez/typescript.nvim") -- additional functionality for typescript server (e.g. rename file & update imports)
    use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion

    -- autocompletion
    use("hrsh7th/nvim-cmp")
    use("hrsh7th/cmp-path")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-cmdline")
    use("saadparwaiz1/cmp_luasnip")
    use("ray-x/lsp_signature.nvim")

    --code formatting
    use("nvim-lua/plenary.nvim")
    use("jose-elias-alvarez/null-ls.nvim")
    use("jayp0521/mason-null-ls.nvim") -- bridges gap b/w mason & null-ls
    --use("lukas-reineke/indent-blankline.nvim")

    --snippets
    use("L3MON4D3/LuaSnip")
    use("rafamadriz/friendly-snippets")

    use("nvim-telescope/telescope.nvim")

    use("mg979/vim-visual-multi")

    --comment
    use({
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup()
        end,
    })
end)
