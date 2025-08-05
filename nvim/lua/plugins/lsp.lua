local map = vim.keymap.set
-- local border = { "🭽", "▔", "🭾", "▕", "🭿", "▁", "🭼", "▏" }
local border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" }
local scrollbar = "║"

return {
  {
    "mason-org/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls",
        "clangd",
        "texlab",
        "pylsp",
        "vimls",
        "yamlls",
        "bashls",
      },
    },
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.diagnostic.config({ virtual_text = false })

      vim.api.nvim_create_autocmd("CursorHold", {
        pattern = "*",
        callback = function()
          vim.diagnostic.open_float(nil, { focus = false })
        end,
      })

      local lspconfig = require('lspconfig')
      -- LSP settings (for overriding per client)
      local handlers =  {
        ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = border, scrollbar = scrollbar }),
        ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = border, scrollbar = scrollbar }),
      }

      -- To instead override globally
      local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
      function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
        opts = opts or {}
        opts.border = opts.border or border
        return orig_util_open_floating_preview(contents, syntax, opts, ...)
      end

      lspconfig.lua_ls.setup({
        handlers=handlers,
        settings = {
          Lua = {
            diagnostics = {
              globals = { 'vim' }
            }
          }
        }
      })
      lspconfig.clangd.setup({ handlers=handlers })
      lspconfig.texlab.setup({ handlers=handlers })
      lspconfig.pylsp.setup({
        handlers = handlers,
        settings = {
          pylsp = {
            cmd = { '/Users/ingbe/.conda/envs/root_env/bin/pylsp' },
            pythonPath = { '/Users/ingbe/.conda/envs/root_env/bin/python3' },
            plugins = {
              pycodestyle = {
                ignore = {
                  'E501',
                  'E225',
                  'E226',
                  'E251',
                  'E305',
                  'E731',
                  'F401',
                  'F841',
                  'W605',
                },
                maxLineLength = 250,
              }
            }
          }
        }
      })
      lspconfig.vimls.setup({ handlers=handlers })
      lspconfig.yamlls.setup({ handlers=handlers })
      lspconfig.bashls.setup({ handlers=handlers })

      map({'n', 'v'}, 'K', vim.lsp.buf.hover)
      map({'n', 'v'}, 'gd', vim.lsp.buf.definition)
      map({'n', 'v'}, 'gr', vim.lsp.buf.references)
      map({'n', 'v'}, '<leader>rn', vim.lsp.buf.rename)
      map({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action)
    end,
  },
}
