return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup(
        {
          ensure_installed = {"lua_ls", "pyright", "biome", "rust_analyzer", "svelte", "tailwindcss", "clangd", "html", "cssls",  "unocss", "tsserver"} }
      )
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.pyright.setup({file_type={"python"}})
      lspconfig.biome.setup({})
      lspconfig.svelte.setup({file_type="svelte"})
      lspconfig.rust_analyzer.setup({})
      lspconfig.tailwindcss.setup({file_type={"svelte"}})
      lspconfig.clangd.setup({})
      lspconfig.html.setup({file_type={"html"}})
      lspconfig.cssls.setup({})
      lspconfig.tsserver.setup({file_type={'ts'}})
      lspconfig.unocss.setup({})

      vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
        vim.lsp.diagnostic.on_publish_diagnostics, {
          underline = true,
          signs = false,
          update_in_insert = true,
        }
      )

      vim.keymap.set('n', '<leader>h', vim.lsp.buf.hover, {})

      vim.keymap.set('n', '<leader>r', vim.lsp.buf.references)

    end
  }
}
