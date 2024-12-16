return {
  "saghen/blink.cmp",
  optional = true,
  dependencies = {
    { "saghen/blink.compat", opts = { impersonate_nvim_cmp = true } },
    { "saadparwaiz1/cmp_luasnip" },
    { "L3MON4D3/LuaSnip" },
  },
  opts = {
    sources = {
      completion = { enabled_providers = { "lsp", "path", "luasnip", "buffer" } },
      providers = {
        dadbod = { name = "Dadbod", module = "vim_dadbod_completion.blink" },
      },
      compat = { "luasnip" },
    },
    snippets = {
      expand = function(snippet)
        require("luasnip").lsp_expand(snippet)
      end,
      active = function(filter)
        if filter and filter.direction then
          return require("luasnip").jumpable(filter.direction)
        end
        return require("luasnip").in_snippet()
      end,
      jump = function(direction)
        require("luasnip").jump(direction)
      end,
    },
  },
}
