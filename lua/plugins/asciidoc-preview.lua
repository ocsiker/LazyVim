return {
  "tigion/nvim-asciidoc-preview",
  ft = { "asciidoc" },
  build = "cd server && npm install",
  opts = {
    -- Add user configuration here
    server = {
      converter = "js",
    },
    preview = {
      position = "current",
    },
  },
}
