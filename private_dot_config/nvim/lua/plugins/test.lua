return {
  "nvim-neotest/neotest",
  optional = true,
  dependencies = {
    "jfpedroza/neotest-elixir",
  },
  opts = {
    adapters = {
      ["neotest-elixir"] = {},
    },
  },
}
