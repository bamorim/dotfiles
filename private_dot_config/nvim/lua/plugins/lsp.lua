local lexical_path = vim.fn.expand("$HOME/.lexical/_build/dev/package/lexical/bin/start_lexical.sh")

return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      lexical = {
        mason = false,
        cmd = { lexical_path },
      },
    },
  },
}
