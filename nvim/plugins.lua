vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  -- neotest-go
  use({
      "nvim-neotest/neotest",
      requires = {
        "nvim-neotest/neotest-go",
        -- Your other test adapters here
      },
      config = function()
        -- get neotest namespace (api call creates or returns namespace)
        local neotest_ns = vim.api.nvim_create_namespace("neotest")
        vim.diagnostic.config({
          virtual_text = {
            format = function(diagnostic)
              local message =
                diagnostic.message:gsub("\n", " "):gsub("\t", " "):gsub("%s+", " "):gsub("^%s+", "")
              return message
            end,
          },
        }, neotest_ns)
        require("neotest").setup({
          -- your neotest config here
          adapters = {
            require("neotest-go"),
          },
        })
      end,
    })

    -- Lua
    use {
      "folke/which-key.nvim",
      config = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
        require("which-key").setup {
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
        }
      end
    }

end)

