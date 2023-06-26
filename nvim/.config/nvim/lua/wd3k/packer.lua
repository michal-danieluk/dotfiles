-- Install packer
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
local is_bootstrap = false
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    is_bootstrap = true
    vim.fn.system { 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path }
    vim.cmd [[packadd packer.nvim]]
end


-- local status, packer = pcall(require, "packer")
-- if not status then
-- 	print("Packer is not installed")
-- 	return
-- end






return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use("christoomey/vim-tmux-navigator")
    use("szw/vim-maximizer")

    use({
        'rose-pine/neovim',
        --	  as = 'rose-pine',
        --	  config = function()
        --		  vim.cmd('colorscheme rose-pine')
        --	  end
    })
    use({ 'dracula/vim',
        --   as = 'dracula',
        -- 	  config = function()
        -- 		  vim.cmd('colorscheme dracula')
        -- 	  end

    })
    use({ 'rebelot/kanagawa.nvim',
        -- 	  as = 'kanagawa',
        --  	  config = function()
        --  		  vim.cmd('colorscheme kanagawa')
        --  	  end
    })
    use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
    use('nvim-treesitter/playground')
    --  use('theprimeagen/harpoon')
    --  use('mbbill/undotree')
    use('tpope/vim-fugitive')

    use("nvim-telescope/telescope-file-browser.nvim")
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make', cond = vim.fn.executable 'make' == 1 }





    use("folke/which-key.nvim")      -- Which Key
    use("nvim-lualine/lualine.nvim") -- A better statusline
    use 'kyazdani42/nvim-web-devicons' -- File icons


    -- LSP cratzdog
    use 'glepnir/lspsaga.nvim' -- LSP UIs
    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'
    use 'akinsho/nvim-bufferline.lua'



    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }

    use("folke/zen-mode.nvim")
    --  use("github/copilot.vim")
end)
