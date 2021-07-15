return require('packer').startup(
    function()

        use {
            'wbthomason/packer.nvim'
        }

        use {
            'alvan/vim-closetag'
        }
        
        use {
            'akinsho/nvim-bufferline.lua',
        }                   

        use {     
            'jiangmiao/auto-pairs',
        }  

        use {
            'lukas-reineke/indent-blankline.nvim', 
        }

        use {
            'glepnir/galaxyline.nvim',
        }                            
        
        use {
            'kyazdani42/nvim-tree.lua',
            config = function()
                require('nvimTree').config()
            end
        }

        use {
            'terrortylor/nvim-comment',
            config = function()
                require('nvim_comment').setup()
            end
        }        

        use {
            'norcalli/nvim-colorizer.lua',
            event = BuffRead,
            config = function()
                require('colorizer').setup()
            end
        }                   

        use {
            'nvim-treesitter/nvim-treesitter', 
            event = BuffRead,
            config = function()
                require('treesitter-nvim').config()
            end  
        }

--[[    use {
            "neovim/nvim-lspconfig",
            event = "BufRead",
            config = function()
                require("nvim-lspconfig").config()
            end
        } ]]

        use {
            "onsails/lspkind-nvim",
            event = "BufRead",
            config = function()
                require("lspkind").init()
            end
        }

--[[    use {
            'hrsh7th/nvim-compe',
            event = 'InsertEnter',
            config = function()
                require('compe-completion').config()
            end,
            wants = {"LuaSnip"},
            requires = {
                {
                    'L3MON4D3/LuaSnip',
                    wants = 'friendly-snippets',
                    event = 'InsertCharPre',
                    config = function()
                        require('compe-completion').snippets()
                    end
                },
                'rafamadriz/friendly-snippets'
            }
        }  ]]

    end
)
