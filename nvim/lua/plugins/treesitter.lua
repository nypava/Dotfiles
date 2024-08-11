return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "nvim-telescope/telescope-live-grep-args.nvim" ,
    version = "^1.0.0"
  },
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {"lua", "javascript", "css", "python", "rust", "bash", "svelte", "typescript"},
      highlight = { enable = true },
      indent = { enable = true},
      autotag= {
        enable = true,
        enable_rename = true,
        enable_close = true,
        enable_close_on_slash = true,
      }
    })
  end
}
