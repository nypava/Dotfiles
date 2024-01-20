return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {"lua", "javascript", "html", "css", "python", "rust", "bash" },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}

