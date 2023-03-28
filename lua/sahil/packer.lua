-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	
	 use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
	  
  }
  use { "Shatur/neovim-ayu", as = "ayu",
	  config = function()
		  vim.cmd('colorscheme ayu-dark')
	  end
  }

  use({"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"})
  use 'nvim-treesitter/playground'

  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use 'andweeb/presence.nvim'
  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v1.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {'williamboman/mason.nvim'},           -- Optional
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},         -- Required
    {'hrsh7th/cmp-nvim-lsp'},     -- Required
    {'hrsh7th/cmp-buffer'},       -- Optional
    {'hrsh7th/cmp-path'},         -- Optional
    {'saadparwaiz1/cmp_luasnip'}, -- Optional
    {'hrsh7th/cmp-nvim-lua'},     -- Optional

    -- Snippets
    {'L3MON4D3/LuaSnip'},             -- Required
    {'rafamadriz/friendly-snippets'}, -- Optional
 }
}

use 'folke/lsp-colors.nvim'
use 'neovim/nvim-lspconfig'
use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional
  },
}
use {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
    panel = {
    enabled = true,
    auto_refresh = true,
    keymap = {
      jump_prev = "[[",
      jump_next = "]]",
      accept = "<CR>",
      refresh = "gr",
      open = "<M-CR>"
    },
    layout = {
      position = "bottom", -- | top | left | right
      ratio = 0.4
    },
  },
  suggestion = {
    enabled = true,
    auto_trigger = false,
    debounce = 75,
    keymap = {
      accept = "<M-l>",
      accept_word = false,
      accept_line = false,
      next = "<M-]>",
      prev = "<M-[>",
      dismiss = "<C-]>",
    },
  },
  filetypes = {
    yaml = false,
    markdown = false,
    help = false,
    gitcommit = false,
    gitrebase = false,
    hgcommit = false,
    svn = false,
    cvs = false,
    ["."] = false,
  },
  copilot_node_command = 'node', -- Node.js version must be > 16.x
  server_opts_overrides = {},
    })
  end,
}
use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}
use {
    "norcalli/nvim-colorizer.lua",
    config = function() require("colorizer").setup() end
}
use { 'mrshmllow/document-color.nvim', config = function()
  require("document-color").setup {
    -- Default options
    mode = "background", -- "background" | "foreground" | "single"
  }
  end
}
use({
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	tag = "v<CurrentMajor>.*",
	-- install jsregexp (optional!:).
	run = "make install_jsregexp"
})
use {'windwp/nvim-ts-autotag'}
use "rafamadriz/friendly-snippets"
use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}
use {
      'stevearc/aerial.nvim',
      config = function() require('aerial').setup({
          on_attach = function(bufnr)
    -- Jump forwards/backwards with '{' and '}'
    vim.keymap.set('n', '{', '<cmd>AerialPrev<CR>', {buffer = bufnr})
    vim.keymap.set('n', '}', '<cmd>AerialNext<CR>', {buffer = bufnr})
  end
      }) end
    }

    use({
  "utilyre/barbecue.nvim",
  tag = "*",
  requires = {
    "SmiteshP/nvim-navic",
    "nvim-tree/nvim-web-devicons", -- optional dependency
  },
  after = "nvim-web-devicons", -- keep this if you're using NvChad
  config = function()
    require("barbecue").setup()
  end,
})

use 'wakatime/vim-wakatime'

use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
use {'APZelos/blamer.nvim'}
  end)
