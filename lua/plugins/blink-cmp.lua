return {
  "saghen/blink.cmp",
  optional = true,
  dependencies = {
    { "saghen/blink.compat", opts = { impersonate_nvim_cmp = true } },
    { "saadparwaiz1/cmp_luasnip" },
    { "L3MON4D3/LuaSnip" },
    { "codeium.nvim" },
    { "hrsh7th/cmp-emoji" },
  },
  opts = {
    sources = {
      completion = { enabled_providers = { "lsp", "path", "luasnip", "buffer", "emoji" } },
      providers = {
        dadbod = { name = "Dadbod", module = "vim_dadbod_completion.blink" },
        codeium = { kind = "Codeium", score_offset = 100, async = true },
        emoji = { name = "emoji", module = "blink.compat.source" },
      },
      compat = { "luasnip", "codeium", "emoji" },
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
    -- 'default' for mappings similar to built-in completion
    -- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys to navigate)
    -- 'enter' for mappings similar to 'super-tab' but with 'enter' to accept
    -- see the "default configuration" section below for full documentation on how to define
    -- your own keymap.

    keymap = { preset = "enter" },
    --appearance
    appearance = {
      -- Sets the fallback highlight groups to nvim-cmp's highlight groups
      -- Useful for when your theme doesn't support blink.cmp
      -- will be removed in a future release
      use_nvim_cmp_as_default = true,
      -- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
      -- Adjusts spacing to ensure icons are aligned
      nerd_font_variant = "mono",
    },
  },
}
