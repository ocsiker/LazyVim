return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      -- for java
      "jdtls",
      "java-test",
      "java-debug-adapter",
      -- for c
      "clangd",
      -- for format and linters
      "sqlfluff",
    },
  },
}
